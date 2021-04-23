#lang rosette/safe

(require (only-in racket/base values make-hash hash-set! hash-ref hash-has-key? error exit)
         rosette/lib/destruct
         rake/halide
         rake/hvx/ir/instructions
         rake/hvx/ir/interpreter)

(provide synthesize-translation)

(define (correct? sol)
  (and (not (unsat? sol)) (not (unknown? sol))))

(define translation-history (make-hash))

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

  ;(set-cn-hvx-ir 0)
  ;(println ((interpret-halide halide-expr) 0))
  ;(println ((interpret-hvx-ir template) 0))

  ;(define-values (halide-expr-s template-s) (simplify-query halide-expr template))
  
  (clear-vc!)
  (define st (current-milliseconds))
  ;(for ([axiom learned-axioms]) (assume axiom))
  (define sol (synthesize #:forall context
                          #:guarantee (begin
                                        (for-each (lambda (axiom) (assume axiom)) axioms)
                                        (equiv-fn (interpret-halide halide-expr) (interpret-hvx-ir template)))))
  (define runtime (- (current-milliseconds) st))
  
  (display (format "Ran synthesizer for ~a ms\n" runtime))

  (when (correct? sol)
    (println halide-expr)
    (println (evaluate template sol))
    (hash-set! translation-history (ir-node-id template) halide-expr))
  
  sol)

(define (simplify-query halide-expr template)
  (destruct template
    [(load-data live-reads gather-tbl) (values halide-expr template)]
    [(cast sub-expr type)
     (println translation-history)
     (println (ir-node-id template))
     (println (ir-node-id sub-expr))
     (println (hash-has-key? translation-history (ir-node-id sub-expr)))
     (exit)
     (cond
       [(hash-has-key? translation-history halide-expr)
        (println 1) (exit)]
       [else
        (values halide-expr template)])]
    [_ (error "Don't know how to simplify" template)]))