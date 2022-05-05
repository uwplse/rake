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
         [check-cache (and (not (arm-ir:load-data? ir-expr)) (hash-has-key? grammar-cache key))])

    (define candidates
      (cond
        [check-cache (hash-ref grammar-cache key)]
        [else
          (define candidates (get-arm-grammar-helper halide-expr ir-expr arm-sub-exprs))
          (hash-set! grammar-cache key candidates)
          candidates]))

    (let ([filtered (filter (lambda (c) (<= (cdr c) cost-ub)) candidates)])
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

(define (use-if condition values)
  (if condition
    values
    '()))

(define (is-dot-product? expr)
  (or
    (arm:sdot.v2i32.v8i4? expr)
    (arm:udot.v2i32.v8i4? expr)
    (arm:sdot.v4i32.v16i4? expr)
    (arm:udot.v4i32.v16i4? expr)))

(define (scalar-count arm-expr)
  (define count 0)
  (define (count-scalars node [pos -1])
    (match node
      ['int8 (set! count (+ 1 count))]
      ['uint8 (set! count (+ 1 count))]
      ['int16 (set! count (+ 1 count))]
      ['uint16 (set! count (+ 1 count))]
      ['int32 (set! count (+ 1 count))]
      ['uint32 (set! count (+ 1 count))]
      ['int64 (set! count (+ 1 count))]
      ['uint64 (set! count (+ 1 count))]

      ; For dot products.
      ['int8x4 (set! count (+ 4 count))]
      ['uint8x4 (set! count (+ 4 count))]

      ;; For immediates (shifts)
      ['int8_imm (set! count (+ 1 count))]
      ['uint8_imm (set! count (+ 1 count))]
      ['int16_imm (set! count (+ 1 count))]
      ['uint16_imm (set! count (+ 1 count))]
      ['int32_imm (set! count (+ 1 count))]
      ['uint32_imm (set! count (+ 1 count))]
      ['int64_imm (set! count (+ 1 count))]
      ['uint64_imm (set! count (+ 1 count))]

      [_ node]))
  (arm:visit-shallow arm-expr count-scalars)
  count)

(define (unique-list l)
  (set->list (list->set l)))

(define (handle-vs-mpy-add expr weights output-type arm-sub-exprs halide-expr)
  (let* ([input-type (get-input-type expr)]
         [widening? (>= (cpp:type-bw output-type) (* 2 (cpp:type-bw input-type)))]
         [double-widening? (>= (cpp:type-bw output-type) (* 4 (cpp:type-bw input-type)))]
         [use-shifts? (not (null? (filter (lambda (weight) (not (halide:is-one? weight))) (filter halide:is-power-of-2? weights))))]
         ;; TODO: should we require that the output type is signed?
         [use-subs? (not (null? (filter halide:is-signed-negative? weights)))]
         ;; If the input type is unsigned and the weights are strictly positive, but the output type is signed, do all math in unsigned.
         ;; Also need: none of the sub-exprs are signed.
         [as-unsigned? (and
                          (not (cpp:signed-type? input-type)) ;; unsigned input-type
                          (eq? (length weights) (length (filter halide:is-concrete-positive? weights))) ;; all weights are concrete positives.
                          (cpp:signed-type? output-type))]
         [use-reinterpret?
          (and (or (not as-unsigned?) (not (null? (filter (lambda (sub-expr) (cpp:signed-type? (arm:get-interpreted-elem-type sub-expr))) arm-sub-exprs))))
               (not (eqv? input-type output-type)))]
         [min-scalars (length (filter (lambda (weight) (not (halide:is-one? weight))) (unique-list weights)))]
         ; TODO: better pruning and more isa options
         [isa (flatten
                (list
                  (use-if
                    use-reinterpret?
                    (list arm:reinterpret))

                  (use-if
                    (not double-widening?)
                    (list arm:add arm:addp arm:mla-vs arm:mul-vs))
                    ; (list arm:add arm:mla-vs arm:mul-vs))

                  ;; Only allow signed widening variants if:
                  ;; (1) not doing strictly unsigned computation (not `as-unsigned?`) and
                  ;; (2) either the input or output type is signed.
                  (use-if
                    (and widening? (not as-unsigned?) (or (cpp:signed-type? input-type) (cpp:signed-type? output-type)))
                    (list arm:sxtl arm:saddl arm:saddw arm:saddlp arm:sadalp arm:smlal-vs arm:smull-vs))

                  ;; TODO: do we want stronger pruning on unsigned ops?
                  (use-if
                    (and widening? (not (and (cpp:signed-type? input-type) (cpp:signed-type? output-type))))
                    (list arm:uxtl arm:uaddl arm:uaddw arm:uaddlp arm:uadalp arm:umlal-vs arm:umull-vs))
                    ; (list arm:uxtl arm:uaddl arm:uaddw arm:umlal-vs arm:umull-vs))

                  ;; TODO: when do we want reductions?
                  ; (use-if
                  ;   (and widening? use-reductions?)
                  ;   (list arm:addv arm:saddlv arm:uaddlv))

                  (use-if
                    double-widening?
                    (list arm:sdot.v2i32.v8i4 arm:udot.v2i32.v8i4 arm:sdot.v4i32.v16i4 arm:udot.v4i32.v16i4))

                  (use-if
                    (and widening? use-subs?)
                    (list arm:smlsl-vs arm:ssubl arm:ssubw arm:sub arm:umlsl-vs arm:usubl arm:usubw))

                  ;; TODO: should we include these regardless of the `widening?` flag?
                  (use-if
                    (and (not widening?) use-subs?)
                    (list arm:sub arm:mls-vs arm:neg))

                  ;; TODO: are these ever useful? I don't think so... Can always use mlal variants.
                  ; (use-if
                  ;   (and widening? use-shifts?)
                  ;   (list arm:ushll arm:sshll))

                  ;; TODO: debug this, add more.
                  ;; TODO: should we include these regardless of the `widening?` flag?
                  ; (use-if
                  ;   (and (not widening?) use-shifts?)
                  ;   (list arm:shl))
                ))]
         ;; TODO: stop using bad heuristics for this.
         [depth
          (cond
            [(and double-widening? (< (length weights) 5)) 2]
            [(and double-widening? (< (length weights) 9)) 3]
            [double-widening? 4]
            [(and widening? (< (length weights) 4)) 2] ;; TODO: should be < 3 if weights are non-1...
            [(and widening? (< (length weights) 8)) 3]
            ;; TODO: change this back.
            [widening? 4]
            [(< (length weights) 3) 2]
            [else 3])]
         [max-cost 20]
         ;; TODO: allow double-widening to have a zero vector as a sub-expr?
         [sub-exprs arm-sub-exprs]
          ; (if double-widening?
          ;   (append
          ;     (list (arm:dup (int32_t (bv 0 8))) (arm:dup (uint32_t (bv 0 8))) (arm:dupw (int32_t (bv 0 8))) (arm:dupw (uint32_t (bv 0 8))))
          ;     arm-sub-exprs)
          ;   arm-sub-exprs)]
         [grouped-sub-exprs (prepare-sub-exprs sub-exprs)]
         [number-reads (length weights)]
         ;; If we're doing math as unsigned, make the output unsigned (we add a reinterpret later).
         [desired-types (if as-unsigned? (arm:get-unsigned-vector-types output-type) (arm:get-vector-types output-type))]
         ; Enumerate those with the correct output type
         ; TODO: do the pruning somehow...
        ;  [temp
        ;   (begin
        ;     (display
        ;       (format
        ;         "\nhandle-vs-mpy-add params:\nInput type: ~a\nOutput type: ~a\nWidening: ~a\nDouble widening: ~a\nUse shifts: ~a\nUse subs: ~a\nUse reinterpret: ~a\nAs unsigned: ~a\nMin scalars: ~a\nDepth: ~a\n"
        ;         input-type output-type widening? double-widening? use-shifts? use-subs? use-reinterpret? as-unsigned? min-scalars depth))

        ;     (display "ISA:\n")
        ;     (pretty-print isa)
        ;     (display "GSE:\n")
        ;     (pretty-print grouped-sub-exprs)
        ;     (display "DT:\n")
        ;     (pretty-print desired-types)
        ;   )]
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


      ; (display
      ;   (format
      ;     "\nhandle-vs-mpy-add params:\nInput type: ~a\nOutput type: ~a\nWidening: ~a\nDouble widening: ~a\nUse shifts: ~a\nUse subs: ~a\nUse reinterpret: ~a\nAs unsigned: ~a\nMin scalars: ~a\nDepth: ~a\n"
      ;     input-type output-type widening? double-widening? use-shifts? use-subs? use-reinterpret? as-unsigned? min-scalars depth))

      ; (display "ISA:\n")
      ; (pretty-print isa)
      ; (display "GSE:\n")
      ; (pretty-print grouped-sub-exprs)
      ; (display "DT:\n")
      ; (pretty-print desired-types)

    ; (display "arm sub exprs!\n")
    ; (pretty-print arm-sub-exprs)
    ; (display "grouped sub exprs!\n")
    ; (pretty-print grouped-sub-exprs)
    ; (display "candidates!\n")
    ; (pretty-print candidates)
    ; (display (format "~a ~a ~a\n" isa desired-types grouped-sub-exprs))
    ; (display (format "Types; ~a ~a ~a\n" input-type output-type widening?))

    ;; Filter out templates that read too much or too little data
    ; (display (format "Is double-widening? ~a" double-widening?))
    ; (pretty-print isa)
    (display (format "Before filtering reads: ~a\n" (length candidates)))
    ; (pretty-print candidates)
    ; (display (format "Outter dot-product: ~a\n" (length (filter (lambda (cand) (is-dot-product? (car cand))) candidates))))
    ; (pretty-print candidates)

    ;; TODO: should this really be eq?
    (set! candidates (time (filter (lambda (c) (>= (arm:max-unique-inputs (car c)) number-reads)) candidates)))
    (display (format "After filtering reads: ~a\n" (length candidates)))
    ; (display (format "Load buffers: ~a\n" load-buffers))
    ; (display "First:\n")
    ; (pretty-print (first candidates))
    ; (display (format "LB: ~a\n" (live-buffers (car (first candidates)))))
    (set! candidates (time (filter (lambda (c) (equal? (live-buffers (car c)) load-buffers)) candidates)))

    (display (format "After filtering buffers: ~a\n" (length candidates)))
    ; (define f (filter (lambda (cand) (is-dot-product? (car cand))) candidates))
    ; (pretty-print f)
    ; (display (format "Outter dot-product: ~a\n" (length f)))
    ;(pretty-print (take candidates 50))
    ;(println (length candidates))

    (display (format "Before filtering scalars: ~a\n" (length candidates)))
    ;; TODO: should this be strict equality?
    (set! candidates (time (filter (lambda (c) (>= (scalar-count (car c)) min-scalars)) candidates)))
    (display (format "After filtering scalars: ~a\n" (length candidates)))
    ; (pretty-print candidates)

    ;; Compute read counts
    (set! candidates (time (map (lambda (c) (cons (car c) (cons (cdr c) (count-reads (car c))))) candidates)))

    ;; Sort them (I am ashamed of this line below)
    (set! candidates (time (sort candidates (lambda (v1 v2) (if (eq? (car (cdr v1)) (car (cdr v2))) (< (cdr (cdr v1)) (cdr (cdr v2))) (< (car (cdr v1)) (car (cdr v2))))))))

    (let* ([add-scalars (halide:extract-add-scalars halide-expr)]
           [shl-scalars (halide:extract-shl-scalars halide-expr)]
           [weights-without1 (filter (lambda (weight) (not (halide:is-one? weight))) weights)]
            ;; for dot products:
           [int-scalars-with1 (unique-list (append weights add-scalars shl-scalars))]
           ;; We don't want 1 as an available constant, except for dot products.
           [int-scalars-temp (unique-list (append weights-without1 add-scalars shl-scalars))]
           [int-consts-temp (filter concrete? int-scalars-temp)]
           ;; Safeguard against complete filtering
           [int-scalars (if (null? int-scalars-temp) (list (int8_t (bv 1 8))) int-scalars-temp)]
           [int-consts (if (null? int-consts-temp) (list (int8_t (bv 0 8))) int-consts-temp)])
      (define (bool-const) (define-symbolic* b boolean?) b)
      (define (uint1-const) (define-symbolic* b boolean?) (uint1_t b))
      (define (int8-const) (int8x1 (apply choose* int-scalars)))
      (define (uint8-const) (uint8x1 (apply choose* int-scalars)))
      (define (int16-const) (int16x1 (apply choose* int-scalars)))
      (define (uint16-const) (uint16x1 (apply choose* int-scalars)))
      (define (int32-const) (int32x1 (apply choose* int-scalars)))
      (define (uint32-const) (uint32x1 (apply choose* int-scalars)))
      (define (int64-const) (int64x1 (apply choose* int-scalars)))
      (define (uint64-const) (uint64x1 (apply choose* int-scalars)))

      (define (int8-const-imm) (int8x1 (apply choose* int-consts)))
      (define (uint8-const-imm) (uint8x1 (apply choose* int-consts)))
      (define (int16-const-imm) (int16x1 (apply choose* int-consts)))
      (define (uint16-const-imm) (uint16x1 (apply choose* int-consts)))
      (define (int32-const-imm) (int32x1 (apply choose* int-consts)))
      (define (uint32-const-imm) (uint32x1 (apply choose* int-consts)))
      (define (int64-const-imm) (int64x1 (apply choose* int-consts)))
      (define (uint64-const-imm) (uint64x1 (apply choose* int-consts)))

      (define (int8-const-dp) (int8x1 (apply choose* int-scalars-with1)))
      (define (uint8-const-dp) (uint8x1 (apply choose* int-scalars-with1)))

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

         ; For dot products.
         ['int8x4 (arm:Ri8x4 (int8-const-dp) (int8-const-dp) (int8-const-dp) (int8-const-dp))]
         ['uint8x4 (arm:Ru8x4 (uint8-const-dp) (uint8-const-dp) (uint8-const) (uint8-const-dp))]

         ;; For immediates (shifts)
         ['int8_imm (int8-const-imm)]
         ['uint8_imm (uint8-const-imm)]
         ['int16_imm (int16-const-imm)]
         ['uint16_imm (uint16-const-imm)]
         ['int32_imm (int32-const-imm)]
         ['uint32_imm (uint32-const-imm)]
         ['int64_imm (int64-const-imm)]
         ['uint64_imm (uint64-const-imm)]

         [_ node]))

      ;; TODO: can there be more cases like this?
      (define (wrapper expr)
        (cond
          [as-unsigned? (arm:reinterpret expr)]
          [else expr]))

      (time (for/list ([candidate candidates]) (cons (wrapper (uniquify-swizzles (arm:visit (car candidate) fill-arg-grammars))) (car (cdr candidate))))))))

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

    ; (display "handle-cast\n")
    ; (pretty-print isa)
    ; (pretty-print candidates)
    ; (pretty-print desired-types)
    ; (pretty-print expr)
    ; (pretty-print output-type)
    ; (pretty-print saturate?)
    ; (pretty-print arm-sub-exprs)
    ; (pretty-print input-type)

    ;; Widening instructions contain boolean flags.
    (define (uint1-const) (define-symbolic* b boolean?) (uint1_t b))
    (define (fill-arg-grammars node [pos -1])
      (match node
        ['uint1 (uint1-const)]
        [_ node]))

    (sort-and-uniquify (for/list ([candidate candidates]) (cons (arm:visit (car candidate) fill-arg-grammars) (cdr candidate))))))

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
         ;; TODO: better pruning.
         [isa (if widening?
                  (list arm:reinterpret arm:smlal-vv arm:umlal-vv arm:smlsl-vv arm:umlsl-vv arm:smull-vv arm:umull-vv
                        arm:udot.v4i32.v16i8 arm:udot.v2i32.v8i8 arm:sdot.v2i32.v8i8 arm:sdot.v4i32.v16i8)
                  (list arm:reinterpret arm:addv arm:addp arm:mla-vv arm:mls-vv arm:mul-vv arm:sub))]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [desired-types (arm:get-vector-types output-type)]
         ; TODO: why is this the number of reads? formula taken from hvx.rkt
         [width (length weights)]
         [number-reads (- (* width 2) (if (eq? width 5) 1 0))]
         [depth 3]
         [max-cost 15]
         [candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost number-reads)])

    (define (uint1-const) (define-symbolic* b boolean?) (uint1_t b))
    (define (fill-arg-grammars node [pos -1])
      (match node
        ['uint1 (uint1-const)]
        [_ node]))

    (sort-and-uniquify (for/list ([candidate candidates]) (cons (arm:visit (car candidate) fill-arg-grammars) (cdr candidate))))))

; (handle-vs-dmpy-add-hh-sat expr weight round? accumulate? outT arm-sub-exprs halide-expr)

(define (handle-vs-dmpy-add-hh-sat expr weight round? acc? output-type arm-sub-exprs halide-expr)
  (let* (; TODO: better pruning and more isa options
         [isa (list arm:sqdmulh-vs arm:sqrdmulh-vs arm:sqdmlal-vs arm:sqdmlsl-vs)]
         [depth 2]
         [max-cost 15]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [desired-types (arm:get-vector-types output-type)]
         [candidates (time (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost))]
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

    ;; TODO: read count filtering?
    (set! candidates (time (filter (lambda (c) (equal? (live-buffers (car c)) load-buffers)) candidates)))

    ;; TODO: more scalars? or is it this easy?
    (let* ([scalars (list weight)])
      (define (bool-const) (define-symbolic* b boolean?) b)
      (define (uint1-const) (define-symbolic* b boolean?) (uint1_t b))
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

      (sort-and-uniquify (for/list ([candidate candidates]) (cons (arm:visit (car candidate) fill-arg-grammars) (cdr candidate)))))))

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

(define (handle-add-sat expr0 expr1 outT arm-sub-exprs halide-expr)
  (let* ([isa (list arm:sqadd arm:suqadd arm:usqadd arm:uqadd)]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [output-type (halide:elem-type halide-expr)]
         [desired-types (arm:get-vector-types output-type)]
         ; TODO: how to decide depth/cost
         [depth 1]
         [max-cost 4]
         [candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost)])
    (sort-and-uniquify candidates)))

(define (handle-sub-sat expr0 expr1 outT arm-sub-exprs halide-expr)
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
         ;; TODO: what about widening shifts? do we care about those?
         [immediate-narrowing? (and narrowing? (concrete? shift))]
         [symbolic-narrowing? (and narrowing? (not (concrete? shift)))]
         [isa
          (cond
            ; TODO: use saturating / rounding / signedness information
            [immediate-narrowing? (list arm:reinterpret arm:shrn arm:rshrn arm:sqrshrn arm:sqrshrun arm:sqshrn arm:sqshrun arm:uqrshrn arm:uqshrn)]
            ;; Doing a non-concrete shift, use regular shift patterns
            ;; TODO: do we need broadcasts? or simply vector-scalar versions?
            [symbolic-narrowing? (append (list arm:xtn arm:uqxtn arm:sqxtn arm:sqxtun) (list arm:uqrshr-vs arm:sqrshr-vs arm:srshr-vs arm:urshr-vs arm:ushr-vs arm:sshr-vs))]
            ; TODO: need ssra, ursra, usra
            ; [else (error (format "Regular shift right not yet supported:\n~a >> ~a |- ~a ~a ~a ~a\n" expr shift round? saturate? signed? output-type))])]
            ; [else (list arm:uqrshr arm:sqrshr arm:srshr arm:urshr arm:ushr arm:sshr)])]
            [else (list arm:uqrshr-vs arm:sqrshr-vs arm:srshr-vs arm:urshr-vs arm:ushr-vs arm:sshr-vs)])]
         [depth
          (cond
            [immediate-narrowing? 1]
            [symbolic-narrowing? 2]
            ; TODO: should be larger?
            [else 1])]
         [max-cost
          (cond
            [immediate-narrowing? 7]
            [symbolic-narrowing? 12]
            ; TODO: should be larger?
            [else 4])]
         ; TODO: how to decide depth/cost
         [candidates (enumerate-arm isa desired-expr-types grouped-sub-exprs depth max-cost)])
    
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
      (define (fill-arg-grammars-imm node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool (bool-const)]
         ['uint1 (uint1-const)]
         ['int8_imm (int8-const)]
         ['uint8_imm (uint8-const)]
         ['int16_imm (int16-const)]
         ['uint16_imm (uint16-const)]
         ['int32_imm (int32-const)]
         ['uint32_imm (uint32-const)]
         ['int64_imm (int64-const)]
         ['uint64_imm (uint64-const)]
         [_ node]))

      (define (fill-arg-grammars-sym node [pos -1])
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
         ;; Fill immediates too
         ;; TODO: only fill if shift is concrete?
         [_ node]))

      (define fill-arg-grammars
        (cond
          [immediate-narrowing? fill-arg-grammars-imm]
          ;; TODO: is it more complicated than this?
          [else fill-arg-grammars-sym]))

      (define cast-candidates (sort-and-uniquify (for/list ([candidate candidates]) (cons (arm:visit (car candidate) fill-arg-grammars) (cdr candidate)))))

      (display (format "cast-candidates:\n~a" (pretty-format cast-candidates)))
      cast-candidates))

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
    (sort-and-uniquify candidates)))

(define (handle-vs-divide expr divisor arm-sub-exprs halide-expr)
  ;smull-vs umull-vs ushr sshr xtn
  ;; TODO: do we want a halving add? or saturating narrows? or sqdmulh-vs/sqrdmulh-vs
  (let* ([isa (list arm:smull-vs arm:umull-vs arm:shrn arm:ushr-vs arm:sshr-vs arm:xtn)]
         [output-type (halide:elem-type halide-expr)]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [desired-types (arm:get-vector-types output-type)]
         ; TODO: is this a good depth / cost??
         [depth 3]
         [max-cost 20]
         [candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost)])

     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))

     (define (instr-repeat? candidate)
       (define instrs (mutable-set))
       (define keep? #t)
       (define (check-instr node [pos -1])
        ;  (display (format "checking instruction... ~a\n" node))
         (cond
           ;; TODO: HVX doesn't filter out widening multiplies, why not?
           [(arm:ushr? node)
            (when (set-member? instrs 'ushr)
              (set! keep? #f))
            (set-add! instrs 'ushr)]
            [(arm:ushr-vs? node)
            (when (set-member? instrs 'ushr)
              (set! keep? #f))
            (set-add! instrs 'ushr)]
           [(arm:sshr? node) (when (set-member? instrs 'sshr) (set! keep? #f)) (set-add! instrs 'sshr)]
           [(arm:sshr-vs? node) (when (set-member? instrs 'sshr) (set! keep? #f)) (set-add! instrs 'sshr)]
           [(arm:xtn? node) (when (set-member? instrs 'xtn) (set! keep? #f)) (set-add! instrs 'xtn)]
           [(arm:shrn? node) (when (set-member? instrs 'shrn) (set! keep? #f)) (set-add! instrs 'shrn)])
         node)
       (arm:visit-shallow candidate check-instr)
       keep?)
    ;  (set! candidates (filter (lambda (c) (instr-repeat? (car c))) candidates))

     ;; Fill in param grammars
     (define-symbolic bvc8 (bitvector 8))
     (define-symbolic bvc16 (bitvector 16))
     (define int-scalars (list (int8_t bvc8) (int16_t bvc16) (uint8_t bvc8) (uint16_t bvc16)))
     (define (bool-const) (define-symbolic* b boolean?) b)
     (define (uint1-const) (define-symbolic* b boolean?) (uint1_t b))
     (define (int8-const) (cpp:cast  (apply choose* int-scalars) 'int8))
     (define (uint8-const) (cpp:cast  (apply choose* int-scalars) 'uint8))
     (define (int16-const) (cpp:cast  (apply choose* int-scalars) 'int16))
     (define (uint16-const) (cpp:cast  (apply choose* int-scalars) 'uint16))
     (define (int32-const) (cpp:cast  (apply choose* int-scalars) 'int32))
     (define (uint32-const) (cpp:cast  (apply choose* int-scalars) 'uint32))
     ;; TODO: do we need larger types?
     (define (fill-arg-grammars node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool (bool-const)]
         ['uint1 (uint1-const)]
         ['int8 (int8-const)]
         ['uint8 (uint8-const)]
         ['int8 (int8-const)]
         ['int16 (int16-const)]
         ['uint16 (uint16-const)]
         ['int32 (int32-const)]
         ['uint32 (uint32-const)]
         ;; We only generate immediates
         ['int8_imm (int8-const)]
         ['uint8_imm (uint8-const)]
         ['int16_imm (int16-const)]
         ['uint16_imm (uint16-const)]
         ['int32_imm (int32-const)]
         ['uint32_imm (uint32-const)]
        ;  ['int64_imm (int64-const)]
        ;  ['uint64_imm (uint64-const)]
         [_ node]))
    (define output (sort-and-uniquify (for/list ([candidate candidates]) (cons (arm:visit (car candidate) fill-arg-grammars) (cdr candidate)))))
    output))

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

(define (handle-halving-add expr round? arm-sub-exprs halide-expr)
  (let* ([input-type (arm-ir:elem-type expr)]
         [isa (list arm:shadd arm:srhadd arm:uhadd)]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [desired-types (arm:get-vector-types input-type)]
         ; TODO: is this a good depth / cost??
         [depth 2]
         [max-cost 12]
         [candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost)])
    ; (display (format "handle-halving-add\n~a\n~a\n~a\n~a\n"  expr round? arm-sub-exprs halide-expr))
    ; (display (format "candidates: ~a\n" (pretty-format candidates)))
    (sort-and-uniquify candidates)))

(define (handle-less-than expr0 expr1 arm-sub-exprs halide-expr)
  (let* ([output-type (halide:elem-type halide-expr)]
         ; TODO: do we need reinterpret?
         [isa
          (list arm:bl arm:cmeq arm:cmeqz arm:cmhi arm:cmhs arm:cmlez arm:cmltz arm:cmqe arm:cmqez arm:cmqt arm:cmqtz arm:cmtst)]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)]
         [desired-types (arm:get-vector-types output-type)]
         ; TODO: is this a good depth / cost?
         [depth 2]
         [max-cost 10]
         [candidates (enumerate-arm isa desired-types grouped-sub-exprs depth max-cost)])
    (display (format "handle-less-than:\noutput-type: ~a\ndesired-types: ~a\ncandidates:\n~a\n" output-type desired-types (pretty-format candidates)))
    (sort-and-uniquify candidates)))

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
     (define load-exprs (map label-cost (flatten (map generate-shuffles buf-elemTypes))))
     (sort load-exprs (lambda (v1 v2) (<= (cdr v1) (cdr v2))))]

    ;; Data broadcasting
    [(arm-ir:broadcast scalar-expr)
      ; TODO: do type pruning
      (list (cons (arm:dupw scalar-expr) 1) (cons (arm:dup scalar-expr) 1.2))]

    ;; Data broadcasting
    [(arm-ir:combine ir-expr-0 ir-expr-1 gather-tbl)
     (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
     (define live-data
       (let* ([v0 (arm:interpret (first arm-sub-exprs))] [v1 (arm:interpret (second arm-sub-exprs))])
         (append
          (for/list ([i (arm:num-elems v0)])
           (list
            (arm:get-element v0 i)))
          (for/list ([i (arm:num-elems v1)])
           (list
            (arm:get-element v1 i))))))
      ;; TODO: what is the output type???
      (error (format "Unsure how to get output type of expr:\n~a\n" (pretty-format ir-expr)))
      (list (cons (arm:??swizzle 0 live-data arm-sub-exprs tbl) 1))]

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

    [(arm-ir:vs-dmpy-add-hh-sat expr weight round? accumulate? outT)
      (handle-vs-dmpy-add-hh-sat expr weight round? accumulate? outT arm-sub-exprs halide-expr)]

    [(arm-ir:neg-sat expr)
      (handle-neg-sat expr arm-sub-exprs halide-expr)]

    [(arm-ir:add-sat expr0 expr1 outT)
      (handle-add-sat expr0 expr1 outT arm-sub-exprs halide-expr)]

    [(arm-ir:sub-sat expr0 expr1 outT)
      (handle-sub-sat expr0 expr1 outT arm-sub-exprs halide-expr)]

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
    [(arm-ir:less-than expr0 expr1)
      (handle-less-than expr0 expr1 arm-sub-exprs halide-expr)]

    [(arm-ir:vs-divide expr divisor)
      (handle-vs-divide expr divisor arm-sub-exprs halide-expr)]
    
    [(arm-ir:build-vec base stride len)
      (handle-build-vec base stride len arm-sub-exprs halide-expr)]

    [(arm-ir:halving-add expr round?)
      (handle-halving-add expr round? arm-sub-exprs halide-expr)]

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
  (not (and (eqv? parent-instr arm:reinterpret) (eqv? child-instr arm:reinterpret))))

(define (is-dot-product-instr? instr)
  (or
    (eqv? instr arm:udot.v2i32.v8i4)
    (eqv? instr arm:udot.v2i32.v8i8)
    (eqv? instr arm:udot.v4i32.v16i4)
    (eqv? instr arm:udot.v4i32.v16i8)
    (eqv? instr arm:sdot.v2i32.v8i4)
    (eqv? instr arm:sdot.v2i32.v8i8)
    (eqv? instr arm:sdot.v4i32.v16i4)
    (eqv? instr arm:sdot.v4i32.v16i8)))

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
    ['int8x4 #t]
    ['uint8x4 #t]
    ;; Immediates.
    ['int8_imm #t]
    ['uint8_imm #t]
    ['int16_imm #t]
    ['uint16_imm #t]
    ['int32_imm #t]
    ['uint32_imm #t]
    ['int64_imm #t]
    ['uint64_imm #t]
    [_ #f]))

(define (get-arg-opts arg-types instr instr-set base-exprs depth max-cost read-count arg-pos)
  (if (empty? arg-types)
      '()
      (let* ([arg (first arg-types)]
             [new-depth (if (eqv? instr arm:reinterpret) depth (sub1 depth))]
             [opts (if (basic-type? arg)
                      (list (cons arg 0))
                      (enumerate-arm instr-set (set arg) base-exprs new-depth max-cost read-count instr arg-pos))])
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
           (arm:??load (get-sw-node-id) (arm:??load-live-data ld) (arm:??load-buffer ld) tbl (arm:??load-output-type ld))) lds)
        output-type)]
      [_ node]))
  (arm:visit arm-template clone-swizzle-node))
