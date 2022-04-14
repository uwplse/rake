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
  rake/arm/ir/instructions
  rake/arm/ir/interpreter
  ;rake/hvx/ast/visitor
  rake/arm/ast/types
  rake/arm/ast/interpreter
  ;rake/hvx/cost-model
  ;rake/synthesis/bounds
  rake/synthesis/lowering/algorithm
  rake/synthesis/swizzling/arm
  rake/synthesis/lowering/arm/synthesizer
  )

(provide synthesize-arm-expr)

(define translation-history (make-hash))
(define value-bounds (make-hash))
(define trace (list))

(define (synthesize-arm-expr ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo [sub-expr? #f])
  ;; Reset the state of synthesis database
  (arm:lowering:synthesizer:reset-db)

  ;; Push node to trace
  (set! trace (append (list ir-expr) trace))

  ;; Lower sub-expressions first
  (define-values (successful? arm-sub-exprs)
    (lower-sub-exprs ir-expr (arm-ir:get-subexprs ir-expr) ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr?))
  
  ;; Pop node from trace
  (set! trace (rest trace))

  (cond
    ;; If we were able to lower the sub-exprs, use them to construct the lowered expression
    [successful? (lower-expr ir-expr ir-annotations lowering-algo swizzling-algo sub-expr? arm-sub-exprs)]
    [else (values #f (void))]))

(define (lower-sub-exprs ir-expr ir-sub-exprs ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr?)
  (cond
    [(empty? ir-sub-exprs) (values #t '())]
    [else
     ;; Lower current subexpr
     (define ir-sub-expr (first ir-sub-exprs))
     (define-values (successful? arm-subexpr-impl)
       (synthesize-arm-expr ir-sub-expr ir-annotations ir-bounds lowering-algo swizzling-algo (or sub-expr? (not (arm-ir:combine? ir-expr)))))
     
     (cond
       [successful?
        ;; Save bounds information
        (define key (arm-ir:ast-node-id ir-sub-expr))
        (when (hash-has-key? ir-bounds key)
          (hash-set! value-bounds arm-subexpr-impl (hash-ref ir-bounds key)))

        ;; Lower remaining subexprs
        (define-values (successful? lowered-exprs)
          (lower-sub-exprs ir-expr (rest ir-sub-exprs) ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr?))
        (cond
          [successful? (values #t (append arm-subexpr-impl lowered-exprs))]
          [else (values #f '())])]
       [else (values #f '())])]))

(define (lower-expr ir-expr ir-annotations lowering-algo swizzling-algo sub-expr? arm-sub-exprs)
  (define key (arm-ir:ast-node-id ir-expr))
  (cond
    ;; For combine nodes (data shuffle), unless we are the root node just pass the sub-expressions to the parent.
    ;; If we are, however, the root node then we must synthesize the shuffles now.
    [(and sub-expr? (arm-ir:combine? ir-expr)) (values #t arm-sub-exprs)]

    ;; Does the annotation map contain the equivalent halide (sub-)expression?
    [(hash-has-key? ir-annotations key)
     (define halide-spec (hash-ref ir-annotations key))
     (define-values (successful? arm-expr _)
       (lower-to-optimal-arm halide-spec ir-expr arm-sub-exprs lowering-algo swizzling-algo sub-expr?))
     (when successful? (hash-set! translation-history arm-expr halide-spec))
     (cond
       [successful? (values #t (list arm-expr))]
       [else (values #f (void))])]

    ;; TODO: Refactor the code below
    ;; If it does not, this is typically because the synthesizer fused multiple Halide loads into a single one:
    [(arm-ir:load-data? ir-expr)
     (define parent-expr (first trace))
     (define parent-spec (hash-ref ir-annotations (arm-ir:ast-node-id parent-expr)))
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
                                    (map (lambda (type) (arm:??load 1 live-data b tbl type)) (arm:get-vector-types t)))
                                  (filter (lambda (b) (eq? t (buffer-elemT b))) live-buffers))))
                               (arm:make-shuffles-list lds t))
                             buf-elemTypes)))))]

    [else
     (error "Unexpected: Did not find Halide IR mapping for expression ~a" ir-expr)]))

(define (lower-to-optimal-arm halide-expr ir-expr arm-sub-exprs lowering-algo swizzling-algo sub-expr? [cost-ub 99999])
  (define-values (successful? arm-expr expr-cost template-cost swizzle-cost)
    (lower-to-arm halide-expr ir-expr arm-sub-exprs lowering-algo swizzling-algo sub-expr? cost-ub))

  ;(display "successful?\n")
  ;(display successful?)
  ;(newline)
  ;(pretty-print arm-expr)

  (cond
    [(and successful? (arm-ir:load-data? ir-expr)) (values #t arm-expr 1)]
    [successful?
      (display (format "Total Expression cost (template + swizzle): ~a\n\n" (+ 0.01 expr-cost)))
      (cond
        [(or (<= template-cost 2) (>= swizzle-cost template-cost))
         (display "Searching for a more optimal implementation...\n\n")
         (define-values (successful? better-arm-expr new-cost)
           (lower-to-optimal-arm halide-expr ir-expr arm-sub-exprs lowering-algo swizzling-algo sub-expr? expr-cost))
         (cond
           [successful? (values #t better-arm-expr new-cost)]
           [else (values #t arm-expr expr-cost)])]
        [else
         (values #t arm-expr expr-cost)])]
    ; [(eq? cost-ub 99999)
    ;  (values #f (void) 0)]
    [else
     (values #f (void) 0)]))

(define (swizzle-only? arm-template)
  (or (arm:??load? arm-template) (arm:??abstr-load? arm-template) (arm:??shuffle? arm-template)))

(define (construct-incremental-swizzle-helper arm-template swizzle-budget swizzling-algo arm-sub-exprs num-tiles)
  (define (incremental-swizzle-helper tiles tile-id)
    (if (empty? tiles)
      (values #t '() 0)
      (let ([tile (first tiles)])
        (define-values (successful? arm-expr swizzle-cost)
          (synthesize-arm-swizzles tile arm-template swizzle-budget swizzling-algo arm-sub-exprs value-bounds translation-history tile-id num-tiles))

        (if successful?
          (begin
            (define-values (successful? rem-tiles swizzle-cost-rest)
              (incremental-swizzle-helper (rest tiles) (add1 tile-id)))
          
            (if successful?
              ; TODO: the HVX version doesn't add the cost...?
              (values #t (append (list arm-expr) rem-tiles) swizzle-cost)
              (values #f '() 0)))
          (values #f '() 0)))))
  incremental-swizzle-helper)
        
(define (incremental-swizzle halide-expr ir-expr arm-template arm-sub-exprs lowering-algo swizzling-algo template-cost cost-ub sub-expr?)
  (let* ([swizzle-budget (- cost-ub template-cost 0.01)]
         ; TODO: how the heck do we do this calculation?
         [arm-tile-size (if (arm:half-width? (arm:interpret arm-template)) 64 128)]
         [halide-tile-elem-count (halide:vec-len halide-expr)]
         [halide-tile-elem-bits (cpp:type-bw (halide:elem-type halide-expr))]
         [halide-tile-size (* halide-tile-elem-count halide-tile-elem-bits)]
         [elems-per-arm-tile (quotient arm-tile-size halide-tile-elem-bits)])
      
    (define (break-to-tiles expr tile-size st)
      (cond
        [(< tile-size (- halide-tile-elem-count st)) (cons (slice_vectors expr st 1 tile-size) (break-to-tiles halide-expr tile-size (+ st tile-size)))]
        [(eq? st 0) (list halide-expr)]
        [else (list (slice_vectors expr st 1 tile-size))]))
    
    (define halide-expr-tiles (break-to-tiles halide-expr elems-per-arm-tile 0))

    ;(display "Made it this far\n")
    ;(pretty-print halide-expr-tiles)

    (if (< 1 (length halide-expr-tiles))
      (let ([incremental-swizzler (construct-incremental-swizzle-helper arm-template swizzle-budget swizzling-algo arm-sub-exprs (length halide-expr-tiles))])
        (define-values (successful? arm-tiles swizzle-cost)
          (incremental-swizzler halide-expr-tiles 1))

        (display (format "Template Cost: ~a\n" template-cost))
        (display (format "Swizzle Cost: ~a\n\n" swizzle-cost))

        (if successful?
          (values #t (arm:concat-tiles arm-tiles) (+ template-cost swizzle-cost -0.01) template-cost swizzle-cost)
          (lower-to-arm halide-expr ir-expr arm-sub-exprs lowering-algo swizzling-algo sub-expr? cost-ub)))
          ; (error "Why does incremental-swizzle plural recurse??")))
      (begin
        (define-values (successful? arm-expr swizzle-cost)
          (synthesize-arm-swizzles halide-expr arm-template swizzle-budget swizzling-algo arm-sub-exprs value-bounds translation-history))

        (display (format "Template Cost: ~a\n" template-cost))
        (display (format "Swizzle Cost: ~a\n\n" swizzle-cost))

        (if successful?
          (values #t arm-expr (+ template-cost swizzle-cost -0.01) template-cost swizzle-cost)
          ; (error "Why does incremental-swizzle single recurse??"))))))
          (lower-to-arm halide-expr ir-expr arm-sub-exprs lowering-algo swizzling-algo sub-expr? cost-ub))))))

(define (lower-to-arm halide-expr ir-expr arm-sub-exprs lowering-algo swizzling-algo sub-expr? cost-ub)
  ;; Synthesize equivalent ARM template (compute instructions)
  (define-values (successful? arm-template template-cost)
    (synthesize-arm-template halide-expr ir-expr arm-sub-exprs value-bounds translation-history lowering-algo cost-ub))

  ;(display "here\n")
  ;(pretty-print arm-template)
  ;(pretty-print halide-expr)
  ;(display (swizzle-only? arm-template))
  ;(newline)

  (if successful?
      ; If this is a subexpr and just a swizzle, return it
      (if (and sub-expr? (swizzle-only? arm-template))
          ; TODO: why return template-cost twice?
          (values #t arm-template template-cost template-cost 0)
          (incremental-swizzle halide-expr ir-expr arm-template arm-sub-exprs lowering-algo swizzling-algo template-cost cost-ub sub-expr?))
      (values #f (void) 0 0 0)))
