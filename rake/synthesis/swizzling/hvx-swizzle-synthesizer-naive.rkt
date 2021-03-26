#lang rosette

(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)
(require rake/hvx/interpreter)

(require rake/synthesis/grammar/swizzle)
(require rake/synthesis/swizzling/util)

(define (synthesize-hvx-swizzles-naive starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx)
  ;; Replace all swizzle nodes with swizzle grammar
  (define (repl-gather-with-swizzle-grm node)
    (match node
      [(gather-vec opts) (??hvx-gather-expr starting-vecs #f)]
      [(gather-vecp opts) (??hvx-gather-expr starting-vecs #t)]
      [(swizzle vecs) (??hvx-swizzle-expr starting-vecs #t)]
      [_ node]))
  (define hvx-expr-grm (visit-hvx hvx-expr-sketch repl-gather-with-swizzle-grm))

  (define interpreted-o-expr (interpret-hvx hvx-expr-spec))
  (define interpreted-f-expr (interpret-hvx hvx-expr-grm))
    
  (clear-vc!)
  (for ([axiom axioms]) (assume axiom))
  (define st (current-seconds))
  (define sol (synthesize #:forall ctx
                          #:guarantee (hvx-vec-eq? interpreted-o-expr interpreted-f-expr)))
  (println (unsat? sol))
  (define runtime (- (current-seconds) st))

  (display (format "~a\n" (evaluate hvx-expr-grm sol)))
    
  (display (format "\nSwizzle Synthesis time: ~a seconds\n\n" runtime))
  
  (if (unsat? sol) sol (evaluate hvx-expr-grm sol)))

(provide synthesize-hvx-swizzles-naive)