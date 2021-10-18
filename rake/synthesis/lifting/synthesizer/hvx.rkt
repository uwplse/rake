#lang rosette

(require (only-in racket/base values make-hash hash-set!)
         (only-in racket/set subset?)
         rosette/lib/destruct
         rake/internal/log
         rake/cpp
         rake/halide
         rake/hvx/ir/instructions
         rake/hvx/ir/interpreter
         rake/synthesis/bounds
         rake/synthesis/lifting/synthesizer/util)

(provide
 (rename-out [synthesize-translation synthesize-hvx-translation])
 (rename-out [get-lifted-expr-bounds get-lifted-hvx-expr-bounds]))

(define total-synthesis-time 0)

(define (correct? sol)
  (and (not (unsat? sol)) (not (unknown? sol))))

(define translation-history (make-hash))
(define value-bounds (make-hash))
(define (get-lifted-expr-bounds) value-bounds) 

(define (synthesize-translation templates halide-expr axioms context equiv-fn)
  (cond
    [(empty? templates) (values #f (void))]
    [else
     (define template (first templates))
     (define sol (run-synthesizer template halide-expr axioms context equiv-fn))
     (cond
       [(correct? sol)
        (values #t (evaluate template sol))]
       [else
        (synthesize-translation (rest templates) halide-expr axioms context equiv-fn)])]))

(define (run-synthesizer template halide-expr axioms context equiv-fn)
  ;(pretty-print halide-expr)
  ;(pretty-print template)
  
  (define-values (optimized-template optimized-halide-expr inferred-axioms abstr-value-bounds)
    (optimize-hvx-query halide-expr template translation-history value-bounds))

  ;(pretty-print inferred-axioms)
  ;(pretty-print optimized-halide-expr)
  ;(pretty-print optimized-template)
  
  (cond
    [(subset? (symbolics optimized-halide-expr) (symbolics optimized-template))
     (clear-vc!)
     (define st (current-milliseconds))
     (define sol (synthesize #:forall (symbolics optimized-halide-expr)
                             #:guarantee (begin
                                           (for-each (lambda (axiom) (assume axiom)) axioms)
                                           (for-each (lambda (axiom) (assume axiom)) inferred-axioms)
                                           (equiv-fn (halide:interpret optimized-halide-expr) (hvx-ir:interpret optimized-template)))))
     (define runtime (- (current-milliseconds) st))
  
     (display (format "Ran synthesizer for ~a ms\n" runtime))
     (log (format "Lifting query: ~a ms\n" runtime))

     ;(println sol)
     
     (when (correct? sol)
       ;(pretty-print (evaluate template sol))

       (define e (evaluate optimized-template sol))
       (when (> (cpp:expr-bw ((hvx-ir:interpret e) 0)) 1)
         (define-values (expr-lb expr-ub)
           (infer-value-range-hvx-ir e axioms abstr-value-bounds))
         (hash-set! value-bounds (ir-node-id template) (cons expr-lb expr-ub)))
       (hash-set! translation-history (ir-node-id template) halide-expr))
     
     sol]
    [else (unsat)]))