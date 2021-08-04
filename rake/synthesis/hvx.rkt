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
  rake/synthesis/lowering/algorithm
  rake/synthesis/swizzling/algorithm
  rake/synthesis/lowering/synthesizer)

(provide synthesize-hvx-expr)

(define translation-history (make-hash))
(define value-bounds (make-hash))
(define trace (list))

(define (synthesize-hvx-expr ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo [sub-expr? #f] [output-layout 'standard])
  
  (define (gen-lowered-impl subexpr-layout)
    ;; Push node to trace
    (set! trace (append (list ir-expr) trace))
        
    ;; Generate HVX sub-expressions that produce output in selected layout
    (define ir-sub-exprs (hvx-ir:get-subexprs ir-expr))

    (define (lower-sub-exprs ir-sub-exprs)
      (cond
        [(empty? ir-sub-exprs) (values #t '())]
        [else
         ;; Lower current subexpr
         (define ir-sub-expr (first ir-sub-exprs))
         (define hvx-sub-expr-impls (synthesize-hvx-expr ir-sub-expr ir-annotations ir-bounds lowering-algo swizzling-algo (or sub-expr? (not (combine? ir-expr))) subexpr-layout))
         (cond
           [(empty? hvx-sub-expr-impls) (values #f '())]
           [else
            ;; Save bounds information
            (when (hash-has-key? ir-bounds (ir-node-id ir-sub-expr))
              (for ([impl hvx-sub-expr-impls])
                (hash-set! value-bounds impl (hash-ref ir-bounds (ir-node-id ir-sub-expr)))))

            ;; Lower remaining subexprs
            (define-values (successful? lowered-exprs) (lower-sub-exprs (rest ir-sub-exprs)))
            (cond
              [successful? (values #t (flatten (append hvx-sub-expr-impls lowered-exprs)))]
              [else (values #f '())])])]))

    (define-values (successful? hvx-sub-exprs) (lower-sub-exprs ir-sub-exprs))

    ;; Pop node from trace
    (set! trace (rest trace))

    (cond
      ;; If we were able to lower the sub-exprs to the desired layout, lower the current expr using the subexprs
      [successful?
        ;; Lower the current uber-instruction using the lowered sub-expressions as leaves in the expression graph
        ;; The lowered expression will produce output in the selected output-layout
        (cond
          [(and sub-expr? (combine? ir-expr)) hvx-sub-exprs]
          [(hash-has-key? ir-annotations (ir-node-id ir-expr))
           (define halide-spec (hash-ref ir-annotations (ir-node-id ir-expr)))
           (define-values (successful? hvx-expr _)
             (lower-to-optimal-hvx halide-spec ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout))
           (when successful? (hash-set! translation-history hvx-expr halide-spec))
           (cond
             [successful? hvx-expr]
             [else #f])]
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
             buf-elemTs))))])]
      ;; Stop and try another layout
      [else #f]))

  ;; Reset the state of synthesis database, otherwise the synthesizer will ignore previously
  ;; seen correct solutions
  (lowering:synthesizer:reset-db)
    
  (define desired-subexpr-layouts (infer-ideal-subexpr-layout ir-expr output-layout))

  (display (format "Preferred layout for op ~a is ~a\n\n" (object-name ir-expr) output-layout))
  (display (format "Preferred subexpr layout for op ~a is ~a\n\n" (object-name ir-expr) desired-subexpr-layouts))
  
  (filter-map gen-lowered-impl (set->list desired-subexpr-layouts)))

(define (lower-to-optimal-hvx halide-expr ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout [cost-ub 99999])
  (define-values (successful? hvx-expr expr-cost template-cost swizzle-cost)
    (lower-to-hvx halide-expr ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout cost-ub))

  (cond
    [(and successful? (load-data? ir-expr)) (values #t hvx-expr 1)]
    [successful?
      (display (format "Total Expression cost (template + swizzle): ~a\n\n" expr-cost))
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
        
        (define halide-expr-tiles
          (cond
            [(eq? output-layout 'standard) (break-to-standard-tiles halide-expr elems-per-hvx-tile 0)]
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
                  (synthesize-hvx-swizzles tile hvx-template output-layout swizzle-budget swizzling-algo hvx-sub-exprs value-bounds translation-history tile-id num-tiles))

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
             (synthesize-hvx-swizzles halide-expr hvx-template output-layout swizzle-budget swizzling-algo hvx-sub-exprs value-bounds translation-history))

           (display (format "Template Cost: ~a\n" template-cost))
           (display (format "Swizzle Cost: ~a\n\n" swizzle-cost))
         
           (cond
             [successful? (values #t hvx-expr (+ template-cost swizzle-cost -0.01) template-cost swizzle-cost)]
             [else
              (lower-to-hvx halide-expr ir-expr hvx-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout cost-ub)])])])]
    [else
      (values #f (void) 0 0 0)]))

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

(define (infer-ideal-subexpr-layout ir-expr desired-output-layout)
  (cond
    [(preserves-layout? ir-expr) (set desired-output-layout)]
    [else
     (define desired-input-layouts
       (match* (ir-expr desired-output-layout)
         ;; Interleaving instructions
;         [((saturate ir-sub-expr round? output-type) 'standard) (if round? (set 'deinterleaved) (set 'standard))]
;         [((saturate ir-sub-expr round? output-type) 'deinterleaved) (if round? (set 'deinterleavedx2) (set 'deinterleaved))]
;         [((saturate ir-sub-expr round? output-type) 'deinterleavedx2) (set)]
;         ;-----
;         [((vs-shift-right ir-sub-expr shift round? saturate? arithmetic? output-type) 'standard) (if (interleaves? ir-expr) (set 'standard) (set 'standard))]
;         [((vs-shift-right ir-sub-expr shift round? saturate? arithmetic? output-type) 'deinterleaved) (if (interleaves? ir-expr) (set 'deinterleavedx2) (set 'deinterleaved))]
;         [((vs-shift-right ir-sub-expr shift round? saturate? arithmetic? output-type) 'deinterleavedx2) (set)]
;         [((vs-shift-right ir-sub-expr shift round? saturate? arithmetic? output-type) 'interleaved) (set 'standard)]
;         ;; Disinterleaving instructions
;         [((vs-mpy-add ir-sub-expr weights output-type saturate?) 'standard) (if (deinterleaves? ir-expr) (set 'interleaved) (set 'standard))]
;         [((vs-mpy-add ir-sub-expr weights output-type saturate?) 'deinterleaved) (if (deinterleaves? ir-expr) (set 'standard) (set 'deinterleaved))]
;         [((vs-mpy-add ir-sub-expr weights output-type saturate?) 'deinterleavedx2) (if (deinterleaves? ir-expr) (set 'deinterleaved) (set 'deinterleavedx2))]
;         ;-----
;         [((vv-mpy-add ir-sub-expr width output-type saturate?) 'standard) (if (deinterleaves? ir-expr) (set 'interleaved) (set 'standard))]
;         [((vv-mpy-add ir-sub-expr width output-type saturate?) 'deinterleaved) (if (deinterleaves? ir-expr) (set 'standard) (set 'deinterleaved))]
;         [((vv-mpy-add ir-sub-expr width output-type saturate?) 'deinterleavedx2) (if (deinterleaves? ir-expr) (set 'deinterleaved) (set 'deinterleavedx2))]
         ;-----
         [(_ _) (set desired-output-layout)]))
     desired-input-layouts]))

(define (preserves-layout? ir-expr)
  (define sub-exprs (hvx-ir:get-subexprs ir-expr))
  (or
   (empty? sub-exprs)
   ;; All non-widening and non-narrowing intrinsics in HVX preserve layout
   (eq? (cpp:type-bw (hvx-ir:elem-type ir-expr)) (cpp:type-bw (hvx-ir:elem-type (first (hvx-ir:get-subexprs ir-expr)))))))
    
(define (interleaves? ir-expr)
  ;; All narrowing intrinsics in HVX deinterleave output (exception is plain type demotion or saturation)
  (define ir-sub-expr (first (hvx-ir:get-subexprs ir-expr)))
  (< (cpp:type-bw (hvx-ir:elem-type ir-expr)) (cpp:type-bw (hvx-ir:elem-type ir-sub-expr))))

(define (deinterleaves? ir-expr)
  ;; All widening intrinsics in HVX interleave output (exception is plain type promotion)
  (define sub-expr-bw (foldr max -1 (map cpp:type-bw (map hvx-ir:elem-type (hvx-ir:get-subexprs ir-expr)))))
  (define widening? (> (cpp:type-bw (hvx-ir:elem-type^ ir-expr)) sub-expr-bw))
  (cond
    ;; If reduction factor is too large, then its cheaper to swizzle the result. Despite the wider precision
    ;; there is still fewer bits that need to be moved
    [(vs-mpy-add? ir-expr) (and widening? (< (length (vs-mpy-add-weight-matrix ir-expr)) 3))]
    [else widening?]))

(define (reduction-factor ir-expr)
  (cond
    [(vs-mpy-add? ir-expr) (vs-mpy-add-weight-matrix ir-expr)]
    [(vv-mpy-add? ir-expr) (vv-mpy-add-width ir-expr)]))