#lang rosette/safe

(require
  (only-in racket/base exit values for make-hash hash-set! hash-has-key?)
  rosette/lib/destruct
  rosette/lib/synthax
  rake/internal/log
  rake/halide
  rake/x86/ast/types
  rake/x86/ast/interpreter
  rake/x86/ast/analysis
  rake/x86/ast/type_utils
  rake/x86/ast/utils
  rake/synthesis/lowering/utils/x86
  rake/internal/counter)

(provide (rename-out
          [synthesize-translation x86:synthesize-translation]
          [lowering:synthesizer:reset-db x86:lowering:synthesizer:reset-db]
        ))

(define (incorrect? sol)
  (or (unsat? sol) (unknown? sol)))

(define (correct? sol)
  (not (incorrect? sol)))

(define synthesis-db (make-hash))

(define (lowering:synthesizer:reset-db)
  ;; Eliminate history of all correct solutions
  (define new-db (make-hash))
  (for ([(k v) synthesis-db])
    (when (not v)
      (hash-set! new-db k v)))
  (set! synthesis-db new-db))

;; TODO: fix these.
(define (verification-lanes type)
  (cond
    [(eq? type 'i8x8) '(0 1 6 7)]
    [(eq? type 'i16x4) '(0 1 2 3)]
    [(eq? type 'i32x2) '(0 1)]
    [(eq? type 'i64x1) '(0)]
    [(eq? type 'i8x16) '(0 7 12 15)]
    [(eq? type 'i16x8) '(0 1 6 7)]
    [(eq? type 'i32x4) '(0 1 2 3)]
    [(eq? type 'i64x2) '(0 1)]
    [(eq? type 'i8x32) '(0 7 14 21 28)]
    [(eq? type 'i16x16) '(0 7 12 15)]
    [(eq? type 'i32x8) '(0 1 6 7)]
    [(eq? type 'i64x4) '(0 1 2 3)]

    [(eq? type 'u8x8) '(0 1 6 7)]
    [(eq? type 'u16x4) '(0 1 2 3)]
    [(eq? type 'u32x2) '(0 1)]
    [(eq? type 'u64x1) '(0)]
    [(eq? type 'u8x16) '(0 7 12 15)]
    [(eq? type 'u16x8) '(0 1 6 7)]
    [(eq? type 'u32x4) '(0 1 2 3)]
    [(eq? type 'u64x2) '(0 1)]
    [(eq? type 'u8x32) '(0 7 14 21 28)]
    [(eq? type 'u16x16) '(0 7 12 15)]
    [(eq? type 'u32x8) '(0 1 6 7)]
    [(eq? type 'u64x4) '(0 1 2 3)]))

(define (synthesize-translation templates halide-expr x86-sub-exprs value-bounds translation-history)
  (cond
    [(empty? templates) (values #f (void))]
    [(hash-has-key? synthesis-db (cons (first templates) halide-expr))
     (synthesize-translation (rest templates) halide-expr x86-sub-exprs value-bounds translation-history)]
    [else
     (define template (first templates))
     (define sol (run-synthesizer (car template) halide-expr x86-sub-exprs value-bounds translation-history))
     (hash-set! synthesis-db (cons (first templates) halide-expr) (correct? sol))
     (cond
       [(correct? sol)
        (values #t (evaluate template sol))]
       [else
        (synthesize-translation (rest templates) halide-expr x86-sub-exprs value-bounds translation-history)])]))

(define (run-synthesizer template halide-expr x86-sub-exprs value-bounds translation-history)
  ;(pretty-print halide-expr)
  ;(pretty-print template)

  ;(pretty-print translation-history)
  ;(pretty-print x86-sub-exprs)

  (define-values (optimized-halide-expr optimized-template inferred-axioms)
    (x86:optimize-query halide-expr template x86-sub-exprs value-bounds translation-history))

  ;(pretty-print optimized-halide-expr)
  ;(pretty-print optimized-template)

  ;; Incrementally checks the template for more and more lanes
  ;(display "interpreting for lane verification\n")
  ;(pretty-print optimized-template)
  ;(pretty-print template)
  ;(display (x86:??shuffle? template))
  ;(newline)
  (define lanes-to-verify (verification-lanes (x86:get-interpreted-type optimized-template)))
  (synthesize-incremental optimized-halide-expr optimized-template inferred-axioms lanes-to-verify '()))

(define (synthesize-incremental optimized-halide-expr optimized-template inferred-axioms lanes-to-verify discarded-sols)
  (cond
    [(empty? lanes-to-verify) (model)]
    [else
     (define curr-lane (first lanes-to-verify))

     ;(display (format "Verifying lane: ~a\n" curr-lane))
     ;(println inferred-axioms)
     ;(println ((halide:interpret optimized-halide-expr) curr-lane))
     ;(set-curr-cn! curr-lane)
     ;(println (x86:get-element (x86:interpret optimized-template) curr-lane))

     (define st (current-milliseconds))
     (clear-vc!)
     (for-each (lambda (axiom) (assume axiom)) inferred-axioms)
     ;(display "interpreting for synthesis\n")
     ;(display "Halide Expr: ")
     ;(pretty-print optimized-halide-expr)
     (define sol (synthesize #:forall (symbolics optimized-halide-expr)
                             #:guarantee (begin
                                           (assert (not (ormap (lambda (discarded-sol) (equal? optimized-template discarded-sol)) discarded-sols)))
                                           (lane-eq? (halide:interpret optimized-halide-expr) (x86:interpret optimized-template) curr-lane))))
     (define runtime (- (current-milliseconds) st))

     (display (format "Ran synthesizer for ~a ms\n" runtime))
     (log (format "Lowering query: ~a ms\n" runtime))

     (cond
       [(correct? sol)
        (define updated-template (evaluate optimized-template sol))
        
        (define sub-sol (synthesize-incremental optimized-halide-expr updated-template inferred-axioms (rest lanes-to-verify) '()))
        (cond
          [(correct? sub-sol) sol]
          [else
           (define discarded-sol (evaluate optimized-template sol))
           (synthesize-incremental optimized-halide-expr optimized-template inferred-axioms lanes-to-verify (append (list discarded-sol) discarded-sols))])]
       [else
        (unsat)])]))

(define (lane-eq? oe se lane)
  (set-curr-cn! lane)
  (assert (eq? (oe lane) (x86:get-element se lane))))