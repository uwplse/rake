#lang rosette

(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)
(require rake/hvx/interpreter)
(require rake/hvx/comparator)

(require rake/synthesis/grammar/swizzle)
(require rake/synthesis/swizzling/util)

(define (synthesize-hvx-swizzles-incr starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx)
  ;; Extract set of swizzle nodes to be synthesized
  (define swizzle-nodes (list))
  (define (register-gather-node node)
    (match node
      [(gather-vec opts) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
      [(gather-vecp opts) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
      [(swizzle vec) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
      [_ node]))
  (visit-hvx hvx-expr-sketch register-gather-node)

  ;; Synthesize an implementation for each swizzle node incrementally
  (dynamically-synthesize-swizzle-nodes (reverse swizzle-nodes) starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx (list)))

(define (dynamically-synthesize-swizzle-nodes swizzle-nodes starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx discarded-sols)
  (cond
    [(empty? swizzle-nodes)
     (display "Implementations found for all swizzle nodes!\n\n")
     (display (format "Final expression: \n\n~a\n\n" (pretty-format hvx-expr-sketch)))
     (values #t hvx-expr-sketch)]
    [else
     ;; Synthesize an implementation for the first node in the list 
     (define swizzle-node (first swizzle-nodes))

     (define node-id (hvx-ast-node-id swizzle-node))
     
     (display (format "## Swizzle node id: ~a\n\n" node-id))

     (reset-swizzle-instr-bnd)
     (define-values (node-impl-found? updated-hvx-expr-sketch)
       (synthesize-swizzle-impl swizzle-node starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx discarded-sols))
     
     (cond
       [node-impl-found?
        (define-values (successful? complete-expr)
          (dynamically-synthesize-swizzle-nodes (cdr swizzle-nodes) starting-vecs updated-hvx-expr-sketch hvx-expr-spec axioms ctx (list)))
        (cond
          [successful? (values #t complete-expr)]
          [else
           (display (format "Backtracking. Attempting to synthesize a different implementation for swizzle node with id: ~a\n\n" node-id))
           (dynamically-synthesize-swizzle-nodes swizzle-nodes starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx (append (list updated-hvx-expr-sketch) discarded-sols))])]
       [else (values #f (unsat))])]))

(define (synthesize-swizzle-impl swizzle-node starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx discarded-sols)
  (if (swizzle-instr-bnd-exceeded?)
      (begin
        (display "Max instruction bound exceeded.\n\n")
        (values #f (unsat)))
      (begin
        (display (format "Number of instructions allowed: ~a\n\n" (get-swizzle-instr-bnd)))

        (define target-node-id (hvx-ast-node-id swizzle-node))
        
        ;; Replace swizzle node with swizzle grammar
        (define (repl-gather-with-swizzle-grm node)
          (match node
            [(gather-vec opts) (if (equal? (hvx-ast-node-id node) target-node-id) (??hvx-gather-expr starting-vecs #f) node)]
            [(gather-vecp opts) (if (equal? (hvx-ast-node-id node) target-node-id) (??hvx-gather-expr starting-vecs #t) node)]
            [(swizzle vecs) (if (equal? (hvx-ast-node-id node) target-node-id) (??hvx-swizzle-expr vecs) node)]
            [_ node]))
        (define hvx-expr-grm (visit-hvx hvx-expr-sketch repl-gather-with-swizzle-grm))
        
        (define interpreted-o-expr (interpret-hvx hvx-expr-spec))
        (define interpreted-f-expr (interpret-hvx hvx-expr-grm))
        
        (clear-asserts!)
        (for ([axiom axioms]) (assert axiom))
        (define st (current-seconds))
        (define sol (synthesize #:forall ctx
                                #:guarantee (begin
                                              (hvx-vec-eq? interpreted-o-expr interpreted-f-expr)
                                              (for ([discarded-sol discarded-sols])
                                                (assert (not (equal-expr-hvx? discarded-sol hvx-expr-grm)))))))
        (define runtime (- (current-seconds) st))
        
        (cond
          [(unsat? sol)
           (display "Could not find implementation. Increasing recursive bound.\n\n")
           (display (format "Synthesis time: ~a seconds\n\n" runtime))
           (incr-swizzle-instr-bnd)
           (synthesize-swizzle-impl swizzle-node starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx discarded-sols)]
          [else
           (display "Swizzle node implementation found!\n\n")
           (display (format "~a\n\n" (pretty-format (evaluate hvx-expr-grm sol))))
           (display (format "Synthesis time: ~a seconds\n\n" runtime))
           (values #t (evaluate hvx-expr-grm sol))]))))

(provide synthesize-hvx-swizzles-incr)