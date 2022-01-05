#lang rosette/safe

(require
  (only-in racket/base for for/list exit values object-name)
  (only-in racket/base make-hash hash-set! hash-has-key? hash-ref)
  (only-in racket/list filter-map range)
  (only-in racket/set mutable-set set set-union! list->set set->list)
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
  rake/hvx/cost-model
  rake/synthesis/bounds
  rake/synthesis/layouts
  rake/synthesis/lowering/algorithm
  rake/synthesis/swizzling/algorithm
  rake/synthesis/lowering/synthesizer)

(provide synthesize-hvx-expr)

(define translation-history (make-hash))
(define value-bounds (make-hash))
(define trace (list))

(define (synthesize-hvx-expr ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo [sub-expr? #f] [output-layout 'in-order])
  ;; Reset the state of synthesis database
  (lowering:synthesizer:reset-db)

  (when (not sub-expr?)
    (display "Inferring Data Layouts...\n")
    (display "=========================\n\n")
    (print-layout-map ir-expr output-layout)
    (newline))
  
  ;; Generate a HVX implementation for each sub-expr layout
  (define ir-subexprs (hvx-ir:get-subexprs ir-expr))
  (define ir-subexprcnt (length ir-subexprs))
  
  ;(for ([ir-subexpr ir-subexprs])
    ;; Infer candidate sub-expr layouts
    ;(define ideal-subexpr-layouts (infer-ideal-subexpr-layouts ir-expr ir-subexpr output-layout))

    ;; Print sub-tree
    ;(println ir-subexpr)
    ;(println ideal-subexpr-layouts)

    ;(synthesize-lowered-impl ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr? output-layout ideal-subexpr-layouts)
    ;(exit))

  ;(filter-map (curry synthesize-lowered-impl ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr? output-layout) (set->list ideal-subexpr-layouts))

  ;(synthesize-lowered-impl ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr? output-layout)
  
  ;; Push node to trace
  (set! trace (append (list ir-expr) trace))
        
  ;; Lower sub-expressions to HVX
  (define-values (successful? hvx-sub-exprs)
    (lower-sub-exprs (hvx-ir:get-subexprs ir-expr) ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo #t output-layout))

  ;; Pop node from trace
  (set! trace (rest trace))

  (cond
    ;; If we were able to lower the sub-exprs, use them to construct the lowered expression
    [successful? (lower-expr ir-expr ir-annotations lowering-algo swizzling-algo sub-expr? output-layout hvx-sub-exprs)]
    [else #f]))

(define (lower-sub-exprs ir-sub-exprs ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr? output-layout)
  (cond
    [(empty? ir-sub-exprs) (values #t '())]
    [else
     ;; Get current subexpr
     (define ir-sub-expr (first ir-sub-exprs))

     ;; Infer ideal output-layouts for this sub-expr
     (define ideal-subexpr-layout (infer-ideal-subexpr-layouts ir-expr ir-sub-expr output-layout))

     ;; Lower sub-expr for each data-layout
     (define lowered-sub-expr-impl
       (synthesize-hvx-expr ir-sub-expr ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr? ideal-subexpr-layout))
     
     (cond
       [(empty? lowered-sub-expr-impl) (values #f lowered-sub-expr-impl)]
       [else
        ;; Save bounds information
        (when (hash-has-key? ir-bounds (ir-node-id ir-sub-expr))
          (hash-set! value-bounds lowered-sub-expr-impl (hash-ref ir-bounds (ir-node-id ir-sub-expr))))

        ;; Lower remaining subexprs
        (define-values (successful? lowered-exprs)
          (lower-sub-exprs (rest ir-sub-exprs) ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr? output-layout))
        
        (cond
          [successful? (values #t (flatten (append (list lowered-sub-expr-impl) lowered-exprs)))]
          [else (values #f '())])])]))

(define (lower-expr ir-expr ir-annotations lowering-algo swizzling-algo sub-expr? output-layout hvx-sub-exprs)
  (cond
    ;; For combine nodes (data shuffle), unless we are the root node just pass the sub-expressions to the parent.
    ;; If we are, however, the root node then we must synthesize the shuffles now.
    [(and sub-expr? (combine? ir-expr)) hvx-sub-exprs]

    ;; Does the annotation map contain the equivalent halide (sub-)expression?
    [(hash-has-key? ir-annotations (ir-node-id ir-expr))
     (define halide-spec (hash-ref ir-annotations (ir-node-id ir-expr)))
     (define-values (successful? hvx-expr _)
       (lower-to-optimal-hvx halide-spec ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout))
     (when successful? (hash-set! translation-history hvx-expr halide-spec))
     (cond
       [successful? hvx-expr]
       [else #f])]

    ;; If it does not, this is usually because the synthesized fused multiple Halide loads into a single one:
    [(load-data? ir-expr)
     (define parent-expr (first trace))
     (define parent-spec (hash-ref ir-annotations (ir-node-id parent-expr)))
     (define live-data (halide:extract-buffer-reads parent-spec))
     (define live-buffers (set->list (halide:extract-live-buffers parent-spec)))
     (define buf-elemTs (map buffer-elemT live-buffers))
     (set->list (list->set (flatten
                            (map
                             (lambda (t)
                               (define lds
                                 (map
                                  (lambda (b)
                                    (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
                                    (??load 1 live-data b tbl #f))  
                                  (filter (lambda (b) (eq? t (buffer-elemT b))) live-buffers)))
                               (list (??shuffle 0 lds #t)))
                             buf-elemTs))))]

    [else
     (error "Unexpected: Did not find Halide IR mapping for expression ~a" ir-expr)]))

(define (lower-to-optimal-hvx halide-expr ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout [cost-ub 99999])
  (define-values (successful? hvx-expr expr-cost template-cost swizzle-cost)
    (lower-to-hvx halide-expr ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout cost-ub))

  (cond
    [(and successful? (load-data? ir-expr)) (values #t hvx-expr 1)]
    [successful?
      (display (format "Total Expression cost (template + swizzle): ~a\n\n" (+ 0.01 expr-cost)))
      (cond
        [(or (<= template-cost 2) (>= swizzle-cost template-cost))
         (display "Searching for a more optimal implementation...\n\n")
         (define-values (successful? better-hvx-expr new-cost)
           (lower-to-optimal-hvx halide-expr ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout expr-cost))
         (cond
           [successful? (values #t better-hvx-expr new-cost)]
           [else (values #t hvx-expr expr-cost)])]
        [else
         (values #t hvx-expr expr-cost)])]
    [(eq? cost-ub 99999)
     (values #f (void) 0)]
    [else
     (values #f (void) 0)]))

(define (lower-to-hvx halide-expr ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout cost-ub)
  ;; Synthesize equivalent HVX template (compute instructions)
  (define-values (successful? hvx-template template-cost)
    (synthesize-hvx-template halide-expr ir-expr hvx-sub-exprs value-bounds translation-history lowering-algo cost-ub))
  
  (cond
    [successful?
     (cond
       [(and sub-expr? (swizzle-only? hvx-template)) (values #t hvx-template template-cost template-cost 0)]
       [else
        (define swizzle-budget (- cost-ub template-cost 0.01))
        
        (define halide-expr-tiles (generate-halide-tiles halide-expr hvx-template output-layout))
      
        (cond
          [(> (length halide-expr-tiles) 1)
           (define num-tiles (length halide-expr-tiles))
          
           (define (swizzle-incrementally tiles tile-id)
             (cond
               [(empty? tiles) (values #t '() 0)]
               [else
                (define tile (first tiles))
                ;; Synthesize data-movement to complete the template
                (define-values (successful? hvx-expr swizzle-cost)
                  (synthesize-hvx-swizzles ir-expr tile hvx-template output-layout swizzle-budget swizzling-algo hvx-sub-exprs value-bounds translation-history tile-id num-tiles))

                (cond
                  [successful?
                   (define-values (successful? rem-tiles swizzle-cost-rest) (swizzle-incrementally (rest tiles) (add1 tile-id)))
                   (cond
                     [successful? 
                      (define curr-tile hvx-expr)
                      (values #t (append (list curr-tile) rem-tiles) swizzle-cost)]
                     [else
                      (values #f '() 0)])]
                  [else
                   (values #f '() 0)])]))
          
           (define-values (successful? hvx-tiles swizzle-cost)
             (swizzle-incrementally halide-expr-tiles 1))

           (display (format "Template Cost: ~a\n" template-cost))
           (display (format "Swizzle Cost: ~a\n\n" swizzle-cost))
           
           (cond
             [successful? (values #t (concat-tiles hvx-tiles) (+ template-cost swizzle-cost -0.01) template-cost swizzle-cost)]
             [else
              (lower-to-hvx halide-expr ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout cost-ub)])]
          [else
           ;; Synthesize data-movement to complete the template
           (define-values (successful? hvx-expr swizzle-cost)
             (synthesize-hvx-swizzles ir-expr halide-expr hvx-template output-layout swizzle-budget swizzling-algo hvx-sub-exprs value-bounds translation-history))

           (display (format "Template Cost: ~a\n" template-cost))
           (display (format "Swizzle Cost: ~a\n\n" swizzle-cost))
         
           (cond
             [successful? (values #t hvx-expr (+ template-cost swizzle-cost -0.01) template-cost swizzle-cost)]
             [else
              (lower-to-hvx halide-expr ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout cost-ub)])])])]
    [else
      (values #f (void) 0 0 0)]))

(define (generate-halide-tiles halide-expr hvx-template output-layout)
  (define hvx-tile-size (if (hvx:vec-pair? (hvx:interpret hvx-template)) 2048 1024))

  (define halide-tile-elem-cnt (halide:vec-len halide-expr))
  (define halide-tile-elem-bits (cpp:type-bw (halide:elem-type halide-expr)))
  (define halide-tile-size (* halide-tile-elem-cnt halide-tile-elem-bits))
  (define elems-per-hvx-tile (quotient hvx-tile-size halide-tile-elem-bits))
  
  (define (break-to-standard-tiles expr tile-size st)
    (cond
      [(> (- halide-tile-elem-cnt st) tile-size) (cons (slice_vectors expr st 1 tile-size) (break-to-standard-tiles halide-expr tile-size (+ st tile-size)))]
      [(eq? st 0) (list halide-expr)]
      [else (list (slice_vectors expr st 1 tile-size))]))

  (define (break-to-deinterleaved-tiles expr tile-size st)
    (cond
      [(> (- halide-tile-elem-cnt st) tile-size)
       (append
        (list
         (slice_vectors expr st 1 tile-size)
         (slice_vectors expr (+ st 1) 1 tile-size))
        (break-to-deinterleaved-tiles halide-expr tile-size (+ st tile-size)))]
      [else
       (list
        (slice_vectors expr st 1 tile-size)
        (slice_vectors expr (+ st 1) 1 tile-size))]))
      
  (define (break-to-deinterleavedx2-tiles expr tile-size st)
    (cond
      [(> (- halide-tile-elem-cnt st) tile-size)
       (append
        (list
         (slice_vectors expr st 1 tile-size)
         (slice_vectors expr (+ st 1) 1 tile-size)
         (slice_vectors expr (+ st 2) 1 tile-size)
         (slice_vectors expr (+ st 3) 1 tile-size))
        (break-to-deinterleavedx2-tiles halide-expr tile-size (+ st tile-size)))]
      [else
       (list
        (slice_vectors expr st 1 tile-size)
        (slice_vectors expr (+ st 1) 1 tile-size)
        (slice_vectors expr (+ st 2) 1 tile-size)
        (slice_vectors expr (+ st 3) 1 tile-size))]))
        
  (cond
    [(eq? output-layout 'in-order) (break-to-standard-tiles halide-expr elems-per-hvx-tile 0)]
    [(and (eq? output-layout 'deinterleaved) (eq? hvx-tile-size 1024))
     (break-to-deinterleaved-tiles halide-expr (* 2 elems-per-hvx-tile) 0)]
    [(and (eq? output-layout 'deinterleaved) (eq? hvx-tile-size 2048))
     (break-to-standard-tiles halide-expr elems-per-hvx-tile 0)]
    [(and (eq? output-layout 'deinterleavedx2) (eq? hvx-tile-size 1024))
     (break-to-deinterleavedx2-tiles halide-expr (* 4 elems-per-hvx-tile) 0)]
    [(and (eq? output-layout 'deinterleavedx2) (eq? hvx-tile-size 2048))
     (break-to-deinterleaved-tiles halide-expr (* 2 elems-per-hvx-tile) 0)]
    [(and (eq? output-layout 'interleaved) (eq? hvx-tile-size 1024))
     (break-to-standard-tiles halide-expr elems-per-hvx-tile 0)]
    [(and (eq? output-layout 'interleaved) (eq? hvx-tile-size 2048))
     (break-to-standard-tiles halide-expr (* 2 elems-per-hvx-tile) 0)]
    [else (error "NYI")]))

;;--------------------------


(define (synthesize-lowered-impl ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr? output-layout subexpr-layout)
  ;; Push node to trace
  (set! trace (append (list ir-expr) trace))
        
  ;; Generate HVX sub-expressions that produce output in subexpr-layout
  (define-values (successful? hvx-sub-exprs) (lower-sub-exprs ir-expr (hvx-ir:get-subexprs ir-expr) ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr? subexpr-layout))

  ;; Pop node from trace
  (set! trace (rest trace))

  (cond
    ;; If we were able to lower the sub-exprs, use them to construct the lowered expression
    [successful? (lower-expr ir-expr ir-annotations lowering-algo swizzling-algo sub-expr? output-layout hvx-sub-exprs)]
    [else #f]))

;(define (lower-sub-exprs ir-expr ir-sub-exprs ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr? subexpr-layout)
;    (cond
;      [(empty? ir-sub-exprs) (values #t '())]
;      [else
;       ;; Lower current subexpr
;       (define ir-sub-expr (first ir-sub-exprs))
;       (define hvx-sub-expr-impls (synthesize-hvx-expr ir-sub-expr ir-annotations ir-bounds lowering-algo swizzling-algo (or sub-expr? (not (combine? ir-expr))) subexpr-layout))
;       (cond
;         [(empty? hvx-sub-expr-impls) (values #f '())]
;         [else
;          ;; Save bounds information
;          (when (hash-has-key? ir-bounds (ir-node-id ir-sub-expr))
;            (for ([impl hvx-sub-expr-impls])
;              (hash-set! value-bounds impl (hash-ref ir-bounds (ir-node-id ir-sub-expr)))))
;
;          ;; Lower remaining subexprs
;          (define-values (successful? lowered-exprs) (lower-sub-exprs ir-expr (rest ir-sub-exprs) ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr? subexpr-layout))
;          (cond
;            [successful? (values #t (flatten (append hvx-sub-expr-impls lowered-exprs)))]
;            [else (values #f '())])])]))


(define (swizzle-only? hvx-template)
  (or (??load? hvx-template) (??abstr-load? hvx-template) (??shuffle? hvx-template)))

;(if sub-expr? (strip-swizzles hvx-expr) hvx-expr)
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