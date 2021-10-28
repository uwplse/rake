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
  ; rake/arm/cost-model
  )

(provide get-arm-grammar)

(define grammar-cache (make-hash))

(define (get-arm-grammar halide-expr ir-expr arm-sub-exprs cost-ub)
  (let* ([key (cons (arm-ir:ast-node-id ir-expr) arm-sub-exprs)]
         [check-cache (and (not (arm-ir:load-data? ir-expr)) (hash-has-key? grammar-cache key))]
         [candidates (if check-cache (hash-ref grammar-cache key) (get-arm-grammar-helper halide-expr ir-expr arm-sub-exprs))])
      (filter (lambda (c) (<= (cdr c) cost-ub)) candidates)))

(define (get-input-type expr)
  (if (arm-ir:combine? expr)
      (let ([t0 (arm-ir:elem-type (arm-ir:combine-expr0 expr))]
            [t1 (arm-ir:elem-type (arm-ir:combine-expr1 expr))])
        ; TODO: understand why HVX selects the narrower type..
        (if (< (cpp:type-bw t0) (cpp:type-bw t1)) t0 t1))
      (arm-ir:elem-type expr)))

(define (handle-vs-mpy-add expr weights output-type arm-sub-exprs)
  (let* ([input-type (get-input-type expr)]
         [widening? (eq? (cpp:type-bw output-type) (* 2 (cpp:type-bw input-type)))]
         ; TODO: better pruning and more isa options
         [isa (if widening?
                  (list arm:addv arm:saddlv arm:uaddlv arm:saddl arm:smull arm:saddw arm:saddlp arm:sadalp arm:smlal arm:smlsl arm:sdot.v2i32.v8i8 arm:udot.v2i32.v8i8 arm:sdot.v4i32.v16i8 arm:udot.v4i32.v16i8 arm:shll arm:ssubl arm:sub arm:uadalp arm:uaddl arm:uaddlp arm:uaddw arm:umlal arm:umlsl arm:umull arm:usubl arm:usubw)
                  (list arm:add arm:sub arm:addp arm:mla arm:mls arm:mul arm:shl arm:neg))]
         [grouped-sub-exprs (prepare-sub-exprs arm-sub-exprs)])
         ; Enumerate those with the correct output type


    (error "AJ hasn't finished this yet!\n")))



(define (get-arm-grammar-helper halide-expr ir-expr arm-sub-exprs)
  ; TODO: what is the enumeration-database?
  (destruct ir-expr

    ;; Data loading/shuffling
    [(arm-ir:load-data live-data gather-tbl)
     (define buffers (set->list (halide:extract-live-buffers halide-expr)))
     (define candidates (for/list ([buffer buffers]) (cons (arm:??abstr-load 0 live-data buffer) 1)))
      (list
       (cons (arm:??shuffle 0 (map (lambda (b) (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256))) (arm:??load 1 live-data b tbl)) buffers)) 2))]


    [(arm-ir:vs-mpy-add expr weights output-type)
      (handle-vs-mpy-add expr weights output-type arm-sub-exprs)]

    [_ (error "Not implemented yet ~a" ir-expr)]))




;; Taken directly from hvx.rkt
(define (prepare-sub-exprs arm-sub-exprs)
  (define grouped-sub-exprs (make-hash))
  (define swizzle-node-id -1)
  (define arm-sub-exprs-untiled (flatten (map (lambda (expr) (if (arm:concat-tiles? expr) (arm:concat-tiles-vecs expr) expr)) (set->list (list->set arm-sub-exprs)))))
  (for ([arm-sub-expr arm-sub-exprs-untiled])
    (cond
      [(arm:??abstr-load? arm-sub-expr)
       (define elemT (arm:elem-type (arm:interpret arm-sub-expr)))
       (for ([out-type (enum-types elemT)])
         (set! swizzle-node-id (add1 swizzle-node-id))
         (define live-data (arm:??abstr-load-live-data arm-sub-expr))
         (define buffer (arm:??abstr-load-buffer arm-sub-expr))
         (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
         (define base-load-expr (arm:??load swizzle-node-id live-data buffer tbl))
         (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
         (hash-set! grouped-sub-exprs out-type (set-add exprs base-load-expr)))]
      [(arm:??shuffle? arm-sub-expr)
       (define elemT (arm:elem-type (arm:interpret arm-sub-expr)))
       (for ([out-type (enum-types elemT)])
         (set! swizzle-node-id (add1 swizzle-node-id))
         (define base-load-expr (arm:??shuffle swizzle-node-id (arm:??shuffle-lds arm-sub-expr)))
         (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
         (hash-set! grouped-sub-exprs out-type (set-add exprs base-load-expr)))]
      ; TODO: ask Maaz about the vspalt cond here from the HVX code
      [else
       (define sub-expr-type (arm:type (arm:interpret arm-sub-expr)))
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
       (let ([c (filter (lambda (c) (not (is-load? c))) candidates-l)])
         (cond
           [(empty? c) '()]
           [else
            (list (cons (arm:??swizzle swizzle-node-id '() c (void)) 0))]))))
    (hash-set! grouped-merged-sub-exprs output-type merged-candidates))
  
  grouped-merged-sub-exprs)

;; Enuemration fns (move these elsewhere)

(define (enum-types type)
  (cond
    [(eq? type 'int8) (set 'i8x8 'i8x16 'i8x32)]
    [(eq? type 'int16) (set 'i16x4 'i16x8 'i16x16)]
    [(eq? type 'int32) (set 'i32x2 'i32x4 'i32x8)]
    [(eq? type 'int64) (set 'i64x1 'i64x2 'i64x4)]
    [(eq? type 'uint8) (set 'u8x8 'u8x16 'u8x32)]
    [(eq? type 'uint16) (set 'u16x4 'u16x8 'u16x16)]
    [(eq? type 'uint32) (set 'u32x2 'u32x4 'u32x8)]
    [(eq? type 'uint64) (set 'u64x1 'u64x2 'u64x4)]))

(define (is-load? expr)
  (or
   (arm:??load? expr)
   (arm:??shuffle? expr)))

(define enumeration-cache (make-hash))

(define (enumerate-arm instr-set output-types base-exprs depth max-cost [read-count -1] [arg-pos -1])
  (let ([key (list instr-set output-types base-exprs depth max-cost read-count arg-pos)])
    (cond
      ; We have enumerated this tree before
      [(hash-has-key? enumeration-cache key) (hash-ref enumeration-cache key)]

      ; Base case
      [(<= depth 0) (apply append (for/list ([output-type output-types]) (hash-ref! base-exprs output-type (list))))]

      ; Inductive step
      [else
        (let* ([sub-candidates (enumerate-arm instr-set output-types base-exprs (- depth 1) max-cost read-count arg-pos)]
               [curried-builder (curryr build-instr-exprs instr-set output-types base-exprs depth max-cost read-count)]
               ; TODO: HVX does filtering here, we do not for now.
               [candidates (foldr append sub-candidates (map curried-builder instr-set))]
               [candidates-cost (filter (lambda (expr) (<= (cdr expr) max-cost)) candidates)]
               [candidates-read (if (eq? read-count -1) candidates-cost (filter (lambda (expr) (<= (max-unique-inputs (car expr)) read-count)) candidates-cost))]
               [candidates-unique (set->list (list->set candidates-read))])
          (hash-set! enumeration-cache key candidates-unique)
          candidates-unique)])))

; Filter based in output type
(define (build-instr-exprs instr instr-set output-types base-exprs depth max-cost read-count)
  (let ([curried-build (curryr build-sig-exprs instr-set base-exprs depth max-cost read-count)])
    (foldr append '() (map curried-build (filter (curry out-member? output-types) (arm:instr-forms instr))))))

(define (out-member? output-types sig)
  (set-member? output-types (arm:instr-sig-ret-val sig)))

; I do not quite understand what this one is doing
(define (build-sig-exprs instr sig instr-set base-exprs depth max-cost read-count)
  (let ([sig-exprs
    (let ([arg-opts (get-arg-opts (arm:instr-sig-args sig) instr instr-set base-exprs depth max-cost read-count 0)])
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
    ['int8x2 #t]
    ['uint8x2 #t]
    ['int16x2 #t]
    ['uint16x2 #t]
    ['int8x4 #t]
    ['uint8x4 #t]
    [_ #f]))

(define (get-arg-opts arg-types instr instr-set base-exprs depth max-cost read-count arg-pos)
  (if (empty? arg-types)
      '()
      (let* ([arg (first arg-types)]
             [opts (if (basic-type? arg)
                      (list (cons arg 0))
                      (enumerate-arm instr-set (set arg) base-exprs (sub1 depth) max-cost read-count arg-pos))])
          (append (list opts) (get-arg-opts (rest arg-types) instr instr-set base-exprs depth max-cost read-count (add1 arg-pos))))))

(define (max-unique-inputs expr)
  (destruct expr

    [(arm:??load _ _ _ _ ) 1]
    [(arm:??shuffle _ _) 1]
    [(arm:??swizzle _ _ _ _) 1]

    [(arm:abs Vn) (max-unique-inputs Vn)]

    [(arm:uabd Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sabd Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:umull Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:smull Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:uqadd Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sqadd Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:uqsub Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sqsub Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:uhadd Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:shadd Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:uhsub Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:shsub Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:urhadd Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:srhadd Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:urhsub Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:srhsub Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:umin Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:smin Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:umax Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:smax Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sqneg Vn) (max-unique-inputs Vn)]

    [(arm:uqxtn Vn) (max-unique-inputs Vn)]

    [(arm:sqxtn Vn) (max-unique-inputs Vn)]

    [(arm:sqxtun Vn) (max-unique-inputs Vn)]

    [(arm:rshrn Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:uqrshl Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sqrshl Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:uqrshrn Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sqrshrn Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sqrshrun Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:uqshl Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sqshlu Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sqshl Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:uqshrn Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sqshrn Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sqshrun Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:urshl Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:srshl Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:ushl Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sshl Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:raddhn Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:rsubhn Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sqdmulh Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sqrdmulh Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:addp Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:uaddlp Vn) (max-unique-inputs Vn)]

    [(arm:saddlp Vn) (max-unique-inputs Vn)]

    [(arm:umaxp Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:smaxp Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:uminp Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sminp Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sdot.v2i32.v8i8 Vd Vn Vm) (+ (max-unique-inputs Vd) (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:udot.v2i32.v8i8 Vd Vn Vm) (+ (max-unique-inputs Vd) (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sdot.v4i32.v16i8 Vd Vn Vm) (+ (max-unique-inputs Vd) (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:udot.v4i32.v16i8 Vd Vn Vm) (+ (max-unique-inputs Vd) (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:vabdl_i8x8 Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:vabdl_u8x8 Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:vabdl_i16x4 Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:vabdl_u16x4 Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:vabdl_i32x2 Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:vabdl_u32x2 Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:add Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:addhn Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:addv Vn) (max-unique-inputs Vn)]

    [(arm:mla Vd Vn Vm) (+ (max-unique-inputs Vd) (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:mls Vd Vn Vm) (+ (max-unique-inputs Vd) (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:mul Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:neg Vn) (max-unique-inputs Vn)]

    [(arm:saba Vd Vn Vm) (+ (max-unique-inputs Vd) (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sabal Vd Vn Vm) (+ (max-unique-inputs Vd) (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sadalp Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:saddl Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:saddlv Vn) (max-unique-inputs Vn)]

    [(arm:saddw Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:shl Vn) (max-unique-inputs Vn)]

    [(arm:shll Vn) (max-unique-inputs Vn)]

    [(arm:shrn Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:smaxv Vn) (max-unique-inputs Vn)]

    [(arm:sminv Vn) (max-unique-inputs Vn)]

    [(arm:smlal Vd Vn Vm) (+ (max-unique-inputs Vd) (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:smlsl Vd Vn Vm) (+ (max-unique-inputs Vd) (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sqabs Vn) (max-unique-inputs Vn)]

    [(arm:sqdmull Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sshll Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:ssubl Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:ssubw Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:sub Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:subhn Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:suqadd Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:uadalp Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:uaddl Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:uaddlv Vn) (max-unique-inputs Vn)]

    [(arm:uaddw Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:umaxv Vn) (max-unique-inputs Vn)]

    [(arm:uminv Vn) (max-unique-inputs Vn)]

    [(arm:umlal Vd Vn Vm) (+ (max-unique-inputs Vd) (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:umlsl Vd Vn Vm) (+ (max-unique-inputs Vd) (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:ushll Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:usqadd Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:usubl Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [(arm:usubw Vn Vm) (+ (max-unique-inputs Vn) (max-unique-inputs Vm))]

    [_ (error (format "AJ needs to implement max-unique-inputs ~a" expr))]))

; TODO: we need arm:instr-cost to work for this
(define (build-ast instr sig sig-expr)
  (error "AJ needs to implement build-ast"))