#lang rosette/safe

(require
  (only-in racket/base values make-hash hash-has-key? hash-set! exit)
  (only-in racket/set set-subtract list->set set->list)
  rosette/lib/destruct
  rake/internal/counter
  rake/internal/log
  rake/internal/error
  rake/halide
  rake/x86/ast/types
  rake/x86/ast/interpreter
  rake/x86/ast/utils
  rake/synthesis/lowering/x86/utils
)

(provide
  (rename-out
    [synthesize-translation x86:swizzling:synthesize-translation]
))

(define (incorrect? sol)
  (or (unsat? sol) (unknown? sol)))

(define (correct? sol)
  (not (incorrect? sol)))

(define synthesis-db (make-hash))

(define (verification-lanes type)
  (cond
    [(eq? type 'i8x16) '(0 7 12 15)]
    [(eq? type 'i16x8) '(0 1 6 7)]
    [(eq? type 'i32x4) '(0 1 2 3)]
    [(eq? type 'i64x2) '(0 1)]
    [(eq? type 'i8x32) '(0 7 14 21 28)]
    [(eq? type 'i16x16) '(0 7 12 15)]
    [(eq? type 'i32x8) '(0 1 6 7)]
    [(eq? type 'i64x4) '(0 1 2 3)]

    [(eq? type 'u8x16) '(0 7 12 15)]
    [(eq? type 'u16x8) '(0 1 6 7)]
    [(eq? type 'u32x4) '(0 1 2 3)]
    [(eq? type 'u64x2) '(0 1)]
    [(eq? type 'u8x32) '(0 7 14 21 28)]
    [(eq? type 'u16x16) '(0 7 12 15)]
    [(eq? type 'u32x8) '(0 1 6 7)]
    [(eq? type 'u64x4) '(0 1 2 3)]))

(define (synthesize-translation templates halide-expr x86-sub-exprs value-bounds translation-history output-layout)
  (cond
    [(empty? templates) (println "empty") (values #f (void))]
    [(hash-has-key? synthesis-db (list (first templates) halide-expr output-layout))
     (println "synthesis-db has template")
     (synthesize-translation (rest templates) halide-expr x86-sub-exprs value-bounds translation-history output-layout)]
    [else
     (define template (first templates))
     (println "calling run-synthesizer")
     (define sol (run-synthesizer (car template) halide-expr x86-sub-exprs value-bounds translation-history output-layout))
     (hash-set! synthesis-db (list (first templates) halide-expr output-layout) #t)
     (cond
       [(correct? sol)
        (println "success")
        (values #t (evaluate template sol))]
       [else
        (println "recurse")
        (synthesize-translation (rest templates) halide-expr x86-sub-exprs value-bounds translation-history output-layout)])]))

(define (run-synthesizer template halide-expr x86-sub-exprs value-bounds translation-history output-layout)
  ;(println halide-expr)
  ;(pretty-print template)

  ;(define-values (optimized-halide-expr optimized-template inferred-axioms)
    ;(optimize-query halide-expr template x86-sub-exprs value-bounds translation-history))

  ;(pretty-print optimized-halide-expr)
  ;(pretty-print optimized-template)
  
  ;; Incrementally checks the template for more and more lanes
  (define sym-consts (set->list (set-subtract (list->set (symbolics template)) (list->set (symbolics halide-expr)))))
  (define lanes-to-verify (verification-lanes (x86:type (x86:interpret template))))
  (synthesize-incremental halide-expr template output-layout sym-consts lanes-to-verify '()))

(define (synthesize-incremental halide-expr template output-layout sym-consts lanes-to-verify discarded-sols)
  (cond
    [(empty? lanes-to-verify) (model)]
    [else
     (define curr-lane (first lanes-to-verify))
     
     (display (format "(x86:swizzle) Verifying lane: ~a\n" curr-lane))
     (define ihalide (halide:interpret halide-expr))
     (define irake (x86:interpret template))
     (set-curr-cn! curr-lane)
     (pretty-print (ihalide curr-lane))
     (pretty-print (x86:get-element irake curr-lane))

     (define st (current-milliseconds))
     (clear-vc!)
     (define sol (synthesize #:forall (symbolics halide-expr)
                             #:guarantee (begin
                                           (assert (not (ormap (lambda (discarded-sol) (equal? template discarded-sol)) discarded-sols)))
                                           (lane-eq? (halide:interpret halide-expr) (x86:interpret template) output-layout curr-lane))))
     (define runtime (- (current-milliseconds) st))

     (display (format "Ran synthesizer for ~a ms\n" runtime))
     (log (format "Swizzling query: ~a ms\n" runtime))

     (cond
       [(correct? sol)
        (define c-sol sol)
        (define updated-template (evaluate template c-sol))
        (define sub-sol (synthesize-incremental halide-expr updated-template output-layout sym-consts (rest lanes-to-verify) '()))
        (cond
          [(correct? sub-sol) c-sol]
          [else
           (define discarded-sol (evaluate template c-sol))
           (synthesize-incremental halide-expr template output-layout sym-consts lanes-to-verify (append (list discarded-sol) discarded-sols))])]
       [else
        (unsat)])]))

(define (lane-eq? oe se output-layout lane)
  ; (define offset (quotient (x86:num-elems se) 2))
  (cond
    [(eq? output-layout 'in-order)
      (set-curr-cn! lane)
      (assert (eq? (oe lane) (x86:get-element se lane)))]
    [else
     (error (format "x86:swizzling:lane-eq? only supports output-layouts: ['in-order], recieved ~a" output-layout))]))
