#lang rosette

(require
  rosette/solver/smt/z3
  (only-in rosette/base/core/term @app)
  rake/cpp
  rake/hvx/ast/types
  rake/hvx/interpreter)

(provide infer-value-range)

;; Infer the value bounds for the input expression
(define (infer-value-range hvx-expr axioms)
  (set! hvx-expr (if (concat-tiles? hvx-expr) (list-ref (concat-tiles-vecs hvx-expr) 0) hvx-expr))
  (set! hvx-expr (let ([xs (interpret-hvx hvx-expr)]) (if (hvx:vec-pair? xs) (hvx:v0-elem xs 0) (hvx:elem xs 0))))
  
  (define expr (simplify-to-solvable-types hvx-expr))

  (define-values (lb ub)
    (cond
      [(eq? (cpp:expr-bw expr) 8)
       (define-symbolic lb (bitvector 8))
       (define-symbolic ub (bitvector 8))
       (values lb ub)]
      [(eq? (cpp:expr-bw expr) 16)
       (define-symbolic lb (bitvector 16))
       (define-symbolic ub (bitvector 16))
       (values lb ub)]
      [(eq? (cpp:expr-bw expr) 32)
       (define-symbolic lb (bitvector 32))
       (define-symbolic ub (bitvector 32))
       (values lb ub)]
      [(eq? (cpp:expr-bw expr) 64)
       (define-symbolic lb (bitvector 64))
       (define-symbolic ub (bitvector 64))
       (values lb ub)]))

  (define op (if (cpp:signed-expr? expr) bvsle bvule))
  (define toInt (if (cpp:signed-expr? expr) bitvector->integer bitvector->natural))
  
  (clear-vc!)
  (for-each (lambda (axiom) (assume axiom)) axioms)
  (assert (forall (symbolics expr) (op lb (cpp:eval expr))))
  (assert (forall (symbolics expr) (op (cpp:eval expr) ub)))

  ;; Save default solver
  (define z3-base (current-solver))

  ;(println (solver-options (current-solver)))
  
  ;; Set timeout of 5 eseconds
  (define z3-with-timeout (z3 #:options (hash-set (solver-options (current-solver)) ':timeout 5000)))
  (current-solver z3-with-timeout)

  ;(println (solver-options (current-solver)))
  
  (define sol (optimize #:maximize (list (toInt lb))
                        #:minimize (list (toInt ub))
                        #:guarantee #t))

  (current-solver z3-base)

  ;(println (solver-options (current-solver)))

  (cond
    ;; Engine timed out / returned unsat / returned unknown
    [(or (unsat? sol) (unknown? sol))
     (values (void) (void))]
    [else
     (values (evaluate lb sol) (evaluate ub sol))]))

(define mapping (make-hash))

(define (simplify-to-solvable-types expr)
  (match expr
    ;; Unwrap the types
    [(int8_t v) (int8_t (simplify-to-solvable-types v))]
    [(int16_t v) (int16_t (simplify-to-solvable-types v))]
    [(int32_t v) (int32_t (simplify-to-solvable-types v))]
    [(int64_t v) (int64_t (simplify-to-solvable-types v))]
    [(uint1_t v) (uint1_t (simplify-to-solvable-types v))]
    [(uint8_t v) (uint8_t (simplify-to-solvable-types v))]
    [(uint16_t v) (uint16_t (simplify-to-solvable-types v))]
    [(uint32_t v) (uint32_t (simplify-to-solvable-types v))]
    [(uint64_t v) (uint64_t (simplify-to-solvable-types v))]
    
    [(expression (== @app) xs ...)
     (cond
       [(hash-has-key? mapping expr) (hash-ref mapping expr)]
       [else (define-symbolic* v (type-of expr)) v])]

    ;; For all other expressions, recurse
    [(expression op xs ...)
     (define new-args (for/list ([x xs]) (simplify-to-solvable-types x)))
     (apply op new-args)]

    [_ expr]))