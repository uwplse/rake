#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/destruct
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/arm/ir/instructions)

(provide
 (rename-out [set-cn arm-ir:set-cn])
 (rename-out [interpret arm-ir:interpret])
 ;(rename-out [visit hvx-ir:visit])
 ;(rename-out [instr-count hvx-ir:instr-count])
 (rename-out [get-subexprs arm-ir:get-subexprs])
 ;(rename-out [elem-type hvx-ir:elem-type])
 ;(rename-out [elem-type^ hvx-ir:elem-type^])
 )

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

(define (get-cast-type type)
  (cond
    [(eq? type 'int8) int8_t]
    [(eq? type 'int16) int16_t]
    [(eq? type 'int32) int32_t]
    [(eq? type 'int64) int64_t]
    [(eq? type 'uint8) uint8_t]
    [(eq? type 'uint16) uint16_t]
    [(eq? type 'uint32) uint32_t]
    [(eq? type 'uint64) uint64_t]))

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

; TODO: I don't understand what these are used for.
(define curr-cn 0)
(define (set-cn v) (set! curr-cn v))

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

(define (interpret p)
  (destruct p

    ; These first few are taken from the hvx uberIR interpreter
    [(arm-ir:load-data live-data gather-tbl)
     (lambda (i)
       (list-ref (list-ref live-data curr-cn) (list-ref gather-tbl i)))]

    [(arm-ir:broadcast value) (lambda (i) (interpret value))]

    [(arm-ir:build-vec base stride len)
     (define b (interpret base))
     (define s (interpret stride))
     (lambda (i)
       (mk-cpp-expr
        (bvadd
         (cpp:eval b)
         (bvmul (cpp:eval s) (integer->bitvector i (bitvector (cpp:expr-bw s)))))
        (cpp:type b)))]

    [(arm-ir:cast sub-expr type saturating?)
     (define input (interpret sub-expr))
     (if saturating?
      (lambda (i) (saturating-cast (input i) type))
      (lambda (i) (cpp:cast (input i) type)))]


    [(arm-ir:abs sub-expr saturate? output-type)
     (define input (interpret sub-expr))
     (define abs-f (if saturate? sat-abs-impl abs-impl))
     (lambda (i)
        (define val (input i))
        (abs-f val output-type))]

    [(arm-ir:minimum expr0 expr1)
     (define input0 (interpret expr0))
     (define input1 (interpret expr1))
     (lambda (i)
       (min-impl (input0 i) (input1 i)))]

    [(arm-ir:maximum expr0 expr1)
     (define input0 (interpret expr0))
     (define input1 (interpret expr1))
     (lambda (i)
       (max-impl (input0 i) (input1 i)))]


    ; TODO: add-high-narrow
    ; TODO: sub-high-narrow
    ; TODO: halving-add
    ; TODO: halving-sub
    ; TODO: reduce
    ; TODO: vv-mpy-add
    ; TODO: vs-mpy-add
    ; TODO: vv-mpy-add-w
    ; TODO: vs-mpy-add-w
    ; TODO: vv-dmpy-add-sat
    ; TODO: vs-dmpy-add-sat
    ; TODO: vv-dmpy-add-hh-sat
    ; TODO: vs-dmpy-add-hh-sat
    ; TODO: neg-sat
    ; TODO: add-sat
    ; TODO: sub-sat
    ; TODO: shift-left
    ; TODO: shift-right
    ; TODO: abs-diff
    ; TODO: abs-diff-acc

    [_ p]

    ;[_ (error "No way to interpret expr:" p)]
    ))

;;;;;;;;;;;;;;;;;;;;;;

(define (get-subexprs ir-expr)
  (destruct ir-expr
    [(arm-ir:load-data live-data gather-tbl) '()]
    [(arm-ir:broadcast value) '()]
    [(arm-ir:cast expr type saturating?) (list expr)]
    [_ (error "NYI: Extracing sub-expression for ARM IR Expr:" ir-expr)]))