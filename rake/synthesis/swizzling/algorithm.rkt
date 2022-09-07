#lang rosette/safe

(require
  (only-in racket/base for/list values)
  rake/internal/error
  rosette/lib/destruct
  rake/synthesis/swizzling/grammar
  rake/synthesis/swizzling/synthesizer
  rake/halide/ir/analysis
  rake/hvx/ast/types
  rake/hvx/ast/visitor)

(provide synthesize-hvx-swizzles)

(define (synthesize-hvx-swizzles spec ir-expr halide-expr hvx-template output-layout swizzle-budget swizzling-algo hvx-sub-exprs value-bounds translation-history [tile-id 1] [num-tiles 1])
  (cond
    [(eq? swizzling-algo 'enumerative)
      (display (format "Synthesizing Swizzle implementations... (Tile ~a of ~a) \n" tile-id num-tiles))
      (display "=====================================================\n\n")

      (display (format "Target output layout: ~a\n\n" output-layout))
      
      (define starting-vecs (halide:extract-loads halide-expr))
      
      ;; Extract set of swizzle nodes to be synthesized
      (define swizzle-nodes (list))
      (define (register-gather-node node [pos -1])
        (destruct node
          [(??abstr-load id live-data buffer) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [(??shuffle id lds pair?) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [(??load id live-data buffer gather-tbl pair?) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [(??swizzle id live-data expr gather-tbl pair?) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [_ node]))
      (hvx:visit-shallow hvx-template register-gather-node)
      
      ;; Synthesize an implementation for each swizzle node incrementally
      (synthesize-swizzle-nodes spec ir-expr (reverse swizzle-nodes) starting-vecs hvx-template output-layout swizzle-budget halide-expr hvx-sub-exprs value-bounds translation-history)]
    [else (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['enumerative]" swizzling-algo))]))

(define (synthesize-swizzle-nodes spec ir-expr swizzle-nodes starting-vecs hvx-template output-layout swizzle-budget halide-expr hvx-sub-exprs value-bounds translation-history)
  (cond
    [(empty? swizzle-nodes)
     (display "Implementations found for all swizzle nodes!\n\n")
     (display (format "Final expression: \n\n~a\n\n" (pretty-format hvx-template)))
     (values #t hvx-template 0)]
    [else
     ;; Synthesize an implementation for the first node in the list 
     (define swizzle-node (first swizzle-nodes))

     (define node-id (get-swizzle-node-id swizzle-node))
     
     (display (format "## Swizzle node id: ~a\n\n" node-id))

     (define-values (node-impl-found? updated-template swizzle-cost-1)
       (synthesize-swizzle-node spec ir-expr swizzle-node starting-vecs hvx-template output-layout swizzle-budget halide-expr hvx-sub-exprs value-bounds translation-history))
     
     (cond
       [node-impl-found?
        (define-values (successful? complete-expr swizzle-cost-2)
          (synthesize-swizzle-nodes spec ir-expr (cdr swizzle-nodes) starting-vecs updated-template output-layout (- swizzle-budget swizzle-cost-1) halide-expr hvx-sub-exprs value-bounds translation-history))
        (cond
          [successful? (values #t complete-expr (+ swizzle-cost-1 swizzle-cost-2))]
          [else
           (display (format "Backtracking. Attempting to synthesize a different implementation for swizzle node with id: ~a\n\n" node-id))
           ;(hash-set! cache (hvx-ast-node-id (second swizzle-nodes)) (make-hash))
           (synthesize-swizzle-nodes spec ir-expr swizzle-nodes starting-vecs hvx-template output-layout swizzle-budget halide-expr hvx-sub-exprs value-bounds translation-history)])]
       [else
         (values #f (unsat) 0)])]))

(define (synthesize-swizzle-node spec ir-expr swizzle-node starting-vecs hvx-template output-layout swizzle-budget halide-expr hvx-sub-exprs value-bounds translation-history)
  ;; Get swizzle grammar
  (define candidates (get-hvx-swizzle-grammar ir-expr halide-expr hvx-template output-layout swizzle-budget swizzle-node starting-vecs hvx-sub-exprs translation-history))

  ;; Run synthesizer
  (define-values (successful? updated-template) (synthesize-translation spec candidates halide-expr hvx-sub-exprs value-bounds translation-history output-layout))
  
  (cond
    [successful?
     ;; Inline sub-expr nodes
     (define (inline-subexprs node [pos -1])
       (destruct node
         [(??sub-expr exprs c) (list-ref exprs (if (concrete? c) c (evaluate c (complete-solution (sat) (list c)))))]
         [_ node]))
     (set! updated-template (cons (hvx:visit (car updated-template) inline-subexprs) (cdr updated-template)))

     (display "\nSuccessfully found a swizzle implementation.\n\n")
     (display (format "~a\n\n" (pretty-format (car updated-template))))
     (display (format "Synthesis time: 0 seconds\n\n"))
     (values #t (car updated-template) (cdr updated-template))]
    [else
     (display (format "\nFailed to synthesize implementation for swizzle node ~a\n\n" swizzle-node))
     (values #f updated-template 0)]))

(define (get-swizzle-node-id node)
  (destruct node
    [(??abstr-load id live-data buffer) id]
    [(??shuffle id lds pair?) id]
    [(??load id live-data buffer gather-tbl pair?) id]
    [(??swizzle id live-data expr gather-tbl pair?) id]))