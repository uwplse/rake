#lang rosette/safe

(require
  ;(only-in racket/base for for/list exit values object-name)
  (only-in racket/base for values)
  (only-in racket/base make-hash hash-set! hash-has-key? hash-ref)
  (only-in racket/list range)
  ;(only-in racket/set mutable-set set set-union! list->set set->list)
  (only-in racket/set list->set set->list)
  ;rosette/lib/match
  ;rosette/lib/destruct
  rake/internal/error
  rake/cpp
  rake/halide
  rake/x86/ir/instructions
  rake/x86/ir/interpreter
  rake/x86/ast/types
  rake/x86/ast/utils
  rake/synthesis/lowering/algorithm
  ; rake/synthesis/swizzling/x86
  rake/synthesis/lowering/x86/synthesizer
  )

(provide synthesize-x86-expr)

(define translation-history (make-hash))
(define value-bounds (make-hash))
(define trace (list))

(define (synthesize-x86-expr ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo [sub-expr? #f])
  (x86:lowering:synthesizer:reset-db)

  ;; Push node to trace
  (set! trace (append (list ir-expr) trace))

  (display "(x86) Lowering sub-exprs...\n")
  ;; Lower sub-expressions first
  (define-values (successful? x86-sub-exprs)
    (lower-sub-exprs ir-expr (x86-ir:get-subexprs ir-expr) ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr?))

  (display "(x86) Finished lowering sub-exprs.\n")
  ;; Pop node from trace
  (set! trace (rest trace))

  (pretty-print x86-sub-exprs)

  (cond
    ;; If we were able to lower the sub-exprs, use them to construct the lowered expression
    [successful? (lower-expr ir-expr ir-annotations lowering-algo swizzling-algo sub-expr? x86-sub-exprs)]
    [else (error "Can't progress.")]))

(define (lower-sub-exprs ir-expr ir-sub-exprs ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr?)
  (cond
    [(empty? ir-sub-exprs) (values #t '())]
    [else
     ;; Lower current subexpr
     (define ir-sub-expr (first ir-sub-exprs))
     (define-values (successful? x86-subexpr-impl)
       (synthesize-x86-expr ir-sub-expr ir-annotations ir-bounds lowering-algo swizzling-algo (or sub-expr? (not (x86-ir:combine? ir-expr)))))
     
     (cond
       [successful?
        ;; Save bounds information
        (define key (x86-ir:ast-node-id ir-sub-expr))
        (when (hash-has-key? ir-bounds key)
          (hash-set! value-bounds x86-subexpr-impl (hash-ref ir-bounds key)))

        ;; Lower remaining subexprs
        (define-values (successful? lowered-exprs)
          (lower-sub-exprs ir-expr (rest ir-sub-exprs) ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr?))
        (cond
          [successful? (values #t (append (list x86-subexpr-impl) lowered-exprs))]
          [else (values #f '())])]
       [else (values #f '())])]))


(define (lower-expr ir-expr ir-annotations lowering-algo swizzling-algo sub-expr? x86-sub-exprs)
  (define key (x86-ir:ast-node-id ir-expr))
  (cond
    ;; For combine nodes (data shuffle), unless we are the root node just pass the sub-expressions to the parent.
    ;; If we are, however, the root node then we must synthesize the shuffles now.
    [(and sub-expr? (x86-ir:combine? ir-expr)) (values #t x86-sub-exprs)]

    ;; Does the annotation map contain the equivalent halide (sub-)expression?
    [(hash-has-key? ir-annotations key)
     (define halide-spec (hash-ref ir-annotations key))
     (define-values (successful? x86-expr _)
       (lower-to-optimal-x86 halide-spec ir-expr x86-sub-exprs lowering-algo swizzling-algo sub-expr?))
     (when successful? (hash-set! translation-history x86-expr halide-spec))
     (display "optimal successful?\n")
     (display successful?)
     (newline)
     (pretty-print ir-expr)
     (display "\n\n->\n\n")
     (pretty-print x86-expr)
     (cond
       [successful? (values #t x86-expr)]
       [else (values #f (void))])]

    ;; TODO: Refactor the code below
    ;; If it does not, this is typically because the synthesizer fused multiple Halide loads into a single one:
    [(x86-ir:load-data? ir-expr)
     (define parent-expr (first trace))
     (define parent-spec (hash-ref ir-annotations (x86-ir:ast-node-id parent-expr)))
     (define live-data (halide:extract-buffer-reads parent-spec))
     (define live-buffers (set->list (halide:extract-live-buffers parent-spec)))
     (define buf-elemTypes (map buffer-elemT live-buffers))
     (values #t (set->list (list->set (flatten
                            (map
                             (lambda (t)
                               (define lds
                                 (flatten (map
                                  (lambda (b)
                                    (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
                                    (map (lambda (type) (x86:??load 1 live-data b tbl type)) (x86:get-vector-types t)))
                                  (filter (lambda (b) (eq? t (buffer-elemT b))) live-buffers))))
                               (x86:make-shuffles-list lds t))
                             buf-elemTypes)))))]

    [else
     (error "Unexpected: Did not find Halide IR mapping for expression ~a" ir-expr)]))

(define (lower-to-optimal-x86 halide-expr ir-expr x86-sub-exprs lowering-algo swizzling-algo sub-expr? [cost-ub 99999])
  (define-values (successful? x86-expr expr-cost template-cost swizzle-cost)
    (lower-to-x86 halide-expr ir-expr x86-sub-exprs lowering-algo swizzling-algo sub-expr? cost-ub))

  ;(display "successful?\n")
  ;(display successful?)
  ;(newline)
  ;(pretty-print x86-expr)

  (cond
    [(and successful? (x86-ir:load-data? ir-expr)) (values #t x86-expr 1)]
    [successful?
      (display (format "Total Expression cost (template + swizzle): ~a\n\n" (+ 0.01 expr-cost)))
      (cond
        [(or (<= template-cost 2) (>= swizzle-cost template-cost))
         (display "Searching for a more optimal implementation...\n\n")
         (define-values (successful? better-x86-expr new-cost)
           (lower-to-optimal-x86 halide-expr ir-expr x86-sub-exprs lowering-algo swizzling-algo sub-expr? expr-cost))
        (display "recursive successful?\n")
        (display successful?)
        (newline)
         (cond
           [successful? (values #t better-x86-expr new-cost)]
           [else (values #t x86-expr expr-cost)])]
        [else
         (values #t x86-expr expr-cost)])]
    ; [(eq? cost-ub 99999)
    ;  (values #f (void) 0)]
    [else
     (values #f (void) 0)]))


(define (swizzle-only? x86-template)
  (or (x86:??load? x86-template)
      (x86:??abstr-load? x86-template)
      (x86:??shuffle? x86-template)))

(define (construct-incremental-swizzle-helper x86-template swizzle-budget swizzling-algo x86-sub-exprs num-tiles)
  (define (incremental-swizzle-helper tiles tile-id)
    (if (empty? tiles)
      (values #t '() 0)
      (let ([tile (first tiles)])
        (error "trying to swizzle x86\n"))))
        ; (define-values (successful? x86-expr swizzle-cost)
        ;   (synthesize-x86-swizzles tile x86-template swizzle-budget swizzling-algo x86-sub-exprs value-bounds translation-history tile-id num-tiles))

        ; (if successful?
        ;   (begin
        ;     (define-values (successful? rem-tiles swizzle-cost-rest)
        ;       (incremental-swizzle-helper (rest tiles) (add1 tile-id)))
          
        ;     (if successful?
        ;       ; TODO: the HVX version doesn't add the cost...?
        ;       (values #t (append (list x86-expr) rem-tiles) swizzle-cost)
        ;       (values #f '() 0)))
        ;   (values #f '() 0)))))
  incremental-swizzle-helper)
        
(define (incremental-swizzle halide-expr ir-expr x86-template x86-sub-exprs lowering-algo swizzling-algo template-cost cost-ub sub-expr?)
  (error "Need to implement x86:incremental-swizzle\n"))
  ; (let* ([swizzle-budget (- cost-ub template-cost 0.01)]
  ;        ; TODO: how the heck do we do this calculation?
  ;        [x86-tile-size 128]
  ;        [halide-tile-elem-count (halide:vec-len halide-expr)]
  ;        [halide-tile-elem-bits (cpp:type-bw (halide:elem-type halide-expr))]
  ;        [halide-tile-size (* halide-tile-elem-count halide-tile-elem-bits)]
  ;        [elems-per-x86-tile (quotient x86-tile-size halide-tile-elem-bits)])
      
  ;   (define (break-to-tiles expr tile-size st)
  ;     (cond
  ;       [(< tile-size (- halide-tile-elem-count st)) (cons (slice_vectors expr st 1 tile-size) (break-to-tiles halide-expr tile-size (+ st tile-size)))]
  ;       [(eq? st 0) (list halide-expr)]
  ;       [else (list (slice_vectors expr st 1 tile-size))]))
    
  ;   (define halide-expr-tiles (break-to-tiles halide-expr elems-per-x86-tile 0))

  ;   (display "Made it this far\n")
  ;   (pretty-print halide-expr-tiles)

  ;   (if (< 1 (length halide-expr-tiles))
  ;     (let ([incremental-swizzler (construct-incremental-swizzle-helper x86-template swizzle-budget swizzling-algo x86-sub-exprs (length halide-expr-tiles))])
  ;       (define-values (successful? x86-tiles swizzle-cost)
  ;         (incremental-swizzler halide-expr-tiles 1))

  ;       (display (format "Template Cost: ~a\n" template-cost))
  ;       (display (format "Swizzle Cost: ~a\n\n" swizzle-cost))

  ;       (if successful?
  ;         (values #t (x86:concat-tiles x86-tiles) (+ template-cost swizzle-cost -0.01) template-cost swizzle-cost)
  ;         (lower-to-x86 halide-expr ir-expr x86-sub-exprs lowering-algo swizzling-algo sub-expr? cost-ub)))
  ;         ; (error "Why does incremental-swizzle plural recurse??")))
  ;     (begin
  ;       (define-values (successful? x86-expr swizzle-cost)
  ;         (synthesize-x86-swizzles halide-expr x86-template swizzle-budget swizzling-algo x86-sub-exprs value-bounds translation-history))

  ;       (display (format "Template Cost: ~a\n" template-cost))
  ;       (display (format "Swizzle Cost: ~a\n\n" swizzle-cost))

  ;       (if successful?
  ;         (values #t x86-expr (+ template-cost swizzle-cost -0.01) template-cost swizzle-cost)
  ;         ; (error "Why does incremental-swizzle single recurse??"))))))
  ;         (lower-to-x86 halide-expr ir-expr x86-sub-exprs lowering-algo swizzling-algo sub-expr? cost-ub))))))

(define (lower-to-x86 halide-expr ir-expr x86-sub-exprs lowering-algo swizzling-algo sub-expr? cost-ub)
  ;; Synthesize equivalent x86 template (compute instructions)
  (define-values (successful? x86-template template-cost)
    (synthesize-x86-template halide-expr ir-expr x86-sub-exprs value-bounds translation-history lowering-algo cost-ub))

  (display "synthesize-x86-template ended\n")
  (println successful?)
  (println template-cost)
  (pretty-print x86-template)
  (pretty-print halide-expr)

  (if successful?
    (if (and sub-expr? (swizzle-only? x86-template))
      ; If this is a subexpr and just a swizzle, return it
      (values #t x86-template template-cost template-cost 0)
      (begin
        (println "Need to swizzle...")
        (error "finished")))
    (values #f (void) 0 0 0)))

  ;(display (swizzle-only? x86-template))
  ;(newline)

  ; (if successful?
  ;     ; If this is a subexpr and just a swizzle, return it
  ;     (if (and sub-expr? (swizzle-only? x86-template))
  ;         ; TODO: why return template-cost twice?
  ;         (values #t x86-template template-cost template-cost 0)
  ;         (begin
  ;             ; TODO: do we need the incremental swizzling stuff?
  ;             (pretty-print x86-template)
  ;             (pretty-print halide-expr)
  ;             (incremental-swizzle halide-expr ir-expr x86-template x86-sub-exprs lowering-algo swizzling-algo template-cost cost-ub sub-expr?)
  ;         ))
  ;     (values #f (void) 0 0 0))
; )