#lang rosette

(require (only-in rosette/base/core/term @app)
         (only-in rosette/solver/smt/smtlib2 enable-custom-tactics disable-custom-tactics)
         rosette/solver/smt/z3
         rosette/lib/destruct
         rake/internal/log
         rake/cpp
         rake/hvx/ast/types
         rake/hvx/interpreter
         rake/hvx/ir/interpreter)

(provide infer-value-range-hvx infer-value-range-hvx-ir infer-value-range-expr)

(define (infer-value-range-hvx expr axioms)
  (let ([x (hvx:interpret expr)])
    (if (hvx:vec-pair? x) (infer-value-range-expr (hvx:v0-elem x 0) axioms) (infer-value-range-expr (hvx:elem x 0) axioms))))

(define (infer-value-range-hvx-ir expr axioms abstr-val-bounds)
  (infer-value-range-expr ((hvx-ir:interpret expr) 0) axioms abstr-val-bounds))

;; Infer the value bounds for the input expression
(define (infer-value-range-expr expr-in axioms abstr-val-bounds)
  (set! inferred-axioms (list))
  (define expr (simplify-to-solvable-types expr-in abstr-val-bounds))

  (define toInt (if (cpp:signed-expr? expr) bitvector->integer bitvector->natural))

  ;; Save default solver
  (define z3-base (current-solver))

  ;; Set solver timeout of 5 eseconds
  (define z3-with-timeout (z3 #:options (hash-set (solver-options (current-solver)) ':timeout 30000)))
  (current-solver z3-with-timeout)

  ;; I modded rosette to emit custom tactics. However, when custom tactics are provided, z3 ignores the optimization
  ;; pass. Therefore, we disable them for bounds queries
  (disable-custom-tactics)

  ;; Enable for debugging
  ;(output-smt #t)
  
  ;; Get lower bound
  (clear-vc!)
  (for-each (lambda (axiom) (assert axiom)) axioms)
  (for-each (lambda (axiom) (assert axiom)) inferred-axioms)
  (define st (current-milliseconds))
  (define sol-lb
    (optimize #:minimize (list (toInt (cpp:eval expr)))
              #:guarantee #t))
  (define runtime (- (current-milliseconds) st))
  
  (display (format "Ran bounds analysis for ~a ms\n" runtime))
  (log (format "Bounds query: ~a ms\n" runtime))

  ;; Get upper bound
  (clear-vc!)
  (for-each (lambda (axiom) (assert axiom)) axioms)
  (for-each (lambda (axiom) (assert axiom)) inferred-axioms)
  (set! st (current-milliseconds))
  (define sol-ub
    (optimize #:maximize (list (toInt (cpp:eval expr)))
              #:guarantee #t))
  (set! runtime (- (current-milliseconds) st))
  
  (display (format "Ran bounds analysis for ~a ms\n" runtime))
  (log (format "Bounds query: ~a ms\n" runtime))

  ;; Reset tactics and solver
  (enable-custom-tactics)
  (current-solver z3-base)

  ;; Enable for debugging
  ;(output-smt #f)
  
  (cond
    ;; Engine timed out / returned unsat / returned unknown
    [(or (unsat? sol-lb) (unknown? sol-lb) (unsat? sol-ub) (unknown? sol-ub))
     (destruct expr-in
       [(int8_t _) (values (int8_t (bv #x80 8)) (int8_t (bv #x7f 8)))]
       [(uint8_t _) (values (uint8_t (bv #x00 8)) (uint8_t (bv #xff 8)))]
       [(int16_t _) (values (int16_t (bv #x8000 16)) (int16_t (bv #x7fff 16)))]
       [(uint16_t _) (values (uint16_t (bv #x0000 16)) (uint16_t (bv #xffff 16)))]
       [(int32_t _) (values (int32_t (bv #x80000000 32)) (int32_t (bv #x7fffffff 32)))]
       [(uint32_t _) (values (uint32_t (bv #x00000000 32)) (uint32_t (bv #xffffffff 32)))]
       [(int64_t _) (values (int64_t (bv #x8000000000000000 64)) (int64_t (bv #x7fffffffffffffff 64)))]
       [(uint64_t _) (values (uint64_t (bv #x0000000000000000 64)) (uint64_t (bv #xffffffffffffffff 64)))])]
    [else
     (values (evaluate expr sol-lb) (evaluate expr sol-ub))]))

(define mapping (make-hash))
(define inferred-axioms (list))

(define (simplify-to-solvable-types expr bounds)
  (match expr
    ;; Unwrap the types
    [(int8_t v) (int8_t (simplify-to-solvable-types v bounds))]
    [(int16_t v) (int16_t (simplify-to-solvable-types v bounds))]
    [(int32_t v) (int32_t (simplify-to-solvable-types v bounds))]
    [(int64_t v) (int64_t (simplify-to-solvable-types v bounds))]
    [(uint1_t v) (uint1_t (simplify-to-solvable-types v bounds))]
    [(uint8_t v) (uint8_t (simplify-to-solvable-types v bounds))]
    [(uint16_t v) (uint16_t (simplify-to-solvable-types v bounds))]
    [(uint32_t v) (uint32_t (simplify-to-solvable-types v bounds))]
    [(uint64_t v) (uint64_t (simplify-to-solvable-types v bounds))]
    
    [(expression (== @app) xs ...)
     (cond
       [(hash-has-key? mapping expr)
        (define v (hash-ref mapping expr))
        (when (hash-has-key? bounds (list-ref xs 0))
          (define bnds (hash-ref bounds (list-ref xs 0)))
          (cond
            [(cpp:signed-expr? (car bnds))
             (set! inferred-axioms (append inferred-axioms (list (and (bvsle v (cpp:eval (cdr bnds))) (bvsge v (cpp:eval (car bnds)))))))]
            [else
             (set! inferred-axioms (append inferred-axioms (list (and (bvule v (cpp:eval (cdr bnds))) (bvuge v (cpp:eval (car bnds)))))))]))
        v]
       [else
        (define-symbolic* v (type-of expr))
        (when (hash-has-key? bounds (list-ref xs 0))
          (define bnds (hash-ref bounds (list-ref xs 0)))
          (cond
            [(cpp:signed-expr? (car bnds))
             (set! inferred-axioms (append inferred-axioms (list (and (bvsle v (cpp:eval (cdr bnds))) (bvsge v (cpp:eval (car bnds)))))))]
            [else
             (set! inferred-axioms (append inferred-axioms (list (and (bvule v (cpp:eval (cdr bnds))) (bvuge v (cpp:eval (car bnds)))))))]))
        (hash-set! mapping expr v)
        v])]

    ;; For all other expressions, recurse
    [(expression op xs ...)
     (define new-args (for/list ([x xs]) (simplify-to-solvable-types x bounds)))
     (apply op new-args)]

    [_ expr]))