#lang rosette

(require
  (only-in rosette/base/core/term @app)
  rosette/lib/destruct
  rosette/lib/synthax
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/x86/ir/instructions
  rake/x86/ir/interpreter
  rake/x86/ast/types
  rake/x86/ast/interpreter
  rake/x86/ast/visitor
  rake/x86/ast/cost-model
  rake/x86/ast/analysis
  rake/x86/ast/type_utils
  rake/x86/ast/utils
  )

(provide get-x86-grammar)

(define grammar-cache (make-hash))

(define (get-x86-grammar halide-expr ir-expr x86-sub-exprs cost-ub)
  (let* ([key (cons (x86-ir:ast-node-id ir-expr) x86-sub-exprs)]
         [check-cache (and (not (x86-ir:load-data? ir-expr)) (hash-has-key? grammar-cache key))]
         [candidates (if check-cache (hash-ref grammar-cache key) (get-x86-grammar-helper halide-expr ir-expr x86-sub-exprs))])
    ;(println cost-ub)
    ;(println key)
    ;(println grammar-cache)
    ;(println check-cache)
    ;(println (get-x86-grammar-helper halide-expr ir-expr x86-sub-exprs))
    ;(println (if check-cache (hash-ref grammar-cache key) (get-x86-grammar-helper halide-expr ir-expr x86-sub-exprs)))
    (display (format "get-x86-grammar received ~a candidates\n" (length candidates)))
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
  (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))

  ;; Fill in param grammars
  (for/list ([candidate candidates]) (cons (uniquify-swizzles candidate) (cdr candidate))))


;; (define (handle-vs-mpy-add expr weights output-type x86-sub-exprs halide-expr)
;;   (let* ([input-type (get-input-type expr)]
;;          [widening? (>= (cpp:type-bw output-type) (* 2 (cpp:type-bw input-type)))]
;;          ; TODO: better pruning and more isa options
;;          [isa (if widening?
;;                 (list x86:reinterpret x86:add x86:addv x86:saddlv x86:uaddlv x86:saddl x86:saddw x86:saddlp x86:sadalp x86:smlal-vs x86:smlsl-vs x86:sdot.v2i32.v8i8 x86:udot.v2i32.v8i8 x86:sdot.v4i32.v16i8 x86:udot.v4i32.v16i8 x86:shll x86:ssubl x86:sub x86:uadalp x86:uaddl x86:uaddlp x86:uaddw x86:umlal-vs x86:umlsl-vs x86:usubl x86:usubw x86:smull-vs x86:umull-vs)
;;                 ;(list x86:reinterpret x86:umull-vs x86:add)
;;                 (list x86:reinterpret x86:add x86:sub x86:addp x86:mla-vs x86:mls-vs x86:mul-vs x86:shl x86:neg))]
;;          [depth (if widening? 4 4)]
;;          [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
;;          [number-reads (length weights)]
;;          [desired-types (x86:get-vector-types output-type)]
;;          ; Enumerate those with the correct output type
;;          ; TODO: do the pruning somehow...
;;          [candidates (time (enumerate-x86 isa desired-types grouped-sub-exprs depth 7 number-reads))]
;;          [load-buffers (halide:extract-live-buffers halide-expr)]
;;          [live-buffers (lambda (expr)
;;                          (let* ([live-bufs (mutable-set)]
;;                                [extract-buffer (lambda (node [pos -1])
;;                                                   (destruct node
;;                                                     [(buffer data elemT) (set-add! live-bufs node) node]
;;                                                     [(x86:??swizzle id live-data exprs idx-tbl output-type) (display (format "checking: (x86:??swizzle ~a ~a ~a ~a ~a)\n" id live-data exprs idx-tbl output-type))]
;;                                                     [_ node]))])
;;                             (x86:visit expr extract-buffer)
;;                             live-bufs))])

;;     (display "x86 sub exprs!\n")
;;     (pretty-print x86-sub-exprs)
;;     (display "grouped sub exprs!\n")
;;     (pretty-print grouped-sub-exprs)
;;     (display "candidates!\n")
;;     (pretty-print candidates)
;;     (display (format "~a ~a ~a\n" isa desired-types grouped-sub-exprs))
;;     (pretty-print grouped-sub-exprs)
;;     (display (format "Types; ~a ~a ~a\n" input-type output-type widening?))

;;     ;; Filter out templates that read too much or too little data
;;     (display (format "Before filtering reads: ~a\n" (length candidates)))
;;     (set! candidates (time (filter (lambda (c) (eq? (x86:max-unique-inputs (car c)) number-reads)) candidates)))
;;     (display (format "After filtering reads: ~a\n" (length candidates)))
;;     (display (format "Load buffers: ~a\n" load-buffers))
;;     (display "First:\n")
;;     (pretty-print (first candidates))
;;     (display (format "LB: ~a\n" (live-buffers (car (first candidates)))))
;;     (set! candidates (time (filter (lambda (c) (equal? (live-buffers (car c)) load-buffers)) candidates)))

;;     (display (format "After filtering buffers: ~a\n" (length candidates)))
;;     ;(pretty-print (take candidates 50))
;;     ;(println (length candidates))

;;     ;; Compute read counts
;;     (set! candidates (time (map (lambda (c) (cons (car c) (cons (cdr c) (count-reads (car c))))) candidates)))

;;     ;; Sort them (I am ashamed of this line below)
;;     (set! candidates (time (sort candidates (lambda (v1 v2) (if (eq? (car (cdr v1)) (car (cdr v2))) (< (cdr (cdr v1)) (cdr (cdr v2))) (< (car (cdr v1)) (car (cdr v2))))))))

;;     (let* ([add-scalars (halide:extract-add-scalars halide-expr)]
;;            [int-consts (set->list (list->set (append weights add-scalars)))])
;;       (define (bool-const) (define-symbolic* b boolean?) b)
;;       (define (int8-const) (int8x1 (apply choose* int-consts)))
;;       (define (uint8-const) (uint8x1 (apply choose* int-consts)))
;;       (define (int16-const) (int16x1 (apply choose* int-consts)))
;;       (define (uint16-const) (uint16x1 (apply choose* int-consts)))
;;       (define (int32-const) (int32x1 (apply choose* int-consts)))
;;       (define (uint32-const) (uint32x1 (apply choose* int-consts)))
;;       (define (int64-const) (int64x1 (apply choose* int-consts)))
;;       (define (uint64-const) (uint64x1 (apply choose* int-consts)))
;;       (define (fill-arg-grammars node [pos -1])
;;        (match node
;;          [#t #t]
;;          [#f #f]
;;          ['bool (bool-const)]
;;          ['int8 (int8-const)]
;;          ['uint8 (uint8-const)]
;;          ['int16 (int16-const)]
;;          ['uint16 (uint16-const)]
;;          ['int32 (int32-const)]
;;          ['uint32 (uint32-const)]
;;          ['int64 (int64-const)]
;;          ['uint64 (uint64-const)]
;;          ; TODO: HVX has some weird types here, for scalar registers?
;;          [_ node]))

;;       (time (for/list ([candidate candidates]) (cons (uniquify-swizzles (x86:visit (car candidate) fill-arg-grammars)) (car (cdr candidate))))))))

;; (define (handle-cast expr output-type saturate? x86-sub-exprs halide-expr)
;;   (let* ([input-type (get-input-type expr)]
;;          [narrowing? (< (cpp:type-bw output-type) (cpp:type-bw input-type))]
;;          [widening? (> (cpp:type-bw output-type) (cpp:type-bw input-type))]
;;          ; TODO: should we just do the selection here?
;;          [isa (cond
;;                 [narrowing? (list x86:xtn x86:uqxtn x86:sqxtn x86:sqxtun)]
;;                 [widening? (list x86:uxtl x86:sxtl)]
;;                 ; TODO: what if it's just a saturate call?
;;                 [else (list x86:reinterpret)])]
;;          [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
;;          [desired-types (x86:get-vector-types output-type)]
;;          ; TODO: do the pruning somehow...
;;          ; TODO: should this be the depth and the cost?
;;          [candidates (enumerate-x86 isa desired-types grouped-sub-exprs 3 7)])

;;      (sort-and-uniquify candidates)))

;; (define (handle-abs expr saturate? output-type x86-sub-exprs halide-expr)
;;   (let ([isa (list x86:abs x86:sqabs x86:reinterpret)]
;;         [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
;;         [desired-types (x86:get-vector-types output-type)])
;;     ; TODO: is this a good depth / cost??
;;     (define candidates (enumerate-x86 isa desired-types grouped-sub-exprs 2 2))
;;     (sort-and-uniquify candidates)))

;; (define (handle-minimum a b x86-sub-exprs halide-expr)
;;   (let* ([output-type (halide:elem-type halide-expr)]
;;          ; TODO: what does Maaz mean by `conditional` in x86/ir/instructions.rkt?
;;          ; TODO: do we need `reinterpret`?
;;          [isa (list x86:umin x86:smin x86:uminp x86:sminp)]
;;          [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
;;          [desired-types (x86:get-vector-types output-type)]
;;          ; TODO: is this a good depth / cost??
;;          [candidates (enumerate-x86 isa desired-types grouped-sub-exprs 2 2)])
;;     (sort-and-uniquify candidates)))

;; (define (handle-maximum a b x86-sub-exprs halide-expr)
;;   (let* ([output-type (halide:elem-type halide-expr)]
;;          ; TODO: what does Maaz mean by `conditional` in x86/ir/instructions.rkt?
;;          ; TODO: do we need `reinterpret`?
;;          [isa (list x86:umax x86:smax x86:umaxp x86:smaxp)]
;;          [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
;;          [desired-types (x86:get-vector-types output-type)]
;;          ; TODO: is this a good depth / cost??
;;          [candidates (enumerate-x86 isa desired-types grouped-sub-exprs 2 2)])
;;     (sort-and-uniquify candidates)))

;; (define (handle-vv-mpy-add expr weights output-type x86-sub-exprs halide-expr)
;;   (let* ([input-type (get-input-type expr)]
;;          [widening? (eq? (cpp:type-bw output-type) (* 2 (cpp:type-bw input-type)))]
;;          [isa (if widening?
;;                   (list x86:reinterpret x86:smlal-vv x86:umlal-vv x86:smlsl-vv x86:umlsl-vv x86:smull-vv x86:umull-vv)
;;                   (list x86:reinterpret x86:addv x86:addp x86:mla-vv x86:mls-vv x86:mul-vv x86:sub))]
;;          [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
;;          [desired-types (x86:get-vector-types output-type)]
;;          ; TODO: why is this the number of reads? formula taken from hvx.rkt
;;          [width (length weights)]
;;          [number-reads (- (* width 2) (if (eq? width 5) 1 0))]
;;          [candidates (enumerate-x86 isa desired-types grouped-sub-exprs 4 8 number-reads)])
;;     (sort-and-uniquify candidates)))

;; (define (handle-neg-sat expr x86-sub-exprs halide-expr)
;;   (let* ([isa (list x86:sqneg)]
;;          [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
;;          [output-type (halide:elem-type halide-expr)]
;;          [desired-types (x86:get-vector-types output-type)]
;;          ; TODO: how to decide depth/cost
;;          [candidates (enumerate-x86 isa desired-types grouped-sub-exprs 1 2)])
;;     (sort-and-uniquify candidates)))

;; (define (handle-add-sat expr0 expr1 x86-sub-exprs halide-expr)
;;   (let* ([isa (list x86:sqadd x86:suqadd x86:usqadd x86:uqadd)]
;;          [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
;;          [output-type (halide:elem-type halide-expr)]
;;          [desired-types (x86:get-vector-types output-type)]
;;          ; TODO: how to decide depth/cost
;;          [candidates (enumerate-x86 isa desired-types grouped-sub-exprs 1 2)])
;;     (sort-and-uniquify candidates)))

;; (define (handle-sub-sat expr0 expr1 x86-sub-exprs halide-expr)
;;   (let* ([isa (list x86:sqsub x86:uqsub)]
;;          [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
;;          [output-type (halide:elem-type halide-expr)]
;;          [desired-types (x86:get-vector-types output-type)]
;;          ; TODO: how to decide depth/cost
;;          [candidates (enumerate-x86 isa desired-types grouped-sub-exprs 1 2)])
;;     (sort-and-uniquify candidates)))

;; (define (handle-vs-shift-left expr shift round? saturate? signed? x86-sub-exprs halide-expr)
;;   (let* ([input-type (x86-ir:elem-type expr)]
;;          [output-type (halide:elem-type halide-expr)]
;;          [widening? (> (cpp:type-bw output-type) (cpp:type-bw input-type))]
;;          [desired-expr-types (x86:get-vector-types output-type)]
;;          [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
;;          [isa (if widening?
;;                 ; TODO: use saturating / rounding / signedness information
;;                 ; TODO: are there more widening versions?
;;                 (list x86:sshll x86:ushll)
;;                 (list x86:sqrshl x86:uqrshl x86:sqshl x86:uqshl x86:sqshlu x86:srshl x86:urshl))]
;;          ; TODO: how to decide depth/cost
;;          [candidates (enumerate-x86 isa desired-expr-types grouped-sub-exprs 1 2)])
;;     (sort-and-uniquify candidates)))

;; (define (handle-vv-shift-left expr0 expr1 round? saturate? signed? x86-sub-exprs halide-expr)
;;   (let* ([input-type (x86-ir:elem-type expr0)]
;;          [output-type (halide:elem-type halide-expr)]
;;          [widening? (> (cpp:type-bw output-type) (cpp:type-bw input-type))]
;;          [desired-expr-types (x86:get-vector-types output-type)]
;;          [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
;;          [isa (if widening?
;;                 ; TODO: can we even use saturating / rounding / signedness information?
;;                 (error "vv-shift-left has no widening asm instructions\n")
;;                 (list x86:sshl x86:ushl))]
;;          ; TODO: how to decide depth/cost
;;          [candidates (enumerate-x86 isa desired-expr-types grouped-sub-exprs 1 2)])
;;     (sort-and-uniquify candidates)))

;; (define (handle-vs-shift-right expr shift round? saturate? signed? output-type x86-sub-exprs halide-expr)
;;   (let* ([input-type (x86-ir:elem-type expr)]
;;          [narrowing? (< (cpp:type-bw output-type) (cpp:type-bw input-type))]
;;          [desired-expr-types (x86:get-vector-types output-type)]
;;          [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
;;          [isa (if narrowing?
;;                 ; TODO: use saturating / rounding / signedness information
;;                 ; TODO: need srshr, sshr, ssra, urshr, ursra, ushr, usra
;;                 (list x86:shrn x86:rshrn x86:sqrshrn x86:sqrshrun x86:sqshrn x86:sqshrun x86:uqrshrn x86:uqshrn)
;;                 (error "AJ needs to implement srshr, sshr, ssra, urshr, ursra, ushr, usra\n"))]
;;          ; TODO: how to decide depth/cost
;;          [candidates (enumerate-x86 isa desired-expr-types grouped-sub-exprs 1 2)])
;;     (sort-and-uniquify candidates)))

;; (define (handle-abs-diff expr0 expr1 widening? output-type x86-sub-exprs halide-expr)
;;   (let* ([isa (if widening?
;;                   (list x86:vabdl_i8x8 x86:vabdl_u8x8 x86:vabdl_i16x4 x86:vabdl_u16x4 x86:vabdl_i32x2 x86:vabdl_u32x2)
;;                   (list x86:sabd x86:uabd))]
;;          [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
;;          [desired-types (x86:get-vector-types output-type)]
;;          ; TODO: is this a good depth / cost??
;;          [candidates (enumerate-x86 isa desired-types grouped-sub-exprs 2 2)])
;;     (sort-and-uniquify candidates)))

;; (define (handle-build-vec base stride len x86-sub-exprs halide-expr)
;;   (cond
;;     ;; TODO: handle arbitrary logical vector lengths.
;;     [(and (int32_t? stride) (eq? len 16))
;;       (let ([output-type 'i32x8]
;;             [exprs (list (ramp base stride 8) (ramp (sca-add base (int32_t (bv 8 32))) stride 8))]
;;             [ihal (halide:interpret halide-expr)]
;;             [tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256))])
;;         (list (cons (x86:??swizzle 0 (for/list ([i (range 8)]) (list (ihal i))) exprs tbl output-type) 1)))]
;;     [else (error "Unimplemented: handle-build-vec base stride len x86-sub-exprs halide-expr")]))

(define (make-scalar-broadcast scalar x86-instr)
  (list (cons (x86-instr scalar) (x86:instr-cost x86-instr 0))))

(define (handle-broadcast scalar halide-expr)
  (let ([type (halide:elem-type halide-expr)]
        [lanes (halide:vec-len halide-expr)])
    (cond
      ;; TODO: is this the right way to do this?
      [(and (or (eq? type 'int8) (eq? type 'uint8)) (eq? lanes 32))
        (make-scalar-broadcast scalar x86:vpbroadcastb)]
      [(and (or (eq? type 'int8) (eq? type 'uint8)) (eq? lanes 16))
        (make-scalar-broadcast scalar x86:vpbroadcastb_128)]
      [(and (or (eq? type 'int16) (eq? type 'uint16)) (eq? lanes 16))
        (make-scalar-broadcast scalar x86:vpbroadcastw)]
      [(and (or (eq? type 'int16) (eq? type 'uint16)) (eq? lanes 8))
        (make-scalar-broadcast scalar x86:vpbroadcastw_128)]
      [(and (or (eq? type 'int32) (eq? type 'uint32)) (eq? lanes 8))
        (make-scalar-broadcast scalar x86:vpbroadcastd)]
      [(and (or (eq? type 'int32) (eq? type 'uint32)) (eq? lanes 4))
        (make-scalar-broadcast scalar x86:vpbroadcastd_128)]
      [(and (or (eq? type 'int64) (eq? type 'uint64)) (eq? lanes 4))
        (make-scalar-broadcast scalar x86:vpbroadcastq)]
      [(and (or (eq? type 'int64) (eq? type 'uint64)) (eq? lanes 2))
        (make-scalar-broadcast scalar x86:vpbroadcastq_128)]
      [else (error (format "Broadcast type not available: \n~a\n~a" halide-expr scalar))])))

(define (get-x86-grammar-helper halide-expr ir-expr x86-sub-exprs)
  (destruct ir-expr

    ; Data loading/shuffling
    [(x86-ir:load-data live-data gather-tbl)
     (define buffers (set->list (halide:extract-live-buffers halide-expr)))
     (define candidates (for/list ([buffer buffers]) (cons (x86:??abstr-load 0 live-data buffer) 1)))
     (define buf-elemTypes (map buffer-elemT buffers))
     (define (label-cost value)
        (cons value 2))
     (define (generate-shuffles type)
        (define (construct-loads b)
          (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
          (define (make-load type) (x86:??load 1 live-data b tbl type))
          (map make-load (x86:get-vector-types (buffer-elemT b))))
        (define actual-loads (flatten (map construct-loads buffers)))
        (x86:make-shuffles-list actual-loads type))
     (map label-cost (flatten (map generate-shuffles buf-elemTypes)))]

    [(x86-ir:broadcast scalar-expr)
      ;; TODO: is this correct?
      (handle-broadcast scalar-expr halide-expr)]
      ; (println (halide:elem-type halide-expr))
      ; (println (halide:vec-len halide-expr))
      ; (pretty-print ir-expr)
      ; (pretty-print halide-expr)
      ; (error "implement broadcast!")]

    ;; TODO: load-data, broadcast, build-vec
    ;; TODO: cast, abs, abs-diff,
    ;; TODO: minimum, maximum
    ;; TODO: vs-mpy-add, vv-mpy-add, mul-hh
    ;; TODO: vs-shift-left, vv-shift-left
    ;; TODO: vs-shift-right, vv-shift-right
    ;; TODO: bitwise-op, select, is-equal, lt, leq, vs-divide.
    [_ (error (format "(x86:get-x86-grammar-helper) Not implemented yet\n~a\n~a" ir-expr halide-expr))]))




;; Taken directly from hvx.rkt
; (define (prepare-sub-exprs x86-sub-exprs)
;   (define grouped-sub-exprs (make-hash))
;   (define swizzle-node-id -1)
;   ; (define x86-sub-exprs-untiled (flatten (map (lambda (expr) (if (x86:concat-tiles? expr) (x86:concat-tiles-vecs expr) expr)) (set->list (list->set x86-sub-exprs)))))
;   (define x86-sub-exprs-untiled (flatten (map (lambda (expr) (set->list (list->set x86-sub-exprs))))))
;   (for ([x86-sub-expr x86-sub-exprs-untiled])
;     (cond
;       [(x86:??abstr-load? x86-sub-expr)
;        (define elemT (x86:get-interpreted-elem-type x86-sub-expr))
;        (for ([out-type (x86:get-vector-types elemT)])
;          (set! swizzle-node-id (add1 swizzle-node-id))
;          (define live-data (x86:??abstr-load-live-data x86-sub-expr))
;          (define buffer (x86:??abstr-load-buffer x86-sub-expr))
;          (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
;          (define base-load-expr (x86:??load swizzle-node-id live-data buffer tbl out-type))
;          (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
;          (hash-set! grouped-sub-exprs out-type (set-add exprs base-load-expr)))]
;       [(x86:??shuffle? x86-sub-expr)
;        (define elemT (x86:get-interpreted-elem-type x86-sub-expr))
;        (for ([out-type (x86:get-vector-types elemT)])
;          (set! swizzle-node-id (add1 swizzle-node-id))
;          (define base-load-expr (x86:??shuffle swizzle-node-id (x86:??shuffle-lds x86-sub-expr) out-type))
;          (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
;          (hash-set! grouped-sub-exprs out-type (set-add exprs base-load-expr)))]
;       ; TODO: ask Maaz about the vspalt cond here from the HVX code
;       [else
;        (define sub-expr-type (x86:get-interpreted-type x86-sub-expr))
;        (define exprs (hash-ref! grouped-sub-exprs sub-expr-type (set)))
;        (hash-set! grouped-sub-exprs sub-expr-type (set-add exprs x86-sub-expr))]))

;   ;; Merge base-expr choices
;   (define grouped-merged-sub-exprs (make-hash))
;   (for ([(output-type candidates) grouped-sub-exprs])
;     (define candidates-l (set->list candidates))
;     (set! swizzle-node-id (add1 swizzle-node-id))
;     (define merged-candidates
;       (append
;        (map (curryr cons 0) (filter is-load? candidates-l))
;        (let ([c (filter (lambda (c) (not (is-load? c))) candidates-l)])
;          (cond
;            [(empty? c) '()]
;            [else
;             (list (cons (x86:??swizzle swizzle-node-id '() c (void) output-type) 0))]))))
;     (hash-set! grouped-merged-sub-exprs output-type merged-candidates))
  
;   grouped-merged-sub-exprs)

; (define (is-load? expr)
;   (or
;    (x86:??load? expr)
;    (x86:??shuffle? expr)))

(define enumeration-cache (make-hash))

(define (not-dbl-reinterpret parent-instr child-instr)
  (display (format "(not-dbl-reinterpret ~a ~a)\n\n" parent-instr child-instr))
  (not (and (eqv? parent-instr x86:reinterpret) (eqv? child-instr x86:reinterpret))))

(define (enumerate-x86 instr-set output-types base-exprs depth max-cost [read-count -1] [parent-instr (void)] [arg-pos -1])
  (let ([key (list instr-set output-types base-exprs depth max-cost read-count arg-pos)])
    (cond
      ; We have enumerated this tree before
      [(hash-has-key? enumeration-cache key) (hash-ref enumeration-cache key)]

      ; Base case
      [(<= depth 0) (apply append (for/list ([output-type output-types]) (hash-ref! base-exprs output-type (list))))]

      ; Inductive step
      [else
        (let* ([sub-candidates (enumerate-x86 instr-set output-types base-exprs (- depth 1) max-cost read-count parent-instr arg-pos)]
               [curried-builder (curryr build-instr-exprs instr-set output-types base-exprs depth max-cost read-count)]
               ; TODO: HVX does more filtering here, we do not for now.
               [kept-instrs (filter (curry not-dbl-reinterpret parent-instr) instr-set)]
               [candidates (foldr append sub-candidates (map curried-builder kept-instrs))]
               [candidates-cost (filter (lambda (expr) (<= (cdr expr) max-cost)) candidates)]
               [candidates-read (if (eq? read-count -1) candidates-cost (filter (lambda (expr) (<= (x86:max-unique-inputs (car expr)) read-count)) candidates-cost))]
               [candidates-unique (set->list (list->set candidates-read))])
          ; (display (format "depth: ~a\n" depth))
          ; (display (format "output-types: ~a\n" output-types))
          ; (display "base-exprs: \n")
          ; (pretty-print base-exprs)
          ; (display "candidates: \n")
          ; (println candidates)
          ; (display "candidates-unique: \n")
          ; (println candidates-unique)
          ; (display "parent-instr: \n")
          ; (println parent-instr)
          ;(pretty-print base-exprs)
          (hash-set! enumeration-cache key candidates-unique)
          candidates-unique)])))

; Filter based in output type
(define (build-instr-exprs instr instr-set output-types base-exprs depth max-cost read-count)
  ;(display (format "instr: ~a\n" instr))
  (let* ([curried-build (curryr build-sig-exprs instr-set base-exprs depth max-cost read-count instr)]
         [filtered (filter (curry out-member? output-types) (x86:instr-forms instr))]
         [built (map curried-build filtered)])
    (foldr append '() built)))

(define (out-member? output-types sig)
  (set-member? output-types (x86:instr-sig-ret-val sig)))

; I do not quite understand what this one is doing
(define (build-sig-exprs sig instr-set base-exprs depth max-cost read-count instr)
  ;(display (format "sig: ~a\n" sig))
  (let ([sig-exprs
    (let ([arg-opts (get-arg-opts (x86:instr-sig-args sig) instr instr-set base-exprs depth max-cost read-count 0)])
      ;(println arg-opts)
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
                      (enumerate-x86 instr-set (set arg) base-exprs (sub1 depth) max-cost read-count instr arg-pos))])
          ;(println arg)
          ;(println (enumerate-x86 instr-set (set arg) base-exprs (sub1 depth) max-cost read-count arg-pos))
          (append (list opts) (get-arg-opts (rest arg-types) instr instr-set base-exprs depth max-cost read-count (add1 arg-pos))))))


; TODO: we need x86:instr-cost to work for this
(define (build-ast instr sig sig-expr)
  (let ([cost (foldr + (x86:instr-cost instr sig) (map cdr sig-expr))]
        [expr (apply instr (map car sig-expr))])
    (cons expr cost)))

(define (count-reads expr)
  (define cnt 0)
  (define (incr-read-cntr node [pos -1])
    (destruct node
      [(x86:??load _ _ _ _ _) (set! cnt (+ cnt 1)) node]
      [(x86:??shuffle _ _ _) (set! cnt (+ cnt 1)) node]
      [else node]))
  (x86:visit expr incr-read-cntr)
  cnt)

(define (uniquify-swizzles x86-template)
  (define swizzle-node-id -1)
  (define (get-sw-node-id) (set! swizzle-node-id (add1 swizzle-node-id)) swizzle-node-id)
  (define (clone-swizzle-node node [pos -1])
    (destruct node
      [(x86:??swizzle id live-data expr gather-tbl output-type)
       (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
       (x86:??swizzle (get-sw-node-id) live-data expr tbl output-type)]
      [(x86:??load id live-data buffer tbl output-type)
       (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
       (x86:??load (get-sw-node-id) live-data buffer tbl output-type)]
      [(x86:??abstr-load id live-data buffer)
       (x86:??abstr-load (get-sw-node-id) live-data buffer)]
      [(x86:??shuffle id lds output-type)
       (x86:??shuffle
        (get-sw-node-id)
        (map
         (lambda (ld)
           (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
           (x86:??load (get-sw-node-id) (x86:??load-live-data ld) (x86:??load-buffer ld) tbl (x86:??load-output-type ld))) lds))
        output-type]
      [_ node]))
  (x86:visit x86-template clone-swizzle-node))
