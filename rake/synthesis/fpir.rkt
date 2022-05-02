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
  rake/fpir/ast/types
  rake/fpir/ast/utils
  rake/fpir/ast/type_utils
  rake/synthesis/lowering/algorithm1
  rake/synthesis/lowering/fpir/synthesizer
  rake/synthesis/lowering/fpir/layouts
  rake/synthesis/swizzling/fpir/algorithm
  )

(provide synthesize-fpir-expr)

(define translation-history (make-hash))
(define value-bounds (make-hash))
(define trace (list))

;; TODO: what are all of the possible values of layout?
(define (synthesize-fpir-expr ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo [sub-expr? #f] [output-layout 'in-order])
  (fpir:lowering:synthesizer:reset-db)

  ;; Push node to trace
  (set! trace (append (list ir-expr) trace))

  ; (when (not sub-expr?)
  ;   (display "(fpir) Inferring Data Layouts...\n")
  ;   (display "=========================\n\n")
  ;; TODO: need to implement this method
  ;   (print-layout-map ir-expr output-layout)
  ;   (newline))

  (display "(fpir) Lowering sub-exprs...\n")
  ;; Lower sub-expressions first
  (define-values (successful? fpir-sub-exprs)
    (lower-sub-exprs ir-expr (x86-ir:get-subexprs ir-expr) ir-annotations ir-bounds lowering-algo swizzling-algo #t output-layout))

  (display "(fpir) Finished lowering sub-exprs.\n")
  ;; Pop node from trace
  (set! trace (rest trace))

  (pretty-print fpir-sub-exprs)

  (cond
    ;; If we were able to lower the sub-exprs, use them to construct the lowered expression
    [successful? (lower-expr ir-expr ir-annotations lowering-algo swizzling-algo sub-expr? output-layout fpir-sub-exprs)]
    [else (error "Can't progress.")]))

(define (handle-load-data parent-spec)
  (define live-data (halide:extract-buffer-reads parent-spec))
  (define live-buffers (set->list (halide:extract-live-buffers parent-spec)))
  (define buf-elemTypes (map buffer-elemT live-buffers))
  (define loads (set->list (list->set (flatten
                  (map
                    (lambda (t)
                      (define lds
                        (flatten
                        (map
                          (lambda (b)
                            (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
                            (map (lambda (type) (fpir:??load 1 live-data b tbl type)) (fpir:get-vector-types t)))
                          (filter (lambda (b) (eq? t (buffer-elemT b))) live-buffers))))
                      (fpir:make-shuffles-list lds t))
                    buf-elemTypes)))))
  ; (error (format "Loads: ~a" (pretty-format loads)))
  (values #t loads))

(define (lower-sub-exprs ir-expr ir-sub-exprs ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr? output-layout)
  (cond
    [(empty? ir-sub-exprs) (values #t '())]
    [else
     ;; Lower current subexpr
     (define ir-sub-expr (first ir-sub-exprs))

     (display (format "Lowering sub-expr: ~a\n\n" ir-sub-expr))
     (display (format "  sub-expr id: ~a\n\n" (x86-ir:ast-node-id ir-sub-expr)))
     ;; TODO: design this method.
     (define ideal-subexpr-layout (fpir:infer-ideal-subexpr-layouts ir-expr ir-sub-expr output-layout))

     (define-values (successful? fpir-subexpr-impl)
      (cond
        ;; Get all possible loads for a load-data (i.e. 128 bit or 256 bit)
        [(and sub-expr? (x86-ir:load-data? ir-sub-expr)) (handle-load-data (hash-ref ir-annotations (x86-ir:ast-node-id ir-sub-expr)))]
        [else
          (synthesize-fpir-expr ir-sub-expr ir-annotations ir-bounds lowering-algo swizzling-algo (or sub-expr? (not (x86-ir:combine? ir-expr))) ideal-subexpr-layout)]))

    ;  (assert (or (and (not successful?) (void? fpir-subexpr-impl)) (and successful? (list? fpir-subexpr-impl))))

     (cond
       [successful?
        ;; Save bounds information
        (define key (x86-ir:ast-node-id ir-sub-expr))
        (when (hash-has-key? ir-bounds key)
          (hash-set! value-bounds fpir-subexpr-impl (hash-ref ir-bounds key)))

        ;; Lower remaining subexprs
        (define-values (successful? lowered-exprs)
          (lower-sub-exprs ir-expr (rest ir-sub-exprs) ir-annotations ir-bounds lowering-algo swizzling-algo sub-expr? output-layout))
        (cond
          [successful? (values #t (append (flatten (list fpir-subexpr-impl)) lowered-exprs))]
          [else (values #f '())])]
       [else (values #f '())])]))


(define (lower-expr ir-expr ir-annotations lowering-algo swizzling-algo sub-expr? output-layout fpir-sub-exprs)
  (define key (x86-ir:ast-node-id ir-expr))
  (cond
    ;; For combine nodes (data shuffle), unless we are the root node just pass the sub-expressions to the parent.
    ;; If we are, however, the root node then we must synthesize the shuffles now.
    [(and sub-expr? (x86-ir:combine? ir-expr)) (values #t fpir-sub-exprs)]

    ;; Does the annotation map contain the equivalent halide (sub-)expression?
    [(hash-has-key? ir-annotations key)
     (display "hash had key.\n")
     (define halide-spec (hash-ref ir-annotations key))
     (define-values (successful? fpir-expr _)
       (lower-to-optimal-fpir halide-spec ir-expr fpir-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout))
     (when successful? (hash-set! translation-history fpir-expr halide-spec))
     (display "optimal successful?\n")
     (display successful?)
     (newline)
     (pretty-print ir-expr)
     (display "\n\n->\n\n")
     (pretty-print fpir-expr)
     (cond
       [successful? (values #t (list fpir-expr))]
       [else (values #f (void))])]

    ;; TODO: Refactor the code below
    ;; If it does not, this is typically because the synthesizer fused multiple Halide loads into a single one:
    [(x86-ir:load-data? ir-expr)
     (error "lowering load-data!")
     (define parent-expr (first trace))
     (define parent-spec (hash-ref ir-annotations (x86-ir:ast-node-id parent-expr)))
     (define live-data (halide:extract-buffer-reads parent-spec))
     (define live-buffers (set->list (halide:extract-live-buffers parent-spec)))
     (define buf-elemTypes (map buffer-elemT live-buffers))
     (define loads (set->list (list->set (flatten
                     (map
                       (lambda (t)
                        (define lds
                          (flatten
                           (map
                            (lambda (b)
                              (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
                              (map (lambda (type) (fpir:??load 1 live-data b tbl type)) (fpir:get-vector-types t)))
                            (filter (lambda (b) (eq? t (buffer-elemT b))) live-buffers))))
                        (fpir:make-shuffles-list lds t))
                      buf-elemTypes)))))
     (values #t loads)]

    [else
     (error "Unexpected: Did not find Halide IR mapping for expression ~a" ir-expr)]))

(define (lower-to-optimal-fpir halide-expr ir-expr fpir-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout [cost-ub 99999])
  (define-values (successful? fpir-expr expr-cost template-cost swizzle-cost)
    (lower-to-fpir halide-expr ir-expr fpir-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout cost-ub))

  ;(display "successful?\n")
  ;(display successful?)
  ;(newline)
  ;(pretty-print fpir-expr)

  (cond
    [(and successful? (x86-ir:load-data? ir-expr)) (values #t fpir-expr 1)]
    [successful?
      (display (format "Total Expression cost (template + swizzle): ~a\n\n" (+ 0.01 expr-cost)))
      (cond
        [(or (<= template-cost 2) (>= swizzle-cost template-cost))
         (display "Searching for a more optimal implementation...\n\n")
         (define-values (successful? better-fpir-expr new-cost)
           (lower-to-optimal-fpir halide-expr ir-expr fpir-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout expr-cost))
        (display "recursive successful?\n")
        (display successful?)
        (newline)
         (cond
           [successful? (values #t better-fpir-expr new-cost)]
           [else (values #t fpir-expr expr-cost)])]
        [else
         (values #t fpir-expr expr-cost)])]
    ; [(eq? cost-ub 99999)
    ;  (values #f (void) 0)]
    [else
     (values #f (void) 0)]))


(define (swizzle-only? fpir-template)
  (or (fpir:??load? fpir-template)
      (fpir:??abstr-load? fpir-template)
      (fpir:??shuffle? fpir-template)))

(define (construct-incremental-swizzle ir-expr fpir-template output-layout swizzle-budget swizzling-algo fpir-sub-exprs value-bounds translation-history num-tiles)
  (define (incremental-swizzle-helper tiles tile-id)
    (if (empty? tiles)
      (values #t '() 0)
      (let ([tile (first tiles)])
        ; (error "trying to swizzle fpir\n"))))
        ;; Synthesize data-movement to complete the template
        (define-values (successful? fpir-expr swizzle-cost)
          (synthesize-fpir-swizzles ir-expr tile fpir-template output-layout swizzle-budget swizzling-algo fpir-sub-exprs value-bounds translation-history tile-id num-tiles))

        (if successful?
          (begin
            (define-values (successful? rem-tiles swizzle-cost-rest)
              (incremental-swizzle-helper (rest tiles) (add1 tile-id)))
          
            (if successful?
              ; TODO: the HVX version doesn't add the cost...?
              (values #t (append (list fpir-expr) rem-tiles) swizzle-cost)
              (values #f '() 0)))
          (values #f '() 0)))))
  incremental-swizzle-helper)

(define (lower-to-fpir halide-expr ir-expr fpir-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout cost-ub)
  ;; Synthesize equivalent fpir template (compute instructions)
  (define-values (successful? fpir-template template-cost)
    (synthesize-fpir-template halide-expr ir-expr fpir-sub-exprs output-layout value-bounds translation-history lowering-algo cost-ub))

  (display "synthesize-fpir-template ended\n")
  (println successful?)
  (println template-cost)
  (pretty-print fpir-template)
  (pretty-print halide-expr)
  (pretty-print output-layout)

  (if successful?
    (cond
      ;; If this is a subexpr and just a swizzle, return it
      [(and sub-expr? (swizzle-only? fpir-template))
        (values #t fpir-template template-cost template-cost 0)]
      ;; If it's just a broadcast then return it
      ;; TODO: might need a concat-tiles here?
      ; [(and sub-expr? (fpir:is-broadcast? fpir-template))
      ;   (values #t fpir-template template-cost template-cost 0)]
      [else
        (let ([swizzle-budget (- cost-ub template-cost 0.01)]
              [halide-expr-tiles (generate-halide-tiles halide-expr fpir-template output-layout)])
          (display "halide-expr-tiles:\n")
          (pretty-print halide-expr-tiles)
          (cond
            [(> (length halide-expr-tiles) 1)
              (let ([incremental-swizzle (construct-incremental-swizzle ir-expr fpir-template output-layout swizzle-budget swizzling-algo fpir-sub-exprs value-bounds translation-history (length halide-expr-tiles))])
                (define-values (successful? fpir-tiles swizzle-cost)
                  (incremental-swizzle halide-expr-tiles 1))

                (display (format "Template Cost: ~a\n" template-cost))
                (display (format "Swizzle Cost: ~a\n\n" swizzle-cost))

                (cond
                  [successful? (values #t (fpir:concat-tiles fpir-tiles) (+ template-cost swizzle-cost -0.01) template-cost swizzle-cost)]
                  [else
                    (lower-to-fpir halide-expr ir-expr fpir-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout cost-ub)]))]
            [else
              ;; Synthesize data-movement to complete the template
              (define-values (successful? fpir-expr swizzle-cost)
                (synthesize-fpir-swizzles ir-expr halide-expr fpir-template output-layout swizzle-budget swizzling-algo fpir-sub-exprs value-bounds translation-history))

              (display (format "Template Cost: ~a\n" template-cost))
              (display (format "Swizzle Cost: ~a\n\n" swizzle-cost))

              (cond
                [successful? (values #t fpir-expr (+ template-cost swizzle-cost -0.01) template-cost swizzle-cost)]
                [else
                  (lower-to-fpir halide-expr ir-expr fpir-sub-exprs lowering-algo swizzling-algo sub-expr? output-layout cost-ub)])]))])
    (values #f (void) 0 0 0)))

  ;(display (swizzle-only? fpir-template))
  ;(newline)

  ; (if successful?
  ;     ; If this is a subexpr and just a swizzle, return it
  ;     (if (and sub-expr? (swizzle-only? fpir-template))
  ;         ; TODO: why return template-cost twice?
  ;         (values #t fpir-template template-cost template-cost 0)
  ;         (begin
  ;             ; TODO: do we need the incremental swizzling stuff?
  ;             (pretty-print fpir-template)
  ;             (pretty-print halide-expr)
  ;             (incremental-swizzle halide-expr ir-expr fpir-template fpir-sub-exprs lowering-algo swizzling-algo template-cost cost-ub sub-expr?)
  ;         ))
  ;     (values #f (void) 0 0 0))
; )



(define (generate-halide-tiles halide-expr fpir-template output-layout)
  ;; TODO: could this ever be 128?
  (let ([fpir-tile-size (if (fpir:is-256-expr? fpir-template) 256 128)]
        [halide-tile-elem-cnt (halide:vec-len halide-expr)]
        [halide-tile-elem-bits (cpp:type-bw (halide:elem-type halide-expr))])
    (let* ([halide-tile-size (* halide-tile-elem-cnt halide-tile-elem-bits)]
           [elems-per-fpir-tile (quotient fpir-tile-size halide-tile-elem-bits)])
      (define (break-to-standard-tiles expr tile-size start)
        (cond
          [(> (- halide-tile-elem-cnt start) tile-size)
            (cons (slice_vectors expr start 1 tile-size)
                  (break-to-standard-tiles halide-expr tile-size (+ start tile-size)))]
          [(eq? start 0) (list halide-expr)]
          [else (list (slice_vectors expr start 1 tile-size))]))

      ; (define (break-to-deinterleaved-tiles expr tile-size start)
      ;   (cond
      ;     [(> (- halide-tile-elem-cnt start) tile-size)
      ;     (append
      ;       (list
      ;       (slice_vectors expr start 1 tile-size)
      ;       (slice_vectors expr (+ start 1) 1 tile-size))
      ;       (break-to-deinterleaved-tiles halide-expr tile-size (+ start tile-size)))]
      ;     [else
      ;     (list
      ;       (slice_vectors expr start 1 tile-size)
      ;       (slice_vectors expr (+ start 1) 1 tile-size))]))

      (cond
        [(eq? output-layout 'in-order)
          (break-to-standard-tiles halide-expr elems-per-fpir-tile 0)]
        [else
          (error (format "fpir:generate-halide-tiles cannot handle output-layout: ~a" output-layout))]))))
