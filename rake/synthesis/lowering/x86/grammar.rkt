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
