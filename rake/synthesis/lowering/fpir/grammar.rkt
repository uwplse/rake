#lang rosette

(require
  (only-in rosette/base/core/term @app)
  rosette/lib/destruct
  rosette/lib/synthax
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/halide/ir/analysis
  rake/x86/ir/instructions
  rake/x86/ir/interpreter
  rake/fpir/ast/types
  rake/fpir/ast/interpreter
  rake/fpir/ast/visitor
  rake/fpir/ast/cost_model
  rake/fpir/ast/analysis
  rake/fpir/ast/type_utils
  rake/fpir/ast/utils
  )

(provide get-fpir-grammar)

(define grammar-cache (make-hash))

(define (get-fpir-grammar halide-expr ir-expr fpir-sub-exprs output-layout cost-ub)
  (let* ([key (cons (x86-ir:ast-node-id ir-expr) fpir-sub-exprs)]
         [check-cache (and (not (x86-ir:load-data? ir-expr)) (hash-has-key? grammar-cache key))]
         [candidates (if check-cache (hash-ref grammar-cache key) (get-fpir-grammar-helper halide-expr ir-expr fpir-sub-exprs output-layout))])
    ;(println cost-ub)
    ;(println key)
    ;(println grammar-cache)
    ;(println check-cache)
    ;(println (get-fpir-grammar-helper halide-expr ir-expr fpir-sub-exprs))
    ;(println (if check-cache (hash-ref grammar-cache key) (get-fpir-grammar-helper halide-expr ir-expr fpir-sub-exprs)))
    (display (format "get-fpir-grammar received ~a candidates\n" (length candidates)))
    ; (pretty-print candidates)
    ;(println (filter (lambda (c) (<= (cdr c) cost-ub)) candidates))
    (let ([filtered (filter (lambda (c) (<= (cdr c) cost-ub)) candidates)])
      (display (format "And ~a of them pass the cost filtering\n" (length filtered)))
      filtered)))

(define (get-input-type expr)
  (if (x86-ir:combine? expr)
      (let ([t0 (x86-ir:elem-type (x86-ir:combine-expr0 expr))]
            [t1 (x86-ir:elem-type (x86-ir:combine-expr1 expr))])
        ; TODO: understand why HVX selects the narrower type..
        (if (< (cpp:type-bw t0) (cpp:type-bw t1)) t0 t1))
      (x86-ir:elem-type expr)))

(define (sort-and-uniquify candidates)
  ;; Sort them
  (define sorted (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))

  (map (lambda (candidate) (cons (uniquify-swizzles (car candidate)) (cdr candidate))) sorted))

(define (handle-build-vec base stride len fpir-sub-exprs halide-expr)
  (cond
    ;; TODO: handle arbitrary logical vector lengths.
    [(and (int32_t? stride) (eq? len 32))
      (let ([output-type 'i32x8]
            [exprs (list (ramp base stride 8)
                         (ramp (sca-add base (int32_t (bv 8 32))) stride 8)
                         (ramp (sca-add base (int32_t (bv 16 32))) stride 8)
                         (ramp (sca-add base (int32_t (bv 24 32))) stride 8))]
            [ihal (halide:interpret halide-expr)]
            [tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256))])
        (list (cons (fpir:??swizzle 0 (for/list ([i (range 16)]) (list (ihal i))) exprs tbl output-type) 1)))]
    [else (error "Unimplemented: handle-build-vec base stride len fpir-sub-exprs halide-expr")]))

(define (make-scalar-broadcast scalar fpir-instr)
  (cons (fpir-instr scalar) (fpir:instr-cost fpir-instr)))

(define (handle-broadcast scalar halide-expr)
  (list (make-scalar-broadcast scalar fpir:broadcast256) (make-scalar-broadcast scalar fpir:broadcast128)))

(define (get-widen-isa)
  (list fpir:widen))

;; TODO: including these can be dangerous...
(define (get-reinterpret-isa)
  (list
    fpir:reinterpret
    ; fpir:reinterpret_to_i8x32 fpir:reinterpret_to_i16x16 fpir:reinterpret_to_i32x8 fpir:reinterpret_to_i64x4
    ; fpir:reinterpret_to_i8x16 fpir:reinterpret_to_i16x8 fpir:reinterpret_to_i32x4 fpir:reinterpret_to_i64x2
    ; fpir:reinterpret_to_u8x32 fpir:reinterpret_to_u16x16 fpir:reinterpret_to_u32x8 fpir:reinterpret_to_u64x4
    ; fpir:reinterpret_to_u8x16 fpir:reinterpret_to_u16x8 fpir:reinterpret_to_u32x4 fpir:reinterpret_to_u64x2
))

(define (get-broadcast-isa)
  (list
    fpir:broadcast128 fpir:broadcast256
))

(define (make-fill-arg-grammars scalars)
  ; (display "make-fill-arg-grammars\n")
  ; (pretty-print scalars)
  (define (bool-const) (define-symbolic* b boolean?) b)
  (define (int8-const) (int8x1 (apply choose* scalars)))
  (define (uint8-const) (uint8x1 (apply choose* scalars)))
  (define (int16-const) (int16x1 (apply choose* scalars)))
  (define (uint16-const) (uint16x1 (apply choose* scalars)))
  (define (int32-const) (int32x1 (apply choose* scalars)))
  (define (uint32-const) (uint32x1 (apply choose* scalars)))
  (define (int64-const) (int64x1 (apply choose* scalars)))
  (define (uint64-const) (uint64x1 (apply choose* scalars)))
  (define (fill-arg-grammars node [pos -1])
    (match node
      ['bool (bool-const)]
      ['int8 (int8-const)]
      ['uint8 (uint8-const)]
      ['uint8_t (uint8-const)]
      ['int16 (int16-const)]
      ['uint16 (uint16-const)]
      ['int32 (int32-const)]
      ['uint32 (uint32-const)]
      ['int64 (int64-const)]
      ['uint64 (uint64-const)]
      ; TODO: HVX has some weird types here, for scalar registers?
      [_ node]))
  fill-arg-grammars)


(define (handle-vs-mpy-add expr weights sat? round? half? output-type fpir-sub-exprs halide-expr)
  (let* ([input-type (get-input-type expr)]
         [widening? (> (cpp:type-bw output-type) (cpp:type-bw  input-type))]
         ;; TODO: try pruning.
         [isa
          (flatten
            (list
              ;; TODO: should we ever allow reinterpretation or broadcasts?
              (get-reinterpret-isa)
              ; (get-broadcast-isa)
              ;; zext/sext
              (if widening? (get-widen-isa) '())
              ;; rounding_halving_adds
              (if half? (list fpir:add_h) '())
              (if round? (list fpir:add_rh) '())
              ;; regular adds/subs/muls
              (list fpir:add fpir:sub fpir:mul-vs)
              ;; widening adds/subs/muls
              (if widening? (list fpir:add_w fpir:sub_w fpir:mul_w-vs) '())
              ;; saturating adds/subs
              (if sat? (list fpir:add_s fpir:sub_s) '())

              ;; TODO: are these useful?
              (list fpir:lo fpir:hi)

              ;; TODO: should we have shl instructions?
              ;; TODO: we should have vector-scalar variants only...
              (if widening?
                fpir:shl_w
                '())
              (if round?
                fpir:shl_r
                '())
              fpir:shl
          ))]
         ; TODO: better pruning and more isa options
         ; TODO: are there better depth/cost combos?
         [depth (+ (length weights) 1)]
         [max-cost (* (length weights) 2)]
         [grouped-sub-exprs (prepare-sub-exprs fpir-sub-exprs)]
         [number-reads (length weights)]
         [desired-types (fpir:get-vector-types output-type)]
         ; Enumerate those with the correct output type
         ; TODO: do the pruning somehow...
         [candidates (time (enumerate-fpir isa desired-types grouped-sub-exprs depth max-cost number-reads))]
         [load-buffers (halide:extract-live-buffers halide-expr)]
         [live-buffers (lambda (expr)
                         (let* ([live-bufs (mutable-set)]
                               [extract-buffer (lambda (node [pos -1])
                                                  (destruct node
                                                    [(buffer data elemT) (set-add! live-bufs node) node]
                                                    [(fpir:??swizzle id live-data exprs idx-tbl output-type)
                                                      (begin
                                                        ; (display (format "checking: (fpir:??swizzle ~a ~a ~a ~a ~a)\n" id live-data exprs idx-tbl output-type))
                                                        node)]
                                                    [_ node]))])
                            (fpir:visit expr extract-buffer)
                            live-bufs))])

    ; (println (length candidates))
    ; (error "handle-vs-mpy-add")
    ; (display "fpir vs-mpy-add sub exprs!\n")
    ; (pretty-print fpir-sub-exprs)
    ; (display "grouped sub exprs!\n")
    ; (pretty-print grouped-sub-exprs)
    ; (pretty-print candidates)
    ; (pretty-print isa)
    ; (pretty-print grouped-sub-exprs)
    ; (display (format "Types: ~a ~a ~a \n" desired-types input-type output-type))

    ; ; Filter out templates that read too much or too little data
    ; (display (format "Before filtering reads: ~a\n" (length candidates)))
    ; (display (format "Number of reads: ~a\n" number-reads))

    (set! candidates (time (filter (lambda (c) (eq? (fpir:max-unique-inputs (car c)) number-reads)) candidates)))

    ; (display (format "After filtering reads: ~a\n" (length candidates)))
    ; (pretty-print candidates)
    ; (display (format "Load buffers: ~a\n" load-buffers))
    (set! candidates (time (filter (lambda (c) (equal? (live-buffers (car c)) load-buffers)) candidates)))

    ; (display (format "After filtering buffers: ~a\n" (length candidates)))

    ;; Compute read counts
    (set! candidates (time (map (lambda (c) (cons (car c) (cons (cdr c) (count-reads (car c))))) candidates)))

    ;; Sort them (I am ashamed of this line below)
    (set! candidates (time (sort candidates (lambda (v1 v2) (if (eq? (car (cdr v1)) (car (cdr v2))) (< (cdr (cdr v1)) (cdr (cdr v2))) (< (car (cdr v1)) (car (cdr v2))))))))

    ; (println "fpir:vs-mpy-add sorted candidates!")
    ; (pretty-print candidates)

    (let* ([add-scalars (halide:extract-add-scalars halide-expr)]
           [mpy-add-scalars (set->list (list->set (append weights add-scalars)))]
          ;  [shl-scalars (halide:make-scalar-log2s mpy-add-scalars)]
          ;  [int-consts (set->list (list->set (append shl-scalars mpy-add-scalars)))]
          )
      ; (define fill-arg-grammars (make-fill-arg-grammars int-consts))
      (define fill-arg-grammars (make-fill-arg-grammars mpy-add-scalars))

      (time (for/list ([candidate candidates]) (cons (uniquify-swizzles (fpir:visit (car candidate) fill-arg-grammars)) (car (cdr candidate))))))))

(define (handle-cast expr output-type saturate? fpir-sub-exprs halide-expr)
  (let* ([input-type (get-input-type expr)]
         [narrowing? (< (cpp:type-bw output-type) (cpp:type-bw input-type))]
         [widening? (> (cpp:type-bw output-type) (cpp:type-bw input-type))]
         [isa (cond
                ;; TODO: narrowing is difficult... may need bitwise and with a constant?
                [narrowing? (error "fpir:handle-cast doesn't have narrowing implemented yet!")]
                [widening? (get-widen-isa)]
                ; TODO: what if it's just a saturate call?
                [else (error "fpir:handle-cast doesn't have reinterpreting implemented yet!")])]
         [grouped-sub-exprs (prepare-sub-exprs fpir-sub-exprs)]
         [desired-types (fpir:get-vector-types output-type)]
         ; TODO: should this be the depth and the cost?
         [depth 2]
         [max-cost 5]
         [candidates (enumerate-fpir isa desired-types grouped-sub-exprs depth max-cost)])

    (for/list ([candidate candidates]) (cons (uniquify-swizzles (car candidate)) (cdr candidate)))))

; (define (handle-minimum a b fpir-sub-exprs halide-expr)
;   (let* ([output-type (halide:elem-type halide-expr)]
;          ; TODO: which conditionals do we want to use?
;          ; TODO: do we need `reinterpret`?
;          [isa (append
;                 (list fpir:vpminsw fpir:vpminsd fpir:vpminsb fpir:vpminuw
;                       fpir:vpminud fpir:vpminub
;                       ;; TODO: should have 128-bit versions of the AVX2
;                       ;; SSE2
;                       fpir:pminsw fpir:pminub)
;                 (get-broadcast-isa)
;                 ;; TODO: what else might be needed?
;             )]
;          [grouped-sub-exprs (prepare-sub-exprs fpir-sub-exprs)]
;          [desired-types (fpir:get-vector-types output-type)]
;          ; TODO: is this a good depth / cost??
;          [depth 2]
;          [max-cost 7]
;          [candidates (enumerate-fpir isa desired-types grouped-sub-exprs depth max-cost)]
;          [scalars (halide:extract-minmax-scalars halide-expr)]
;          [fill-arg-grammars (make-fill-arg-grammars scalars)])

;     ;; TODO: how do we handle conditionals?
;     (time (for/list ([candidate candidates]) (cons (uniquify-swizzles (fpir:visit (car candidate) fill-arg-grammars)) (cdr candidate))))))

; (define (handle-maximum a b fpir-sub-exprs halide-expr)
;   (let* ([output-type (halide:elem-type halide-expr)]
;          ; TODO: which conditionals do we want to use?
;          ; TODO: do we need `reinterpret`?
;          [isa (list fpir:vpmaxsw fpir:vpmaxsd fpir:vpmaxsb fpir:vpmaxuw
;                     fpir:vpmaxud fpir:vpmaxub
;                     ;; TODO: should have 128-bit versions of the AVX2
;                     ;; SSE2
;                     fpir:pmaxsw fpir:pmaxub)]
;          [grouped-sub-exprs (prepare-sub-exprs fpir-sub-exprs)]
;          [desired-types (fpir:get-vector-types output-type)]
;          ; TODO: is this a good depth / cost??
;          [depth 2]
;          [max-cost 7]
;          [candidates (enumerate-fpir isa desired-types grouped-sub-exprs depth max-cost)]
;          [scalars (halide:extract-minmax-scalars halide-expr)]
;          [fill-arg-grammars (make-fill-arg-grammars scalars)])

;     ;; TODO: how do we handle conditionals?
;     (time (for/list ([candidate candidates]) (cons (uniquify-swizzles (fpir:visit (car candidate) fill-arg-grammars)) (cdr candidate))))))

(define (handle-vs-shift-left expr shift round? saturate? output-type fpir-sub-exprs halide-expr)
  (let* ([input-type (x86-ir:elem-type expr)]
         [widening? (> (cpp:type-bw output-type) (cpp:type-bw input-type))]
         [desired-types (fpir:get-vector-types output-type)]
         [grouped-sub-exprs (prepare-sub-exprs fpir-sub-exprs)]
         [isa (flatten
                (list
                  ; TODO: use saturating / rounding information
                  (if widening?
                    (get-widen-isa)
                    '())
                  (if widening?
                    fpir:shl_w
                    '())
                  (if round?
                    fpir:shl_r
                    '())
                  (if saturate?
                    (error "what does vs-shift-left saturation mean?")
                    '())
                  fpir:shl
                  fpir:reinterpret
                ))] 
         ; TODO: how to decide depth/cost
         [depth 2]
         [max-cost 4]
         [candidates (enumerate-fpir isa desired-types grouped-sub-exprs depth max-cost)]
         [sorted (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2))))])

    (display (format "handle-vs-shift-left recieved:\n~a\n\n" (pretty-format sorted)))
    (display (format "handle-vs-shift-left isa:\n~a\n\n" (pretty-format isa)))

    (let* ([mul-scalars (halide:extract-mul-scalars halide-expr)]
           [shl-scalars (halide:extract-shl-scalars halide-expr)]
           [mul-shl-scalars (halide:make-scalar-log2s mul-scalars)]
           [int-consts (set->list (list->set (append shl-scalars mul-shl-scalars)))])
      ; (display (format "handle-vs-shift-left got scalars :\n~a\n\n" (pretty-format int-consts)))
      (define fill-arg-grammars (make-fill-arg-grammars int-consts))

      (time (for/list ([candidate sorted]) (cons (uniquify-swizzles (fpir:visit (car candidate) fill-arg-grammars)) (cdr candidate)))))))

(define (get-fpir-grammar-helper halide-expr ir-expr fpir-sub-exprs output-layout)
  ;; TODO: figure out which operations should use output-layout...
  (destruct ir-expr

    ;; Data loading/shuffling
    [(x86-ir:load-data live-data gather-tbl)
     (define buffers (set->list (halide:extract-live-buffers halide-expr)))
     (define buf-elemTypes (map buffer-elemT buffers))
     (define (label-cost value)
        (cons value (if (fpir:is-256-expr? value) 1 2)))
     (define (generate-shuffles type)
        (define (construct-loads b)
          (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
          (define (make-load type) (fpir:??load 1 live-data b tbl type))
          (map make-load (fpir:get-vector-types (buffer-elemT b))))
        (define actual-loads (flatten (map construct-loads buffers)))
        (fpir:make-shuffles-list actual-loads type))
     (sort (map label-cost (flatten (map generate-shuffles buf-elemTypes))) (lambda (v1 v2) (<= (cdr v1) (cdr v2))))]

    ;; Vector creation
    [(x86-ir:build-vec base stride len)
      (handle-build-vec base stride len fpir-sub-exprs halide-expr)]

    [(x86-ir:broadcast scalar-expr)
      ;; TODO: is this correct?
      (handle-broadcast scalar-expr halide-expr)]

    [(x86-ir:vs-mpy-add expr weights sat? round? half? output-type)
      (handle-vs-mpy-add expr weights sat? round? half? output-type fpir-sub-exprs halide-expr)]

    ; [(x86-ir:cast expr type saturate?)
    ;   (handle-cast expr type saturate? fpir-sub-exprs halide-expr)]

    ; [(x86-ir:minimum expr0 expr1)
    ;   (handle-minimum expr0 expr1 fpir-sub-exprs halide-expr)]

    ; [(x86-ir:maximum expr0 expr1)
    ;   (handle-maximum expr0 expr1 fpir-sub-exprs halide-expr)]

    [(x86-ir:vs-shift-left expr shift round? saturate? output-type)
      (handle-vs-shift-left expr shift round? saturate? output-type fpir-sub-exprs halide-expr)]

    ;; TODO: load-data, broadcast, build-vec
    ;; TODO: cast, abs, abs-diff,
    ;; TODO: minimum, maximum
    ;; TODO: vs-mpy-add, vv-mpy-add, mul-hh
    ;; TODO: vs-shift-left, vv-shift-left
    ;; TODO: vs-shift-right, vv-shift-right
    ;; TODO: bitwise-op, select, is-equal, lt, leq, vs-divide.
    [_ (error (format "(fpir:get-fpir-grammar-helper) Not implemented yet\n~a\n~a" ir-expr halide-expr))]))


(define enumeration-cache (make-hash))

(define (not-dbl-reinterpret parent-instr child-instr)
  (not (and (fpir:is-reinterpret-instr? parent-instr) (fpir:is-reinterpret-instr? child-instr))))

; (define (not-resize-reverse parent-instr child-instr)
;   (not (and (fpir:resize? parent-instr) (or (fpir:lo? child-instr) (fpir:hi? child-instr)))))

(define (instr-filter parent-instr child-instr)
  (and
    (not-dbl-reinterpret parent-instr child-instr)
    ; (not-resize-reverse parent-instr child-instr)
    ;; TODO: add more filters
  ))

(define (enumerate-fpir instr-set output-types base-exprs depth max-cost [read-count -1] [parent-instr (void)] [arg-pos -1])
  (let ([key (list instr-set output-types base-exprs depth max-cost read-count parent-instr arg-pos)])
    (cond
      ;; max-cost has been reduced to < 0, don't try to keep enumerating.
      ;; This is more liberal than it could be - it only looks at one path
      ;; through the AST, but it should help with pruning.
      [(< max-cost 0) '()]

      ; We have enumerated this tree before
      [(hash-has-key? enumeration-cache key) (hash-ref enumeration-cache key)]

      ; Base case
      [(<= depth 0) (apply append (for/list ([output-type output-types]) (hash-ref! base-exprs output-type (list))))]

      ; Inductive step
      [else
        (let* ([sub-candidates (enumerate-fpir instr-set output-types base-exprs (- depth 1) max-cost read-count parent-instr arg-pos)]
               [curried-builder (curryr build-instr-exprs instr-set output-types base-exprs depth max-cost read-count)]
               ; TODO: HVX does more filtering here, we do not for now.
               [kept-instrs (filter (curry instr-filter parent-instr) instr-set)]
               [candidates (foldr append sub-candidates (map curried-builder kept-instrs))]
               [candidates-cost (filter (lambda (expr) (<= (cdr expr) max-cost)) candidates)]
               [candidates-read (if (eq? read-count -1) candidates-cost (filter (lambda (expr) (<= (fpir:max-unique-inputs (car expr)) read-count)) candidates-cost))]
               [candidates-unique (set->list (list->set candidates-read))])

          ; (display (format "depth: ~a\n" depth))
          ; (display (format "output-types: ~a\n" output-types))
          ; (display "parent-instr: \n")
          ; (println parent-instr)
          ; (display "base-exprs: \n")
          ; (pretty-print base-exprs)
          ; (display "sub-candidates: \n")
          ; (pretty-print sub-candidates)

          ; (display "candidates: \n")
          ; (pretty-print candidates)
          ; (display "candidates-unique: \n")
          ; (pretty-print candidates-unique)

          (hash-set! enumeration-cache key candidates-unique)
          candidates-unique)])))

; Filter based in output type
(define (build-instr-exprs instr instr-set output-types base-exprs depth max-cost read-count)
  ;(display (format "instr: ~a\n" instr))
  (let* ([new-max-cost (- max-cost (fpir:instr-cost instr))]
         [curried-build (curryr build-sig-exprs instr-set base-exprs depth new-max-cost read-count instr)]
         [filtered (filter (curry out-member? output-types) (fpir:instr-forms instr))]
         [built (map curried-build filtered)])
    (foldr append '() built)))

(define (out-member? output-types sig)
  (set-member? output-types (fpir:instr-sig-ret-val sig)))

; I do not quite understand what this one is doing
(define (build-sig-exprs sig instr-set base-exprs depth max-cost read-count instr)
  (let ([sig-exprs
    (let ([arg-opts (get-arg-opts (fpir:instr-sig-args sig) instr instr-set base-exprs depth max-cost read-count 0)])
      (apply cartesian-product arg-opts))])
    (map (curry build-ast instr sig) sig-exprs)))

; TODO: understand which values should be here...
(define (basic-type? value)
  (match value
    [#t #t]
    [#f #t]
    ['bool #t]
    ['int8 #t]
    ['uint8 #t]
    ['int16 #t]
    ['uint16 #t]
    ['int32 #t]
    ['uint32 #t]
    ['int64 #t]
    ['uint64 #t]
    [_ #f]))

(define (get-arg-opts arg-types instr instr-set base-exprs depth max-cost read-count arg-pos)
  (if (empty? arg-types)
      '()
      (let* ([arg (first arg-types)]
             [opts (if (basic-type? arg)
                      (list (cons arg 0))
                      (enumerate-fpir instr-set (set arg) base-exprs (sub1 depth) max-cost read-count instr arg-pos))])
          ;(println arg)
          ;(println (enumerate-fpir instr-set (set arg) base-exprs (sub1 depth) max-cost read-count arg-pos))
          (append (list opts) (get-arg-opts (rest arg-types) instr instr-set base-exprs depth max-cost read-count (add1 arg-pos))))))


(define (build-ast instr sig sig-expr)
  (let ([cost (foldr + (fpir:instr-cost instr) (map cdr sig-expr))]
        [expr (apply instr (map car sig-expr))])
    (cons expr cost)))

(define (count-reads expr)
  (define cnt 0)
  (define (incr-read-cntr node [pos -1])
    (destruct node
      [(fpir:??load _ _ _ _ _) (set! cnt (+ cnt 1)) node]
      [(fpir:??shuffle _ _ _) (set! cnt (+ cnt 1)) node]
      [else node]))
  (fpir:visit expr incr-read-cntr)
  cnt)

(define (uniquify-swizzles fpir-template)
  (define swizzle-node-id -1)
  (define (get-sw-node-id) (set! swizzle-node-id (add1 swizzle-node-id)) swizzle-node-id)
  (define (clone-swizzle-node node [pos -1])
    (destruct node
      [(fpir:??swizzle id live-data expr gather-tbl output-type)
       (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
       (fpir:??swizzle (get-sw-node-id) live-data expr tbl output-type)]
      [(fpir:??load id live-data buffer tbl output-type)
       (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
       (fpir:??load (get-sw-node-id) live-data buffer tbl output-type)]
      [(fpir:??abstr-load id live-data buffer)
       (fpir:??abstr-load (get-sw-node-id) live-data buffer)]
      [(fpir:??shuffle id lds output-type)
       (fpir:??shuffle
        (get-sw-node-id)
        (map
         (lambda (ld)
           (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
           (fpir:??load (get-sw-node-id) (fpir:??load-live-data ld) (fpir:??load-buffer ld) tbl (fpir:??load-output-type ld))) lds))
        output-type]
      [_ node]))
  (fpir:visit fpir-template clone-swizzle-node))

;; Taken directly from arm.rkt
(define (prepare-sub-exprs fpir-sub-exprs)
  (define grouped-sub-exprs (make-hash))
  (define swizzle-node-id -1)
  (define fpir-sub-exprs-untiled (flatten (map (lambda (expr) (if (fpir:concat-tiles? expr) (fpir:concat-tiles-vecs expr) expr)) (set->list (list->set fpir-sub-exprs)))))
  (for ([fpir-sub-expr fpir-sub-exprs-untiled])
    (cond
      [(fpir:??abstr-load? fpir-sub-expr)
       (define elemT (fpir:get-interpreted-elem-type fpir-sub-expr))
       (for ([out-type (fpir:get-vector-types elemT)])
         (set! swizzle-node-id (add1 swizzle-node-id))
         (define live-data (fpir:??abstr-load-live-data fpir-sub-expr))
         (define buffer (fpir:??abstr-load-buffer fpir-sub-expr))
         (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
         (define base-load-expr (fpir:??load swizzle-node-id live-data buffer tbl out-type))
         (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
         (hash-set! grouped-sub-exprs out-type (set-add exprs base-load-expr)))]
      [(fpir:??shuffle? fpir-sub-expr)
       (define elemT (fpir:get-interpreted-elem-type fpir-sub-expr))
       (for ([out-type (fpir:get-vector-types elemT)])
         (set! swizzle-node-id (add1 swizzle-node-id))
         (define base-load-expr (fpir:??shuffle swizzle-node-id (fpir:??shuffle-lds fpir-sub-expr) out-type))
         (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
         (hash-set! grouped-sub-exprs out-type (set-add exprs base-load-expr)))]
      ; TODO: ask Maaz about the vsplat cond here from the HVX code
      [(fpir:is-broadcast? fpir-sub-expr)
        (define out-type (fpir:get-interpreted-type fpir-sub-expr))
        (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
        (hash-set! grouped-sub-exprs out-type (set-add exprs fpir-sub-expr))
        (when (fpir:broadcast256? fpir-sub-expr)
          (define out-type-128 (fpir:get-128-type out-type))
          (define exprs-128 (hash-ref! grouped-sub-exprs out-type-128 (set)))
          (define fpir-sub-expr-128 (fpir:get-128-broadcast fpir-sub-expr))
          (hash-set! grouped-sub-exprs out-type-128 (set-add exprs-128 fpir-sub-expr-128)))]
      [else
       (define sub-expr-type (fpir:get-interpreted-type fpir-sub-expr))
       (define exprs (hash-ref! grouped-sub-exprs sub-expr-type (set)))
       (hash-set! grouped-sub-exprs sub-expr-type (set-add exprs fpir-sub-expr))]))

  ;; Merge base-expr choices
  (define grouped-merged-sub-exprs (make-hash))
  (for ([(output-type candidates) grouped-sub-exprs])
    (define candidates-l (set->list candidates))
    (set! swizzle-node-id (add1 swizzle-node-id))
    (define merged-candidates
      (append
       (map (curryr cons 0) (filter is-load? candidates-l))
       (map (curryr cons 0) (filter fpir:is-broadcast? candidates-l))
       (let ([c (filter (lambda (c) (not (or (fpir:is-broadcast? c) (is-load? c)))) candidates-l)])
         (cond
           [(empty? c) '()]
           [else
            (list (cons (fpir:??swizzle swizzle-node-id '() c (void) output-type) 0))]))))
    (hash-set! grouped-merged-sub-exprs output-type merged-candidates))

  grouped-merged-sub-exprs)

(define (is-load? expr)
  (or
   (fpir:??load? expr)
   (fpir:??shuffle? expr)))