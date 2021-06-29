#lang rosette/safe

(require
  (only-in racket/base for/list exit values)
  (only-in racket/base make-hash hash-set! hash-has-key? hash-ref)
  rosette/lib/match
  rosette/lib/destruct
  rake/internal/error
  rake/cpp
  rake/halide
  rake/hvx/ir/instructions
  rake/hvx/ir/interpreter
  rake/hvx/ast/types
  rake/hvx/ast/visitor
  rake/hvx/interpreter
  rake/synthesis/bounds
  rake/synthesis/lowering/algorithm
  rake/synthesis/swizzling/algorithm)

(provide synthesize-hvx-expr)

(define translation-history (make-hash))
(define value-bounds (make-hash))
(define trace (list))

(define (synthesize-hvx-expr ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo [sub-expr? #f])
  ;; Push node to trace
  (set! trace (append (list ir-expr) trace))
  
  ;; Lower the sub-expressions to hvx
  (define ir-sub-exprs (hvx-ir:get-subexprs ir-expr))
  (define hvx-sub-exprs
    (flatten
     (for/list ([ir-sub-expr ir-sub-exprs])
       (define hvx-sub-expr (synthesize-hvx-expr ir-sub-expr ir-annotations ir-bounds lowering-algo swizzling-algo #t))
       (when (hash-has-key? ir-bounds (ir-node-id ir-sub-expr))
         (hash-set! value-bounds hvx-sub-expr (hash-ref ir-bounds (ir-node-id ir-sub-expr))))
       hvx-sub-expr)))

  ;; Pop node from trace
  (set! trace (rest trace))
  
  ;; Lower the current uber-instruction using the lowered sub-expressions as leaves in the expression graph
  (cond
    [(combine? ir-expr) hvx-sub-exprs]
    [(hash-has-key? ir-annotations (ir-node-id ir-expr))
      (define halide-spec (hash-ref ir-annotations (ir-node-id ir-expr)))
      (define hvx-expr (lower-to-hvx halide-spec ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr?))
      (hash-set! translation-history hvx-expr halide-spec)
      hvx-expr]
    [(load-data? ir-expr)
      (define parent-expr (first trace))
      (define parent-spec (hash-ref ir-annotations (ir-node-id parent-expr)))
      (define live-data (halide:extract-buffer-reads parent-spec))
      (define live-buffers (halide:extract-live-buffers parent-spec))
      (for/list ([b live-buffers]) (??abstr-load live-data b))]))

(define (lower-to-hvx halide-expr ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr?)
  ;; Synthesize equivalent HVX template (compute instructions)
  (define hvx-template (clone (synthesize-hvx-template halide-expr ir-expr hvx-sub-exprs value-bounds translation-history lowering-algo)))

  (cond
    [(and sub-expr? (swizzle-only? hvx-template)) hvx-template]
    [else
      (define hvx-tile-size (if (hvx:vec-pair? (hvx:interpret hvx-template)) 2048 1024))

      (define halide-tile-elem-cnt (halide:vec-len halide-expr))
      (define halide-tile-elem-bits (cpp:type-bw (halide:elem-type halide-expr)))
      (define halide-tile-size (* halide-tile-elem-cnt halide-tile-elem-bits))
      (define elems-per-hvx-tile (quotient hvx-tile-size halide-tile-elem-bits))
  
      (define (break-to-smaller-tiles expr tile-size st)
        (cond
          [(> (- halide-tile-elem-cnt st) tile-size) (cons (slice_vectors expr st 1 tile-size) (break-to-smaller-tiles halide-expr tile-size (+ st tile-size)))]
          [(eq? st 0) (list halide-expr)]
          [else (list (slice_vectors expr st 1 tile-size))]))
      (define halide-expr-tiles (break-to-smaller-tiles halide-expr elems-per-hvx-tile 0))
      
      (cond
        [(> (length halide-expr-tiles) 1)
          (define num-tiles (length halide-expr-tiles))
          
          (define (swizzle-incrementally tiles tile-id)
            (cond
              [(empty? tiles) (values #t '())]
              [else
               (define tile (first tiles))
               ;; Synthesize data-movement to complete the template
               (define-values (successful? hvx-expr)
                 (synthesize-hvx-swizzles tile hvx-template swizzling-algo hvx-sub-exprs translation-history tile-id num-tiles))

               (cond
                 [successful?
                  (define-values (successful? rem-tiles) (swizzle-incrementally (rest tiles) (add1 tile-id)))
                  (cond
                    [successful? 
                     (define curr-tile (if sub-expr? (strip-swizzles hvx-expr) hvx-expr))
                     (values #t (append (list curr-tile) rem-tiles))]
                    [else
                     (values #f '())])]
                 [else
                  (values #f '())])]))
          
          (define-values (successful? hvx-tiles)
            (swizzle-incrementally halide-expr-tiles 1))

          (cond
            [successful? (concat-tiles hvx-tiles)]
            [else
             (lower-to-hvx halide-expr ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr?)])]
        [else
         ;; Synthesize data-movement to complete the template
         (define-values (successful? hvx-expr)
           (synthesize-hvx-swizzles halide-expr hvx-template swizzling-algo hvx-sub-exprs translation-history))

         (cond
            [successful? (if sub-expr? (strip-swizzles hvx-expr) hvx-expr)]
            [else
             (lower-to-hvx halide-expr ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr?)])])]))

(define (swizzle-only? hvx-template)
  (or (??load? hvx-template) (??abstr-load? hvx-template) (??shuffle? hvx-template)))

(define (strip-swizzles hvx-expr)
  (destruct hvx-expr
    [(vdeal Vu) (strip-swizzles Vu)]
    [(vinterleave Vuu) (strip-swizzles Vuu)]
    [_ hvx-expr]))

(define (clone hvx-template)
  (define swizzle-node-id -1)
  (define (get-sw-node-id) (set! swizzle-node-id (add1 swizzle-node-id)) swizzle-node-id)
  (define (clone-swizzle-node node [pos -1])
    (destruct node
      [(??load id live-data buffer gather-tbl pair?) (??load (get-sw-node-id) live-data buffer gather-tbl pair?)]
      [(??swizzle id live-data expr gather-tbl pair?) (??swizzle (get-sw-node-id) live-data expr gather-tbl pair?)]
      [_ node]))
  (hvx:visit hvx-template clone-swizzle-node))