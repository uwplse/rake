#lang rosette/safe

(require
  (only-in racket/base for/list values)
  rake/internal/error
  rosette/lib/destruct
  rake/synthesis/swizzling/x86/grammar
  rake/synthesis/swizzling/x86/synthesizer
  rake/halide/ir/analysis
  rake/x86/ast/types
  rake/x86/ast/visitor
)

(provide synthesize-x86-swizzles)

(define (synthesize-x86-swizzles ir-expr halide-expr x86-template output-layout swizzle-budget swizzling-algo x86-sub-exprs value-bounds translation-history [tile-id 1] [num-tiles 1])
  (cond
    [(eq? swizzling-algo 'enumerative)
      (display (format "(x86) Synthesizing Swizzle implementations... (Tile ~a of ~a) \n" tile-id num-tiles))
      (display "=====================================================\n\n")

      (display (format "(x86)Target output layout: ~a\n\n" output-layout))
      
      (define starting-vecs (halide:extract-x86-loads halide-expr))

      (println "starting-vecs")
      (pretty-print starting-vecs)
      (pretty-print halide-expr)
      (pretty-print ir-expr)
      (pretty-print x86-template)
      
      ;; Extract set of swizzle nodes to be synthesized
      (define swizzle-nodes (list))
      (define (register-gather-node node [pos -1])
        (destruct node
          [(x86:??abstr-load id live-data buffer) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [(x86:??shuffle id lds pair?) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [(x86:??load id live-data buffer gather-tbl pair?) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [(x86:??swizzle id live-data expr gather-tbl pair?) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [_ node]))
      (x86:visit-shallow x86-template register-gather-node)
      
      ;; Synthesize an implementation for each swizzle node incrementally
      (synthesize-swizzle-nodes ir-expr (reverse swizzle-nodes) starting-vecs x86-template output-layout swizzle-budget halide-expr x86-sub-exprs value-bounds translation-history)]
    [else (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['enumerative]" swizzling-algo))]))

(define (synthesize-swizzle-nodes ir-expr swizzle-nodes starting-vecs x86-template output-layout swizzle-budget halide-expr x86-sub-exprs value-bounds translation-history)
  (cond
    [(empty? swizzle-nodes)
     (display "(x86) Implementations found for all swizzle nodes!\n\n")
     (display (format "(x86) Final expression: \n\n~a\n\n" (pretty-format x86-template)))
     (values #t x86-template 0)]
    [else
     ;; Synthesize an implementation for the first node in the list 
     (define swizzle-node (first swizzle-nodes))

     (define node-id (get-swizzle-node-id swizzle-node))
     
     (display (format "## (x86) Swizzle node id: ~a\n\n" node-id))

     (define-values (node-impl-found? updated-template swizzle-cost-1)
       (synthesize-swizzle-node ir-expr swizzle-node starting-vecs x86-template output-layout swizzle-budget halide-expr x86-sub-exprs value-bounds translation-history))
     
     (cond
       [node-impl-found?
        (define-values (successful? complete-expr swizzle-cost-2)
          (synthesize-swizzle-nodes ir-expr (cdr swizzle-nodes) starting-vecs updated-template output-layout (- swizzle-budget swizzle-cost-1) halide-expr x86-sub-exprs value-bounds translation-history))
        (cond
          [successful? (values #t complete-expr (+ swizzle-cost-1 swizzle-cost-2))]
          [else
           (display (format "Backtracking. Attempting to synthesize a different implementation for swizzle node with id: ~a\n\n" node-id))
           ;(hash-set! cache (x86-ast-node-id (second swizzle-nodes)) (make-hash))
           (synthesize-swizzle-nodes ir-expr swizzle-nodes starting-vecs x86-template output-layout swizzle-budget halide-expr x86-sub-exprs value-bounds translation-history)])]
       [else
         (values #f (unsat) 0)])]))

(define (synthesize-swizzle-node ir-expr swizzle-node starting-vecs x86-template output-layout swizzle-budget halide-expr x86-sub-exprs value-bounds translation-history)
  ;; Get swizzle grammar
  (define candidates (get-x86-swizzle-grammar ir-expr halide-expr x86-template output-layout swizzle-budget swizzle-node starting-vecs x86-sub-exprs translation-history))

  (println "got candidates")
  (pretty-print candidates)

  ;; Run synthesizer
  (define-values (successful? updated-template)
    (x86:swizzling:synthesize-translation candidates halide-expr x86-sub-exprs value-bounds translation-history output-layout))
  
  (cond
    [successful?
     ;; Inline sub-expr nodes
     (define (inline-subexprs node [pos -1])
       (destruct node
         [(x86:??sub-expr exprs c) (list-ref exprs (if (concrete? c) c (evaluate c (complete-solution (sat) (list c)))))]
         [_ node]))
     (set! updated-template (cons (x86:visit (car updated-template) inline-subexprs) (cdr updated-template)))
     
     (display "\n(x86) Successfully found a swizzle implementation.\n\n")
     (display (format "~a\n\n" (pretty-format (car updated-template))))
     (display (format "Synthesis time: 0 seconds\n\n"))
     (values #t (car updated-template) (cdr updated-template))]
    [else
     (display (format "\n(x86) Failed to synthesize implementation for swizzle node ~a\n\n" swizzle-node))
     (values #f updated-template 0)]))

(define (get-swizzle-node-id node)
  (destruct node
    [(x86:??abstr-load id live-data buffer) id]
    [(x86:??shuffle id lds pair?) id]
    [(x86:??load id live-data buffer gather-tbl pair?) id]
    [(x86:??swizzle id live-data expr gather-tbl pair?) id]))
