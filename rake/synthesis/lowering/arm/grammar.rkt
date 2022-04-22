#lang rosette

(require
  (only-in rosette/base/core/term @app)
  rosette/lib/destruct
  rosette/lib/synthax
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/arm/ir/instructions
  rake/arm/ir/interpreter
  rake/arm/ast/types
  rake/arm/ast/interpreter
  rake/arm/ast/visitor
  rake/arm/ast/cost-model
  rake/arm/ast/analysis
  )

(provide get-arm-grammar)

(define grammar-cache (make-hash))

(define (get-arm-grammar halide-expr ir-expr arm-sub-exprs cost-ub)
  (let* ([key (cons (arm-ir:ast-node-id ir-expr) arm-sub-exprs)]
         [check-cache (and (not (arm-ir:load-data? ir-expr)) (hash-has-key? grammar-cache key))]
         [candidates (if check-cache (hash-ref grammar-cache key) (get-arm-grammar-helper halide-expr ir-expr arm-sub-exprs))])
    ;(display (format "get-arm-grammar received ~a candidates\n" (length candidates)))
    ;(println (filter (lambda (c) (<= (cdr c) cost-ub)) candidates))
    (let ([filtered (filter (lambda (c) (<= (cdr c) cost-ub)) candidates)])
      ;(display (format "And ~a of them pass the cost filtering\n" (length filtered)))
      filtered)))

(define (get-input-type expr)
  (if (arm-ir:combine? expr)
      (let ([t0 (arm-ir:elem-type (arm-ir:combine-expr0 expr))]
            [t1 (arm-ir:elem-type (arm-ir:combine-expr1 expr))])
        ; TODO: understand why HVX selects the narrower type..
        (if (< (cpp:type-bw t0) (cpp:type-bw t1)) t0 t1))
      (arm-ir:elem-type expr)))

(define (sort-and-uniquify candidates)
  ;; Sort them
  (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))

  ;; Fill in param grammars
  (for/list ([candidate candidates]) (cons (uniquify-swizzles (car candidate)) (cdr candidate))))


(define (handle-vs-mpy-add expr weights output-type arm-sub-exprs halide-expr)
  (let* ([input-type (get-input-type expr)]
         [widening? (>= (cpp:type-bw output-type) (* 2 (cpp:type-bw input-type)))]
         ; TODO: better pruning and more isa options
         [isa (if widening?
                (list arm:reinterpret arm:mul-vs arm:sxtl arm:uxtl arm:add arm:addv arm:saddlv arm:uaddlv arm:saddl arm:saddw arm:saddlp arm:sadalp arm:smlal-vs arm:smlsl-vs arm:sdot.v2i32.v8i8 arm:udot.v2i32.v8i8 arm:sdot.v4i32.v16i8 arm:udot.v4i32.v16i8 arm:ushll arm:sshll arm:ssubl arm:ssubw arm:sub arm:uadalp arm:uaddl arm:uaddlp arm:uaddw arm:umlal-vs arm:umlsl-vs arm:usubl arm:usubw arm:smull-vs arm:umull-vs)
                ;(list arm:add arm:sshll arm:ushll arm:reinterpret)
                (list arm:reinterpret arm:add arm:sub arm:addp arm:mla-vs arm:mls-vs arm:mul-vs arm:neg))] ;arm:shl
         [depth (if widening? 3 2)]
         [max-cost 20]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [number-reads (length weights)]
         [desired-types (arm:get-vector-types output-type)]
         ; Enumerate those with the correct output type
         ; TODO: do the pruning somehow...
         [candidates (time (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost number-reads))]
         [load-buffers (halide:extract-live-buffers halide-expr)]
         [live-buffers (lambda (expr)
                         (let* ([live-bufs (mutable-set)]
                               [extract-buffer (lambda (node [pos -1])
                                                  (destruct node
                                                    [(buffer data elemT) (set-add! live-bufs node) node]
                                                    ;[(arm:??swizzle id live-data exprs idx-tbl output-type) (display (format "checking: (arm:??swizzle ~a ~a ~a ~a ~a)\n" id live-data exprs idx-tbl output-type))]
                                                    [_ node]))])
                            (arm:visit expr extract-buffer)
                            live-bufs))])

    ;(display "arm sub exprs!\n")
    ;(pretty-print arm-sub-exprs)
    ;(display "grouped sub exprs!\n")
    ;(pretty-print grouped-sub-exprs)
    ;(display "candidates!\n")
    ;(pretty-print candidates)
    ;(display (format "~a ~a ~a\n" isa desired-types grouped-sub-exprs))
    ;(pretty-print grouped-sub-exprs)
    ;(display (format "Types; ~a ~a ~a\n" input-type output-type widening?))

    ;; Filter out templates that read too much or too little data
    ;(display (format "Before filtering reads: ~a\n" (length candidates)))
    (set! candidates (time (filter (lambda (c) (eq? (arm:max-unique-inputs (car c)) number-reads)) candidates)))
    ;(display (format "After filtering reads: ~a\n" (length candidates)))
    ;(display (format "Load buffers: ~a\n" load-buffers))
    ;(display "First:\n")
    ;(pretty-print (first candidates))
    ;(display (format "LB: ~a\n" (live-buffers (car (first candidates)))))
    (set! candidates (time (filter (lambda (c) (equal? (live-buffers (car c)) load-buffers)) candidates)))

    ;(display (format "After filtering buffers: ~a\n" (length candidates)))
    ;(pretty-print (take candidates 50))
    ;(println (length candidates))

    ;; Compute read counts
    (set! candidates (time (map (lambda (c) (cons (car c) (cons (cdr c) (count-reads (car c))))) candidates)))

    ;; Sort them (I am ashamed of this line below)
    (set! candidates (time (sort candidates (lambda (v1 v2) (if (eq? (car (cdr v1)) (car (cdr v2))) (< (cdr (cdr v1)) (cdr (cdr v2))) (< (car (cdr v1)) (car (cdr v2))))))))

    (let* ([add-scalars (halide:extract-add-scalars halide-expr)]
           [shl-scalars (halide:extract-shl-scalars halide-expr)]
           [int-consts (set->list (list->set (append weights add-scalars shl-scalars)))])
      (define (bool-const) (define-symbolic* b boolean?) b)
      (define (uint1-const) (define-symbolic* b boolean?) (uint1_t b))
      (define (int8-const) (int8x1 (apply choose* int-consts)))
      (define (uint8-const) (uint8x1 (apply choose* int-consts)))
      (define (int16-const) (int16x1 (apply choose* int-consts)))
      (define (uint16-const) (uint16x1 (apply choose* int-consts)))
      (define (int32-const) (int32x1 (apply choose* int-consts)))
      (define (uint32-const) (uint32x1 (apply choose* int-consts)))
      (define (int64-const) (int64x1 (apply choose* int-consts)))
      (define (uint64-const) (uint64x1 (apply choose* int-consts)))
      (define (fill-arg-grammars node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool (bool-const)]
         ['uint1 (uint1-const)]
         ['int8 (int8-const)]
         ['uint8 (uint8-const)]
         ['int16 (int16-const)]
         ['uint16 (uint16-const)]
         ['int32 (int32-const)]
         ['uint32 (uint32-const)]
         ['int64 (int64-const)]
         ['uint64 (uint64-const)]
         ; TODO: HVX has some weird types here, for scalar registers?
         [_ node]))

      (time (for/list ([candidate candidates]) (cons (uniquify-swizzles (arm:visit (car candidate) fill-arg-grammars)) (car (cdr candidate))))))))

(define (handle-cast expr output-type saturate? arm-sub-exprs halide-expr)
  (let* ([input-type (get-input-type expr)]
         [narrowing? (< (cpp:type-bw output-type) (cpp:type-bw input-type))]
         [double-narrow? (and narrowing? (< (* 2 (cpp:type-bw output-type)) (cpp:type-bw input-type)))]
         [widening? (> (cpp:type-bw output-type) (cpp:type-bw input-type))]
         ; TODO: should we just do the selection here?
         [isa (cond
                [narrowing? (list arm:xtn arm:uqxtn arm:sqxtn arm:sqxtun)]
                [widening? (list arm:uxtl arm:sxtl)]
                ; TODO: what if it's just a saturate call?
                [else (list arm:reinterpret)])]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [desired-types (arm:get-vector-types output-type)]
         ; TODO: do the pruning somehow...
         ; TODO: should this be the depth and the cost?
         [depth 2]
         [max-cost
          (cond
            [double-narrow? 30]
            [narrowing? 15]
            [else 10])]
         [candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost)])

    (display "handle-cast\n")
    (pretty-print isa)
    (pretty-print candidates)
    (pretty-print desired-types)
    (pretty-print expr)
    (pretty-print output-type)
    (pretty-print saturate?)
    (pretty-print arm-sub-exprs)
    (pretty-print input-type)

     (sort-and-uniquify candidates)))

(define (handle-abs expr saturate? output-type arm-sub-exprs halide-expr)
  (let ([isa (list arm:abs arm:sqabs arm:reinterpret)]
        [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
        [desired-types (arm:get-vector-types output-type)]
        ; TODO: is this a good depth / cost??
        [depth 2]
        [max-cost 10])
    (define candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost))
    (sort-and-uniquify candidates)))

(define (handle-minimum a b arm-sub-exprs halide-expr)
  (let* ([output-type (halide:elem-type halide-expr)]
         ; TODO: what does Maaz mean by `conditional` in arm/ir/instructions.rkt?
         ; TODO: do we need `reinterpret`?
         [isa (list arm:umin arm:smin arm:uminp arm:sminp)]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [desired-types (arm:get-vector-types output-type)]
         ; TODO: is this a good depth / cost??
         [depth 2]
         [max-cost 10]
         [candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost)])
    (sort-and-uniquify candidates)))

(define (handle-maximum a b arm-sub-exprs halide-expr)
  (let* ([output-type (halide:elem-type halide-expr)]
         ; TODO: what does Maaz mean by `conditional` in arm/ir/instructions.rkt?
         ; TODO: do we need `reinterpret`?
         [isa (list arm:umax arm:smax arm:umaxp arm:smaxp)]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [desired-types (arm:get-vector-types output-type)]
         ; TODO: is this a good depth / cost??
         [depth 2]
         [max-cost 10]
         [candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost)])
    (sort-and-uniquify candidates)))

(define (handle-vv-mpy-add expr weights output-type arm-sub-exprs halide-expr)
  (let* ([input-type (get-input-type expr)]
         [widening? (eq? (cpp:type-bw output-type) (* 2 (cpp:type-bw input-type)))]
         [isa (if widening?
                  (list arm:reinterpret arm:smlal-vv arm:umlal-vv arm:smlsl-vv arm:umlsl-vv arm:smull-vv arm:umull-vv)
                  (list arm:reinterpret arm:addv arm:addp arm:mla-vv arm:mls-vv arm:mul-vv arm:sub))]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [desired-types (arm:get-vector-types output-type)]
         ; TODO: why is this the number of reads? formula taken from hvx.rkt
         [width (length weights)]
         [number-reads (- (* width 2) (if (eq? width 5) 1 0))]
         [depth 4]
         [max-cost 20]
         [candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost number-reads)])

    (define (uint1-const) (define-symbolic* b boolean?) (uint1_t b))
    (define (fill-arg-grammars node [pos -1])
      (match node
        ['uint1 (uint1-const)]
        [_ node]))

    (sort-and-uniquify (for/list ([candidate candidates]) (cons (arm:visit (car candidate) fill-arg-grammars) (cdr candidate))))))

(define (handle-neg-sat expr arm-sub-exprs halide-expr)
  (let* ([isa (list arm:sqneg)]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [output-type (halide:elem-type halide-expr)]
         [desired-types (arm:get-vector-types output-type)]
         ; TODO: how to decide depth/cost
         [depth 1]
         [max-cost 4]
         [candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost)])
    (sort-and-uniquify candidates)))

(define (handle-add-sat expr0 expr1 arm-sub-exprs halide-expr)
  (let* ([isa (list arm:sqadd arm:suqadd arm:usqadd arm:uqadd)]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [output-type (halide:elem-type halide-expr)]
         [desired-types (arm:get-vector-types output-type)]
         ; TODO: how to decide depth/cost
         [depth 1]
         [max-cost 4]
         [candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost)])
    (sort-and-uniquify candidates)))

(define (handle-sub-sat expr0 expr1 arm-sub-exprs halide-expr)
  (let* ([isa (list arm:sqsub arm:uqsub)]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [output-type (halide:elem-type halide-expr)]
         [desired-types (arm:get-vector-types output-type)]
         ; TODO: how to decide depth/cost
         [depth 1]
         [max-cost 4]
         [candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost)])
    (sort-and-uniquify candidates)))

(define (handle-vs-shift-left expr shift round? saturate? signed? arm-sub-exprs halide-expr)
  (let* ([input-type (arm-ir:elem-type expr)]
         [output-type (halide:elem-type halide-expr)]
         [widening? (> (cpp:type-bw output-type) (cpp:type-bw input-type))]
         [desired-expr-types (arm:get-vector-types output-type)]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [depth 1]
         [max-cost 4]
         [isa (if widening?
                ; TODO: use saturating / rounding / signedness information
                ; TODO: are there more widening versions?
                (list arm:sshll arm:ushll)
                (list arm:sqrshl arm:uqrshl arm:sqshl arm:uqshl arm:sqshlu arm:srshl arm:urshl))]
         ; TODO: how to decide depth/cost
         [candidates (enumerate-arm isa desired-expr-types grouped-sub-exprs depth max-cost)])
    (sort-and-uniquify candidates)))

(define (handle-vv-shift-left expr0 expr1 round? saturate? signed? arm-sub-exprs halide-expr)
  (let* ([input-type (arm-ir:elem-type expr0)]
         [output-type (halide:elem-type halide-expr)]
         [widening? (> (cpp:type-bw output-type) (cpp:type-bw input-type))]
         [desired-expr-types (arm:get-vector-types output-type)]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [depth 1]
         [max-cost 4]
         [isa (if widening?
                ; TODO: can we even use saturating / rounding / signedness information?
                (error "vv-shift-left has no widening asm instructions\n")
                (list arm:sshl arm:ushl))]
         ; TODO: how to decide depth/cost
         [candidates (enumerate-arm isa desired-expr-types grouped-sub-exprs depth max-cost)])
    (sort-and-uniquify candidates)))

(define (handle-vs-shift-right expr shift round? saturate? signed? output-type arm-sub-exprs halide-expr)
  (let* ([input-type (arm-ir:elem-type expr)]
         [narrowing? (< (cpp:type-bw output-type) (cpp:type-bw input-type))]
         [desired-expr-types (arm:get-vector-types output-type)]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [isa (if narrowing?
                ; TODO: use saturating / rounding / signedness information
                ; TODO: need srshr, sshr, ssra, urshr, ursra, ushr, usra
                (list arm:shrn arm:rshrn arm:sqrshrn arm:sqrshrun arm:sqshrn arm:sqshrun arm:uqrshrn arm:uqshrn)
                (error "AJ needs to implement srshr, sshr, ssra, urshr, ursra, ushr, usra\n"))]
         [depth 1]
         [max-cost (if narrowing? 7 4)]
         ; TODO: how to decide depth/cost
         [candidates (enumerate-arm isa desired-expr-types grouped-sub-exprs depth max-cost)])
    
    (let ([add-scalars (halide:extract-add-scalars halide-expr)])
      (define (bool-const) (define-symbolic* b boolean?) b)
      (define (uint1-const) (define-symbolic* b boolean?) (uint1_t b))
      (define (int8-const) (int8x1 shift))
      (define (uint8-const) (uint8x1 shift))
      (define (int16-const) (int16x1 shift))
      (define (uint16-const) (uint16x1 shift))
      (define (int32-const) (int32x1 shift))
      (define (uint32-const) (uint32x1 shift))
      (define (int64-const) (int64x1 shift))
      (define (uint64-const) (uint64x1 shift))
      (define (fill-arg-grammars node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool (bool-const)]
         ['uint1 (uint1-const)]
         ['int8 (int8-const)]
         ['uint8 (uint8-const)]
         ['int16 (int16-const)]
         ['uint16 (uint16-const)]
         ['int32 (int32-const)]
         ['uint32 (uint32-const)]
         ['int64 (int64-const)]
         ['uint64 (uint64-const)]
         [_ node]))

      (sort-and-uniquify (for/list ([candidate candidates]) (cons (arm:visit (car candidate) fill-arg-grammars) (cdr candidate)))))))

(define (handle-abs-diff expr0 expr1 widening? output-type arm-sub-exprs halide-expr)
  (let* ([isa (if widening?
                  (list arm:vabdl_i8x8 arm:vabdl_u8x8 arm:vabdl_i16x4 arm:vabdl_u16x4 arm:vabdl_i32x2 arm:vabdl_u32x2)
                  (list arm:sabd arm:uabd))]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [desired-types (arm:get-vector-types output-type)]
         ; TODO: is this a good depth / cost??
         [depth 2]
         [max-cost 8]
         [candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost)])
    (display (format "\n\nabsd isa:\n~a\n" (pretty-format isa)))
    (display (format "absd candidates:\n~a\n\n\n" (pretty-format candidates)))
    (sort-and-uniquify candidates)))

(define (handle-vs-divide expr divisor)
  ;smull-vs umull-vs ushr sshr xtn
  (error "Reached the end my friend")
  )

(define (handle-build-vec base stride len arm-sub-exprs halide-expr)
  (cond
    ;; TODO: handle arbitrary logical vector lengths.
    [(and (int32_t? stride) (eq? len 16))
      (let ([output-type 'i32x4]
            [exprs (list (ramp base stride 4) (ramp (sca-add base (int32_t (bv 4 32))) stride 4) (ramp (sca-add base (int32_t (bv 8 32))) stride 4) (ramp (sca-add base (int32_t (bv 12 32))) stride 4))]
            [ihal (halide:interpret halide-expr)]
            [tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256))])
        (list (cons (arm:??swizzle 0 (for/list ([i (range 8)]) (list (ihal i))) exprs tbl output-type) 1)))]
    [else (error "Unimplemented: handle-build-vec base stride len arm-sub-exprs halide-expr")]))

(define (get-arm-grammar-helper halide-expr ir-expr arm-sub-exprs)
  ; TODO: what is the enumeration-database?
  (destruct ir-expr
            
    ;; Data loading/shuffling
    [(arm-ir:load-data live-data gather-tbl)
     (define buffers (set->list (halide:extract-live-buffers halide-expr)))
     ;(define candidates (for/list ([buffer buffers]) (cons (arm:??abstr-load 0 live-data buffer) 1)))
     (define buf-elemTypes (map buffer-elemT buffers))
     (define (label-cost value)
        (cons value (if (arm:half-width? (arm:interpret value)) 2 1)))
     (define (generate-shuffles type)
        (define (construct-loads b)
          (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
          (define (make-load type) (arm:??load 1 live-data b tbl type))
          (map make-load (arm:get-vector-types (buffer-elemT b))))
        (define actual-loads (flatten (map construct-loads buffers)))
        (arm:make-shuffles-list actual-loads type))
     (sort (map label-cost (flatten (map generate-shuffles buf-elemTypes))) (lambda (v1 v2) (<= (cdr v1) (cdr v2))))]

    ;; Data broadcasting
    [(arm-ir:broadcast scalar-expr)
      ; TODO: do type pruning
      (list (cons (arm:dupw scalar-expr) 1) (cons (arm:dup scalar-expr) 1.2))]

    [(arm-ir:cast expr type saturate?)
      (handle-cast expr type saturate? arm-sub-exprs halide-expr)]

    [(arm-ir:vs-mpy-add expr weights output-type)
      (handle-vs-mpy-add expr weights output-type arm-sub-exprs halide-expr)]

    [(arm-ir:abs expr saturate? output-type)
      (handle-abs expr saturate? output-type arm-sub-exprs halide-expr)]

    [(arm-ir:minimum expr0 expr1)
      (handle-minimum expr0 expr1 arm-sub-exprs halide-expr)]

    [(arm-ir:maximum expr0 expr1)
      (handle-maximum expr0 expr1 arm-sub-exprs halide-expr)]

    ; TODO: add-high-narrow, sub-high-narrow, halving-add, halving-sub

    ; TODO: reduce

    [(arm-ir:vv-mpy-add expr weights output-type)
      (handle-vv-mpy-add expr weights output-type arm-sub-exprs halide-expr)]

    ; TODO: vv-dmpy-add-sat, vs-dmpy-add-sat, vv-dmpy-add-hh-sat, vs-dmpy-add-hh-sat

    [(arm-ir:neg-sat expr)
      (handle-neg-sat expr arm-sub-exprs halide-expr)]

    [(arm-ir:add-sat expr0 expr1)
      (handle-add-sat expr0 expr1 arm-sub-exprs halide-expr)]

    [(arm-ir:sub-sat expr0 expr1)
      (handle-sub-sat expr0 expr1 arm-sub-exprs halide-expr)]

    [(arm-ir:vs-shift-left expr shift round? saturate? signed?)
      (handle-vs-shift-left expr shift round? saturate? signed? arm-sub-exprs halide-expr)]

    [(arm-ir:vv-shift-left expr0 expr1 round? saturate? signed?)
      (handle-vv-shift-left expr0 expr1 round? saturate? signed? arm-sub-exprs halide-expr)]

    [(arm-ir:vs-shift-right expr shift round? saturate? signed? outputT)
      (handle-vs-shift-right expr shift round? saturate? signed? outputT arm-sub-exprs halide-expr)]

    [(arm-ir:abs-diff expr0 expr1 widening? output-type)
      (handle-abs-diff expr0 expr1 widening? output-type arm-sub-exprs halide-expr)]

    ; (struct abs-diff-acc (acc expr0 expr1 widening?) #:super struct:ast-node #:transparent)      ;; Instructions: saba, sabal, uaba, uabal

    ; TODO: abs-diff-acc, select, is-equal, less-than, less-than-eq, bitwise-and, vs-divide

    [(arm-ir:vs-divide expr divisor)
      (handle-vs-divide expr divisor)]
    
    [(arm-ir:build-vec base stride len)
      (handle-build-vec base stride len arm-sub-exprs halide-expr)]

    [_ (error "Not implemented yet ~a" ir-expr)]))


(define (arm:is-broadcast? arm-template)
  (or
    (arm:dup? arm-template)
    (arm:dupw? arm-template)
    (arm:dupn? arm-template)))

(define (arm:get-broadcasted-val arm-template)
  (cond
    [(arm:dup? arm-template) (arm:dup-Vn arm-template)]
    [(arm:dupw? arm-template) (arm:dupw-Vn arm-template)]
    [(arm:dupn? arm-template) (arm:dupn-Vn arm-template)]))

;; Taken directly from hvx.rkt
(define (prepare-sub-exprs arm-sub-exprs)
  (define grouped-sub-exprs (make-hash))
  (define swizzle-node-id -1)
  (define arm-sub-exprs-untiled (set->list (list->set (flatten (map (lambda (expr) (if (arm:concat-tiles? expr) (arm:concat-tiles-vecs expr) expr)) (set->list (list->set arm-sub-exprs)))))))
  (for ([arm-sub-expr arm-sub-exprs-untiled])
    (cond
      [(arm:??abstr-load? arm-sub-expr)
       (define elemT (arm:get-interpreted-elem-type arm-sub-expr))
       (for ([out-type (arm:get-vector-types elemT)])
         (set! swizzle-node-id (add1 swizzle-node-id))
         (define live-data (arm:??abstr-load-live-data arm-sub-expr))
         (define buffer (arm:??abstr-load-buffer arm-sub-expr))
         (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
         (define base-load-expr (arm:??load swizzle-node-id live-data buffer tbl out-type))
         (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
         (hash-set! grouped-sub-exprs out-type (set-add exprs base-load-expr)))]
      [(arm:??shuffle? arm-sub-expr)
       (define elemT (arm:get-interpreted-elem-type arm-sub-expr))
       (for ([out-type (arm:get-vector-types elemT)])
         (set! swizzle-node-id (add1 swizzle-node-id))
         (define base-load-expr (arm:??shuffle swizzle-node-id (arm:??shuffle-lds arm-sub-expr) out-type))
         (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
         (hash-set! grouped-sub-exprs out-type (set-add exprs base-load-expr)))]
      [(arm:is-broadcast? arm-sub-expr)
       (define (gen-broadcasts expr)
         (define br-expr (arm:dupw expr))
         (define sub-expr-type (arm:get-interpreted-type br-expr))
         (define exprs (hash-ref! grouped-sub-exprs sub-expr-type (set)))
         (hash-set! grouped-sub-exprs sub-expr-type (set-add exprs br-expr))
         (when (sca-cast? expr)
           (gen-broadcasts (sca-cast-sca expr))))
       
       (gen-broadcasts (arm:get-broadcasted-val arm-sub-expr))]
      [else
       (define sub-expr-type (arm:get-interpreted-type arm-sub-expr))
       (define exprs (hash-ref! grouped-sub-exprs sub-expr-type (set)))
       (hash-set! grouped-sub-exprs sub-expr-type (set-add exprs arm-sub-expr))]))

  ;; Merge base-expr choices
  (define grouped-merged-sub-exprs (make-hash))
  (for ([(output-type candidates) grouped-sub-exprs])
    (define candidates-l (set->list candidates))
    (set! swizzle-node-id (add1 swizzle-node-id))
    (define merged-candidates
      (append
       (map (curryr cons 0) (filter is-load? candidates-l))
       (map (curryr cons 0) (filter is-dup? candidates-l))
       (let ([c (filter (lambda (c) (not (or (is-dup? c) (is-load? c)))) candidates-l)])
         (cond
           [(empty? c) '()]
           [else
            (list (cons (arm:??swizzle swizzle-node-id '() c (void) output-type) 0))]))))
    (hash-set! grouped-merged-sub-exprs output-type merged-candidates))
  
  grouped-merged-sub-exprs)

(define (is-load? expr)
  (or
   (arm:??load? expr)
   (arm:??shuffle? expr)))

(define (is-dup? expr)
  (or
   (arm:dup? expr)
   (arm:dupw? expr)
   (arm:dupn? expr)
   ;(and (arm:vcombine? expr) (vsplat? (vcombine-Vu expr)) (vsplat? (vcombine-Vv expr)))
   ))

(define enumeration-cache (make-hash))

(define (not-dbl-reinterpret parent-instr child-instr)
  ;(display (format "(not-dbl-reinterpret ~a ~a)\n\n" parent-instr child-instr))
  (not (and (eqv? parent-instr arm:reinterpret) (eqv? child-instr arm:reinterpret))))

(define (enumerate-arm instr-set output-types base-exprs depth max-cost [read-count -1] [parent-instr (void)] [arg-pos -1])
  (let ([key (list instr-set output-types base-exprs depth max-cost read-count parent-instr arg-pos)])
    (cond
      ; We have enumerated this tree before
      [(hash-has-key? enumeration-cache key) (hash-ref enumeration-cache key)]

      ; Base case
      [(<= depth 0) (apply append (for/list ([output-type output-types]) (hash-ref! base-exprs output-type (list))))]

      ; Inductive step
      [else
        (let* ([sub-candidates (enumerate-arm instr-set output-types base-exprs (- depth 1) max-cost read-count parent-instr arg-pos)]
               [curried-builder (curryr build-instr-exprs instr-set output-types base-exprs depth max-cost read-count)]
               ; TODO: HVX does more filtering here, we do not for now.
               [kept-instrs (filter (curry not-dbl-reinterpret parent-instr) instr-set)]
               [candidates (foldr append sub-candidates (map curried-builder kept-instrs))]
               [candidates-cost (filter (lambda (expr) (<= (cdr expr) max-cost)) candidates)]
               [candidates-read (if (eq? read-count -1) candidates-cost (filter (lambda (expr) (<= (arm:max-unique-inputs (car expr)) read-count)) candidates-cost))]
               [candidates-unique (set->list (list->set candidates-read))])
           ;(display (format "depth: ~a\n" depth))
           ;(display (format "output-types: ~a\n" output-types))
           ;(display "base-exprs: \n")
           ;(pretty-print base-exprs)
           ;(display "candidates: \n")
           ;(println candidates)
           ;(display "candidates-unique: \n")
           ;(println candidates-unique)
           ;(display "parent-instr: \n")
           ;(println parent-instr)
          ;(pretty-print base-exprs)
          (hash-set! enumeration-cache key candidates-unique)
          candidates-unique)])))

; Filter based in output type
(define (build-instr-exprs instr instr-set output-types base-exprs depth max-cost read-count)
  ;(display (format "instr: ~a\n" instr))
  (let* ([curried-build (curryr build-sig-exprs instr-set base-exprs depth max-cost read-count instr)]
         [filtered (filter (curry out-member? output-types) (arm:instr-forms instr))]
         [built (map curried-build filtered)])
    (foldr append '() built)))

(define (out-member? output-types sig)
  (set-member? output-types (arm:instr-sig-ret-val sig)))

; I do not quite understand what this one is doing
(define (build-sig-exprs sig instr-set base-exprs depth max-cost read-count instr)
  ;(display (format "sig: ~a\n" sig))
  (let ([sig-exprs
    (let ([arg-opts (get-arg-opts (arm:instr-sig-args sig) instr instr-set base-exprs depth max-cost read-count 0)])
      ;(println arg-opts)
      (apply cartesian-product arg-opts))])
    (map (curry build-ast instr sig) sig-exprs)))

; TODO: understand which values should be here...
(define (basic-type? value)
  (match value
    [#t #t]
    [#f #t]
    ['bool #t]
    ['uint1 #t]
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
                      (enumerate-arm instr-set (set arg) base-exprs (sub1 depth) max-cost read-count instr arg-pos))])
          ;(println arg)
          ;(println (enumerate-arm instr-set (set arg) base-exprs (sub1 depth) max-cost read-count arg-pos))
          (append (list opts) (get-arg-opts (rest arg-types) instr instr-set base-exprs depth max-cost read-count (add1 arg-pos))))))


; TODO: we need arm:instr-cost to work for this
(define (build-ast instr sig sig-expr)
  (let ([cost (foldr + (arm:instr-cost instr sig) (map cdr sig-expr))]
        [expr (apply instr (map car sig-expr))])
    (cons expr cost)))

(define (count-reads expr)
  (define cnt 0)
  (define (incr-read-cntr node [pos -1])
    (destruct node
      [(arm:??load _ _ _ _ _) (set! cnt (+ cnt 1)) node]
      [(arm:??shuffle _ _ _) (set! cnt (+ cnt 1)) node]
      [else node]))
  (arm:visit expr incr-read-cntr)
  cnt)

(define (uniquify-swizzles arm-template)
  (define swizzle-node-id -1)
  (define (get-sw-node-id) (set! swizzle-node-id (add1 swizzle-node-id)) swizzle-node-id)
  (define (clone-swizzle-node node [pos -1])
    (destruct node
      [(arm:??swizzle id live-data expr gather-tbl output-type)
       (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
       (arm:??swizzle (get-sw-node-id) live-data expr tbl output-type)]
      [(arm:??load id live-data buffer tbl output-type)
       (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
       (arm:??load (get-sw-node-id) live-data buffer tbl output-type)]
      [(arm:??abstr-load id live-data buffer)
       (arm:??abstr-load (get-sw-node-id) live-data buffer)]
      [(arm:??shuffle id lds output-type)
       (arm:??shuffle
        (get-sw-node-id)
        (map
         (lambda (ld)
           (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
           (arm:??load (get-sw-node-id) (arm:??load-live-data ld) (arm:??load-buffer ld) tbl (arm:??load-output-type ld))) lds))
        output-type]
      [_ node]))
  (arm:visit arm-template clone-swizzle-node))
