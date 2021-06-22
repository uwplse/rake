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

(define (synthesize-hvx-swizzles halide-expr hvx-template swizzling-algo hvx-sub-exprs translation-history [tile-id 1] [num-tiles 1])
  (cond
    [(eq? swizzling-algo 'enumerative)
      (display (format "Synthesizing Swizzle implementations... (Tile ~a of ~a) \n" tile-id num-tiles))
      (display "=====================================================\n\n")
      
      (define starting-vecs (extract-loads-halide halide-expr))
      
      ;; Extract set of swizzle nodes to be synthesized
      (define swizzle-nodes (list))
      (define (register-gather-node node [pos -1])
        (destruct node
          [(??load id live-data buffer gather-tbl pair?) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [(??swizzle id live-data expr gather-tbl pair?) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [_ node]))
      (visit-hvx hvx-template register-gather-node)
      
      ;; Synthesize an implementation for each swizzle node incrementally
      (synthesize-swizzle-nodes (reverse swizzle-nodes) starting-vecs hvx-template halide-expr hvx-sub-exprs translation-history)]
    [else (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['enumerative]" swizzling-algo))]))

(define (synthesize-swizzle-nodes swizzle-nodes starting-vecs hvx-template halide-expr hvx-sub-exprs translation-history)
  (cond
    [(empty? swizzle-nodes)
     (display "Implementations found for all swizzle nodes!\n\n")
     (display (format "Final expression: \n\n~a\n\n" (pretty-format hvx-template)))
     (values #t hvx-template)]
    [else
     ;; Synthesize an implementation for the first node in the list 
     (define swizzle-node (first swizzle-nodes))

     (define node-id (get-swizzle-node-id swizzle-node))
     
     (display (format "## Swizzle node id: ~a\n\n" node-id))

     (define-values (node-impl-found? updated-template)
       (synthesize-swizzle-node swizzle-node starting-vecs hvx-template halide-expr hvx-sub-exprs translation-history))
     
     (cond
       [node-impl-found?
        (define-values (successful? complete-expr)
          (synthesize-swizzle-nodes (cdr swizzle-nodes) starting-vecs updated-template halide-expr hvx-sub-exprs translation-history))
        (cond
          [successful? (values #t complete-expr)]
          [else
           (display (format "Backtracking. Attempting to synthesize a different implementation for swizzle node with id: ~a\n\n" node-id))
           ;(hash-set! cache (hvx-ast-node-id (second swizzle-nodes)) (make-hash))
           (synthesize-swizzle-nodes swizzle-nodes starting-vecs hvx-template halide-expr hvx-sub-exprs translation-history)])]
       [else
         (values #f (unsat))])]))

(define (synthesize-swizzle-node swizzle-node starting-vecs hvx-template halide-expr hvx-sub-exprs translation-history)
  ;; Get swizzle grammar
  (define candidates (get-hvx-swizzle-grammar halide-expr hvx-template swizzle-node starting-vecs hvx-sub-exprs translation-history))

  ;; Run synthesizer
  (define-values (successful? updated-template) (synthesize-translation candidates halide-expr))
  
  (cond
    [successful?
     (display "\nSuccessfully found a swizzle implementation.\n\n")
     (display (format "~a\n\n" (pretty-format updated-template)))
     (display (format "Synthesis time: 0 seconds\n\n"))
     (values #t updated-template)]
    [else
     (display (format "\nFailed to synthesize implementation for swizzle node ~a\n\n" swizzle-node))
     (values #f updated-template)]))

(define (get-swizzle-node-id node)
  (destruct node
    [(??load id live-data buffer gather-tbl pair?) id]
    [(??swizzle id live-data expr gather-tbl pair?) id]))