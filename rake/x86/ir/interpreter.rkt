#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/destruct
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/x86/ir/instructions
  rake/internal/counter)

; TODO: do provides
(provide
  (rename-out [instr-count x86-ir:instr-count])
  (rename-out [get-subexprs x86-ir:get-subexprs])
  (rename-out [visit x86-ir:visit])
  (rename-out [elem-type x86-ir:elem-type])
  (rename-out [elem-type^ x86-ir:elem-type^])
  (rename-out [interpret x86-ir:interpret]))

(define (elem-type expr)
  (define e (interpret expr))
  (define a (cpp:type (e 0)))
  (define b (cpp:type (e 1)))
  (if (< (cpp:type-bw a) (cpp:type-bw b)) a b))

(define (elem-type^ expr)
  (define e (interpret expr))
  (define a (cpp:type (e 0)))
  (define b (cpp:type (e 1)))
  (if (< (cpp:type-bw a) (cpp:type-bw b)) b a))

;; Model C++ Saturation
(define MIN_CHAR -128)
(define MAX_CHAR 127)
(define MIN_UCHAR 0)
(define MAX_UCHAR 255)

(define MIN_SHORT -32768)
(define MAX_SHORT 32767)
(define MIN_USHORT 0)
(define MAX_USHORT 65535)

(define MIN_INT -2147483648)
(define MAX_INT 2147483647)
(define MIN_UINT 0)
(define MAX_UINT 4294967295)

(define MIN_LL #x8000000000000000)
(define MAX_LL #x7fffffffffffffff)
(define MIN_ULL 0)
(define MAX_ULL #xffffffffffffffff)

(define (max-representable type)
  (cond
    [(eq? type 'int8) (bv MAX_CHAR 8)]
    [(eq? type 'int16) (bv MAX_SHORT 16)]
    [(eq? type 'int32) (bv MAX_INT 32)]
    [(eq? type 'int64) (bv MAX_LL 64)]
    [(eq? type 'uint8) (bv MAX_UCHAR 8)]
    [(eq? type 'uint16) (bv MAX_USHORT 16)]
    [(eq? type 'uint32) (bv MAX_UINT 32)]
    [(eq? type 'uint64) (bv MAX_ULL 64)]))

(define (min-representable type)
  (cond
    [(eq? type 'int8) (bv MIN_CHAR 8)]
    [(eq? type 'int16) (bv MIN_SHORT 16)]
    [(eq? type 'int32) (bv MIN_INT 32)]
    [(eq? type 'int64) (bv MIN_LL 64)]
    [(eq? type 'uint8) (bv MIN_UCHAR 8)]
    [(eq? type 'uint16) (bv MIN_USHORT 16)]
    [(eq? type 'uint32) (bv MIN_UINT 32)]
    [(eq? type 'uint64) (bv MIN_ULL 64)]))

; TODO: should this be in cpp/cast.rkt?
(define (saturating-cast expr type)
  (cond
    [(eq? type 'int8) (cpp:sat8 expr)]
    [(eq? type 'uint8) (cpp:satu8 expr)]
    [(eq? type 'int16) (cpp:sat16 expr)]
    [(eq? type 'uint16) (cpp:satu16 expr)]
    [(eq? type 'int32) (cpp:sat32 expr)]
    [(eq? type 'uint32) (cpp:satu32 expr)]
    [(eq? type 'int64) (cpp:sat64 expr)]
    [(eq? type 'uint64) (cpp:satu64 expr)]))

(define (signed-abs-helper v bits)
  (if (bvsge v (bv 0 bits)) v (bvmul v (bv -1 bits))))

(define (abs-impl expr type)
  (destruct expr
    ; abs on unsigned is a no-op and cast
    [(uint8_t v0) (cpp:cast expr type)]
    [(uint16_t v0) (cpp:cast expr type)]
    [(uint32_t v0) (cpp:cast expr type)]
    [(uint64_t v0) (cpp:cast expr type)]
    ; abs on signed types actually means something
    [(int8_t v0) (cpp:cast (int8_t (signed-abs-helper v0 8)) type)]
    [(int16_t v0) (cpp:cast (int16_t (signed-abs-helper v0 16)) type)]
    [(int32_t v0) (cpp:cast (int32_t (signed-abs-helper v0 32)) type)]
    [(int64_t v0) (cpp:cast (int64_t (signed-abs-helper v0 64)) type)]))

(define (get-sat-cast type)
  (cond
    [(eq? type 'int8) cpp:sat8]
    [(eq? type 'int16) cpp:sat16]
    [(eq? type 'int32) cpp:sat32]
    [(eq? type 'int64) cpp:sat64]
    [(eq? type 'uint8) cpp:satu8]
    [(eq? type 'uint16) cpp:satu16]
    [(eq? type 'uint32) cpp:satu32]
    [(eq? type 'uint64) cpp:satu64]))

(define (signed-sat-abs-helper v bits type)
  (let* ([max-rep (max-representable type)]
         [min-abs (bvmul (bv -1 bits) max-rep)])
       (if (bvsge v (bv 0 bits))
           v
           (if (bvsge v min-abs)
               (bvmul v (bv -1 bits)) ; safe to abs
               max-rep))))

(define (sat-abs-impl expr type)
  (destruct expr
    ; sat-abs on unsigned is a no-op and saturating-cast
    [(uint8_t v0) (saturating-cast expr type)]
    [(uint16_t v0) (saturating-cast expr type)]
    [(uint32_t v0) (saturating-cast expr type)]
    [(uint64_t v0) (saturating-cast expr type)]
    ; sat-abs on signed types actually means something
    [(int8_t v0) (saturating-cast (signed-sat-abs-helper v0 8 int8_t) type)]
    [(int16_t v0) (saturating-cast (signed-sat-abs-helper v0 16 int16_t) type)]
    [(int32_t v0) (saturating-cast (signed-sat-abs-helper v0 32 int32_t) type)]
    [(int64_t v0) (saturating-cast (signed-sat-abs-helper v0 64 int64_t) type)]))

; TODO: this should be re-used in the HVX interpreter as well..
(define (min-impl lhs rhs)
  (destruct* (lhs rhs)
    [((int8_t v0) (int8_t v1)) (cpp:min8 lhs rhs)]
    [((uint8_t v0) (uint8_t v1)) (cpp:minu8 lhs rhs)]
    [((int16_t v0) (int16_t v1)) (cpp:min16 lhs rhs)]
    [((uint16_t v0) (uint16_t v1)) (cpp:minu16 lhs rhs)]
    [((int32_t v0) (int32_t v1)) (cpp:min32 lhs rhs)]
    [((uint32_t v0) (uint32_t v1)) (cpp:minu32 lhs rhs)]
    [((int64_t v0) (int64_t v1)) (cpp:min64 lhs rhs)]
    [((uint64_t v0) (uint64_t v1)) (cpp:minu64 lhs rhs)]))

; TODO: this should be re-used in the HVX interpreter as well..
(define (max-impl lhs rhs)
  (destruct* (lhs rhs)
    [((int8_t v0) (int8_t v1)) (cpp:max8 lhs rhs)]
    [((uint8_t v0) (uint8_t v1)) (cpp:maxu8 lhs rhs)]
    [((int16_t v0) (int16_t v1)) (cpp:max16 lhs rhs)]
    [((uint16_t v0) (uint16_t v1)) (cpp:maxu16 lhs rhs)]
    [((int32_t v0) (int32_t v1)) (cpp:max32 lhs rhs)]
    [((uint32_t v0) (uint32_t v1)) (cpp:maxu32 lhs rhs)]
    [((int64_t v0) (int64_t v1)) (cpp:max64 lhs rhs)]
    [((uint64_t v0) (uint64_t v1)) (cpp:maxu64 lhs rhs)]))

(define (const-zero type)
  (cpp:cast (int8_t (bv 0 8)) type))

(define (const-one type)
  (cpp:cast (int8_t (bv 1 8)) type))

; (define (half-add-impl-signed a b bits)
;   (bvadd (bvand a b) (bvashr (bvxor a b) (bv 1 bits))))

; (define (half-add-impl-unsigned a b bits)
;   (bvadd (bvand a b) (bvlshr (bvxor a b) (bv 1 bits))))

; (define (half-add-impl lhs rhs)
;   (destruct* (lhs rhs)
;     [((int8_t v0) (int8_t v1)) (int8_t (half-add-impl-signed v0 v1 8))]
;     [((uint8_t v0) (uint8_t v1)) (uint8_t (half-add-impl-unsigned v0 v1 8))]
;     [((int16_t v0) (int16_t v1)) (int16_t (half-add-impl-signed v0 v1 16))]
;     [((uint16_t v0) (uint16_t v1)) (uint16_t (half-add-impl-unsigned v0 v1 16))]
;     [((int32_t v0) (int32_t v1)) (int32_t (half-add-impl-signed v0 v1 32))]
;     [((uint32_t v0) (uint32_t v1)) (uint32_t (half-add-impl-unsigned v0 v1 32))]
;     [((int64_t v0) (int64_t v1)) (int64_t (half-add-impl-signed v0 v1 64))]
;     [((uint64_t v0) (uint64_t v1)) (uint64_t (half-add-impl-unsigned v0 v1 64))]))

; ; (a >> 1) + (b >> 1) + (((a & 1) + (b & 1) + 1) >> 1)
; (define (rhalf-add-impl-signed a b bits)
;   (let ([one (bv 1 bits)])
;     (bvadd (bvashr a one) (bvashr b one) (bvashr (bvadd (bvand a one) (bvadd b one) one) one))))

; (define (rhalf-add-impl-unsigned a b bits)
;   (let ([one (bv 1 bits)])
;     (bvadd (bvlshr a one) (bvlshr b one) (bvlshr (bvadd (bvand a one) (bvadd b one) one) one))))

; (define (rhalf-add-impl lhs rhs)
;   (destruct* (lhs rhs)
;     [((int8_t v0) (int8_t v1)) (int8_t (rhalf-add-impl-signed v0 v1 8))]
;     [((uint8_t v0) (uint8_t v1)) (uint8_t (rhalf-add-impl-unsigned v0 v1 8))]
;     [((int16_t v0) (int16_t v1)) (int16_t (rhalf-add-impl-signed v0 v1 16))]
;     [((uint16_t v0) (uint16_t v1)) (uint16_t (rhalf-add-impl-unsigned v0 v1 16))]
;     [((int32_t v0) (int32_t v1)) (int32_t (rhalf-add-impl-signed v0 v1 32))]
;     [((uint32_t v0) (uint32_t v1)) (uint32_t (rhalf-add-impl-unsigned v0 v1 32))]
;     [((int64_t v0) (int64_t v1)) (int64_t (rhalf-add-impl-signed v0 v1 64))]
;     [((uint64_t v0) (uint64_t v1)) (uint64_t (rhalf-add-impl-unsigned v0 v1 64))]))

; ; (a >> 1) - (b >> 1) - (((b & 1) - (a & 1) + 1) >> 1);
; (define (half-sub-impl-signed a b bits)
;   (let ([one (bv 1 bits)])
;     (bvsub (bvashr a one) (bvashr b one) (bvashr (bvadd (bvsub (bvand b one) (bvand a one)) one) one))))

; (define (half-sub-impl-unsigned a b bits)
;   (let ([one (bv 1 bits)])
;     (bvsub (bvlshr a one) (bvlshr b one) (bvlshr (bvadd (bvsub (bvand b one) (bvand a one)) one) one))))

; (define (half-sub-impl lhs rhs)
;   (destruct* (lhs rhs)
;     [((int8_t v0) (int8_t v1)) (int8_t (half-sub-impl-signed v0 v1 8))]
;     [((uint8_t v0) (uint8_t v1)) (uint8_t (half-sub-impl-unsigned v0 v1 8))]
;     [((int16_t v0) (int16_t v1)) (int16_t (half-sub-impl-signed v0 v1 16))]
;     [((uint16_t v0) (uint16_t v1)) (uint16_t (half-sub-impl-unsigned v0 v1 16))]
;     [((int32_t v0) (int32_t v1)) (int32_t (half-sub-impl-signed v0 v1 32))]
;     [((uint32_t v0) (uint32_t v1)) (uint32_t (half-sub-impl-unsigned v0 v1 32))]
;     [((int64_t v0) (int64_t v1)) (int64_t (half-sub-impl-signed v0 v1 64))]
;     [((uint64_t v0) (uint64_t v1)) (uint64_t (half-sub-impl-unsigned v0 v1 64))]))

; ; (a >> 1) - (b >> 1) + (((a & 1) - (b & 1) + 1) >> 1);
; (define (rhalf-sub-impl-signed a b bits)
;   (let ([one (bv 1 bits)])
;     (bvadd (bvsub (bvashr a one) (bvashr b one)) (bvashr (bvadd (bvsub (bvand a one) (bvand b one)) one) one))))

; (define (rhalf-sub-impl-unsigned a b bits)
;   (let ([one (bv 1 bits)])
;     (bvadd (bvsub (bvlshr a one) (bvlshr b one)) (bvlshr (bvadd (bvsub (bvand a one) (bvand b one)) one) one))))

; copied from the HVX interpreter
; TODO: move to shared code
(define (get-sat-fn type)
  (cond
    [(eq? type 'int8) cpp:sat8]
    [(eq? type 'int16) cpp:sat16]
    [(eq? type 'int32) cpp:sat32]
    [(eq? type 'int64) cpp:sat64]
    [(eq? type 'uint8) cpp:satu8]
    [(eq? type 'uint16) cpp:satu16]
    [(eq? type 'uint32) cpp:satu32]
    [(eq? type 'uint64) cpp:satu64]))

(define (get-cast-fn type)
  (lambda (value)
    (cpp:cast value type)))

; (define (rhalf-sub-impl lhs rhs)
;   (destruct* (lhs rhs)
;     [((int8_t v0) (int8_t v1)) (int8_t (rhalf-sub-impl-signed v0 v1 8))]
;     [((uint8_t v0) (uint8_t v1)) (uint8_t (rhalf-sub-impl-unsigned v0 v1 8))]
;     [((int16_t v0) (int16_t v1)) (int16_t (rhalf-sub-impl-signed v0 v1 16))]
;     [((uint16_t v0) (uint16_t v1)) (uint16_t (rhalf-sub-impl-unsigned v0 v1 16))]
;     [((int32_t v0) (int32_t v1)) (int32_t (rhalf-sub-impl-signed v0 v1 32))]
;     [((uint32_t v0) (uint32_t v1)) (uint32_t (rhalf-sub-impl-unsigned v0 v1 32))]
;     [((int64_t v0) (int64_t v1)) (int64_t (rhalf-sub-impl-signed v0 v1 64))]
;     [((uint64_t v0) (uint64_t v1)) (uint64_t (rhalf-sub-impl-unsigned v0 v1 64))]))

; Expr b_positive = select(b > 0, make_one(a.type()), make_zero(a.type()));
; return simplify((a >> b) + (b_positive & (a >> (b - 1))));
(define (rounding-right-shift-impl lhs rhs shift-func sat-func)
  (let* ([type (cpp:type lhs)]
         [one (cpp:eval (const-one type))]
         [zero (cpp:eval (const-zero type))]
         [shift (cpp:eval (cpp:cast rhs type))]
         [gtcheck (if (cpp:signed-expr? lhs) bvsgt bvugt)]
         [b_pos (if (gtcheck shift zero) one zero)]
         [value (cpp:eval lhs)]
         [rshifted0 (shift-func value shift)]
         [rshifted1 (shift-func value (bvsub shift one))]
         [rounded (bvand b_pos rshifted1)]
         [result (bvadd rshifted0 rounded)]
         [saturated (sat-func (mk-cpp-expr result type))])
      saturated))

(define (right-shift-impl lhs rhs shift-func sat-func)
  (let* ([shifted (shift-func (cpp:eval lhs) (cpp:eval (cpp:cast rhs (cpp:type lhs))))]
         [cpp-shifted (mk-cpp-expr shifted (cpp:type lhs))]
         [saturated (sat-func cpp-shifted)])
      saturated))


(define (bvclamp a min max type)
  (let* ([min-func (if (cpp:signed-type? type) bvsmin bvumin)]
         [max-func (if (cpp:signed-type? type) bvsmax bvumax)]
         [eval-min (min-func a max)]
         [eval-max (max-func eval-min min)])
    eval-max))

(define (get-wide-type expr)
  (destruct expr
    [(int8_t v) 'int16]
    [(uint8_t v) 'uint16]
    [(int16_t v) 'int32]
    [(uint16_t v) 'uint32]
    [(int32_t v) 'int64]
    [(uint32_t v) 'uint64]
    [(int64_t v) 'int128]
    [(uint64_t v) 'uint128]
    [_ (error "Cannot widen expression: " expr)]))

(define (widen expr)
  (cpp:cast expr (get-wide-type expr)))

(define (absd-impl lhs rhs out-type)
  ; TODO: assert lhs and rhs have the same type
  (let* ([type (cpp:type lhs)]
         [a (cpp:eval lhs)]
         [b (cpp:eval rhs)]
         [gtcheck (if (cpp:signed-expr? lhs) bvsgt bvugt)]
         [bvalue (if (gtcheck a b) (bvsub a b) (bvsub b a))]
         ; TODO: is this the right semantic for output type?
         [obj (mk-cpp-expr bvalue type)])
      (cpp:cast obj out-type)))

(define (widening-absd-impl lhs rhs type)
  (absd-impl (widen lhs) (widen rhs) type))

(define (vs-mpy-add-helper input weights width interm-type xo xi)
  (if (eq? width xi)
      (list)
      (let* ([loaded (cpp:eval (cpp:cast (input (+ xo xi)) interm-type))]
             [weight (cpp:eval (cpp:cast (list-ref weights xi) interm-type))]
             [value (bvmul loaded weight)]
             [recurse (vs-mpy-add-helper input weights width interm-type xo (+ 1 xi))])
        (append (list value) recurse))))

;; saturating_add
;; simplify(clamp(a, a.type().min() - min(b, 0), a.type().max() - max(b, 0))) + b
(define (make-sat-bvadd type)
  (let ([min-val (min-representable type)]
        [max-val (max-representable type)]
        [min-func (if (cpp:signed-type? type) bvsmin bvumin)]
        [max-func (if (cpp:signed-type? type) bvsmax bvumax)]
        [zero (cpp:eval (const-zero type))])
    (define (sat-bvadd a b)
      (let* ([bottom (bvsub min-val (min-func b zero))]
             [top (bvsub max-val (max-func b zero))]
             [clamped (bvclamp a bottom top type)]
             [sum (bvadd clamped b)])
        sum))
    sat-bvadd))

(define (get-halver type)
  (if (cpp:signed-type? type)
    (lambda (p) (bvashr p (bv 1 (cpp:type-bw type))))
    (lambda (p) (bvlshr p (bv 1 (cpp:type-bw type))))))

(define (get-adder sat? out-type)
  (if sat? (make-sat-bvadd out-type) bvadd))

;; If half+sat then half and sat-cast, if half then narrow, otherwise no-op.
(define (get-caster sat? half? interm-type out-type)
  (cond
    [(and sat? half?) (lambda (value)
                        (let ([halver (get-halver interm-type)]
                              [sat-fn (get-sat-fn out-type)])
                          (sat-fn (mk-cpp-expr (halver value) interm-type))))]
    [half? (lambda (value)
            (let ([halver (get-halver interm-type)])
              (cpp:cast (mk-cpp-expr (halver value) interm-type) out-type)))]
    [else (lambda (value) (mk-cpp-expr value out-type))]))

(define (vs-mpy-add-impl input i weights sat? round? half? out-type)
        ;; Use a wider type if halving at the end.
  (let* ([interm-type (if half? (get-wide-type out-type) out-type)]
         [width (length weights)]
         [parts (vs-mpy-add-helper input weights width interm-type (* i width) 0)]
         [adder (get-adder sat? out-type)]
         [caster (get-caster sat? half? interm-type out-type)]
         [base (cpp:eval (if round? (const-one interm-type) (const-zero interm-type)))]
         [total (foldl adder base parts)])
        (caster total)))

(define (vv-mpy-add-helper input weights interm-type xo xi)
  (cond
    [(empty? weights) (list)]
    [(eq? (first weights) 0)
      (let* ([value (cpp:eval (cpp:cast (input (+ xo xi)) interm-type))]
             [recurse (vv-mpy-add-helper input (rest weights) interm-type xo (+ 1 xi))])
        (append (list value) recurse))]
    [else 
      (let* ([a (cpp:eval (cpp:cast (input (+ xo xi)) interm-type))]
             [b (cpp:eval (cpp:cast (input (+ xo xi 1)) interm-type))]
             ;; TODO: do we need saturating behavior here?
             [value (bvmul a b)]
             [recurse (vv-mpy-add-helper input (rest weights) interm-type xo (+ 2 xi))])
        (append (list value) recurse))]))

; (define (const-zero? value)
;   (bveq (cpp:eval value) (cpp:eval (const-zero (cpp:type value)))))

(define (vv-mpy-add-impl input i weights sat? round? half? out-type)
  (let* ([elem-cnt (foldl (lambda (w sum) (+ sum (if (zero? w) 1 2))) 0 weights)]
         [interm-type (if half? (get-wide-type out-type) out-type)]
         [parts (vv-mpy-add-helper input weights interm-type (* i elem-cnt) 0)]
         [adder (get-adder sat? out-type)]
         [caster (get-caster sat? half? interm-type out-type)]
         [base (cpp:eval (if round? (const-one interm-type) (const-zero interm-type)))]
         [total (foldl adder base parts)])
    (caster total)))

(define (get-bitwise-fn op)
  (cond
    ;; TODO: and, andn, or, xor
    [(eq? 'and op) bvand]
    [(eq? 'or op) bvor]
    [(eq? 'xor op) bvxor]
    [else (error "Need to implement get-bitwise-fn for operation: " op)]))

(define (bitwise-op-impl op lhs rhs)
  (let* ([type (cpp:type lhs)]
         [a (cpp:eval lhs)]
         [b (cpp:eval rhs)]
         [fn (get-bitwise-fn op)]
         [value (fn a b)])
      (mk-cpp-expr value type)))

; (define (do-widening-add lhs rhs)
;   (halide:do-add (widen lhs) (widen rhs)))

; (define (do-widening-sadd lhs rhs)
;   (saturating-add-impl (widen lhs) (widen rhs)))

; (define (do-widening-mul lhs rhs)
;   (halide:do-mul (widen lhs) (widen rhs)))

; (define (do-widening-min lhs rhs)
;   (halide:do-min (widen lhs) (widen rhs)))

; (define (do-widening-max lhs rhs)
;   (halide:do-max (widen lhs) (widen rhs)))

; (define (reduce-impl input index width acc outT)
;   (if (eq? index width)
;     acc
;     (reduce-impl input (+ index 1) width (halide:do-add (cpp:cast acc outT) (cpp:cast (input index) outT)) outT)))

(define (interpret p)
  (destruct p

    ;;;;;;;;;;;;;;;;;;;; Scalar Halide Expressions ;;;;;;;;;;;;;;;;;;;;;

    [(var-lookup var val) (interpret val)]
            
    [(sca-cast sca type) (cpp:cast (interpret sca) type)]

    [(sca-add v1 v2) (halide:do-add (interpret v1) (interpret v2))]
    [(sca-sub v1 v2) (halide:do-sub (interpret v1) (interpret v2))]
    [(sca-mul v1 v2) (halide:do-mul (interpret v1) (interpret v2))]
    [(sca-div v1 v2) (halide:do-div (interpret v1) (interpret v2))]
    [(sca-mod v1 v2) (halide:do-mod (interpret v1) (interpret v2))]
    [(sca-min v1 v2) (halide:do-min (interpret v1) (interpret v2))]
    [(sca-max v1 v2) (halide:do-max (interpret v1) (interpret v2))]

    [(sca-if v1 v2 v3) (halide:do-if (interpret v1) (interpret v2) (interpret v3))]
    [(sca-eq v1 v2) (halide:do-eq (interpret v1) (interpret v2))]
    [(sca-lt v1 v2) (halide:do-lt (interpret v1) (interpret v2))]
    [(sca-le v1 v2) (halide:do-le (interpret v1) (interpret v2))]

    [(sca-abs v1) (halide:do-abs (interpret v1))]
    [(sca-absd v1 v2) (halide:do-absd (interpret v1) (interpret v2))]
    [(sca-shl v1 v2) (halide:do-shl (interpret v1) (interpret v2))]
    [(sca-shr v1 v2) (halide:do-shr (interpret v1) (interpret v2))]
    [(sca-clz v1) (halide:do-clz (interpret v1))]

    [(sca-bwand v1 v2) (halide:do-bwand (interpret v1) (interpret v2))]

    [(load-sca buf idx) (halide:buffer-ref (interpret buf) (interpret idx))]

    ;;;;;;;;;;;;;;
            
    ; TODO: understand this
    [(x86-ir:abstr-expr orig-expr abstr-vals) (lambda (i) (halide:buffer-ref abstr-vals i))]

    ; These first few are taken from the hvx uberIR interpreter
    [(x86-ir:load-data live-data gather-tbl)
     (lambda (i)
       (list-ref (list-ref live-data curr-cn) (list-ref gather-tbl i)))]

    [(x86-ir:combine expr0 expr1 read-tbl)
     (define input0 (interpret expr0))
     (define input1 (interpret expr1))
     (lambda (i)
       (define idx (car (list-ref read-tbl i)))
       (define c (cdr (list-ref read-tbl i)))
       (assert (<= 0 idx i))
       (define lhs (input0 idx))
       (define rhs (input1 idx))
       (if c lhs rhs))]

    [(x86-ir:broadcast value) (lambda (i) (interpret value))]

    [(x86-ir:build-vec base stride len)
     (define b (interpret base))
     (define s (interpret stride))
     (lambda (i)
       (mk-cpp-expr
        (bvadd
         (cpp:eval b)
         (bvmul (cpp:eval s) (integer->bitvector i (bitvector (cpp:expr-bw s)))))
        (cpp:type b)))]

    [(x86-ir:cast sub-expr type saturate?)
     (define input (interpret sub-expr))
     (if saturate?
      (lambda (i) (saturating-cast (input i) type))
      (lambda (i) (cpp:cast (input i) type)))]


    [(x86-ir:abs sub-expr saturate? output-type)
     (define input (interpret sub-expr))
     (define abs-f (if saturate? sat-abs-impl abs-impl))
     (lambda (i)
        (define val (input i))
        (abs-f val output-type))]

    [(x86-ir:abs-diff expr0 expr1 widening? outT)
     (define input0 (interpret expr0))
     (define input1 (interpret expr1))
     ; TODO: do we need a saturating cast? I don't think we do.
     (if widening?
        (lambda (i)
          (let ([value0 (input0 i)]
                [value1 (input1 i)])
            (widening-absd-impl value0 value1 outT)))
        (lambda (i)
          (let ([value0 (input0 i)]
                [value1 (input1 i)])
            (absd-impl value0 value1 outT))))]

    [(x86-ir:minimum expr0 expr1)
     (define input0 (interpret expr0))
     (define input1 (interpret expr1))
     (lambda (i)
       (min-impl (input0 i) (input1 i)))]

    [(x86-ir:maximum expr0 expr1)
     (define input0 (interpret expr0))
     (define input1 (interpret expr1))
     (lambda (i)
       (max-impl (input0 i) (input1 i)))]

    [(x86-ir:vs-mpy-add expr weights sat? round? half? outT)
     (define input (interpret expr))
     (define int-weights (map interpret weights))
     (lambda (i)
       (vs-mpy-add-impl input i int-weights sat? round? half? outT))]


    ; [(x86-ir:reduce expr width reduce-op outT)
    ;  (define input (interpret expr))
    ;  (lambda (i)
    ;    (reduce-impl input (+ i 1) width (input i) outT))]

    [(x86-ir:vv-mpy-add expr weights sat? round? half? outT)
     (define input (interpret expr))
     (lambda (i)
       ; TODO: HVX has a saturation flag, do we need that?
       (vv-mpy-add-impl input i weights sat? round? half? outT))]

    [(x86-ir:vs-shift-left expr shift round? saturate? signed?)
        (error "vs-shift-left Not yet implemented\n")]
    [(x86-ir:vv-shift-left expr0 expr1 round? saturate? signed?)
        (error "vv-shift-left Not yet implemented\n")]

    [(x86-ir:vs-shift-right expr shift round? saturate? signed?)
     (define input (interpret expr))
     ; n is a scalar
     (define n (interpret shift))
     (define shift-func (if signed? bvashr bvlshr))
     (if round?
      (lambda (i)
        (let ([value (input i)])
          (define outputT (cpp:type value))
          (define sat-func (if saturate? (get-sat-fn outputT) (get-cast-fn outputT)))
          (rounding-right-shift-impl value n shift-func sat-func)))
      (lambda (i)
        (let ([value (input i)])
          (define outputT (cpp:type value))
          (define sat-func (if saturate? (get-sat-fn outputT) (get-cast-fn outputT)))
          (right-shift-impl value n shift-func sat-func))))]

    [(x86-ir:vs-divide expr divisor)
     (define input (interpret expr))
     (define den (interpret divisor))
     (lambda (i)
       (define v (input i))
       (cond
         [(int8_t? v) (cpp:euclidean-div v den 'int8)]
         [(int16_t? v) (cpp:euclidean-div v den 'int16)]
         [(int32_t? v) (cpp:euclidean-div v den 'int32)]
         [(uint8_t? v) (cpp:euclidean-div v den 'uint8)]
         [(uint16_t? v) (cpp:euclidean-div v den 'uint16)]
         [(uint32_t? v) (cpp:euclidean-div v den 'uint32)]))]

    ; [(x86-ir:bitwise-and expr0 expr1)
    ;   (define input0 (interpret expr0))
    ;   (define input1 (interpret expr1))
    ;     (lambda (i)
    ;       (let ([value0 (input0 i)]
    ;             [value1 (input1 i)])
    ;           (bitwise-and-impl value0 value1)))]
    [(x86-ir:bitwise-op op expr0 expr1)
      (define input0 (interpret expr0))
      (define input1 (interpret expr1))
        (lambda (i)
          (let ([value0 (input0 i)]
                [value1 (input1 i)])
              (bitwise-op-impl op value0 value1)))]

    [(x86-ir:select expr0 expr1 expr2)
     (define input0 (interpret expr0))
     (define input1 (interpret expr1))
     (define input2 (interpret expr2))
     (lambda (i) (if (cpp:eval (input0 i)) (input1 i) (input2 i)))]
    
    [(x86-ir:less-than expr0 expr1)
     (define input0 (interpret expr0))
     (define input1 (interpret expr1))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs (input1 i))
       (destruct* (lhs rhs)
         [((uint8_t v0) (uint8_t v1)) (uint1_t (bvult v0 v1))]
         [((uint16_t v0) (uint16_t v1)) (uint1_t (bvult v0 v1))]
         [((uint32_t v0) (uint32_t v1)) (uint1_t (bvult v0 v1))]
         [((int8_t v0) (int8_t v1)) (uint1_t (bvslt v0 v1))]
         [((int16_t v0) (int16_t v1)) (uint1_t (bvslt v0 v1))]
         [((int32_t v0) (int32_t v1)) (uint1_t (bvslt v0 v1))]))]

    [(x86-ir:is-equal expr0 expr1)
     (define input0 (interpret expr0))
     (define input1 (interpret expr1))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs (input1 i))
       (destruct* (lhs rhs)
         [((uint8_t v0) (uint8_t v1)) (uint1_t (bveq v0 v1))]
         [((uint16_t v0) (uint16_t v1)) (uint1_t (bveq v0 v1))]
         [((uint32_t v0) (uint32_t v1)) (uint1_t (bveq v0 v1))]
         [((int8_t v0) (int8_t v1)) (uint1_t (bveq v0 v1))]
         [((int16_t v0) (int16_t v1)) (uint1_t (bveq v0 v1))]
         [((int32_t v0) (int32_t v1)) (uint1_t (bveq v0 v1))]))]

    [(x86-ir:less-than-eq expr0 expr1)
     (define input0 (interpret expr0))
     (define input1 (interpret expr1))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs (input1 i))
       (destruct* (lhs rhs)
         [((uint8_t v0) (uint8_t v1)) (uint1_t (bvule v0 v1))]
         [((uint16_t v0) (uint16_t v1)) (uint1_t (bvule v0 v1))]
         [((uint32_t v0) (uint32_t v1)) (uint1_t (bvule v0 v1))]
         [((int8_t v0) (int8_t v1)) (uint1_t (bvsle v0 v1))]
         [((int16_t v0) (int16_t v1)) (uint1_t (bvsle v0 v1))]
         [((int32_t v0) (int32_t v1)) (uint1_t (bvsle v0 v1))]))]

    [_ p]
    ;[_ (error "No way to interpret expr:" p)]
    ))


(define (instr-count ir-expr)
  (destruct ir-expr
    [(x86-ir:load-data live-data gather-tbl) 0]
    [(x86-ir:broadcast value) 1]
    [(x86-ir:build-vec base stride len) 1]
    [(x86-ir:combine expr0 expr1 read-tbl) (+ (instr-count expr0) (instr-count expr1) 1)]

    [(x86-ir:cast expr type saturate?) (+ (instr-count expr) 1)]
    [(x86-ir:abs expr saturate? outT) (+ (instr-count expr) 1)]
    [(x86-ir:abs-diff expr0 expr1 widening? outT) (+ (instr-count expr0) (instr-count expr1) 1)]
    [(x86-ir:maximum expr0 expr1) (+ (instr-count expr0) (instr-count expr1) 1)]
    [(x86-ir:minimum expr0 expr1) (+ (instr-count expr0) (instr-count expr1) 1)]

    ; [(x86-ir:reduce expr width reduce-op widening?) (+ (instr-count expr) 1)]

    [(x86-ir:vs-mpy-add expr weights saturating? rounding? halving? outT) (+ (instr-count expr) 1)]
    [(x86-ir:vv-mpy-add expr weights saturating? rounding? halving? outT) (+ (instr-count expr) 1)]

    [(x86-ir:vs-shift-left expr shift round? saturate? signed?) (+ (instr-count expr) (instr-count shift) 1)]
    [(x86-ir:vv-shift-left expr0 expr1 round? saturate? signed?) (+ (instr-count expr0) (instr-count expr1) 1)]
    [(x86-ir:vs-shift-right expr shift round? saturate? signed?) (+ (instr-count expr) 1)]
    [(x86-ir:vv-shift-right expr0 expr1 round? saturate? signed?) (+ (instr-count expr0) (instr-count expr1) 1)]

    [(x86-ir:bitwise-op op expr0 expr1) (+ (instr-count expr0) (instr-count expr1) 1)]

    [(x86-ir:vs-divide expr divisor) (+ (instr-count expr) 1)]
    [(x86-ir:select expr0 expr1 expr2) (+ (instr-count expr0) (instr-count expr1) (instr-count expr2) 1)]

    [_ (error "instr-count not implemented for ir-expr: " ir-expr)]))


(define (visit ir-expr handler)
  ; (let ([id (ir-node-id ir-expr)])
    (destruct ir-expr
      [(x86-ir:load-data live-data gather-tbl) (handler ir-expr)]
      [(x86-ir:broadcast value) (handler ir-expr)]
      [(x86-ir:build-vec base stride len) (handler ir-expr)]
      [(x86-ir:combine expr0 expr1 read-tbl) (handler (x86-ir:combine (x86-ir:ast-node-id ir-expr) (visit expr0 handler) (visit expr1 handler) read-tbl))]

      [(x86-ir:cast expr type saturate?) (handler (x86-ir:cast (x86-ir:ast-node-id ir-expr) (visit expr handler) type saturate?))]
      [(x86-ir:abs expr saturate? output-type) (handler (x86-ir:abs (x86-ir:ast-node-id ir-expr) (visit expr handler) saturate? output-type))]
      [(x86-ir:abs-diff expr0 expr1 widening? outT) (handler (x86-ir:abs-diff (x86-ir:ast-node-id ir-expr) (visit expr0 handler) (visit expr1 handler) widening? outT))]
      [(x86-ir:maximum expr0 expr1) (handler (x86-ir:maximum (x86-ir:ast-node-id ir-expr) (visit expr0 handler) (visit expr1 handler)))]
      [(x86-ir:minimum expr0 expr1) (handler (x86-ir:minimum (x86-ir:ast-node-id ir-expr) (visit expr0 handler) (visit expr1 handler)))]

      [(x86-ir:vs-mpy-add expr weights saturating? rounding? halving? outT) (handler (x86-ir:vs-mpy-add (x86-ir:ast-node-id ir-expr) (visit expr handler) weights saturating? rounding? halving? outT))]
      [(x86-ir:vv-mpy-add expr weights saturating? rounding? halving? outT) (handler (x86-ir:vv-mpy-add (x86-ir:ast-node-id ir-expr) (visit expr handler) weights saturating? rounding? halving? outT))]

      [(x86-ir:vs-shift-left expr shift round? saturate? signed?) (handler (x86-ir:vs-shift-left (x86-ir:ast-node-id ir-expr) (visit expr handler) (visit shift handler) round? saturate? signed?))]
      [(x86-ir:vv-shift-left expr0 expr1 round? saturate? signed?) (handler (x86-ir:vv-shift-left (x86-ir:ast-node-id ir-expr) (visit expr0 handler) (visit expr1 handler) round? saturate? signed?))]
      [(x86-ir:vs-shift-right expr shift round? saturate? signed?) (handler (x86-ir:vs-shift-right (x86-ir:ast-node-id ir-expr) (visit expr handler) shift round? saturate? signed?))]
      [(x86-ir:vv-shift-right expr0 expr1 round? saturate? signed?) (handler (x86-ir:vv-shift-right (x86-ir:ast-node-id ir-expr) (visit expr0 handler) (visit expr1 handler) round? saturate? signed?))]

      [(x86-ir:bitwise-op op expr0 expr1) (handler (x86-ir:bitwise-op (x86-ir:ast-node-id ir-expr) op (visit expr0 handler) (visit expr1 handler)))]

      [(x86-ir:select expr0 expr1 expr2) (handler (x86-ir:select (x86-ir:ast-node-id ir-expr) (visit expr0 handler) (visit expr1 handler) (visit expr2 handler)))]
      [(x86-ir:is-equal expr0 expr1) (handler (x86-ir:is-equal (x86-ir:ast-node-id ir-expr) (visit expr0 handler) (visit expr1 handler)))]
      [(x86-ir:less-than expr0 expr1) (handler (x86-ir:less-than (x86-ir:ast-node-id ir-expr) (visit expr0 handler) (visit expr1 handler)))]
      [(x86-ir:less-than-eq expr0 expr1) (handler (x86-ir:less-than-eq (x86-ir:ast-node-id ir-expr) (visit expr0 handler) (visit expr1 handler)))]

      [(x86-ir:vs-divide expr divisor) (handler (x86-ir:vs-divide (x86-ir:ast-node-id ir-expr) (visit expr handler) divisor))]

      [(x86-ir:abstr-expr orig-expr abstr-vals) (handler ir-expr)]
      
      [_ (error "Need to implement x86-ir:visit" ir-expr)]))

(define (get-subexprs ir-expr)
  (destruct ir-expr
    [(x86-ir:load-data live-data gather-tbl) '()]
    [(x86-ir:broadcast value) '()]
    [(x86-ir:build-vec base stride len) '()]
    [(x86-ir:combine expr0 expr1 read-tbl) (list expr0 expr1)]

    [(x86-ir:cast expr type saturate?) (list expr)]
    [(x86-ir:abs expr saturate? output-type) (list expr)]
    [(x86-ir:abs-diff expr0 expr1 widening? outT) (list expr0 expr1)]
    [(x86-ir:maximum expr0 expr1) (list expr0 expr1)]
    [(x86-ir:minimum expr0 expr1) (list expr0 expr1)]

    [(x86-ir:vs-mpy-add expr weights saturating? rounding? halving? outT) (list expr)]
    [(x86-ir:vv-mpy-add expr weights saturating? rounding? halving? outT) (list expr)]
    [(x86-ir:mul-hh expr0 expr1 rounding?) (list expr0 expr1)]

    [(x86-ir:vs-shift-left expr shift round? saturate? signed?) (list expr)]
    [(x86-ir:vv-shift-left expr0 expr1 round? saturate? signed?) (list expr0 expr1)]
    [(x86-ir:vs-shift-right expr shift round? saturate? signed?) (list expr)]
    [(x86-ir:vv-shift-right expr0 expr1 round? saturate? signed?) (list expr0 expr1)]


    [(x86-ir:bitwise-op op expr0 expr1) (list expr0 expr1)]

    [(x86-ir:select expr0 expr1 expr2) (list expr0 expr1 expr2)]
    [(x86-ir:is-equal expr0 expr1) (list expr0 expr1)]
    [(x86-ir:less-than expr0 expr1) (list expr0 expr1)]
    [(x86-ir:less-than-eq expr0 expr1) (list expr0 expr1)]

    [(x86-ir:vs-divide expr divisor) (list expr)]

    [_ (error "Need to implement get-subexprs" ir-expr)]))
