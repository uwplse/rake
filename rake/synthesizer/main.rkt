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

(define inferred-axioms (list))
(define learned-axioms (list))

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
;  (pretty-print halide-expr)
;  (pretty-print template)
;  
;  (set-cn-hvx-ir 0)
;  (println ((interpret-halide halide-expr) 0))
;  (println ((interpret-hvx-ir template) 0))
;  (println (symbolics ((interpret-hvx-ir template) 0)))

  (clear-vc!)
  (define st (current-milliseconds))
  (define sol (synthesize #:forall context
                          #:guarantee (begin
                                        (for-each (lambda (axiom) (assume axiom)) axioms)
                                        (for-each (lambda (axiom) (assume axiom)) learned-axioms)
                                        (equiv-fn (interpret-halide halide-expr) (interpret-hvx-ir template)))))
  (define runtime (- (current-milliseconds) st))
  
  (display (format "Ran synthesizer for ~a ms\n" runtime))

  (when (correct? sol)
    (define spec ((interpret-halide halide-expr) 0))
    (define trans ((interpret-hvx-ir (evaluate template sol)) 0))
    (set! learned-axioms (append learned-axioms (list (eq? spec trans))))
    (hash-set! translation-history (ir-node-id template) halide-expr))
  
  sol)

(define (union->list u)
  (define contents (union-contents u))
  (map (lambda (v) (cdr v)) contents))

(define (infer-axioms halide-expr template)
  (define sub-exprs (flatten (map (lambda (se) (if (union? se) (union->list se) se)) (get-hvx-ir-subexprs template))))
  (define filtered-sub-exprs (filter (lambda (se) (hash-has-key? translation-history (ir-node-id se))) sub-exprs))
  (define axioms
    (map
     (lambda (sub-expr)
       (define halide-sub-expr (hash-ref translation-history (ir-node-id sub-expr)))
       (eq? ((interpret-halide halide-sub-expr) 0) ((interpret-hvx-ir sub-expr) 0)))
     filtered-sub-exprs))
  axioms)