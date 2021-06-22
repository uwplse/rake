#lang rosette/safe

(require
  (only-in racket/base values make-hash hash-set! hash-has-key?)
  rosette/lib/destruct
  rosette/lib/synthax
  rake/internal/log
  rake/halide
  rake/hvx/ast/types
  rake/hvx/interpreter
  rake/synthesis/lowering/util)

(provide synthesize-translation)

(define (incorrect? sol)
  (or (unsat? sol) (unknown? sol)))

(define (correct? sol)
  (not (incorrect? sol)))

(define synthesis-db (make-hash))

(define (verification-lanes type)
  (cond
    [(eq? type 'i8x128) '(0 63 64 127)]
    [(eq? type 'u8x128) '(0 63 64 127)]
    [(eq? type 'i16x64) '(0 31 32 63)]
    [(eq? type 'u16x64) '(0 31 32 63)]
    [(eq? type 'i32x32) '(0 15 16 31)]
    [(eq? type 'u32x32) '(0 15 16 31)]
    [(eq? type 'i8x128x2) '(0 63 64 127 128 191 192 255)]
    [(eq? type 'u8x128x2) '(0 63 64 127 128 191 192 255)]
    [(eq? type 'i16x64x2) '(0 31 32 63 64 95 96 127)]
    [(eq? type 'u16x64x2) '(0 31 32 63 64 95 96 127)]
    [(eq? type 'i32x32x2) '(0 15 16 31 32 47 48 63)]
    [(eq? type 'u32x32x2) '(0 15 16 31 32 47 48 63)]))

(define (synthesize-translation templates halide-expr hvx-sub-exprs value-bounds translation-history)
  (cond
    [(empty? templates) (values #f (void))]
    [(hash-has-key? synthesis-db (cons (first templates) halide-expr))
     (synthesize-translation (rest templates) halide-expr hvx-sub-exprs value-bounds translation-history)]
    [else
     (define template (first templates))
     (define sol (run-synthesizer template halide-expr hvx-sub-exprs value-bounds translation-history))
     (hash-set! synthesis-db (cons (first templates) halide-expr) #t)
     (cond
       [(correct? sol)
        (values #t (evaluate template sol))]
       [else
        (synthesize-translation (rest templates) halide-expr hvx-sub-exprs value-bounds translation-history)])]))

(define (run-synthesizer template halide-expr hvx-sub-exprs value-bounds translation-history)
  ;(pretty-print halide-expr)
  (pretty-print template)
  
  (define-values (optimized-halide-expr optimized-template inferred-axioms)
    (optimize-query halide-expr template hvx-sub-exprs value-bounds translation-history))

  ;(pretty-print optimized-halide-expr)
  (pretty-print optimized-template)

  ;; Incrementally checks the template for more and more lanes
  (define lanes-to-verify (verification-lanes (hvx-type (interpret-hvx optimized-template))))
  (synthesize-incremental optimized-halide-expr optimized-template inferred-axioms lanes-to-verify '()))

(define (synthesize-incremental optimized-halide-expr optimized-template inferred-axioms lanes-to-verify discarded-sols)
  (cond
    [(empty? lanes-to-verify) (model)]
    [else
     (define curr-lane (first lanes-to-verify))

     (display (format "Verifying lane: ~a\n" curr-lane))
     (println ((interpret-halide optimized-halide-expr) curr-lane))
     (set-curr-cn-hvx curr-lane)
     (println (let ([x (interpret-hvx optimized-template)]) (if (hvx-pair? x) (v0-elem-hvx x curr-lane) (elem-hvx x curr-lane))))

     (println inferred-axioms)
     
     (define st (current-milliseconds))
     (clear-vc!)
     (for-each (lambda (axiom) (assume axiom)) inferred-axioms)
     (define sol (synthesize #:forall (symbolics optimized-halide-expr)
                             #:guarantee (begin
                                           (assert (not (ormap (lambda (discarded-sol) (equal? optimized-template discarded-sol)) discarded-sols)))
                                           (lane-eq? (interpret-halide optimized-halide-expr) (interpret-hvx optimized-template) curr-lane))))
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
  (set-curr-cn-hvx lane)
  (define offset (quotient (num-elems-hvx se) 2))
  (cond
    [(and (hvx-pair? se) (< lane offset))
     (assert (eq? (oe lane) (v0-elem-hvx se lane)))]
    [(hvx-pair? se)
     (assert (eq? (oe lane) (v1-elem-hvx se (- lane offset))))]
    [else
     (assert (eq? (oe lane) (elem-hvx se lane)))]))