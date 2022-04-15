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

(define (get-x86-grammar halide-expr ir-expr x86-sub-exprs output-layout cost-ub)
  (let* ([key (cons (x86-ir:ast-node-id ir-expr) x86-sub-exprs)]
         [check-cache (and (not (x86-ir:load-data? ir-expr)) (hash-has-key? grammar-cache key))]
         [candidates (if check-cache (hash-ref grammar-cache key) (get-x86-grammar-helper halide-expr ir-expr x86-sub-exprs output-layout))])
    ;(println cost-ub)
    ;(println key)
    ;(println grammar-cache)
    ;(println check-cache)
    ;(println (get-x86-grammar-helper halide-expr ir-expr x86-sub-exprs))
    ;(println (if check-cache (hash-ref grammar-cache key) (get-x86-grammar-helper halide-expr ir-expr x86-sub-exprs)))
    (display (format "get-x86-grammar received ~a candidates\n" (length candidates)))
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

(define (make-scalar-broadcast scalar x86-instr)
  (cons (x86-instr scalar) (x86:instr-cost x86-instr)))

(define (handle-broadcast scalar halide-expr)
  (let ([type (halide:elem-type halide-expr)])
    (cond
      ;; TODO: is this the right way to do this?
      [(or (eq? type 'int8) (eq? type 'uint8))
        (list (make-scalar-broadcast scalar x86:vpbroadcastb) (make-scalar-broadcast scalar x86:vpbroadcastb_128))]
      [(or (eq? type 'int16) (eq? type 'uint16))
        (list (make-scalar-broadcast scalar x86:vpbroadcastw) (make-scalar-broadcast scalar x86:vpbroadcastw_128))]
      [(or (eq? type 'int32) (eq? type 'uint32))
        (list (make-scalar-broadcast scalar x86:vpbroadcastd) (make-scalar-broadcast scalar x86:vpbroadcastd_128))]
      [(or (eq? type 'int16) (eq? type 'uint16))
        (list (make-scalar-broadcast scalar x86:vpbroadcastq) (make-scalar-broadcast scalar x86:vpbroadcastq_128))]
      [else (error (format "Broadcast type not available: \n~a\n~a\n~a\n~\n" type halide-expr scalar))])))

(define (get-widen-isa)
  (list x86:vpmovsxwd x86:vpmovsxwq x86:vpmovsxdq x86:vpmovsxbw x86:vpmovsxbd x86:vpmovsxbq
        x86:vpmovzxwd x86:vpmovzxwq x86:vpmovzxdq x86:vpmovzxbw x86:vpmovzxbd x86:vpmovzxbq
        ;; TODO: let unsigned widening merge into widen+reinterpret, i.e.:
        x86:vpmovzxbw_s
  ))

(define (get-broadcast-isa)
  (list x86:vpbroadcastb x86:vpbroadcastw x86:vpbroadcastd x86:vpbroadcastq
        x86:vpbroadcastb_128 x86:vpbroadcastw_128 x86:vpbroadcastd_128 x86:vpbroadcastq_128
  ))

(define (make-fill-arg-grammars scalars)
  (define (bool-const) (define-symbolic* b boolean?) b)
  (define (int8-const) (cpp:cast (apply choose* scalars) 'int8))
  (define (uint8-const) (cpp:cast (apply choose* scalars) 'uint8))
  (define (int16-const) (cpp:cast (apply choose* scalars) 'int16))
  (define (uint16-const) (cpp:cast (apply choose* scalars) 'uint16))
  (define (int32-const) (cpp:cast (apply choose* scalars) 'int32))
  (define (uint32-const) (cpp:cast (apply choose* scalars) 'uint32))
  (define (int64-const) (cpp:cast (apply choose* scalars) 'int64))
  (define (uint64-const) (cpp:cast (apply choose* scalars) 'uint64))
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


(define (handle-vs-mpy-add expr weights sat? round? half? output-type x86-sub-exprs halide-expr)
  (let* ([input-type (get-input-type expr)]
         [widening? (> (cpp:type-bw output-type) (cpp:type-bw  input-type))]
         ;; TODO: try pruning.
         [isa
          (flatten
            (list
              ;; always allow reinterpretation
              x86:reinterpret
              ;; TODO: verify these pruning techniques...
              ;; zext/sext
              (if widening? (get-widen-isa) '())
              ;; rounding_halving_adds
              (if (or half? round?) (list x86:vpavgw x86:vpavgb x86:pavgb x86:pavgw) '())
              ;; regular adds/subs (and horizontal adds/subs)
              (list x86:vpaddb x86:vpaddw x86:vpaddd x86:vpaddq
                    x86:vphaddw x86:vphaddd x86:vphsubw x86:vphsubd
                    x86:vpsubb x86:vpsubw x86:vpsubd x86:vpsubq
                    ;; SSE2 versions:
                    x86:paddb x86:paddw x86:paddd x86:paddq
                    x86:psubb x86:psubw x86:psubd x86:psubq
              )
              ;; TODO: should we have conditions on including dot_products?
              (list x86:vpmaddwd x86:vpmaddubsw)
              ;; vector-scalar versions of multiply instructions
              (list x86:vpmuldq-vs x86:vpmuludq-vs x86:vpmullw-vs x86:vpmulld-vs
                    x86:pmuludq-vs x86:pmullw-vs)
              ;; TODO: should we include the shift-left variants? I think we need to.
              (list x86:vpsllw x86:vpslld x86:vpsllq)
              ;; TODO: are these useful?
              (list x86:resize x86:vinserti128)
              ;; TODO: should we include saturating adds even if not sat?
              (if sat?
                (list x86:vpaddsb x86:vpaddsw x86:vpaddusb x86:vpaddusw
                      x86:vphaddsw x86:vphsubsw
                      x86:vpsubsw x86:vpsubsb x86:vpsubusw x86:vpsubusb
                      ;; SSE2 versions:
                      x86:paddsb x86:paddsw x86:paddusb x86:paddusw
                      x86:psubsw x86:psubsb x86:psubusw x86:psubusb
                )
                '())))]
         ; TODO: better pruning and more isa options
         ; TODO: are there better depth/cost combos?
         [depth 4]
         [max-cost 10]
         [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
         [number-reads (length weights)]
         [desired-types (x86:get-vector-types output-type)]
         ; Enumerate those with the correct output type
         ; TODO: do the pruning somehow...
         [candidates (time (enumerate-x86 isa desired-types grouped-sub-exprs depth max-cost number-reads))]
         [load-buffers (halide:extract-live-buffers halide-expr)]
         [live-buffers (lambda (expr)
                         (let* ([live-bufs (mutable-set)]
                               [extract-buffer (lambda (node [pos -1])
                                                  (destruct node
                                                    [(buffer data elemT) (set-add! live-bufs node) node]
                                                    [(x86:??swizzle id live-data exprs idx-tbl output-type)
                                                      (begin
                                                        ; (display (format "checking: (x86:??swizzle ~a ~a ~a ~a ~a)\n" id live-data exprs idx-tbl output-type))
                                                        node)]
                                                    [_ node]))])
                            (x86:visit expr extract-buffer)
                            live-bufs))])

    ; (display "x86 vs-mpy-add sub exprs!\n")
    ; (pretty-print x86-sub-exprs)
    ; (display "grouped sub exprs!\n")
    ; (pretty-print grouped-sub-exprs)
    ; (pretty-print candidates)
    ; (pretty-print isa)
    ; (pretty-print grouped-sub-exprs)
    ; (display (format "Types: ~a ~a ~a \n" desired-types input-type output-type))

    ; ; Filter out templates that read too much or too little data
    ; (display (format "Before filtering reads: ~a\n" (length candidates)))
    ; (display (format "Number of reads: ~a\n" number-reads))

    (set! candidates (time (filter (lambda (c) (eq? (x86:max-unique-inputs (car c)) number-reads)) candidates)))

    ; (display (format "After filtering reads: ~a\n" (length candidates)))
    ; (pretty-print candidates)
    ; (display (format "Load buffers: ~a\n" load-buffers))
    (set! candidates (time (filter (lambda (c) (equal? (live-buffers (car c)) load-buffers)) candidates)))

    ; (display (format "After filtering buffers: ~a\n" (length candidates)))

    ;; Compute read counts
    (set! candidates (time (map (lambda (c) (cons (car c) (cons (cdr c) (count-reads (car c))))) candidates)))

    ;; Sort them (I am ashamed of this line below)
    (set! candidates (time (sort candidates (lambda (v1 v2) (if (eq? (car (cdr v1)) (car (cdr v2))) (< (cdr (cdr v1)) (cdr (cdr v2))) (< (car (cdr v1)) (car (cdr v2))))))))

    ; (println "x86:vs-mpy-add sorted candidates!")
    ; (pretty-print candidates)

    (let* ([add-scalars (halide:extract-add-scalars halide-expr)]
           [mpy-add-scalars (set->list (list->set (append weights add-scalars)))]
           [shl-scalars (halide:make-scalar-log2s mpy-add-scalars)]
           [int-consts (set->list (list->set (append shl-scalars mpy-add-scalars)))])
      (define fill-arg-grammars (make-fill-arg-grammars int-consts))

      (time (for/list ([candidate candidates]) (cons (uniquify-swizzles (x86:visit (car candidate) fill-arg-grammars)) (car (cdr candidate))))))))

(define (handle-cast expr output-type saturate? x86-sub-exprs halide-expr)
  (let* ([input-type (get-input-type expr)]
         [narrowing? (< (cpp:type-bw output-type) (cpp:type-bw input-type))]
         [widening? (> (cpp:type-bw output-type) (cpp:type-bw input-type))]
         [isa (cond
                ;; TODO: narrowing is difficult... may need bitwise and with a constant?
                [narrowing? (error "x86:handle-cast doesn't have narrowing implemented yet!")]
                [widening? (append (get-widen-isa) (list x86:resize x86:vinserti128))]
                ; TODO: what if it's just a saturate call?
                [else (error "x86:handle-cast doesn't have reinterpreting implemented yet!")])]
         [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
         [desired-types (x86:get-vector-types output-type)]
         ; TODO: should this be the depth and the cost?
         [depth 3]
         [max-cost 5]
         [candidates (enumerate-x86 isa desired-types grouped-sub-exprs depth max-cost)])

    ; (println "handle-cast")
    ; (println "input-type")
    ; (pretty-print input-type)
    ; (println "output-type")
    ; (pretty-print output-type)
    ; (println "narrowing?")
    ; (pretty-print narrowing?)
    ; (println "widening?")
    ; (pretty-print widening?)
    ; (println "isa")
    ; (pretty-print isa)
    ; (println "grouped-sub-exprs")
    ; (pretty-print grouped-sub-exprs)
    ; (println "desired-types")
    ; (pretty-print desired-types)
    ; (println "candidates")
    ; (pretty-print candidates)

    ;; Need imm8 for vinserti128
    (define (uint8-const) (define-symbolic* imm8 (bitvector 8)) imm8)
    (define (fill-arg-grammars node [pos -1])
      (match node
        ;; TODO: need to fill imm8 values
        ['uint8 (uint8_t (uint8-const))]
        [_ node]))
    ; (for/list ([candidate sorted-candidates]) (cons (x86:visit (car candidate) fill-arg-grammars) (cdr candidate))))

    (for/list ([candidate candidates]) (cons (uniquify-swizzles (x86:visit (car candidate) fill-arg-grammars)) (cdr candidate)))))

(define (handle-minimum a b x86-sub-exprs halide-expr)
  (let* ([output-type (halide:elem-type halide-expr)]
         ; TODO: which conditionals do we want to use?
         ; TODO: do we need `reinterpret`?
         [isa (append
                (list x86:vpminsw x86:vpminsd x86:vpminsb x86:vpminuw
                      x86:vpminud x86:vpminub
                      ;; TODO: should have 128-bit versions of the AVX2
                      ;; SSE2
                      x86:pminsw x86:pminub)
                (get-broadcast-isa)
                ;; TODO: what else might be needed?
            )]
         [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
         [desired-types (x86:get-vector-types output-type)]
         ; TODO: is this a good depth / cost??
         [depth 2]
         [max-cost 7]
         [candidates (enumerate-x86 isa desired-types grouped-sub-exprs depth max-cost)]
         [scalars (halide:extract-minmax-scalars halide-expr)]
         [fill-arg-grammars (make-fill-arg-grammars scalars)])

    ;; TODO: how do we handle conditionals?
    (time (for/list ([candidate candidates]) (cons (uniquify-swizzles (x86:visit (car candidate) fill-arg-grammars)) (cdr candidate))))))

(define (handle-maximum a b x86-sub-exprs halide-expr)
  (let* ([output-type (halide:elem-type halide-expr)]
         ; TODO: which conditionals do we want to use?
         ; TODO: do we need `reinterpret`?
         [isa (list x86:vpmaxsw x86:vpmaxsd x86:vpmaxsb x86:vpmaxuw
                    x86:vpmaxud x86:vpmaxub
                    ;; TODO: should have 128-bit versions of the AVX2
                    ;; SSE2
                    x86:pmaxsw x86:pmaxub)]
         [grouped-sub-exprs (prepare-sub-exprs x86-sub-exprs)]
         [desired-types (x86:get-vector-types output-type)]
         ; TODO: is this a good depth / cost??
         [depth 2]
         [max-cost 7]
         [candidates (enumerate-x86 isa desired-types grouped-sub-exprs depth max-cost)]
         [scalars (halide:extract-minmax-scalars halide-expr)]
         [fill-arg-grammars (make-fill-arg-grammars scalars)])

    ;; TODO: how do we handle conditionals?
    (time (for/list ([candidate candidates]) (cons (uniquify-swizzles (x86:visit (car candidate) fill-arg-grammars)) (cdr candidate))))))


(define (get-x86-grammar-helper halide-expr ir-expr x86-sub-exprs output-layout)
  ;; TODO: figure out which operations should use output-layout...
  (destruct ir-expr

    ;; Data loading/shuffling
    [(x86-ir:load-data live-data gather-tbl)
     (define buffers (set->list (halide:extract-live-buffers halide-expr)))
     (define buf-elemTypes (map buffer-elemT buffers))
     (display "x86-ir:load-data:\n")
     (pretty-print buf-elemTypes)
     (define (label-cost value)
        (cons value (if (x86:is-256-expr? value) 1 2)))
     (define (generate-shuffles type)
        (define (construct-loads b)
          (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
          (define (make-load type) (x86:??load 1 live-data b tbl type))
          (map make-load (x86:get-vector-types (buffer-elemT b))))
        (define actual-loads (flatten (map construct-loads buffers)))
        (x86:make-shuffles-list actual-loads type))
     (sort (map label-cost (flatten (map generate-shuffles buf-elemTypes))) (lambda (v1 v2) (<= (cdr v1) (cdr v2))))]

    [(x86-ir:broadcast scalar-expr)
      ;; TODO: is this correct?
      (handle-broadcast scalar-expr halide-expr)]

    [(x86-ir:vs-mpy-add expr weights sat? round? half? output-type)
      (handle-vs-mpy-add expr weights sat? round? half? output-type x86-sub-exprs halide-expr)]

    [(x86-ir:cast expr type saturate?)
      (handle-cast expr type saturate? x86-sub-exprs halide-expr)]

    [(x86-ir:minimum expr0 expr1)
      (handle-minimum expr0 expr1 x86-sub-exprs halide-expr)]

    [(x86-ir:maximum expr0 expr1)
      (handle-maximum expr0 expr1 x86-sub-exprs halide-expr)]

    ;; TODO: load-data, broadcast, build-vec
    ;; TODO: cast, abs, abs-diff,
    ;; TODO: minimum, maximum
    ;; TODO: vs-mpy-add, vv-mpy-add, mul-hh
    ;; TODO: vs-shift-left, vv-shift-left
    ;; TODO: vs-shift-right, vv-shift-right
    ;; TODO: bitwise-op, select, is-equal, lt, leq, vs-divide.
    [_ (error (format "(x86:get-x86-grammar-helper) Not implemented yet\n~a\n~a" ir-expr halide-expr))]))


(define enumeration-cache (make-hash))

(define (not-dbl-reinterpret parent-instr child-instr)
  ; (display (format "(not-dbl-reinterpret ~a ~a) -> ~a\n\n" parent-instr child-instr (not (and (eqv? parent-instr x86:reinterpret) (eqv? child-instr x86:reinterpret)))))
  (not (and (eqv? parent-instr x86:reinterpret) (eqv? child-instr x86:reinterpret))))

(define (enumerate-x86 instr-set output-types base-exprs depth max-cost [read-count -1] [parent-instr (void)] [arg-pos -1])
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
  (let* ([new-max-cost (- max-cost (x86:instr-cost instr))]
         [curried-build (curryr build-sig-exprs instr-set base-exprs depth new-max-cost read-count instr)]
         [filtered (filter (curry out-member? output-types) (x86:instr-forms instr))]
         [built (map curried-build filtered)])
    (foldr append '() built)))

(define (out-member? output-types sig)
  (set-member? output-types (x86:instr-sig-ret-val sig)))

; I do not quite understand what this one is doing
(define (build-sig-exprs sig instr-set base-exprs depth max-cost read-count instr)
  (let ([sig-exprs
    (let ([arg-opts (get-arg-opts (x86:instr-sig-args sig) instr instr-set base-exprs depth max-cost read-count 0)])
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


(define (build-ast instr sig sig-expr)
  (let ([cost (foldr + (x86:instr-cost instr) (map cdr sig-expr))]
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

;; Taken directly from arm.rkt
(define (prepare-sub-exprs x86-sub-exprs)
  (define grouped-sub-exprs (make-hash))
  (define swizzle-node-id -1)
  (define x86-sub-exprs-untiled (flatten (map (lambda (expr) (if (x86:concat-tiles? expr) (x86:concat-tiles-vecs expr) expr)) (set->list (list->set x86-sub-exprs)))))
  (for ([x86-sub-expr x86-sub-exprs-untiled])
    (cond
      [(x86:??abstr-load? x86-sub-expr)
       (define elemT (x86:get-interpreted-elem-type x86-sub-expr))
       (for ([out-type (x86:get-vector-types elemT)])
         (set! swizzle-node-id (add1 swizzle-node-id))
         (define live-data (x86:??abstr-load-live-data x86-sub-expr))
         (define buffer (x86:??abstr-load-buffer x86-sub-expr))
         (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
         (define base-load-expr (x86:??load swizzle-node-id live-data buffer tbl out-type))
         (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
         (hash-set! grouped-sub-exprs out-type (set-add exprs base-load-expr)))]
      [(x86:??shuffle? x86-sub-expr)
       (define elemT (x86:get-interpreted-elem-type x86-sub-expr))
       (for ([out-type (x86:get-vector-types elemT)])
         (set! swizzle-node-id (add1 swizzle-node-id))
         (define base-load-expr (x86:??shuffle swizzle-node-id (x86:??shuffle-lds x86-sub-expr) out-type))
         (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
         (hash-set! grouped-sub-exprs out-type (set-add exprs base-load-expr)))]
      ; TODO: ask Maaz about the vsplat cond here from the HVX code
      [(x86:is-broadcast? x86-sub-expr)
        (define out-type (x86:get-interpreted-type x86-sub-expr))
        (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
        (hash-set! grouped-sub-exprs out-type (set-add exprs x86-sub-expr))
        (when (x86:is-256-broadcast? x86-sub-expr)
          (define out-type-128 (x86:get-128-type out-type))
          (define exprs-128 (hash-ref! grouped-sub-exprs out-type-128 (set)))
          (define x86-sub-expr-128 (x86:get-128-broadcast x86-sub-expr))
          (hash-set! grouped-sub-exprs out-type-128 (set-add exprs-128 x86-sub-expr-128)))]
      [else
       (define sub-expr-type (x86:get-interpreted-type x86-sub-expr))
       (define exprs (hash-ref! grouped-sub-exprs sub-expr-type (set)))
       (hash-set! grouped-sub-exprs sub-expr-type (set-add exprs x86-sub-expr))]))

  ;; Merge base-expr choices
  (define grouped-merged-sub-exprs (make-hash))
  (for ([(output-type candidates) grouped-sub-exprs])
    (define candidates-l (set->list candidates))
    (set! swizzle-node-id (add1 swizzle-node-id))
    (define merged-candidates
      (append
       (map (curryr cons 0) (filter is-load? candidates-l))
       (map (curryr cons 0) (filter x86:is-broadcast? candidates-l))
       (let ([c (filter (lambda (c) (not (or (x86:is-broadcast? c) (is-load? c)))) candidates-l)])
         (cond
           [(empty? c) '()]
           [else
            (list (cons (x86:??swizzle swizzle-node-id '() c (void) output-type) 0))]))))
    (hash-set! grouped-merged-sub-exprs output-type merged-candidates))

  grouped-merged-sub-exprs)

(define (is-load? expr)
  (or
   (x86:??load? expr)
   (x86:??shuffle? expr)))