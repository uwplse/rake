#lang rosette/safe

(require
  (only-in rosette/base/core/term @app)
  (only-in racket/base error exit make-hash hash-ref! [eq? rkt-eq?])
  (only-in racket/list range)
  (only-in racket/match ==)
  (only-in rosette/lib/match [match rs-match] [match* rs-match*])
  rosette/lib/destruct
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/fpir/ast/types
  rake/fpir/ast/utils
  rake/internal/counter
)

(provide (rename-out [interpret fpir:interpret]))

;; x86 AVX/AVX2 interpreter
(define (interpret p)
;   (destruct p

;     ;;;;;;;;;;;;;;;;;;;; Scalar Halide Expressions ;;;;;;;;;;;;;;;;;;;;;

;     [(var-lookup var val) (interpret val)]

;     [(sca-cast sca type) (cpp:cast (interpret sca) type)]

;     [(sca-add v1 v2) (halide:do-add (interpret v1) (interpret v2))]
;     [(sca-sub v1 v2) (halide:do-sub (interpret v1) (interpret v2))]
;     [(sca-mul v1 v2) (halide:do-mul (interpret v1) (interpret v2))]
;     [(sca-div v1 v2) (halide:do-div (interpret v1) (interpret v2))]
;     [(sca-mod v1 v2) (halide:do-mod (interpret v1) (interpret v2))]
;     [(sca-min v1 v2) (halide:do-min (interpret v1) (interpret v2))]
;     [(sca-max v1 v2) (halide:do-max (interpret v1) (interpret v2))]

;     [(sca-if v1 v2 v3) (halide:do-if (interpret v1) (interpret v2) (interpret v3))]
;     [(sca-eq v1 v2) (halide:do-eq (interpret v1) (interpret v2))]
;     [(sca-lt v1 v2) (halide:do-lt (interpret v1) (interpret v2))]
;     [(sca-le v1 v2) (halide:do-le (interpret v1) (interpret v2))]

;     [(sca-abs v1) (halide:do-abs (interpret v1))]
;     [(sca-absd v1 v2) (halide:do-absd (interpret v1) (interpret v2))]
;     [(sca-shl v1 v2) (halide:do-shl (interpret v1) (interpret v2))]
;     [(sca-shr v1 v2) (halide:do-shr (interpret v1) (interpret v2))]
;     [(sca-clz v1) (halide:do-clz (interpret v1))]

;     [(sca-bwand v1 v2) (halide:do-bwand (interpret v1) (interpret v2))]

;     [(load-sca buf idx) (halide:buffer-ref (interpret buf) (interpret idx))]

;     ;;;;;;;;;;;;;;

;     [(fpir:add a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-add
;                a
;                (x32 (uint8_t b_imm8)))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                a
;                (x16 (uint16_t b_imm16)))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                a
;                (x8 (uint32_t b_imm32)))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                a
;                (x4 (uint64_t b_imm64)))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-add
;                a
;                (x32 (int8_t b_imm8)))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-add
;                a
;                (x16 (int16_t b_imm16)))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-add
;                a
;                (x8 (int32_t b_imm32)))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-add
;                a
;                (x4 (int64_t b_imm64)))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-add
;                a
;                (x16 (uint8_t b_imm8)))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-add
;                a
;                (x8 (uint16_t b_imm16)))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-add
;                a
;                (x4 (uint32_t b_imm32)))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-add
;                a
;                (x2 (uint64_t b_imm64)))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-add
;                a
;                (x16 (int8_t b_imm8)))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-add
;                a
;                (x8 (int16_t b_imm16)))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-add
;                a
;                (x4 (int32_t b_imm32)))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-add
;                a
;                b)))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-add
;                a
;                (x2 (int64_t b_imm64)))))]

;         [(_ _) (assert #f "infeasible in interpreting add")])]

;     [(fpir:add_h a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x32 (uint8_t b_imm8)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x32 (uint8_t b_imm8)))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x16 (uint16_t b_imm16)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x16 (uint16_t b_imm16)))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x8 (uint32_t b_imm32)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x8 (uint32_t b_imm32)))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x4 (uint64_t b_imm64)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x4 (uint64_t b_imm64)))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x32 (int8_t b_imm8)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x32 (int8_t b_imm8)))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x16 (int16_t b_imm16)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x16 (int16_t b_imm16)))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x8 (int32_t b_imm32)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x8 (int32_t b_imm32)))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x4 (int64_t b_imm64)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x4 (int64_t b_imm64)))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x16 (uint8_t b_imm8)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x16 (uint8_t b_imm8)))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x8 (uint16_t b_imm16)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x8 (uint16_t b_imm16)))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x4 (uint32_t b_imm32)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x4 (uint32_t b_imm32)))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x2 (uint64_t (bv 1 64)))))))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x2 (uint64_t b_imm64)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x2 (uint64_t b_imm64)))
;                 (x2 (uint64_t (bv 1 64)))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x16 (int8_t b_imm8)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x16 (int8_t b_imm8)))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x8 (int16_t b_imm16)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x8 (int16_t b_imm16)))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x4 (int32_t b_imm32)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x4 (int32_t b_imm32)))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 b)
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  b)
;                 (x2 (uint64_t (bv 1 64)))))))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-add
;                (vec-bwand
;                 a
;                 (x2 (int64_t b_imm64)))
;                (vec-shr
;                 (vec-bwxor
;                  a
;                  (x2 (int64_t b_imm64)))
;                 (x2 (uint64_t (bv 1 64)))))))]

;         [(_ _) (assert #f "infeasible in interpreting add_h")])]

;     [(fpir:add_rh a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x32 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  b
;                  (x32 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x32 (uint8_t (bv 1 8))))
;                   (vec-bwand
;                    b
;                    (x32 (uint8_t (bv 1 8)))))
;                  (x32 (uint8_t (bv 1 8))))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x32 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  (x32 (uint8_t b_imm8))
;                  (x32 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x32 (uint8_t (bv 1 8))))
;                   (vec-bwand
;                    (x32 (uint8_t b_imm8))
;                    (x32 (uint8_t (bv 1 8)))))
;                  (x32 (uint8_t (bv 1 8))))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x16 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  b
;                  (x16 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x16 (uint16_t (bv 1 16))))
;                   (vec-bwand
;                    b
;                    (x16 (uint16_t (bv 1 16)))))
;                  (x16 (uint16_t (bv 1 16))))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x16 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  (x16 (uint16_t b_imm16))
;                  (x16 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x16 (uint16_t (bv 1 16))))
;                   (vec-bwand
;                    (x16 (uint16_t b_imm16))
;                    (x16 (uint16_t (bv 1 16)))))
;                  (x16 (uint16_t (bv 1 16))))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x8 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  b
;                  (x8 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x8 (uint32_t (bv 1 32))))
;                   (vec-bwand
;                    b
;                    (x8 (uint32_t (bv 1 32)))))
;                  (x8 (uint32_t (bv 1 32))))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x8 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  (x8 (uint32_t b_imm32))
;                  (x8 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x8 (uint32_t (bv 1 32))))
;                   (vec-bwand
;                    (x8 (uint32_t b_imm32))
;                    (x8 (uint32_t (bv 1 32)))))
;                  (x8 (uint32_t (bv 1 32))))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x4 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  b
;                  (x4 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x4 (uint64_t (bv 1 64))))
;                   (vec-bwand
;                    b
;                    (x4 (uint64_t (bv 1 64)))))
;                  (x4 (uint64_t (bv 1 64))))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x4 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  (x4 (uint64_t b_imm64))
;                  (x4 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x4 (uint64_t (bv 1 64))))
;                   (vec-bwand
;                    (x4 (uint64_t b_imm64))
;                    (x4 (uint64_t (bv 1 64)))))
;                  (x4 (uint64_t (bv 1 64))))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x32 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  b
;                  (x32 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x32 (int8_t (bv 1 8))))
;                   (vec-bwand
;                    b
;                    (x32 (int8_t (bv 1 8)))))
;                  (x32 (int8_t (bv 1 8))))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x32 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  (x32 (int8_t b_imm8))
;                  (x32 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x32 (int8_t (bv 1 8))))
;                   (vec-bwand
;                    (x32 (int8_t b_imm8))
;                    (x32 (int8_t (bv 1 8)))))
;                  (x32 (int8_t (bv 1 8))))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x16 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  b
;                  (x16 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x16 (int16_t (bv 1 16))))
;                   (vec-bwand
;                    b
;                    (x16 (int16_t (bv 1 16)))))
;                  (x16 (int16_t (bv 1 16))))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x16 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  (x16 (int16_t b_imm16))
;                  (x16 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x16 (int16_t (bv 1 16))))
;                   (vec-bwand
;                    (x16 (int16_t b_imm16))
;                    (x16 (int16_t (bv 1 16)))))
;                  (x16 (int16_t (bv 1 16))))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x8 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  b
;                  (x8 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x8 (int32_t (bv 1 32))))
;                   (vec-bwand
;                    b
;                    (x8 (int32_t (bv 1 32)))))
;                  (x8 (int32_t (bv 1 32))))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x8 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  (x8 (int32_t b_imm32))
;                  (x8 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x8 (int32_t (bv 1 32))))
;                   (vec-bwand
;                    (x8 (int32_t b_imm32))
;                    (x8 (int32_t (bv 1 32)))))
;                  (x8 (int32_t (bv 1 32))))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x4 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  b
;                  (x4 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x4 (int64_t (bv 1 64))))
;                   (vec-bwand
;                    b
;                    (x4 (int64_t (bv 1 64)))))
;                  (x4 (int64_t (bv 1 64))))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x4 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  (x4 (int64_t b_imm64))
;                  (x4 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x4 (int64_t (bv 1 64))))
;                   (vec-bwand
;                    (x4 (int64_t b_imm64))
;                    (x4 (int64_t (bv 1 64)))))
;                  (x4 (int64_t (bv 1 64))))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x16 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  b
;                  (x16 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x16 (uint8_t (bv 1 8))))
;                   (vec-bwand
;                    b
;                    (x16 (uint8_t (bv 1 8)))))
;                  (x16 (uint8_t (bv 1 8))))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x16 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  (x16 (uint8_t b_imm8))
;                  (x16 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x16 (uint8_t (bv 1 8))))
;                   (vec-bwand
;                    (x16 (uint8_t b_imm8))
;                    (x16 (uint8_t (bv 1 8)))))
;                  (x16 (uint8_t (bv 1 8))))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x8 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  b
;                  (x8 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x8 (uint16_t (bv 1 16))))
;                   (vec-bwand
;                    b
;                    (x8 (uint16_t (bv 1 16)))))
;                  (x8 (uint16_t (bv 1 16))))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x8 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  (x8 (uint16_t b_imm16))
;                  (x8 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x8 (uint16_t (bv 1 16))))
;                   (vec-bwand
;                    (x8 (uint16_t b_imm16))
;                    (x8 (uint16_t (bv 1 16)))))
;                  (x8 (uint16_t (bv 1 16))))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x4 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  b
;                  (x4 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x4 (uint32_t (bv 1 32))))
;                   (vec-bwand
;                    b
;                    (x4 (uint32_t (bv 1 32)))))
;                  (x4 (uint32_t (bv 1 32))))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x4 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  (x4 (uint32_t b_imm32))
;                  (x4 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x4 (uint32_t (bv 1 32))))
;                   (vec-bwand
;                    (x4 (uint32_t b_imm32))
;                    (x4 (uint32_t (bv 1 32)))))
;                  (x4 (uint32_t (bv 1 32))))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x2 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  b
;                  (x2 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x2 (uint64_t (bv 1 64))))
;                   (vec-bwand
;                    b
;                    (x2 (uint64_t (bv 1 64)))))
;                  (x2 (uint64_t (bv 1 64))))
;                 (x2 (uint64_t (bv 1 64)))))))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x2 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  (x2 (uint64_t b_imm64))
;                  (x2 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x2 (uint64_t (bv 1 64))))
;                   (vec-bwand
;                    (x2 (uint64_t b_imm64))
;                    (x2 (uint64_t (bv 1 64)))))
;                  (x2 (uint64_t (bv 1 64))))
;                 (x2 (uint64_t (bv 1 64)))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x16 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  b
;                  (x16 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x16 (int8_t (bv 1 8))))
;                   (vec-bwand
;                    b
;                    (x16 (int8_t (bv 1 8)))))
;                  (x16 (int8_t (bv 1 8))))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x16 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  (x16 (int8_t b_imm8))
;                  (x16 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x16 (int8_t (bv 1 8))))
;                   (vec-bwand
;                    (x16 (int8_t b_imm8))
;                    (x16 (int8_t (bv 1 8)))))
;                  (x16 (int8_t (bv 1 8))))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x8 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  b
;                  (x8 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x8 (int16_t (bv 1 16))))
;                   (vec-bwand
;                    b
;                    (x8 (int16_t (bv 1 16)))))
;                  (x8 (int16_t (bv 1 16))))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x8 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  (x8 (int16_t b_imm16))
;                  (x8 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x8 (int16_t (bv 1 16))))
;                   (vec-bwand
;                    (x8 (int16_t b_imm16))
;                    (x8 (int16_t (bv 1 16)))))
;                  (x8 (int16_t (bv 1 16))))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x4 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  b
;                  (x4 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x4 (int32_t (bv 1 32))))
;                   (vec-bwand
;                    b
;                    (x4 (int32_t (bv 1 32)))))
;                  (x4 (int32_t (bv 1 32))))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x4 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  (x4 (int32_t b_imm32))
;                  (x4 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x4 (int32_t (bv 1 32))))
;                   (vec-bwand
;                    (x4 (int32_t b_imm32))
;                    (x4 (int32_t (bv 1 32)))))
;                  (x4 (int32_t (bv 1 32))))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x2 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  b
;                  (x2 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x2 (int64_t (bv 1 64))))
;                   (vec-bwand
;                    b
;                    (x2 (int64_t (bv 1 64)))))
;                  (x2 (int64_t (bv 1 64))))
;                 (x2 (uint64_t (bv 1 64)))))))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-add
;                (vec-add
;                 (vec-shr
;                  a
;                  (x2 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  (x2 (int64_t b_imm64))
;                  (x2 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-add
;                   (vec-bwand
;                    a
;                    (x2 (int64_t (bv 1 64))))
;                   (vec-bwand
;                    (x2 (int64_t b_imm64))
;                    (x2 (int64_t (bv 1 64)))))
;                  (x2 (int64_t (bv 1 64))))
;                 (x2 (uint64_t (bv 1 64)))))))]

;         [(_ _) (assert #f "infeasible in interpreting add_rh")])]

;     [(fpir:add_s a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 (vec-sub
;                  (x32 (uint8_t (bv 255 8)))
;                  b)
;                 a)
;                b)))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 a
;                 (x32 (sca-sub  (uint8_t (bv 255 8))  (uint8_t  b_imm8))))
;                (x32 (uint8_t b_imm8)))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 (vec-sub
;                  (x16 (uint16_t (bv 65535 16)))
;                  b)
;                 a)
;                b)))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 a
;                 (x16 (sca-sub  (uint16_t (bv 65535 16))  (uint16_t  b_imm16))))
;                (x16 (uint16_t b_imm16)))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 (vec-sub
;                  (x8 (uint32_t (bv 4294967295 32)))
;                  b)
;                 a)
;                b)))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 a
;                 (x8 (sca-sub  (uint32_t (bv 4294967295 32))  (uint32_t  b_imm32))))
;                (x8 (uint32_t b_imm32)))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 (vec-sub
;                  (x4 (uint64_t (bv 18446744073709551615 64)))
;                  b)
;                 a)
;                b)))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 a
;                 (x4 (sca-sub  (uint64_t (bv 18446744073709551615 64))  (uint64_t  b_imm64))))
;                (x4 (uint64_t b_imm64)))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  (vec-sub
;                   (x32 (int8_t (bv 127 8)))
;                   (vec-max
;                    b
;                    (x32 (int8_t (bv 0 8)))))
;                  a)
;                 (vec-sub
;                  (x32 (int8_t (bv -128 8)))
;                  (vec-min
;                   b
;                   (x32 (int8_t (bv 0 8))))))
;                b)))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  a
;                  (x32 (sca-sub  (int8_t (bv 127 8))  (sca-max   (int8_t   b_imm8)   (int8_t (bv 0 8))))))
;                 (x32 (sca-sub  (int8_t (bv -128 8))  (sca-min   (int8_t   b_imm8)   (int8_t (bv 0 8))))))
;                (x32 (int8_t b_imm8)))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  (vec-sub
;                   (x16 (int16_t (bv 32767 16)))
;                   (vec-max
;                    b
;                    (x16 (int16_t (bv 0 16)))))
;                  a)
;                 (vec-sub
;                  (x16 (int16_t (bv -32768 16)))
;                  (vec-min
;                   b
;                   (x16 (int16_t (bv 0 16))))))
;                b)))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  a
;                  (x16 (sca-sub  (int16_t (bv 32767 16))  (sca-max   (int16_t   b_imm16)   (int16_t (bv 0 16))))))
;                 (x16 (sca-sub  (int16_t (bv -32768 16))  (sca-min   (int16_t   b_imm16)   (int16_t (bv 0 16))))))
;                (x16 (int16_t b_imm16)))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  (vec-sub
;                   (x8 (int32_t (bv 2147483647 32)))
;                   (vec-max
;                    b
;                    (x8 (int32_t (bv 0 32)))))
;                  a)
;                 (vec-sub
;                  (x8 (int32_t (bv -2147483648 32)))
;                  (vec-min
;                   b
;                   (x8 (int32_t (bv 0 32))))))
;                b)))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  a
;                  (x8 (sca-sub  (int32_t (bv 2147483647 32))  (sca-max   (int32_t   b_imm32)   (int32_t (bv 0 32))))))
;                 (x8 (sca-sub  (int32_t (bv -2147483648 32))  (sca-min   (int32_t   b_imm32)   (int32_t (bv 0 32))))))
;                (x8 (int32_t b_imm32)))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  (vec-sub
;                   (x4 (int64_t (bv 9223372036854775807 64)))
;                   (vec-max
;                    b
;                    (x4 (int64_t (bv 0 64)))))
;                  a)
;                 (vec-sub
;                  (x4 (int64_t (bv -9223372036854775808 64)))
;                  (vec-min
;                   b
;                   (x4 (int64_t (bv 0 64))))))
;                b)))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  a
;                  (x4 (sca-sub  (int64_t (bv 9223372036854775807 64))  (sca-max   (int64_t   b_imm64)   (int64_t (bv 0 64))))))
;                 (x4 (sca-sub  (int64_t (bv -9223372036854775808 64))  (sca-min   (int64_t   b_imm64)   (int64_t (bv 0 64))))))
;                (x4 (int64_t b_imm64)))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 (vec-sub
;                  (x16 (uint8_t (bv 255 8)))
;                  b)
;                 a)
;                b)))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 a
;                 (x16 (sca-sub  (uint8_t (bv 255 8))  (uint8_t  b_imm8))))
;                (x16 (uint8_t b_imm8)))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 (vec-sub
;                  (x8 (uint16_t (bv 65535 16)))
;                  b)
;                 a)
;                b)))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 a
;                 (x8 (sca-sub  (uint16_t (bv 65535 16))  (uint16_t  b_imm16))))
;                (x8 (uint16_t b_imm16)))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 (vec-sub
;                  (x4 (uint32_t (bv 4294967295 32)))
;                  b)
;                 a)
;                b)))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 a
;                 (x4 (sca-sub  (uint32_t (bv 4294967295 32))  (uint32_t  b_imm32))))
;                (x4 (uint32_t b_imm32)))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 (vec-sub
;                  (x2 (uint64_t (bv 18446744073709551615 64)))
;                  b)
;                 a)
;                b)))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-add
;                (vec-min
;                 a
;                 (x2 (sca-sub  (uint64_t (bv 18446744073709551615 64))  (uint64_t  b_imm64))))
;                (x2 (uint64_t b_imm64)))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  (vec-sub
;                   (x16 (int8_t (bv 127 8)))
;                   (vec-max
;                    b
;                    (x16 (int8_t (bv 0 8)))))
;                  a)
;                 (vec-sub
;                  (x16 (int8_t (bv -128 8)))
;                  (vec-min
;                   b
;                   (x16 (int8_t (bv 0 8))))))
;                b)))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  a
;                  (x16 (sca-sub  (int8_t (bv 127 8))  (sca-max   (int8_t   b_imm8)   (int8_t (bv 0 8))))))
;                 (x16 (sca-sub  (int8_t (bv -128 8))  (sca-min   (int8_t   b_imm8)   (int8_t (bv 0 8))))))
;                (x16 (int8_t b_imm8)))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  (vec-sub
;                   (x8 (int16_t (bv 32767 16)))
;                   (vec-max
;                    b
;                    (x8 (int16_t (bv 0 16)))))
;                  a)
;                 (vec-sub
;                  (x8 (int16_t (bv -32768 16)))
;                  (vec-min
;                   b
;                   (x8 (int16_t (bv 0 16))))))
;                b)))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  a
;                  (x8 (sca-sub  (int16_t (bv 32767 16))  (sca-max   (int16_t   b_imm16)   (int16_t (bv 0 16))))))
;                 (x8 (sca-sub  (int16_t (bv -32768 16))  (sca-min   (int16_t   b_imm16)   (int16_t (bv 0 16))))))
;                (x8 (int16_t b_imm16)))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  (vec-sub
;                   (x4 (int32_t (bv 2147483647 32)))
;                   (vec-max
;                    b
;                    (x4 (int32_t (bv 0 32)))))
;                  a)
;                 (vec-sub
;                  (x4 (int32_t (bv -2147483648 32)))
;                  (vec-min
;                   b
;                   (x4 (int32_t (bv 0 32))))))
;                b)))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  a
;                  (x4 (sca-sub  (int32_t (bv 2147483647 32))  (sca-max   (int32_t   b_imm32)   (int32_t (bv 0 32))))))
;                 (x4 (sca-sub  (int32_t (bv -2147483648 32))  (sca-min   (int32_t   b_imm32)   (int32_t (bv 0 32))))))
;                (x4 (int32_t b_imm32)))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  (vec-sub
;                   (x2 (int64_t (bv 9223372036854775807 64)))
;                   (vec-max
;                    b
;                    (x2 (int64_t (bv 0 64)))))
;                  a)
;                 (vec-sub
;                  (x2 (int64_t (bv -9223372036854775808 64)))
;                  (vec-min
;                   b
;                   (x2 (int64_t (bv 0 64))))))
;                b)))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-add
;                (vec-max
;                 (vec-min
;                  a
;                  (x2 (sca-sub  (int64_t (bv 9223372036854775807 64))  (sca-max   (int64_t   b_imm64)   (int64_t (bv 0 64))))))
;                 (x2 (sca-sub  (int64_t (bv -9223372036854775808 64))  (sca-min   (int64_t   b_imm64)   (int64_t (bv 0 64))))))
;                (x2 (int64_t b_imm64)))))]

;         [(_ _) (assert #f "infeasible in interpreting add_s")])]

;     [(fpir:add_w a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                (uint16x16
;                 a)
;                (uint16x16
;                 b))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                (uint16x16
;                 a)
;                (uint16x16
;                 (x16 (uint8_t b_imm8))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                (uint32x8
;                 a)
;                (uint32x8
;                 b))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                (uint32x8
;                 a)
;                (uint32x8
;                 (x8 (uint16_t b_imm16))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                (uint64x4
;                 a)
;                (uint64x4
;                 b))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                (uint64x4
;                 a)
;                (uint64x4
;                 (x4 (uint32_t b_imm32))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-add
;                (int16x16
;                 a)
;                (int16x16
;                 b))))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-add
;                (int16x16
;                 a)
;                (int16x16
;                 (x16 (int8_t b_imm8))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-add
;                (int32x8
;                 a)
;                (int32x8
;                 b))))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-add
;                (int32x8
;                 a)
;                (int32x8
;                 (x8 (int16_t b_imm16))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-add
;                (int64x4
;                 a)
;                (int64x4
;                 b))))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-add
;                (int64x4
;                 a)
;                (int64x4
;                 (x4 (int32_t b_imm32))))))]

;         [(_ _) (assert #f "infeasible in interpreting add_w")])]

;     [(fpir:broadcast128 a_imm8)
;       (destruct* ((interpret a_imm8))
;         [((int8_t v))   (fpir:i8x16 (lambda (i) (int8_t v)))]
;         [((uint8_t v))   (fpir:u8x16 (lambda (i) (uint8_t v)))]
;         [((int8_t v))   (fpir:i8x16 (lambda (i) (int8_t v)))]
;         [((uint8_t v))   (fpir:u8x16 (lambda (i) (uint8_t v)))]
;         [((int16_t v))   (fpir:i16x8 (lambda (i) (int16_t v)))]
;         [((uint16_t v))   (fpir:u16x8 (lambda (i) (uint16_t v)))]
;         [((int16_t v))   (fpir:i16x8 (lambda (i) (int16_t v)))]
;         [((uint16_t v))   (fpir:u16x8 (lambda (i) (uint16_t v)))]
;         [((int32_t v))   (fpir:i32x4 (lambda (i) (int32_t v)))]
;         [((uint32_t v))   (fpir:u32x4 (lambda (i) (uint32_t v)))]
;         [((int32_t v))   (fpir:i32x4 (lambda (i) (int32_t v)))]
;         [((uint32_t v))   (fpir:u32x4 (lambda (i) (uint32_t v)))]
;         [((int64_t v))   (fpir:i64x2 (lambda (i) (int64_t v)))]
;         [((uint64_t v))   (fpir:u64x2 (lambda (i) (uint64_t v)))]
;         [((int64_t v))   (fpir:i64x2 (lambda (i) (int64_t v)))]
;         [((uint64_t v))   (fpir:u64x2 (lambda (i) (uint64_t v)))]

;         [(_) (assert #f "infeasible in interpreting broadcast128")])]

;     [(fpir:broadcast256 a_imm8)
;       (destruct* ((interpret a_imm8))
;         [((int8_t v))   (fpir:i8x32 (lambda (i) (int8_t v)))]
;         [((uint8_t v))   (fpir:u8x32 (lambda (i) (uint8_t v)))]
;         [((int8_t v))   (fpir:i8x32 (lambda (i) (int8_t v)))]
;         [((uint8_t v))   (fpir:u8x32 (lambda (i) (uint8_t v)))]
;         [((int16_t v))   (fpir:i16x16 (lambda (i) (int16_t v)))]
;         [((uint16_t v))   (fpir:u16x16 (lambda (i) (uint16_t v)))]
;         [((int16_t v))   (fpir:i16x16 (lambda (i) (int16_t v)))]
;         [((uint16_t v))   (fpir:u16x16 (lambda (i) (uint16_t v)))]
;         [((int32_t v))   (fpir:i32x8 (lambda (i) (int32_t v)))]
;         [((uint32_t v))   (fpir:u32x8 (lambda (i) (uint32_t v)))]
;         [((int32_t v))   (fpir:i32x8 (lambda (i) (int32_t v)))]
;         [((uint32_t v))   (fpir:u32x8 (lambda (i) (uint32_t v)))]
;         [((int64_t v))   (fpir:i64x4 (lambda (i) (int64_t v)))]
;         [((uint64_t v))   (fpir:u64x4 (lambda (i) (uint64_t v)))]
;         [((int64_t v))   (fpir:i64x4 (lambda (i) (int64_t v)))]
;         [((uint64_t v))   (fpir:u64x4 (lambda (i) (uint64_t v)))]

;         [(_) (assert #f "infeasible in interpreting broadcast256")])]

;     [(fpir:bwand a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-bwand
;                a
;                (x32 (uint8_t b_imm8)))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-bwand
;                a
;                (x16 (uint16_t b_imm16)))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-bwand
;                a
;                (x8 (uint32_t b_imm32)))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-bwand
;                a
;                (x4 (uint64_t b_imm64)))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-bwand
;                a
;                (x32 (int8_t b_imm8)))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-bwand
;                a
;                (x16 (int16_t b_imm16)))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-bwand
;                a
;                (x8 (int32_t b_imm32)))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-bwand
;                a
;                (x4 (int64_t b_imm64)))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-bwand
;                a
;                (x16 (uint8_t b_imm8)))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-bwand
;                a
;                (x8 (uint16_t b_imm16)))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-bwand
;                a
;                (x4 (uint32_t b_imm32)))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-bwand
;                a
;                (x2 (uint64_t b_imm64)))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-bwand
;                a
;                (x16 (int8_t b_imm8)))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-bwand
;                a
;                (x8 (int16_t b_imm16)))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-bwand
;                a
;                (x4 (int32_t b_imm32)))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-bwand
;                a
;                b)))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-bwand
;                a
;                (x2 (int64_t b_imm64)))))]

;         [(_ _) (assert #f "infeasible in interpreting bwand")])]

;     [(fpir:bwnot a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x32 (uint8_t b_imm8)))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x16 (uint16_t b_imm16)))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x8 (uint32_t b_imm32)))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x4 (uint64_t b_imm64)))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x32 (int8_t b_imm8)))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x16 (int16_t b_imm16)))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x8 (int32_t b_imm32)))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x4 (int64_t b_imm64)))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x16 (uint8_t b_imm8)))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x8 (uint16_t b_imm16)))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x4 (uint32_t b_imm32)))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x2 (uint64_t b_imm64)))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x16 (int8_t b_imm8)))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x8 (int16_t b_imm16)))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x4 (int32_t b_imm32)))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-bwnot
;                a
;                b)))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-bwnot
;                a
;                (x2 (int64_t b_imm64)))))]

;         [(_ _) (assert #f "infeasible in interpreting bwnot")])]

;     [(fpir:bwor a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-bwor
;                a
;                (x32 (uint8_t b_imm8)))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-bwor
;                a
;                (x16 (uint16_t b_imm16)))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-bwor
;                a
;                (x8 (uint32_t b_imm32)))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-bwor
;                a
;                (x4 (uint64_t b_imm64)))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-bwor
;                a
;                (x32 (int8_t b_imm8)))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-bwor
;                a
;                (x16 (int16_t b_imm16)))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-bwor
;                a
;                (x8 (int32_t b_imm32)))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-bwor
;                a
;                (x4 (int64_t b_imm64)))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-bwor
;                a
;                (x16 (uint8_t b_imm8)))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-bwor
;                a
;                (x8 (uint16_t b_imm16)))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-bwor
;                a
;                (x4 (uint32_t b_imm32)))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-bwor
;                a
;                (x2 (uint64_t b_imm64)))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-bwor
;                a
;                (x16 (int8_t b_imm8)))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-bwor
;                a
;                (x8 (int16_t b_imm16)))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-bwor
;                a
;                (x4 (int32_t b_imm32)))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-bwor
;                a
;                b)))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-bwor
;                a
;                (x2 (int64_t b_imm64)))))]

;         [(_ _) (assert #f "infeasible in interpreting bwor")])]

;     [(fpir:max a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-max
;                a
;                (x32 (uint8_t b_imm8)))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-max
;                a
;                (x16 (uint16_t b_imm16)))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-max
;                a
;                (x8 (uint32_t b_imm32)))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-max
;                a
;                (x4 (uint64_t b_imm64)))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-max
;                a
;                (x32 (int8_t b_imm8)))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-max
;                a
;                (x16 (int16_t b_imm16)))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-max
;                a
;                (x8 (int32_t b_imm32)))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-max
;                a
;                (x4 (int64_t b_imm64)))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-max
;                a
;                (x16 (uint8_t b_imm8)))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-max
;                a
;                (x8 (uint16_t b_imm16)))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-max
;                a
;                (x4 (uint32_t b_imm32)))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-max
;                a
;                (x2 (uint64_t b_imm64)))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-max
;                a
;                (x16 (int8_t b_imm8)))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-max
;                a
;                (x8 (int16_t b_imm16)))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-max
;                a
;                (x4 (int32_t b_imm32)))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-max
;                a
;                b)))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-max
;                a
;                (x2 (int64_t b_imm64)))))]

;         [(_ _) (assert #f "infeasible in interpreting max")])]

;     [(fpir:min a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-min
;                a
;                (x32 (uint8_t b_imm8)))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-min
;                a
;                (x16 (uint16_t b_imm16)))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-min
;                a
;                (x8 (uint32_t b_imm32)))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-min
;                a
;                (x4 (uint64_t b_imm64)))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-min
;                a
;                (x32 (int8_t b_imm8)))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-min
;                a
;                (x16 (int16_t b_imm16)))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-min
;                a
;                (x8 (int32_t b_imm32)))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-min
;                a
;                (x4 (int64_t b_imm64)))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-min
;                a
;                (x16 (uint8_t b_imm8)))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-min
;                a
;                (x8 (uint16_t b_imm16)))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-min
;                a
;                (x4 (uint32_t b_imm32)))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-min
;                a
;                (x2 (uint64_t b_imm64)))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-min
;                a
;                (x16 (int8_t b_imm8)))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-min
;                a
;                (x8 (int16_t b_imm16)))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-min
;                a
;                (x4 (int32_t b_imm32)))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-min
;                a
;                b)))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-min
;                a
;                (x2 (int64_t b_imm64)))))]

;         [(_ _) (assert #f "infeasible in interpreting min")])]

;     [(fpir:mul a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-mul
;                a
;                b)))]

;         [(_ _) (assert #f "infeasible in interpreting mul")])]

;     [(fpir:mul-vs a b_imm8)
;       (destruct* ((interpret a) (interpret b_imm8))
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-mul
;                a
;                (x32 (uint8_t b_imm8)))))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-mul
;                a
;                (x16 (uint16_t b_imm16)))))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-mul
;                a
;                (x8 (uint32_t b_imm32)))))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-mul
;                a
;                (x4 (uint64_t b_imm64)))))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-mul
;                a
;                (x32 (int8_t b_imm8)))))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-mul
;                a
;                (x16 (int16_t b_imm16)))))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-mul
;                a
;                (x8 (int32_t b_imm32)))))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-mul
;                a
;                (x4 (int64_t b_imm64)))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-mul
;                a
;                (x16 (uint8_t b_imm8)))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-mul
;                a
;                (x8 (uint16_t b_imm16)))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-mul
;                a
;                (x4 (uint32_t b_imm32)))))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-mul
;                a
;                (x2 (uint64_t b_imm64)))))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-mul
;                a
;                (x16 (int8_t b_imm8)))))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-mul
;                a
;                (x8 (int16_t b_imm16)))))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-mul
;                a
;                (x4 (int32_t b_imm32)))))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-mul
;                a
;                (x2 (int64_t b_imm64)))))]

;         [(_ _) (assert #f "infeasible in interpreting mul-vs")])]

;     [(fpir:mul_shr a b c)
;       (destruct* ((interpret a) (interpret b) (interpret c))
;         [((fpir:u8x32 a) (fpir:u8x32 b) (fpir:u8x32 c))
;             (fpir:u8x32
;              (halide:interpret
;               (uint8x32
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint16x32
;                    a)
;                   (uint16x32
;                    b))
;                  (uint16x32
;                   c))
;                 (x32 (uint16_t (bv 255 16)))))))]
;         [((fpir:u8x32 a) (fpir:u8x32 b) (uint8_t c_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (uint8x32
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint16x32
;                    a)
;                   (uint16x32
;                    b))
;                  (x32 (uint16x1 (uint8_t c_imm8))))
;                 (x32 (uint16_t (bv 255 16)))))))]
;         [((fpir:u8x32 a) (uint8_t b_imm8) (uint8_t c_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (uint8x32
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint16x32
;                    a)
;                   (uint16x32
;                    (x32 (uint8_t b_imm8))))
;                  (x32 (uint16x1 (uint8_t c_imm8))))
;                 (x32 (uint16_t (bv 255 16)))))))]
;         [((fpir:u8x32 a) (uint8_t b_imm8) (fpir:u8x32 c))
;             (fpir:u8x32
;              (halide:interpret
;               (uint8x32
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint16x32
;                    a)
;                   (uint16x32
;                    (x32 (uint8_t b_imm8))))
;                  (uint16x32
;                   c))
;                 (x32 (uint16_t (bv 255 16)))))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b) (fpir:u8x32 c))
;             (fpir:i8x32
;              (halide:interpret
;               (int8x32
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int16x32
;                     a)
;                    (int16x32
;                     b))
;                   (uint16x32
;                    c))
;                  (x32 (int16_t (bv 127 16))))
;                 (x32 (int16_t (bv -128 16)))))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b) (uint8_t c_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (int8x32
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int16x32
;                     a)
;                    (int16x32
;                     b))
;                   (x32 (uint16x1 (uint8_t c_imm8))))
;                  (x32 (int16_t (bv 127 16))))
;                 (x32 (int16_t (bv -128 16)))))))]
;         [((fpir:i8x32 a) (int8_t b_imm8) (uint8_t c_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (int8x32
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int16x32
;                     a)
;                    (int16x32
;                     (x32 (int8_t b_imm8))))
;                   (x32 (uint16x1 (uint8_t c_imm8))))
;                  (x32 (int16_t (bv 127 16))))
;                 (x32 (int16_t (bv -128 16)))))))]
;         [((fpir:i8x32 a) (int8_t b_imm8) (fpir:u8x32 c))
;             (fpir:i8x32
;              (halide:interpret
;               (int8x32
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int16x32
;                     a)
;                    (int16x32
;                     (x32 (int8_t b_imm8))))
;                   (uint16x32
;                    c))
;                  (x32 (int16_t (bv 127 16))))
;                 (x32 (int16_t (bv -128 16)))))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b) (fpir:u16x16 c))
;             (fpir:u16x16
;              (halide:interpret
;               (uint16x16
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint32x16
;                    a)
;                   (uint32x16
;                    b))
;                  (uint32x16
;                   c))
;                 (x16 (uint32_t (bv 65535 32)))))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b) (uint16_t c_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (uint16x16
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint32x16
;                    a)
;                   (uint32x16
;                    b))
;                  (x16 (uint32x1 (uint16_t c_imm16))))
;                 (x16 (uint32_t (bv 65535 32)))))))]
;         [((fpir:u16x16 a) (uint16_t b_imm16) (uint16_t c_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (uint16x16
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint32x16
;                    a)
;                   (uint32x16
;                    (x16 (uint16_t b_imm16))))
;                  (x16 (uint32x1 (uint16_t c_imm16))))
;                 (x16 (uint32_t (bv 65535 32)))))))]
;         [((fpir:u16x16 a) (uint16_t b_imm16) (fpir:u16x16 c))
;             (fpir:u16x16
;              (halide:interpret
;               (uint16x16
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint32x16
;                    a)
;                   (uint32x16
;                    (x16 (uint16_t b_imm16))))
;                  (uint32x16
;                   c))
;                 (x16 (uint32_t (bv 65535 32)))))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b) (fpir:u16x16 c))
;             (fpir:i16x16
;              (halide:interpret
;               (int16x16
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int32x16
;                     a)
;                    (int32x16
;                     b))
;                   (uint32x16
;                    c))
;                  (x16 (int32_t (bv 32767 32))))
;                 (x16 (int32_t (bv -32768 32)))))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b) (uint16_t c_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (int16x16
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int32x16
;                     a)
;                    (int32x16
;                     b))
;                   (x16 (uint32x1 (uint16_t c_imm16))))
;                  (x16 (int32_t (bv 32767 32))))
;                 (x16 (int32_t (bv -32768 32)))))))]
;         [((fpir:i16x16 a) (int16_t b_imm16) (uint16_t c_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (int16x16
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int32x16
;                     a)
;                    (int32x16
;                     (x16 (int16_t b_imm16))))
;                   (x16 (uint32x1 (uint16_t c_imm16))))
;                  (x16 (int32_t (bv 32767 32))))
;                 (x16 (int32_t (bv -32768 32)))))))]
;         [((fpir:i16x16 a) (int16_t b_imm16) (fpir:u16x16 c))
;             (fpir:i16x16
;              (halide:interpret
;               (int16x16
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int32x16
;                     a)
;                    (int32x16
;                     (x16 (int16_t b_imm16))))
;                   (uint32x16
;                    c))
;                  (x16 (int32_t (bv 32767 32))))
;                 (x16 (int32_t (bv -32768 32)))))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b) (fpir:u32x8 c))
;             (fpir:u32x8
;              (halide:interpret
;               (uint32x8
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint64x8
;                    a)
;                   (uint64x8
;                    b))
;                  (uint64x8
;                   c))
;                 (x8 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b) (uint32_t c_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (uint32x8
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint64x8
;                    a)
;                   (uint64x8
;                    b))
;                  (x8 (uint64x1 (uint32_t c_imm32))))
;                 (x8 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:u32x8 a) (uint32_t b_imm32) (uint32_t c_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (uint32x8
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint64x8
;                    a)
;                   (uint64x8
;                    (x8 (uint32_t b_imm32))))
;                  (x8 (uint64x1 (uint32_t c_imm32))))
;                 (x8 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:u32x8 a) (uint32_t b_imm32) (fpir:u32x8 c))
;             (fpir:u32x8
;              (halide:interpret
;               (uint32x8
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint64x8
;                    a)
;                   (uint64x8
;                    (x8 (uint32_t b_imm32))))
;                  (uint64x8
;                   c))
;                 (x8 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b) (fpir:u32x8 c))
;             (fpir:i32x8
;              (halide:interpret
;               (int32x8
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int64x8
;                     a)
;                    (int64x8
;                     b))
;                   (uint64x8
;                    c))
;                  (x8 (int64_t (bv 2147483647 64))))
;                 (x8 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b) (uint32_t c_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (int32x8
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int64x8
;                     a)
;                    (int64x8
;                     b))
;                   (x8 (uint64x1 (uint32_t c_imm32))))
;                  (x8 (int64_t (bv 2147483647 64))))
;                 (x8 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:i32x8 a) (int32_t b_imm32) (uint32_t c_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (int32x8
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int64x8
;                     a)
;                    (int64x8
;                     (x8 (int32_t b_imm32))))
;                   (x8 (uint64x1 (uint32_t c_imm32))))
;                  (x8 (int64_t (bv 2147483647 64))))
;                 (x8 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:i32x8 a) (int32_t b_imm32) (fpir:u32x8 c))
;             (fpir:i32x8
;              (halide:interpret
;               (int32x8
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int64x8
;                     a)
;                    (int64x8
;                     (x8 (int32_t b_imm32))))
;                   (uint64x8
;                    c))
;                  (x8 (int64_t (bv 2147483647 64))))
;                 (x8 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b) (fpir:u8x16 c))
;             (fpir:u8x16
;              (halide:interpret
;               (uint8x16
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint16x16
;                    a)
;                   (uint16x16
;                    b))
;                  (uint16x16
;                   c))
;                 (x16 (uint16_t (bv 255 16)))))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b) (uint8_t c_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (uint8x16
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint16x16
;                    a)
;                   (uint16x16
;                    b))
;                  (x16 (uint16x1 (uint8_t c_imm8))))
;                 (x16 (uint16_t (bv 255 16)))))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8) (uint8_t c_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (uint8x16
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint16x16
;                    a)
;                   (uint16x16
;                    (x16 (uint8_t b_imm8))))
;                  (x16 (uint16x1 (uint8_t c_imm8))))
;                 (x16 (uint16_t (bv 255 16)))))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8) (fpir:u8x16 c))
;             (fpir:u8x16
;              (halide:interpret
;               (uint8x16
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint16x16
;                    a)
;                   (uint16x16
;                    (x16 (uint8_t b_imm8))))
;                  (uint16x16
;                   c))
;                 (x16 (uint16_t (bv 255 16)))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b) (fpir:u8x16 c))
;             (fpir:i8x16
;              (halide:interpret
;               (int8x16
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int16x16
;                     a)
;                    (int16x16
;                     b))
;                   (uint16x16
;                    c))
;                  (x16 (int16_t (bv 127 16))))
;                 (x16 (int16_t (bv -128 16)))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b) (uint8_t c_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (int8x16
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int16x16
;                     a)
;                    (int16x16
;                     b))
;                   (x16 (uint16x1 (uint8_t c_imm8))))
;                  (x16 (int16_t (bv 127 16))))
;                 (x16 (int16_t (bv -128 16)))))))]
;         [((fpir:i8x16 a) (int8_t b_imm8) (uint8_t c_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (int8x16
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int16x16
;                     a)
;                    (int16x16
;                     (x16 (int8_t b_imm8))))
;                   (x16 (uint16x1 (uint8_t c_imm8))))
;                  (x16 (int16_t (bv 127 16))))
;                 (x16 (int16_t (bv -128 16)))))))]
;         [((fpir:i8x16 a) (int8_t b_imm8) (fpir:u8x16 c))
;             (fpir:i8x16
;              (halide:interpret
;               (int8x16
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int16x16
;                     a)
;                    (int16x16
;                     (x16 (int8_t b_imm8))))
;                   (uint16x16
;                    c))
;                  (x16 (int16_t (bv 127 16))))
;                 (x16 (int16_t (bv -128 16)))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b) (fpir:u16x8 c))
;             (fpir:u16x8
;              (halide:interpret
;               (uint16x8
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint32x8
;                    a)
;                   (uint32x8
;                    b))
;                  (uint32x8
;                   c))
;                 (x8 (uint32_t (bv 65535 32)))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b) (uint16_t c_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (uint16x8
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint32x8
;                    a)
;                   (uint32x8
;                    b))
;                  (x8 (uint32x1 (uint16_t c_imm16))))
;                 (x8 (uint32_t (bv 65535 32)))))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16) (uint16_t c_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (uint16x8
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint32x8
;                    a)
;                   (uint32x8
;                    (x8 (uint16_t b_imm16))))
;                  (x8 (uint32x1 (uint16_t c_imm16))))
;                 (x8 (uint32_t (bv 65535 32)))))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16) (fpir:u16x8 c))
;             (fpir:u16x8
;              (halide:interpret
;               (uint16x8
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint32x8
;                    a)
;                   (uint32x8
;                    (x8 (uint16_t b_imm16))))
;                  (uint32x8
;                   c))
;                 (x8 (uint32_t (bv 65535 32)))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b) (fpir:u16x8 c))
;             (fpir:i16x8
;              (halide:interpret
;               (int16x8
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int32x8
;                     a)
;                    (int32x8
;                     b))
;                   (uint32x8
;                    c))
;                  (x8 (int32_t (bv 32767 32))))
;                 (x8 (int32_t (bv -32768 32)))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b) (uint16_t c_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (int16x8
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int32x8
;                     a)
;                    (int32x8
;                     b))
;                   (x8 (uint32x1 (uint16_t c_imm16))))
;                  (x8 (int32_t (bv 32767 32))))
;                 (x8 (int32_t (bv -32768 32)))))))]
;         [((fpir:i16x8 a) (int16_t b_imm16) (uint16_t c_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (int16x8
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int32x8
;                     a)
;                    (int32x8
;                     (x8 (int16_t b_imm16))))
;                   (x8 (uint32x1 (uint16_t c_imm16))))
;                  (x8 (int32_t (bv 32767 32))))
;                 (x8 (int32_t (bv -32768 32)))))))]
;         [((fpir:i16x8 a) (int16_t b_imm16) (fpir:u16x8 c))
;             (fpir:i16x8
;              (halide:interpret
;               (int16x8
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int32x8
;                     a)
;                    (int32x8
;                     (x8 (int16_t b_imm16))))
;                   (uint32x8
;                    c))
;                  (x8 (int32_t (bv 32767 32))))
;                 (x8 (int32_t (bv -32768 32)))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b) (fpir:u32x4 c))
;             (fpir:u32x4
;              (halide:interpret
;               (uint32x4
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint64x4
;                    a)
;                   (uint64x4
;                    b))
;                  (uint64x4
;                   c))
;                 (x4 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b) (uint32_t c_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (uint32x4
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint64x4
;                    a)
;                   (uint64x4
;                    b))
;                  (x4 (uint64x1 (uint32_t c_imm32))))
;                 (x4 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32) (uint32_t c_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (uint32x4
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint64x4
;                    a)
;                   (uint64x4
;                    (x4 (uint32_t b_imm32))))
;                  (x4 (uint64x1 (uint32_t c_imm32))))
;                 (x4 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32) (fpir:u32x4 c))
;             (fpir:u32x4
;              (halide:interpret
;               (uint32x4
;                (vec-min
;                 (vec-shr
;                  (vec-mul
;                   (uint64x4
;                    a)
;                   (uint64x4
;                    (x4 (uint32_t b_imm32))))
;                  (uint64x4
;                   c))
;                 (x4 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b) (fpir:u32x4 c))
;             (fpir:i32x4
;              (halide:interpret
;               (int32x4
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int64x4
;                     a)
;                    (int64x4
;                     b))
;                   (uint64x4
;                    c))
;                  (x4 (int64_t (bv 2147483647 64))))
;                 (x4 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b) (uint32_t c_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (int32x4
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int64x4
;                     a)
;                    (int64x4
;                     b))
;                   (x4 (uint64x1 (uint32_t c_imm32))))
;                  (x4 (int64_t (bv 2147483647 64))))
;                 (x4 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:i32x4 a) (int32_t b_imm32) (uint32_t c_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (int32x4
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int64x4
;                     a)
;                    (int64x4
;                     (x4 (int32_t b_imm32))))
;                   (x4 (uint64x1 (uint32_t c_imm32))))
;                  (x4 (int64_t (bv 2147483647 64))))
;                 (x4 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:i32x4 a) (int32_t b_imm32) (fpir:u32x4 c))
;             (fpir:i32x4
;              (halide:interpret
;               (int32x4
;                (vec-max
;                 (vec-min
;                  (vec-shr
;                   (vec-mul
;                    (int64x4
;                     a)
;                    (int64x4
;                     (x4 (int32_t b_imm32))))
;                   (uint64x4
;                    c))
;                  (x4 (int64_t (bv 2147483647 64))))
;                 (x4 (int64_t (bv -2147483648 64)))))))]

;         [(_ _ _) (assert #f "infeasible in interpreting mul_shr")])]

;     [(fpir:mul_shr_r a b c)
;       (destruct* ((interpret a) (interpret b) (interpret c))
;         [((fpir:u8x32 a) (fpir:u8x32 b) (fpir:u8x32 c))
;              (fpir:u8x32
;               (halide:interpret
;                (uint8x32
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint16x32
;                     a)
;                    (uint16x32
;                     b))
;                   (uint16x32
;                    c))
;                   (vec-bwand
;                    (vec-if
;                    (vec-lt
;                     (x32 (uint16_t (bv 0 16)))
;                     (uint16x32
;                      c))
;                    (x32 (uint16_t (bv 1 16)))
;                    (x32 (uint16_t (bv 0 16))))
;                    (vec-shr
;                     (vec-mul
;                      (uint16x32
;                       a)
;                      (uint16x32
;                       b))
;                     (vec-sub
;                      (uint16x32
;                       c)
;                      (x32 (uint16_t (bv 1 16)))))))
;                  (x32 (uint16_t (bv 255 16)))))))]
;         [((fpir:u8x32 a) (fpir:u8x32 b) (uint8_t c_imm8))
;              (fpir:u8x32
;               (halide:interpret
;                (uint8x32
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint16x32
;                     a)
;                    (uint16x32
;                     b))
;                   (x32 (uint16x1 (uint8_t c_imm8))))
;                   (vec-bwand
;                    (vec-if
;                    (x32 (sca-lt  (uint16_t (bv 0 16))  (uint16x1  (uint8_t  c_imm8))))
;                    (x32 (uint16_t (bv 1 16)))
;                    (x32 (uint16_t (bv 0 16))))
;                    (vec-shr
;                     (vec-mul
;                      (uint16x32
;                       a)
;                      (uint16x32
;                       b))
;                     (x32 (sca-sub  (uint16x1  (uint8_t  c_imm8))  (uint16_t (bv 1 16)))))))
;                  (x32 (uint16_t (bv 255 16)))))))]
;         [((fpir:u8x32 a) (uint8_t b_imm8) (uint8_t c_imm8))
;              (fpir:u8x32
;               (halide:interpret
;                (uint8x32
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint16x32
;                     a)
;                    (uint16x32
;                     (x32 (uint8_t b_imm8))))
;                   (x32 (uint16x1 (uint8_t c_imm8))))
;                   (vec-bwand
;                    (vec-if
;                    (x32 (sca-lt  (uint16_t (bv 0 16))  (uint16x1  (uint8_t  c_imm8))))
;                    (x32 (uint16_t (bv 1 16)))
;                    (x32 (uint16_t (bv 0 16))))
;                    (vec-shr
;                     (vec-mul
;                      (uint16x32
;                       a)
;                      (uint16x32
;                       (x32 (uint8_t b_imm8))))
;                     (x32 (sca-sub  (uint16x1  (uint8_t  c_imm8))  (uint16_t (bv 1 16)))))))
;                  (x32 (uint16_t (bv 255 16)))))))]
;         [((fpir:u8x32 a) (uint8_t b_imm8) (fpir:u8x32 c))
;              (fpir:u8x32
;               (halide:interpret
;                (uint8x32
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint16x32
;                     a)
;                    (uint16x32
;                     (x32 (uint8_t b_imm8))))
;                   (uint16x32
;                    c))
;                   (vec-bwand
;                    (vec-if
;                    (vec-lt
;                     (x32 (uint16_t (bv 0 16)))
;                     (uint16x32
;                      c))
;                    (x32 (uint16_t (bv 1 16)))
;                    (x32 (uint16_t (bv 0 16))))
;                    (vec-shr
;                     (vec-mul
;                      (uint16x32
;                       a)
;                      (uint16x32
;                       (x32 (uint8_t b_imm8))))
;                     (vec-sub
;                      (uint16x32
;                       c)
;                      (x32 (uint16_t (bv 1 16)))))))
;                  (x32 (uint16_t (bv 255 16)))))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b) (fpir:u8x32 c))
;              (fpir:i8x32
;               (halide:interpret
;                (int8x32
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int16x32
;                      a)
;                     (int16x32
;                      b))
;                    (uint16x32
;                     c))
;                    (vec-bwand
;                     (vec-if
;                     (vec-lt
;                      (x32 (uint16_t (bv 0 16)))
;                      (uint16x32
;                       c))
;                     (x32 (int16_t (bv 1 16)))
;                     (x32 (int16_t (bv 0 16))))
;                     (vec-shr
;                      (vec-mul
;                       (int16x32
;                        a)
;                       (int16x32
;                        b))
;                      (vec-sub
;                       (uint16x32
;                        c)
;                       (x32 (uint16_t (bv 1 16)))))))
;                   (x32 (int16_t (bv 127 16))))
;                  (x32 (int16_t (bv -128 16)))))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b) (uint8_t c_imm8))
;              (fpir:i8x32
;               (halide:interpret
;                (int8x32
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int16x32
;                      a)
;                     (int16x32
;                      b))
;                    (x32 (uint16x1 (uint8_t c_imm8))))
;                    (vec-bwand
;                     (vec-if
;                     (x32 (sca-lt  (uint16_t (bv 0 16))  (uint16x1  (uint8_t  c_imm8))))
;                     (x32 (int16_t (bv 1 16)))
;                     (x32 (int16_t (bv 0 16))))
;                     (vec-shr
;                      (vec-mul
;                       (int16x32
;                        a)
;                       (int16x32
;                        b))
;                      (x32 (sca-sub  (uint16x1  (uint8_t  c_imm8))  (uint16_t (bv 1 16)))))))
;                   (x32 (int16_t (bv 127 16))))
;                  (x32 (int16_t (bv -128 16)))))))]
;         [((fpir:i8x32 a) (int8_t b_imm8) (uint8_t c_imm8))
;              (fpir:i8x32
;               (halide:interpret
;                (int8x32
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int16x32
;                      a)
;                     (int16x32
;                      (x32 (int8_t b_imm8))))
;                    (x32 (uint16x1 (uint8_t c_imm8))))
;                    (vec-bwand
;                     (vec-if
;                     (x32 (sca-lt  (uint16_t (bv 0 16))  (uint16x1  (uint8_t  c_imm8))))
;                     (x32 (int16_t (bv 1 16)))
;                     (x32 (int16_t (bv 0 16))))
;                     (vec-shr
;                      (vec-mul
;                       (int16x32
;                        a)
;                       (int16x32
;                        (x32 (int8_t b_imm8))))
;                      (x32 (sca-sub  (uint16x1  (uint8_t  c_imm8))  (uint16_t (bv 1 16)))))))
;                   (x32 (int16_t (bv 127 16))))
;                  (x32 (int16_t (bv -128 16)))))))]
;         [((fpir:i8x32 a) (int8_t b_imm8) (fpir:u8x32 c))
;              (fpir:i8x32
;               (halide:interpret
;                (int8x32
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int16x32
;                      a)
;                     (int16x32
;                      (x32 (int8_t b_imm8))))
;                    (uint16x32
;                     c))
;                    (vec-bwand
;                     (vec-if
;                     (vec-lt
;                      (x32 (uint16_t (bv 0 16)))
;                      (uint16x32
;                       c))
;                     (x32 (int16_t (bv 1 16)))
;                     (x32 (int16_t (bv 0 16))))
;                     (vec-shr
;                      (vec-mul
;                       (int16x32
;                        a)
;                       (int16x32
;                        (x32 (int8_t b_imm8))))
;                      (vec-sub
;                       (uint16x32
;                        c)
;                       (x32 (uint16_t (bv 1 16)))))))
;                   (x32 (int16_t (bv 127 16))))
;                  (x32 (int16_t (bv -128 16)))))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b) (fpir:u16x16 c))
;              (fpir:u16x16
;               (halide:interpret
;                (uint16x16
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint32x16
;                     a)
;                    (uint32x16
;                     b))
;                   (uint32x16
;                    c))
;                   (vec-bwand
;                    (vec-if
;                    (vec-lt
;                     (x16 (uint32_t (bv 0 32)))
;                     (uint32x16
;                      c))
;                    (x16 (uint32_t (bv 1 32)))
;                    (x16 (uint32_t (bv 0 32))))
;                    (vec-shr
;                     (vec-mul
;                      (uint32x16
;                       a)
;                      (uint32x16
;                       b))
;                     (vec-sub
;                      (uint32x16
;                       c)
;                      (x16 (uint32_t (bv 1 32)))))))
;                  (x16 (uint32_t (bv 65535 32)))))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b) (uint16_t c_imm16))
;              (fpir:u16x16
;               (halide:interpret
;                (uint16x16
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint32x16
;                     a)
;                    (uint32x16
;                     b))
;                   (x16 (uint32x1 (uint16_t c_imm16))))
;                   (vec-bwand
;                    (vec-if
;                    (x16 (sca-lt  (uint32_t (bv 0 32))  (uint32x1  (uint16_t  c_imm16))))
;                    (x16 (uint32_t (bv 1 32)))
;                    (x16 (uint32_t (bv 0 32))))
;                    (vec-shr
;                     (vec-mul
;                      (uint32x16
;                       a)
;                      (uint32x16
;                       b))
;                     (x16 (sca-sub  (uint32x1  (uint16_t  c_imm16))  (uint32_t (bv 1 32)))))))
;                  (x16 (uint32_t (bv 65535 32)))))))]
;         [((fpir:u16x16 a) (uint16_t b_imm16) (uint16_t c_imm16))
;              (fpir:u16x16
;               (halide:interpret
;                (uint16x16
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint32x16
;                     a)
;                    (uint32x16
;                     (x16 (uint16_t b_imm16))))
;                   (x16 (uint32x1 (uint16_t c_imm16))))
;                   (vec-bwand
;                    (vec-if
;                    (x16 (sca-lt  (uint32_t (bv 0 32))  (uint32x1  (uint16_t  c_imm16))))
;                    (x16 (uint32_t (bv 1 32)))
;                    (x16 (uint32_t (bv 0 32))))
;                    (vec-shr
;                     (vec-mul
;                      (uint32x16
;                       a)
;                      (uint32x16
;                       (x16 (uint16_t b_imm16))))
;                     (x16 (sca-sub  (uint32x1  (uint16_t  c_imm16))  (uint32_t (bv 1 32)))))))
;                  (x16 (uint32_t (bv 65535 32)))))))]
;         [((fpir:u16x16 a) (uint16_t b_imm16) (fpir:u16x16 c))
;              (fpir:u16x16
;               (halide:interpret
;                (uint16x16
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint32x16
;                     a)
;                    (uint32x16
;                     (x16 (uint16_t b_imm16))))
;                   (uint32x16
;                    c))
;                   (vec-bwand
;                    (vec-if
;                    (vec-lt
;                     (x16 (uint32_t (bv 0 32)))
;                     (uint32x16
;                      c))
;                    (x16 (uint32_t (bv 1 32)))
;                    (x16 (uint32_t (bv 0 32))))
;                    (vec-shr
;                     (vec-mul
;                      (uint32x16
;                       a)
;                      (uint32x16
;                       (x16 (uint16_t b_imm16))))
;                     (vec-sub
;                      (uint32x16
;                       c)
;                      (x16 (uint32_t (bv 1 32)))))))
;                  (x16 (uint32_t (bv 65535 32)))))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b) (fpir:u16x16 c))
;              (fpir:i16x16
;               (halide:interpret
;                (int16x16
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int32x16
;                      a)
;                     (int32x16
;                      b))
;                    (uint32x16
;                     c))
;                    (vec-bwand
;                     (vec-if
;                     (vec-lt
;                      (x16 (uint32_t (bv 0 32)))
;                      (uint32x16
;                       c))
;                     (x16 (int32_t (bv 1 32)))
;                     (x16 (int32_t (bv 0 32))))
;                     (vec-shr
;                      (vec-mul
;                       (int32x16
;                        a)
;                       (int32x16
;                        b))
;                      (vec-sub
;                       (uint32x16
;                        c)
;                       (x16 (uint32_t (bv 1 32)))))))
;                   (x16 (int32_t (bv 32767 32))))
;                  (x16 (int32_t (bv -32768 32)))))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b) (uint16_t c_imm16))
;              (fpir:i16x16
;               (halide:interpret
;                (int16x16
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int32x16
;                      a)
;                     (int32x16
;                      b))
;                    (x16 (uint32x1 (uint16_t c_imm16))))
;                    (vec-bwand
;                     (vec-if
;                     (x16 (sca-lt  (uint32_t (bv 0 32))  (uint32x1  (uint16_t  c_imm16))))
;                     (x16 (int32_t (bv 1 32)))
;                     (x16 (int32_t (bv 0 32))))
;                     (vec-shr
;                      (vec-mul
;                       (int32x16
;                        a)
;                       (int32x16
;                        b))
;                      (x16 (sca-sub  (uint32x1  (uint16_t  c_imm16))  (uint32_t (bv 1 32)))))))
;                   (x16 (int32_t (bv 32767 32))))
;                  (x16 (int32_t (bv -32768 32)))))))]
;         [((fpir:i16x16 a) (int16_t b_imm16) (uint16_t c_imm16))
;              (fpir:i16x16
;               (halide:interpret
;                (int16x16
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int32x16
;                      a)
;                     (int32x16
;                      (x16 (int16_t b_imm16))))
;                    (x16 (uint32x1 (uint16_t c_imm16))))
;                    (vec-bwand
;                     (vec-if
;                     (x16 (sca-lt  (uint32_t (bv 0 32))  (uint32x1  (uint16_t  c_imm16))))
;                     (x16 (int32_t (bv 1 32)))
;                     (x16 (int32_t (bv 0 32))))
;                     (vec-shr
;                      (vec-mul
;                       (int32x16
;                        a)
;                       (int32x16
;                        (x16 (int16_t b_imm16))))
;                      (x16 (sca-sub  (uint32x1  (uint16_t  c_imm16))  (uint32_t (bv 1 32)))))))
;                   (x16 (int32_t (bv 32767 32))))
;                  (x16 (int32_t (bv -32768 32)))))))]
;         [((fpir:i16x16 a) (int16_t b_imm16) (fpir:u16x16 c))
;              (fpir:i16x16
;               (halide:interpret
;                (int16x16
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int32x16
;                      a)
;                     (int32x16
;                      (x16 (int16_t b_imm16))))
;                    (uint32x16
;                     c))
;                    (vec-bwand
;                     (vec-if
;                     (vec-lt
;                      (x16 (uint32_t (bv 0 32)))
;                      (uint32x16
;                       c))
;                     (x16 (int32_t (bv 1 32)))
;                     (x16 (int32_t (bv 0 32))))
;                     (vec-shr
;                      (vec-mul
;                       (int32x16
;                        a)
;                       (int32x16
;                        (x16 (int16_t b_imm16))))
;                      (vec-sub
;                       (uint32x16
;                        c)
;                       (x16 (uint32_t (bv 1 32)))))))
;                   (x16 (int32_t (bv 32767 32))))
;                  (x16 (int32_t (bv -32768 32)))))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b) (fpir:u32x8 c))
;              (fpir:u32x8
;               (halide:interpret
;                (uint32x8
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint64x8
;                     a)
;                    (uint64x8
;                     b))
;                   (uint64x8
;                    c))
;                   (vec-bwand
;                    (vec-if
;                    (vec-lt
;                     (x8 (uint64_t (bv 0 64)))
;                     (uint64x8
;                      c))
;                    (x8 (uint64_t (bv 1 64)))
;                    (x8 (uint64_t (bv 0 64))))
;                    (vec-shr
;                     (vec-mul
;                      (uint64x8
;                       a)
;                      (uint64x8
;                       b))
;                     (vec-sub
;                      (uint64x8
;                       c)
;                      (x8 (uint64_t (bv 1 64)))))))
;                  (x8 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b) (uint32_t c_imm32))
;              (fpir:u32x8
;               (halide:interpret
;                (uint32x8
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint64x8
;                     a)
;                    (uint64x8
;                     b))
;                   (x8 (uint64x1 (uint32_t c_imm32))))
;                   (vec-bwand
;                    (vec-if
;                    (x8 (sca-lt  (uint64_t (bv 0 64))  (uint64x1  (uint32_t  c_imm32))))
;                    (x8 (uint64_t (bv 1 64)))
;                    (x8 (uint64_t (bv 0 64))))
;                    (vec-shr
;                     (vec-mul
;                      (uint64x8
;                       a)
;                      (uint64x8
;                       b))
;                     (x8 (sca-sub  (uint64x1  (uint32_t  c_imm32))  (uint64_t (bv 1 64)))))))
;                  (x8 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:u32x8 a) (uint32_t b_imm32) (uint32_t c_imm32))
;              (fpir:u32x8
;               (halide:interpret
;                (uint32x8
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint64x8
;                     a)
;                    (uint64x8
;                     (x8 (uint32_t b_imm32))))
;                   (x8 (uint64x1 (uint32_t c_imm32))))
;                   (vec-bwand
;                    (vec-if
;                    (x8 (sca-lt  (uint64_t (bv 0 64))  (uint64x1  (uint32_t  c_imm32))))
;                    (x8 (uint64_t (bv 1 64)))
;                    (x8 (uint64_t (bv 0 64))))
;                    (vec-shr
;                     (vec-mul
;                      (uint64x8
;                       a)
;                      (uint64x8
;                       (x8 (uint32_t b_imm32))))
;                     (x8 (sca-sub  (uint64x1  (uint32_t  c_imm32))  (uint64_t (bv 1 64)))))))
;                  (x8 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:u32x8 a) (uint32_t b_imm32) (fpir:u32x8 c))
;              (fpir:u32x8
;               (halide:interpret
;                (uint32x8
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint64x8
;                     a)
;                    (uint64x8
;                     (x8 (uint32_t b_imm32))))
;                   (uint64x8
;                    c))
;                   (vec-bwand
;                    (vec-if
;                    (vec-lt
;                     (x8 (uint64_t (bv 0 64)))
;                     (uint64x8
;                      c))
;                    (x8 (uint64_t (bv 1 64)))
;                    (x8 (uint64_t (bv 0 64))))
;                    (vec-shr
;                     (vec-mul
;                      (uint64x8
;                       a)
;                      (uint64x8
;                       (x8 (uint32_t b_imm32))))
;                     (vec-sub
;                      (uint64x8
;                       c)
;                      (x8 (uint64_t (bv 1 64)))))))
;                  (x8 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b) (fpir:u32x8 c))
;              (fpir:i32x8
;               (halide:interpret
;                (int32x8
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int64x8
;                      a)
;                     (int64x8
;                      b))
;                    (uint64x8
;                     c))
;                    (vec-bwand
;                     (vec-if
;                     (vec-lt
;                      (x8 (uint64_t (bv 0 64)))
;                      (uint64x8
;                       c))
;                     (x8 (int64_t (bv 1 64)))
;                     (x8 (int64_t (bv 0 64))))
;                     (vec-shr
;                      (vec-mul
;                       (int64x8
;                        a)
;                       (int64x8
;                        b))
;                      (vec-sub
;                       (uint64x8
;                        c)
;                       (x8 (uint64_t (bv 1 64)))))))
;                   (x8 (int64_t (bv 2147483647 64))))
;                  (x8 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b) (uint32_t c_imm32))
;              (fpir:i32x8
;               (halide:interpret
;                (int32x8
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int64x8
;                      a)
;                     (int64x8
;                      b))
;                    (x8 (uint64x1 (uint32_t c_imm32))))
;                    (vec-bwand
;                     (vec-if
;                     (x8 (sca-lt  (uint64_t (bv 0 64))  (uint64x1  (uint32_t  c_imm32))))
;                     (x8 (int64_t (bv 1 64)))
;                     (x8 (int64_t (bv 0 64))))
;                     (vec-shr
;                      (vec-mul
;                       (int64x8
;                        a)
;                       (int64x8
;                        b))
;                      (x8 (sca-sub  (uint64x1  (uint32_t  c_imm32))  (uint64_t (bv 1 64)))))))
;                   (x8 (int64_t (bv 2147483647 64))))
;                  (x8 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:i32x8 a) (int32_t b_imm32) (uint32_t c_imm32))
;              (fpir:i32x8
;               (halide:interpret
;                (int32x8
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int64x8
;                      a)
;                     (int64x8
;                      (x8 (int32_t b_imm32))))
;                    (x8 (uint64x1 (uint32_t c_imm32))))
;                    (vec-bwand
;                     (vec-if
;                     (x8 (sca-lt  (uint64_t (bv 0 64))  (uint64x1  (uint32_t  c_imm32))))
;                     (x8 (int64_t (bv 1 64)))
;                     (x8 (int64_t (bv 0 64))))
;                     (vec-shr
;                      (vec-mul
;                       (int64x8
;                        a)
;                       (int64x8
;                        (x8 (int32_t b_imm32))))
;                      (x8 (sca-sub  (uint64x1  (uint32_t  c_imm32))  (uint64_t (bv 1 64)))))))
;                   (x8 (int64_t (bv 2147483647 64))))
;                  (x8 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:i32x8 a) (int32_t b_imm32) (fpir:u32x8 c))
;              (fpir:i32x8
;               (halide:interpret
;                (int32x8
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int64x8
;                      a)
;                     (int64x8
;                      (x8 (int32_t b_imm32))))
;                    (uint64x8
;                     c))
;                    (vec-bwand
;                     (vec-if
;                     (vec-lt
;                      (x8 (uint64_t (bv 0 64)))
;                      (uint64x8
;                       c))
;                     (x8 (int64_t (bv 1 64)))
;                     (x8 (int64_t (bv 0 64))))
;                     (vec-shr
;                      (vec-mul
;                       (int64x8
;                        a)
;                       (int64x8
;                        (x8 (int32_t b_imm32))))
;                      (vec-sub
;                       (uint64x8
;                        c)
;                       (x8 (uint64_t (bv 1 64)))))))
;                   (x8 (int64_t (bv 2147483647 64))))
;                  (x8 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b) (fpir:u8x16 c))
;              (fpir:u8x16
;               (halide:interpret
;                (uint8x16
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint16x16
;                     a)
;                    (uint16x16
;                     b))
;                   (uint16x16
;                    c))
;                   (vec-bwand
;                    (vec-if
;                    (vec-lt
;                     (x16 (uint16_t (bv 0 16)))
;                     (uint16x16
;                      c))
;                    (x16 (uint16_t (bv 1 16)))
;                    (x16 (uint16_t (bv 0 16))))
;                    (vec-shr
;                     (vec-mul
;                      (uint16x16
;                       a)
;                      (uint16x16
;                       b))
;                     (vec-sub
;                      (uint16x16
;                       c)
;                      (x16 (uint16_t (bv 1 16)))))))
;                  (x16 (uint16_t (bv 255 16)))))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b) (uint8_t c_imm8))
;              (fpir:u8x16
;               (halide:interpret
;                (uint8x16
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint16x16
;                     a)
;                    (uint16x16
;                     b))
;                   (x16 (uint16x1 (uint8_t c_imm8))))
;                   (vec-bwand
;                    (vec-if
;                    (x16 (sca-lt  (uint16_t (bv 0 16))  (uint16x1  (uint8_t  c_imm8))))
;                    (x16 (uint16_t (bv 1 16)))
;                    (x16 (uint16_t (bv 0 16))))
;                    (vec-shr
;                     (vec-mul
;                      (uint16x16
;                       a)
;                      (uint16x16
;                       b))
;                     (x16 (sca-sub  (uint16x1  (uint8_t  c_imm8))  (uint16_t (bv 1 16)))))))
;                  (x16 (uint16_t (bv 255 16)))))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8) (uint8_t c_imm8))
;              (fpir:u8x16
;               (halide:interpret
;                (uint8x16
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint16x16
;                     a)
;                    (uint16x16
;                     (x16 (uint8_t b_imm8))))
;                   (x16 (uint16x1 (uint8_t c_imm8))))
;                   (vec-bwand
;                    (vec-if
;                    (x16 (sca-lt  (uint16_t (bv 0 16))  (uint16x1  (uint8_t  c_imm8))))
;                    (x16 (uint16_t (bv 1 16)))
;                    (x16 (uint16_t (bv 0 16))))
;                    (vec-shr
;                     (vec-mul
;                      (uint16x16
;                       a)
;                      (uint16x16
;                       (x16 (uint8_t b_imm8))))
;                     (x16 (sca-sub  (uint16x1  (uint8_t  c_imm8))  (uint16_t (bv 1 16)))))))
;                  (x16 (uint16_t (bv 255 16)))))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8) (fpir:u8x16 c))
;              (fpir:u8x16
;               (halide:interpret
;                (uint8x16
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint16x16
;                     a)
;                    (uint16x16
;                     (x16 (uint8_t b_imm8))))
;                   (uint16x16
;                    c))
;                   (vec-bwand
;                    (vec-if
;                    (vec-lt
;                     (x16 (uint16_t (bv 0 16)))
;                     (uint16x16
;                      c))
;                    (x16 (uint16_t (bv 1 16)))
;                    (x16 (uint16_t (bv 0 16))))
;                    (vec-shr
;                     (vec-mul
;                      (uint16x16
;                       a)
;                      (uint16x16
;                       (x16 (uint8_t b_imm8))))
;                     (vec-sub
;                      (uint16x16
;                       c)
;                      (x16 (uint16_t (bv 1 16)))))))
;                  (x16 (uint16_t (bv 255 16)))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b) (fpir:u8x16 c))
;              (fpir:i8x16
;               (halide:interpret
;                (int8x16
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int16x16
;                      a)
;                     (int16x16
;                      b))
;                    (uint16x16
;                     c))
;                    (vec-bwand
;                     (vec-if
;                     (vec-lt
;                      (x16 (uint16_t (bv 0 16)))
;                      (uint16x16
;                       c))
;                     (x16 (int16_t (bv 1 16)))
;                     (x16 (int16_t (bv 0 16))))
;                     (vec-shr
;                      (vec-mul
;                       (int16x16
;                        a)
;                       (int16x16
;                        b))
;                      (vec-sub
;                       (uint16x16
;                        c)
;                       (x16 (uint16_t (bv 1 16)))))))
;                   (x16 (int16_t (bv 127 16))))
;                  (x16 (int16_t (bv -128 16)))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b) (uint8_t c_imm8))
;              (fpir:i8x16
;               (halide:interpret
;                (int8x16
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int16x16
;                      a)
;                     (int16x16
;                      b))
;                    (x16 (uint16x1 (uint8_t c_imm8))))
;                    (vec-bwand
;                     (vec-if
;                     (x16 (sca-lt  (uint16_t (bv 0 16))  (uint16x1  (uint8_t  c_imm8))))
;                     (x16 (int16_t (bv 1 16)))
;                     (x16 (int16_t (bv 0 16))))
;                     (vec-shr
;                      (vec-mul
;                       (int16x16
;                        a)
;                       (int16x16
;                        b))
;                      (x16 (sca-sub  (uint16x1  (uint8_t  c_imm8))  (uint16_t (bv 1 16)))))))
;                   (x16 (int16_t (bv 127 16))))
;                  (x16 (int16_t (bv -128 16)))))))]
;         [((fpir:i8x16 a) (int8_t b_imm8) (uint8_t c_imm8))
;              (fpir:i8x16
;               (halide:interpret
;                (int8x16
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int16x16
;                      a)
;                     (int16x16
;                      (x16 (int8_t b_imm8))))
;                    (x16 (uint16x1 (uint8_t c_imm8))))
;                    (vec-bwand
;                     (vec-if
;                     (x16 (sca-lt  (uint16_t (bv 0 16))  (uint16x1  (uint8_t  c_imm8))))
;                     (x16 (int16_t (bv 1 16)))
;                     (x16 (int16_t (bv 0 16))))
;                     (vec-shr
;                      (vec-mul
;                       (int16x16
;                        a)
;                       (int16x16
;                        (x16 (int8_t b_imm8))))
;                      (x16 (sca-sub  (uint16x1  (uint8_t  c_imm8))  (uint16_t (bv 1 16)))))))
;                   (x16 (int16_t (bv 127 16))))
;                  (x16 (int16_t (bv -128 16)))))))]
;         [((fpir:i8x16 a) (int8_t b_imm8) (fpir:u8x16 c))
;              (fpir:i8x16
;               (halide:interpret
;                (int8x16
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int16x16
;                      a)
;                     (int16x16
;                      (x16 (int8_t b_imm8))))
;                    (uint16x16
;                     c))
;                    (vec-bwand
;                     (vec-if
;                     (vec-lt
;                      (x16 (uint16_t (bv 0 16)))
;                      (uint16x16
;                       c))
;                     (x16 (int16_t (bv 1 16)))
;                     (x16 (int16_t (bv 0 16))))
;                     (vec-shr
;                      (vec-mul
;                       (int16x16
;                        a)
;                       (int16x16
;                        (x16 (int8_t b_imm8))))
;                      (vec-sub
;                       (uint16x16
;                        c)
;                       (x16 (uint16_t (bv 1 16)))))))
;                   (x16 (int16_t (bv 127 16))))
;                  (x16 (int16_t (bv -128 16)))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b) (fpir:u16x8 c))
;              (fpir:u16x8
;               (halide:interpret
;                (uint16x8
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint32x8
;                     a)
;                    (uint32x8
;                     b))
;                   (uint32x8
;                    c))
;                   (vec-bwand
;                    (vec-if
;                    (vec-lt
;                     (x8 (uint32_t (bv 0 32)))
;                     (uint32x8
;                      c))
;                    (x8 (uint32_t (bv 1 32)))
;                    (x8 (uint32_t (bv 0 32))))
;                    (vec-shr
;                     (vec-mul
;                      (uint32x8
;                       a)
;                      (uint32x8
;                       b))
;                     (vec-sub
;                      (uint32x8
;                       c)
;                      (x8 (uint32_t (bv 1 32)))))))
;                  (x8 (uint32_t (bv 65535 32)))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b) (uint16_t c_imm16))
;              (fpir:u16x8
;               (halide:interpret
;                (uint16x8
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint32x8
;                     a)
;                    (uint32x8
;                     b))
;                   (x8 (uint32x1 (uint16_t c_imm16))))
;                   (vec-bwand
;                    (vec-if
;                    (x8 (sca-lt  (uint32_t (bv 0 32))  (uint32x1  (uint16_t  c_imm16))))
;                    (x8 (uint32_t (bv 1 32)))
;                    (x8 (uint32_t (bv 0 32))))
;                    (vec-shr
;                     (vec-mul
;                      (uint32x8
;                       a)
;                      (uint32x8
;                       b))
;                     (x8 (sca-sub  (uint32x1  (uint16_t  c_imm16))  (uint32_t (bv 1 32)))))))
;                  (x8 (uint32_t (bv 65535 32)))))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16) (uint16_t c_imm16))
;              (fpir:u16x8
;               (halide:interpret
;                (uint16x8
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint32x8
;                     a)
;                    (uint32x8
;                     (x8 (uint16_t b_imm16))))
;                   (x8 (uint32x1 (uint16_t c_imm16))))
;                   (vec-bwand
;                    (vec-if
;                    (x8 (sca-lt  (uint32_t (bv 0 32))  (uint32x1  (uint16_t  c_imm16))))
;                    (x8 (uint32_t (bv 1 32)))
;                    (x8 (uint32_t (bv 0 32))))
;                    (vec-shr
;                     (vec-mul
;                      (uint32x8
;                       a)
;                      (uint32x8
;                       (x8 (uint16_t b_imm16))))
;                     (x8 (sca-sub  (uint32x1  (uint16_t  c_imm16))  (uint32_t (bv 1 32)))))))
;                  (x8 (uint32_t (bv 65535 32)))))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16) (fpir:u16x8 c))
;              (fpir:u16x8
;               (halide:interpret
;                (uint16x8
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint32x8
;                     a)
;                    (uint32x8
;                     (x8 (uint16_t b_imm16))))
;                   (uint32x8
;                    c))
;                   (vec-bwand
;                    (vec-if
;                    (vec-lt
;                     (x8 (uint32_t (bv 0 32)))
;                     (uint32x8
;                      c))
;                    (x8 (uint32_t (bv 1 32)))
;                    (x8 (uint32_t (bv 0 32))))
;                    (vec-shr
;                     (vec-mul
;                      (uint32x8
;                       a)
;                      (uint32x8
;                       (x8 (uint16_t b_imm16))))
;                     (vec-sub
;                      (uint32x8
;                       c)
;                      (x8 (uint32_t (bv 1 32)))))))
;                  (x8 (uint32_t (bv 65535 32)))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b) (fpir:u16x8 c))
;              (fpir:i16x8
;               (halide:interpret
;                (int16x8
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int32x8
;                      a)
;                     (int32x8
;                      b))
;                    (uint32x8
;                     c))
;                    (vec-bwand
;                     (vec-if
;                     (vec-lt
;                      (x8 (uint32_t (bv 0 32)))
;                      (uint32x8
;                       c))
;                     (x8 (int32_t (bv 1 32)))
;                     (x8 (int32_t (bv 0 32))))
;                     (vec-shr
;                      (vec-mul
;                       (int32x8
;                        a)
;                       (int32x8
;                        b))
;                      (vec-sub
;                       (uint32x8
;                        c)
;                       (x8 (uint32_t (bv 1 32)))))))
;                   (x8 (int32_t (bv 32767 32))))
;                  (x8 (int32_t (bv -32768 32)))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b) (uint16_t c_imm16))
;              (fpir:i16x8
;               (halide:interpret
;                (int16x8
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int32x8
;                      a)
;                     (int32x8
;                      b))
;                    (x8 (uint32x1 (uint16_t c_imm16))))
;                    (vec-bwand
;                     (vec-if
;                     (x8 (sca-lt  (uint32_t (bv 0 32))  (uint32x1  (uint16_t  c_imm16))))
;                     (x8 (int32_t (bv 1 32)))
;                     (x8 (int32_t (bv 0 32))))
;                     (vec-shr
;                      (vec-mul
;                       (int32x8
;                        a)
;                       (int32x8
;                        b))
;                      (x8 (sca-sub  (uint32x1  (uint16_t  c_imm16))  (uint32_t (bv 1 32)))))))
;                   (x8 (int32_t (bv 32767 32))))
;                  (x8 (int32_t (bv -32768 32)))))))]
;         [((fpir:i16x8 a) (int16_t b_imm16) (uint16_t c_imm16))
;              (fpir:i16x8
;               (halide:interpret
;                (int16x8
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int32x8
;                      a)
;                     (int32x8
;                      (x8 (int16_t b_imm16))))
;                    (x8 (uint32x1 (uint16_t c_imm16))))
;                    (vec-bwand
;                     (vec-if
;                     (x8 (sca-lt  (uint32_t (bv 0 32))  (uint32x1  (uint16_t  c_imm16))))
;                     (x8 (int32_t (bv 1 32)))
;                     (x8 (int32_t (bv 0 32))))
;                     (vec-shr
;                      (vec-mul
;                       (int32x8
;                        a)
;                       (int32x8
;                        (x8 (int16_t b_imm16))))
;                      (x8 (sca-sub  (uint32x1  (uint16_t  c_imm16))  (uint32_t (bv 1 32)))))))
;                   (x8 (int32_t (bv 32767 32))))
;                  (x8 (int32_t (bv -32768 32)))))))]
;         [((fpir:i16x8 a) (int16_t b_imm16) (fpir:u16x8 c))
;              (fpir:i16x8
;               (halide:interpret
;                (int16x8
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int32x8
;                      a)
;                     (int32x8
;                      (x8 (int16_t b_imm16))))
;                    (uint32x8
;                     c))
;                    (vec-bwand
;                     (vec-if
;                     (vec-lt
;                      (x8 (uint32_t (bv 0 32)))
;                      (uint32x8
;                       c))
;                     (x8 (int32_t (bv 1 32)))
;                     (x8 (int32_t (bv 0 32))))
;                     (vec-shr
;                      (vec-mul
;                       (int32x8
;                        a)
;                       (int32x8
;                        (x8 (int16_t b_imm16))))
;                      (vec-sub
;                       (uint32x8
;                        c)
;                       (x8 (uint32_t (bv 1 32)))))))
;                   (x8 (int32_t (bv 32767 32))))
;                  (x8 (int32_t (bv -32768 32)))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b) (fpir:u32x4 c))
;              (fpir:u32x4
;               (halide:interpret
;                (uint32x4
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint64x4
;                     a)
;                    (uint64x4
;                     b))
;                   (uint64x4
;                    c))
;                   (vec-bwand
;                    (vec-if
;                    (vec-lt
;                     (x4 (uint64_t (bv 0 64)))
;                     (uint64x4
;                      c))
;                    (x4 (uint64_t (bv 1 64)))
;                    (x4 (uint64_t (bv 0 64))))
;                    (vec-shr
;                     (vec-mul
;                      (uint64x4
;                       a)
;                      (uint64x4
;                       b))
;                     (vec-sub
;                      (uint64x4
;                       c)
;                      (x4 (uint64_t (bv 1 64)))))))
;                  (x4 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b) (uint32_t c_imm32))
;              (fpir:u32x4
;               (halide:interpret
;                (uint32x4
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint64x4
;                     a)
;                    (uint64x4
;                     b))
;                   (x4 (uint64x1 (uint32_t c_imm32))))
;                   (vec-bwand
;                    (vec-if
;                    (x4 (sca-lt  (uint64_t (bv 0 64))  (uint64x1  (uint32_t  c_imm32))))
;                    (x4 (uint64_t (bv 1 64)))
;                    (x4 (uint64_t (bv 0 64))))
;                    (vec-shr
;                     (vec-mul
;                      (uint64x4
;                       a)
;                      (uint64x4
;                       b))
;                     (x4 (sca-sub  (uint64x1  (uint32_t  c_imm32))  (uint64_t (bv 1 64)))))))
;                  (x4 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32) (uint32_t c_imm32))
;              (fpir:u32x4
;               (halide:interpret
;                (uint32x4
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint64x4
;                     a)
;                    (uint64x4
;                     (x4 (uint32_t b_imm32))))
;                   (x4 (uint64x1 (uint32_t c_imm32))))
;                   (vec-bwand
;                    (vec-if
;                    (x4 (sca-lt  (uint64_t (bv 0 64))  (uint64x1  (uint32_t  c_imm32))))
;                    (x4 (uint64_t (bv 1 64)))
;                    (x4 (uint64_t (bv 0 64))))
;                    (vec-shr
;                     (vec-mul
;                      (uint64x4
;                       a)
;                      (uint64x4
;                       (x4 (uint32_t b_imm32))))
;                     (x4 (sca-sub  (uint64x1  (uint32_t  c_imm32))  (uint64_t (bv 1 64)))))))
;                  (x4 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32) (fpir:u32x4 c))
;              (fpir:u32x4
;               (halide:interpret
;                (uint32x4
;                 (vec-min
;                  (vec-add
;                  (vec-shr
;                   (vec-mul
;                    (uint64x4
;                     a)
;                    (uint64x4
;                     (x4 (uint32_t b_imm32))))
;                   (uint64x4
;                    c))
;                   (vec-bwand
;                    (vec-if
;                    (vec-lt
;                     (x4 (uint64_t (bv 0 64)))
;                     (uint64x4
;                      c))
;                    (x4 (uint64_t (bv 1 64)))
;                    (x4 (uint64_t (bv 0 64))))
;                    (vec-shr
;                     (vec-mul
;                      (uint64x4
;                       a)
;                      (uint64x4
;                       (x4 (uint32_t b_imm32))))
;                     (vec-sub
;                      (uint64x4
;                       c)
;                      (x4 (uint64_t (bv 1 64)))))))
;                  (x4 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b) (fpir:u32x4 c))
;              (fpir:i32x4
;               (halide:interpret
;                (int32x4
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int64x4
;                      a)
;                     (int64x4
;                      b))
;                    (uint64x4
;                     c))
;                    (vec-bwand
;                     (vec-if
;                     (vec-lt
;                      (x4 (uint64_t (bv 0 64)))
;                      (uint64x4
;                       c))
;                     (x4 (int64_t (bv 1 64)))
;                     (x4 (int64_t (bv 0 64))))
;                     (vec-shr
;                      (vec-mul
;                       (int64x4
;                        a)
;                       (int64x4
;                        b))
;                      (vec-sub
;                       (uint64x4
;                        c)
;                       (x4 (uint64_t (bv 1 64)))))))
;                   (x4 (int64_t (bv 2147483647 64))))
;                  (x4 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b) (uint32_t c_imm32))
;              (fpir:i32x4
;               (halide:interpret
;                (int32x4
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int64x4
;                      a)
;                     (int64x4
;                      b))
;                    (x4 (uint64x1 (uint32_t c_imm32))))
;                    (vec-bwand
;                     (vec-if
;                     (x4 (sca-lt  (uint64_t (bv 0 64))  (uint64x1  (uint32_t  c_imm32))))
;                     (x4 (int64_t (bv 1 64)))
;                     (x4 (int64_t (bv 0 64))))
;                     (vec-shr
;                      (vec-mul
;                       (int64x4
;                        a)
;                       (int64x4
;                        b))
;                      (x4 (sca-sub  (uint64x1  (uint32_t  c_imm32))  (uint64_t (bv 1 64)))))))
;                   (x4 (int64_t (bv 2147483647 64))))
;                  (x4 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:i32x4 a) (int32_t b_imm32) (uint32_t c_imm32))
;              (fpir:i32x4
;               (halide:interpret
;                (int32x4
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int64x4
;                      a)
;                     (int64x4
;                      (x4 (int32_t b_imm32))))
;                    (x4 (uint64x1 (uint32_t c_imm32))))
;                    (vec-bwand
;                     (vec-if
;                     (x4 (sca-lt  (uint64_t (bv 0 64))  (uint64x1  (uint32_t  c_imm32))))
;                     (x4 (int64_t (bv 1 64)))
;                     (x4 (int64_t (bv 0 64))))
;                     (vec-shr
;                      (vec-mul
;                       (int64x4
;                        a)
;                       (int64x4
;                        (x4 (int32_t b_imm32))))
;                      (x4 (sca-sub  (uint64x1  (uint32_t  c_imm32))  (uint64_t (bv 1 64)))))))
;                   (x4 (int64_t (bv 2147483647 64))))
;                  (x4 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:i32x4 a) (int32_t b_imm32) (fpir:u32x4 c))
;              (fpir:i32x4
;               (halide:interpret
;                (int32x4
;                 (vec-max
;                  (vec-min
;                   (vec-add
;                   (vec-shr
;                    (vec-mul
;                     (int64x4
;                      a)
;                     (int64x4
;                      (x4 (int32_t b_imm32))))
;                    (uint64x4
;                     c))
;                    (vec-bwand
;                     (vec-if
;                     (vec-lt
;                      (x4 (uint64_t (bv 0 64)))
;                      (uint64x4
;                       c))
;                     (x4 (int64_t (bv 1 64)))
;                     (x4 (int64_t (bv 0 64))))
;                     (vec-shr
;                      (vec-mul
;                       (int64x4
;                        a)
;                       (int64x4
;                        (x4 (int32_t b_imm32))))
;                      (vec-sub
;                       (uint64x4
;                        c)
;                       (x4 (uint64_t (bv 1 64)))))))
;                   (x4 (int64_t (bv 2147483647 64))))
;                  (x4 (int64_t (bv -2147483648 64)))))))]

;         [(_ _ _) (assert #f "infeasible in interpreting mul_shr_r")])]

;     [(fpir:mul_w a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-mul
;                (uint16x16
;                 a)
;                (uint16x16
;                 b))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-mul
;                (uint32x8
;                 a)
;                (uint32x8
;                 b))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-mul
;                (uint64x4
;                 a)
;                (uint64x4
;                 b))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-mul
;                (int16x16
;                 a)
;                (int16x16
;                 b))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-mul
;                (int32x8
;                 a)
;                (int32x8
;                 b))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-mul
;                (int64x4
;                 a)
;                (int64x4
;                 b))))]

;         [(_ _) (assert #f "infeasible in interpreting mul_w")])]

;     [(fpir:mul_w-vs a b_imm8)
;       (destruct* ((interpret a) (interpret b_imm8))
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-mul
;                (uint16x16
;                 a)
;                (uint16x16
;                 (x16 (uint8_t b_imm8))))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-mul
;                (uint32x8
;                 a)
;                (uint32x8
;                 (x8 (uint16_t b_imm16))))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-mul
;                (uint64x4
;                 a)
;                (uint64x4
;                 (x4 (uint32_t b_imm32))))))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-mul
;                (int16x16
;                 a)
;                (int16x16
;                 (x16 (int8_t b_imm8))))))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-mul
;                (int32x8
;                 a)
;                (int32x8
;                 (x8 (int16_t b_imm16))))))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-mul
;                (int64x4
;                 a)
;                (int64x4
;                 (x4 (int32_t b_imm32))))))]

;         [(_ _) (assert #f "infeasible in interpreting mul_w-vs")])]

;     [(fpir:narrow a)
;       (destruct* ((interpret a))
;         [((fpir:u16x16 a))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-narrow
;                a)))]
;         [((fpir:u32x8 a))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-narrow
;                a)))]
;         [((fpir:u64x4 a))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-narrow
;                a)))]
;         [((fpir:i16x16 a))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-narrow
;                a)))]
;         [((fpir:i32x8 a))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-narrow
;                a)))]
;         [((fpir:i64x4 a))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-narrow
;                a)))]

;         [(_) (assert #f "infeasible in interpreting narrow")])]

;     [(fpir:narrow_s a)
;       (destruct* ((interpret a))
;         [((fpir:u16x16 a))
;             (fpir:u8x16
;              (halide:interpret
;               (uint8x16
;                (vec-min
;                 a
;                 (x16 (uint16_t (bv 255 16)))))))]
;         [((fpir:u32x8 a))
;             (fpir:u16x8
;              (halide:interpret
;               (uint16x8
;                (vec-min
;                 a
;                 (x8 (uint32_t (bv 65535 32)))))))]
;         [((fpir:u64x4 a))
;             (fpir:u32x4
;              (halide:interpret
;               (uint32x4
;                (vec-min
;                 a
;                 (x4 (uint64_t (bv 4294967295 64)))))))]
;         [((fpir:i16x16 a))
;             (fpir:i8x16
;              (halide:interpret
;               (int8x16
;                (vec-max
;                 (vec-min
;                  a
;                  (x16 (int16_t (bv 127 16))))
;                 (x16 (int16_t (bv -128 16)))))))]
;         [((fpir:i16x16 a))
;             (fpir:u8x16
;              (halide:interpret
;               (int8x16
;                (vec-max
;                 (vec-min
;                  a
;                  (x16 (int16_t (bv 127 16))))
;                 (x16 (int16_t (bv -128 16)))))))]
;         [((fpir:i32x8 a))
;             (fpir:i16x8
;              (halide:interpret
;               (int16x8
;                (vec-max
;                 (vec-min
;                  a
;                  (x8 (int32_t (bv 32767 32))))
;                 (x8 (int32_t (bv -32768 32)))))))]
;         [((fpir:i32x8 a))
;             (fpir:u16x8
;              (halide:interpret
;               (int16x8
;                (vec-max
;                 (vec-min
;                  a
;                  (x8 (int32_t (bv 32767 32))))
;                 (x8 (int32_t (bv -32768 32)))))))]
;         [((fpir:i64x4 a))
;             (fpir:i32x4
;              (halide:interpret
;               (int32x4
;                (vec-max
;                 (vec-min
;                  a
;                  (x4 (int64_t (bv 2147483647 64))))
;                 (x4 (int64_t (bv -2147483648 64)))))))]
;         [((fpir:i64x4 a))
;             (fpir:u32x4
;              (halide:interpret
;               (int32x4
;                (vec-max
;                 (vec-min
;                  a
;                  (x4 (int64_t (bv 2147483647 64))))
;                 (x4 (int64_t (bv -2147483648 64)))))))]

;         [(_) (assert #f "infeasible in interpreting narrow_s")])]

;     [(fpir:shl a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-shl
;                a
;                (x32 (uint8_t b_imm8)))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-shl
;                a
;                (x16 (uint16_t b_imm16)))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-shl
;                a
;                (x8 (uint32_t b_imm32)))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-shl
;                a
;                (x4 (uint64_t b_imm64)))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-shl
;                a
;                (x32 (int8_t b_imm8)))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-shl
;                a
;                (x16 (int16_t b_imm16)))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-shl
;                a
;                (x8 (int32_t b_imm32)))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-shl
;                a
;                (x4 (int64_t b_imm64)))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-shl
;                a
;                (x16 (uint8_t b_imm8)))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-shl
;                a
;                (x8 (uint16_t b_imm16)))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-shl
;                a
;                (x4 (uint32_t b_imm32)))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-shl
;                a
;                (x2 (uint64_t b_imm64)))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-shl
;                a
;                (x16 (int8_t b_imm8)))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-shl
;                a
;                (x8 (int16_t b_imm16)))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-shl
;                a
;                (x4 (int32_t b_imm32)))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-shl
;                a
;                b)))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-shl
;                a
;                (x2 (int64_t b_imm64)))))]

;         [(_ _) (assert #f "infeasible in interpreting shl")])]

;     [(fpir:shl_r a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 b)
;                (vec-bwand
;                 (x32 (uint8_t (bv 0 8)))
;                 (vec-shl
;                  a
;                  (vec-add
;                   b
;                   (x32 (uint8_t (bv 1 8)))))))))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 (x32 (uint8_t b_imm8)))
;                (vec-bwand
;                 (x32 (uint8_t (bv 0 8)))
;                 (vec-shl
;                  a
;                  (x32 (sca-add  (uint8_t  b_imm8)  (uint8_t (bv 1 8)))))))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 b)
;                (vec-bwand
;                 (x16 (uint16_t (bv 0 16)))
;                 (vec-shl
;                  a
;                  (vec-add
;                   b
;                   (x16 (uint16_t (bv 1 16)))))))))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 (x16 (uint16_t b_imm16)))
;                (vec-bwand
;                 (x16 (uint16_t (bv 0 16)))
;                 (vec-shl
;                  a
;                  (x16 (sca-add  (uint16_t  b_imm16)  (uint16_t (bv 1 16)))))))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 b)
;                (vec-bwand
;                 (x8 (uint32_t (bv 0 32)))
;                 (vec-shl
;                  a
;                  (vec-add
;                   b
;                   (x8 (uint32_t (bv 1 32)))))))))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 (x8 (uint32_t b_imm32)))
;                (vec-bwand
;                 (x8 (uint32_t (bv 0 32)))
;                 (vec-shl
;                  a
;                  (x8 (sca-add  (uint32_t  b_imm32)  (uint32_t (bv 1 32)))))))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 b)
;                (vec-bwand
;                 (x4 (uint64_t (bv 0 64)))
;                 (vec-shl
;                  a
;                  (vec-add
;                   b
;                   (x4 (uint64_t (bv 1 64)))))))))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 (x4 (uint64_t b_imm64)))
;                (vec-bwand
;                 (x4 (uint64_t (bv 0 64)))
;                 (vec-shl
;                  a
;                  (x4 (sca-add  (uint64_t  b_imm64)  (uint64_t (bv 1 64)))))))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;              (fpir:i8x32
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   b
;                   (x32 (int8_t (bv 0 8))))
;                  (x32 (int8_t (bv 1 8)))
;                  (x32 (int8_t (bv 0 8))))
;                  (vec-shl
;                   a
;                   (vec-add
;                    b
;                    (x32 (int8_t (bv 1 8)))))))))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;              (fpir:i8x32
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 (x32 (int8_t b_imm8)))
;                 (vec-bwand
;                  (vec-if
;                  (x32 (sca-lt  (int8_t  b_imm8)  (int8_t (bv 0 8))))
;                  (x32 (int8_t (bv 1 8)))
;                  (x32 (int8_t (bv 0 8))))
;                  (vec-shl
;                   a
;                   (x32 (sca-add  (int8_t  b_imm8)  (int8_t (bv 1 8)))))))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;              (fpir:i16x16
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   b
;                   (x16 (int16_t (bv 0 16))))
;                  (x16 (int16_t (bv 1 16)))
;                  (x16 (int16_t (bv 0 16))))
;                  (vec-shl
;                   a
;                   (vec-add
;                    b
;                    (x16 (int16_t (bv 1 16)))))))))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;              (fpir:i16x16
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 (x16 (int16_t b_imm16)))
;                 (vec-bwand
;                  (vec-if
;                  (x16 (sca-lt  (int16_t  b_imm16)  (int16_t (bv 0 16))))
;                  (x16 (int16_t (bv 1 16)))
;                  (x16 (int16_t (bv 0 16))))
;                  (vec-shl
;                   a
;                   (x16 (sca-add  (int16_t  b_imm16)  (int16_t (bv 1 16)))))))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;              (fpir:i32x8
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   b
;                   (x8 (int32_t (bv 0 32))))
;                  (x8 (int32_t (bv 1 32)))
;                  (x8 (int32_t (bv 0 32))))
;                  (vec-shl
;                   a
;                   (vec-add
;                    b
;                    (x8 (int32_t (bv 1 32)))))))))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;              (fpir:i32x8
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 (x8 (int32_t b_imm32)))
;                 (vec-bwand
;                  (vec-if
;                  (x8 (sca-lt  (int32_t  b_imm32)  (int32_t (bv 0 32))))
;                  (x8 (int32_t (bv 1 32)))
;                  (x8 (int32_t (bv 0 32))))
;                  (vec-shl
;                   a
;                   (x8 (sca-add  (int32_t  b_imm32)  (int32_t (bv 1 32)))))))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;              (fpir:i64x4
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   b
;                   (x4 (int64_t (bv 0 64))))
;                  (x4 (int64_t (bv 1 64)))
;                  (x4 (int64_t (bv 0 64))))
;                  (vec-shl
;                   a
;                   (vec-add
;                    b
;                    (x4 (int64_t (bv 1 64)))))))))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;              (fpir:i64x4
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 (x4 (int64_t b_imm64)))
;                 (vec-bwand
;                  (vec-if
;                  (x4 (sca-lt  (int64_t  b_imm64)  (int64_t (bv 0 64))))
;                  (x4 (int64_t (bv 1 64)))
;                  (x4 (int64_t (bv 0 64))))
;                  (vec-shl
;                   a
;                   (x4 (sca-add  (int64_t  b_imm64)  (int64_t (bv 1 64)))))))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 b)
;                (vec-bwand
;                 (x16 (uint8_t (bv 0 8)))
;                 (vec-shl
;                  a
;                  (vec-add
;                   b
;                   (x16 (uint8_t (bv 1 8)))))))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 (x16 (uint8_t b_imm8)))
;                (vec-bwand
;                 (x16 (uint8_t (bv 0 8)))
;                 (vec-shl
;                  a
;                  (x16 (sca-add  (uint8_t  b_imm8)  (uint8_t (bv 1 8)))))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 b)
;                (vec-bwand
;                 (x8 (uint16_t (bv 0 16)))
;                 (vec-shl
;                  a
;                  (vec-add
;                   b
;                   (x8 (uint16_t (bv 1 16)))))))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 (x8 (uint16_t b_imm16)))
;                (vec-bwand
;                 (x8 (uint16_t (bv 0 16)))
;                 (vec-shl
;                  a
;                  (x8 (sca-add  (uint16_t  b_imm16)  (uint16_t (bv 1 16)))))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 b)
;                (vec-bwand
;                 (x4 (uint32_t (bv 0 32)))
;                 (vec-shl
;                  a
;                  (vec-add
;                   b
;                   (x4 (uint32_t (bv 1 32)))))))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 (x4 (uint32_t b_imm32)))
;                (vec-bwand
;                 (x4 (uint32_t (bv 0 32)))
;                 (vec-shl
;                  a
;                  (x4 (sca-add  (uint32_t  b_imm32)  (uint32_t (bv 1 32)))))))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 b)
;                (vec-bwand
;                 (x2 (uint64_t (bv 0 64)))
;                 (vec-shl
;                  a
;                  (vec-add
;                   b
;                   (x2 (uint64_t (bv 1 64)))))))))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-add
;                (vec-shl
;                 a
;                 (x2 (uint64_t b_imm64)))
;                (vec-bwand
;                 (x2 (uint64_t (bv 0 64)))
;                 (vec-shl
;                  a
;                  (x2 (sca-add  (uint64_t  b_imm64)  (uint64_t (bv 1 64)))))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;              (fpir:i8x16
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   b
;                   (x16 (int8_t (bv 0 8))))
;                  (x16 (int8_t (bv 1 8)))
;                  (x16 (int8_t (bv 0 8))))
;                  (vec-shl
;                   a
;                   (vec-add
;                    b
;                    (x16 (int8_t (bv 1 8)))))))))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;              (fpir:i8x16
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 (x16 (int8_t b_imm8)))
;                 (vec-bwand
;                  (vec-if
;                  (x16 (sca-lt  (int8_t  b_imm8)  (int8_t (bv 0 8))))
;                  (x16 (int8_t (bv 1 8)))
;                  (x16 (int8_t (bv 0 8))))
;                  (vec-shl
;                   a
;                   (x16 (sca-add  (int8_t  b_imm8)  (int8_t (bv 1 8)))))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;              (fpir:i16x8
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   b
;                   (x8 (int16_t (bv 0 16))))
;                  (x8 (int16_t (bv 1 16)))
;                  (x8 (int16_t (bv 0 16))))
;                  (vec-shl
;                   a
;                   (vec-add
;                    b
;                    (x8 (int16_t (bv 1 16)))))))))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;              (fpir:i16x8
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 (x8 (int16_t b_imm16)))
;                 (vec-bwand
;                  (vec-if
;                  (x8 (sca-lt  (int16_t  b_imm16)  (int16_t (bv 0 16))))
;                  (x8 (int16_t (bv 1 16)))
;                  (x8 (int16_t (bv 0 16))))
;                  (vec-shl
;                   a
;                   (x8 (sca-add  (int16_t  b_imm16)  (int16_t (bv 1 16)))))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;              (fpir:i32x4
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   b
;                   (x4 (int32_t (bv 0 32))))
;                  (x4 (int32_t (bv 1 32)))
;                  (x4 (int32_t (bv 0 32))))
;                  (vec-shl
;                   a
;                   (vec-add
;                    b
;                    (x4 (int32_t (bv 1 32)))))))))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;              (fpir:i32x4
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 (x4 (int32_t b_imm32)))
;                 (vec-bwand
;                  (vec-if
;                  (x4 (sca-lt  (int32_t  b_imm32)  (int32_t (bv 0 32))))
;                  (x4 (int32_t (bv 1 32)))
;                  (x4 (int32_t (bv 0 32))))
;                  (vec-shl
;                   a
;                   (x4 (sca-add  (int32_t  b_imm32)  (int32_t (bv 1 32)))))))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;              (fpir:i64x2
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   b
;                   (x2 (int64_t (bv 0 64))))
;                  (x2 (int64_t (bv 1 64)))
;                  (x2 (int64_t (bv 0 64))))
;                  (vec-shl
;                   a
;                   (vec-add
;                    b
;                    (x2 (int64_t (bv 1 64)))))))))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;              (fpir:i64x2
;               (halide:interpret
;                (vec-add
;                (vec-shl
;                 a
;                 (x2 (int64_t b_imm64)))
;                 (vec-bwand
;                  (vec-if
;                  (x2 (sca-lt  (int64_t  b_imm64)  (int64_t (bv 0 64))))
;                  (x2 (int64_t (bv 1 64)))
;                  (x2 (int64_t (bv 0 64))))
;                  (vec-shl
;                   a
;                   (x2 (sca-add  (int64_t  b_imm64)  (int64_t (bv 1 64)))))))))]

;         [(_ _) (assert #f "infeasible in interpreting shl_r")])]

;     [(fpir:shl_w a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-shl
;                (uint16x16
;                 a)
;                (uint16x16
;                 b))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-shl
;                (uint16x16
;                 a)
;                (x16 (uint16x1 (uint8_t b_imm8))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-shl
;                (uint32x8
;                 a)
;                (uint32x8
;                 b))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-shl
;                (uint32x8
;                 a)
;                (x8 (uint32x1 (uint16_t b_imm16))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-shl
;                (uint64x4
;                 a)
;                (uint64x4
;                 b))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-shl
;                (uint64x4
;                 a)
;                (x4 (uint64x1 (uint32_t b_imm32))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-shl
;                (int16x16
;                 a)
;                (int16x16
;                 b))))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-shl
;                (int16x16
;                 a)
;                (x16 (int16x1 (int8_t b_imm8))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-shl
;                (int32x8
;                 a)
;                (int32x8
;                 b))))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-shl
;                (int32x8
;                 a)
;                (x8 (int32x1 (int16_t b_imm16))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-shl
;                (int64x4
;                 a)
;                (int64x4
;                 b))))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-shl
;                (int64x4
;                 a)
;                (x4 (int64x1 (int32_t b_imm32))))))]

;         [(_ _) (assert #f "infeasible in interpreting shl_w")])]

;     [(fpir:shr a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-shr
;                a
;                (x32 (uint8_t b_imm8)))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-shr
;                a
;                (x16 (uint16_t b_imm16)))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-shr
;                a
;                (x8 (uint32_t b_imm32)))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-shr
;                a
;                (x4 (uint64_t b_imm64)))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-shr
;                a
;                (x32 (int8_t b_imm8)))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-shr
;                a
;                (x16 (int16_t b_imm16)))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-shr
;                a
;                (x8 (int32_t b_imm32)))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-shr
;                a
;                (x4 (int64_t b_imm64)))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-shr
;                a
;                (x16 (uint8_t b_imm8)))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-shr
;                a
;                (x8 (uint16_t b_imm16)))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-shr
;                a
;                (x4 (uint32_t b_imm32)))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-shr
;                a
;                (x2 (uint64_t b_imm64)))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-shr
;                a
;                (x16 (int8_t b_imm8)))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-shr
;                a
;                (x8 (int16_t b_imm16)))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-shr
;                a
;                (x4 (int32_t b_imm32)))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-shr
;                a
;                b)))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-shr
;                a
;                (x2 (int64_t b_imm64)))))]

;         [(_ _) (assert #f "infeasible in interpreting shr")])]

;     [(fpir:shr_r a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;              (fpir:u8x32
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x32 (uint8_t (bv 0 8)))
;                   b)
;                  (x32 (uint8_t (bv 1 8)))
;                  (x32 (uint8_t (bv 0 8))))
;                  (vec-shr
;                   a
;                   (vec-sub
;                    b
;                    (x32 (uint8_t (bv 1 8)))))))))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;              (fpir:u8x32
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x32 (uint8_t b_imm8)))
;                 (vec-bwand
;                  (vec-if
;                  (x32 (sca-lt  (uint8_t (bv 0 8))  (uint8_t  b_imm8)))
;                  (x32 (uint8_t (bv 1 8)))
;                  (x32 (uint8_t (bv 0 8))))
;                  (vec-shr
;                   a
;                   (x32 (sca-sub  (uint8_t  b_imm8)  (uint8_t (bv 1 8)))))))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;              (fpir:u16x16
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x16 (uint16_t (bv 0 16)))
;                   b)
;                  (x16 (uint16_t (bv 1 16)))
;                  (x16 (uint16_t (bv 0 16))))
;                  (vec-shr
;                   a
;                   (vec-sub
;                    b
;                    (x16 (uint16_t (bv 1 16)))))))))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;              (fpir:u16x16
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x16 (uint16_t b_imm16)))
;                 (vec-bwand
;                  (vec-if
;                  (x16 (sca-lt  (uint16_t (bv 0 16))  (uint16_t  b_imm16)))
;                  (x16 (uint16_t (bv 1 16)))
;                  (x16 (uint16_t (bv 0 16))))
;                  (vec-shr
;                   a
;                   (x16 (sca-sub  (uint16_t  b_imm16)  (uint16_t (bv 1 16)))))))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;              (fpir:u32x8
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x8 (uint32_t (bv 0 32)))
;                   b)
;                  (x8 (uint32_t (bv 1 32)))
;                  (x8 (uint32_t (bv 0 32))))
;                  (vec-shr
;                   a
;                   (vec-sub
;                    b
;                    (x8 (uint32_t (bv 1 32)))))))))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;              (fpir:u32x8
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x8 (uint32_t b_imm32)))
;                 (vec-bwand
;                  (vec-if
;                  (x8 (sca-lt  (uint32_t (bv 0 32))  (uint32_t  b_imm32)))
;                  (x8 (uint32_t (bv 1 32)))
;                  (x8 (uint32_t (bv 0 32))))
;                  (vec-shr
;                   a
;                   (x8 (sca-sub  (uint32_t  b_imm32)  (uint32_t (bv 1 32)))))))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;              (fpir:u64x4
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x4 (uint64_t (bv 0 64)))
;                   b)
;                  (x4 (uint64_t (bv 1 64)))
;                  (x4 (uint64_t (bv 0 64))))
;                  (vec-shr
;                   a
;                   (vec-sub
;                    b
;                    (x4 (uint64_t (bv 1 64)))))))))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;              (fpir:u64x4
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x4 (uint64_t b_imm64)))
;                 (vec-bwand
;                  (vec-if
;                  (x4 (sca-lt  (uint64_t (bv 0 64))  (uint64_t  b_imm64)))
;                  (x4 (uint64_t (bv 1 64)))
;                  (x4 (uint64_t (bv 0 64))))
;                  (vec-shr
;                   a
;                   (x4 (sca-sub  (uint64_t  b_imm64)  (uint64_t (bv 1 64)))))))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;              (fpir:i8x32
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x32 (int8_t (bv 0 8)))
;                   b)
;                  (x32 (int8_t (bv 1 8)))
;                  (x32 (int8_t (bv 0 8))))
;                  (vec-shr
;                   a
;                   (vec-add
;                    b
;                    (x32 (int8_t (bv -1 8)))))))))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;              (fpir:i8x32
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x32 (int8_t b_imm8)))
;                 (vec-bwand
;                  (vec-if
;                  (x32 (sca-lt  (int8_t (bv 0 8))  (int8_t  b_imm8)))
;                  (x32 (int8_t (bv 1 8)))
;                  (x32 (int8_t (bv 0 8))))
;                  (vec-shr
;                   a
;                   (x32 (sca-add  (int8_t  b_imm8)  (int8_t (bv -1 8)))))))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;              (fpir:i16x16
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x16 (int16_t (bv 0 16)))
;                   b)
;                  (x16 (int16_t (bv 1 16)))
;                  (x16 (int16_t (bv 0 16))))
;                  (vec-shr
;                   a
;                   (vec-add
;                    b
;                    (x16 (int16_t (bv -1 16)))))))))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;              (fpir:i16x16
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x16 (int16_t b_imm16)))
;                 (vec-bwand
;                  (vec-if
;                  (x16 (sca-lt  (int16_t (bv 0 16))  (int16_t  b_imm16)))
;                  (x16 (int16_t (bv 1 16)))
;                  (x16 (int16_t (bv 0 16))))
;                  (vec-shr
;                   a
;                   (x16 (sca-add  (int16_t  b_imm16)  (int16_t (bv -1 16)))))))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;              (fpir:i32x8
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x8 (int32_t (bv 0 32)))
;                   b)
;                  (x8 (int32_t (bv 1 32)))
;                  (x8 (int32_t (bv 0 32))))
;                  (vec-shr
;                   a
;                   (vec-add
;                    b
;                    (x8 (int32_t (bv -1 32)))))))))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;              (fpir:i32x8
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x8 (int32_t b_imm32)))
;                 (vec-bwand
;                  (vec-if
;                  (x8 (sca-lt  (int32_t (bv 0 32))  (int32_t  b_imm32)))
;                  (x8 (int32_t (bv 1 32)))
;                  (x8 (int32_t (bv 0 32))))
;                  (vec-shr
;                   a
;                   (x8 (sca-add  (int32_t  b_imm32)  (int32_t (bv -1 32)))))))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;              (fpir:i64x4
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x4 (int64_t (bv 0 64)))
;                   b)
;                  (x4 (int64_t (bv 1 64)))
;                  (x4 (int64_t (bv 0 64))))
;                  (vec-shr
;                   a
;                   (vec-add
;                    b
;                    (x4 (int64_t (bv -1 64)))))))))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;              (fpir:i64x4
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x4 (int64_t b_imm64)))
;                 (vec-bwand
;                  (vec-if
;                  (x4 (sca-lt  (int64_t (bv 0 64))  (int64_t  b_imm64)))
;                  (x4 (int64_t (bv 1 64)))
;                  (x4 (int64_t (bv 0 64))))
;                  (vec-shr
;                   a
;                   (x4 (sca-add  (int64_t  b_imm64)  (int64_t (bv -1 64)))))))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;              (fpir:u8x16
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x16 (uint8_t (bv 0 8)))
;                   b)
;                  (x16 (uint8_t (bv 1 8)))
;                  (x16 (uint8_t (bv 0 8))))
;                  (vec-shr
;                   a
;                   (vec-sub
;                    b
;                    (x16 (uint8_t (bv 1 8)))))))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;              (fpir:u8x16
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x16 (uint8_t b_imm8)))
;                 (vec-bwand
;                  (vec-if
;                  (x16 (sca-lt  (uint8_t (bv 0 8))  (uint8_t  b_imm8)))
;                  (x16 (uint8_t (bv 1 8)))
;                  (x16 (uint8_t (bv 0 8))))
;                  (vec-shr
;                   a
;                   (x16 (sca-sub  (uint8_t  b_imm8)  (uint8_t (bv 1 8)))))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;              (fpir:u16x8
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x8 (uint16_t (bv 0 16)))
;                   b)
;                  (x8 (uint16_t (bv 1 16)))
;                  (x8 (uint16_t (bv 0 16))))
;                  (vec-shr
;                   a
;                   (vec-sub
;                    b
;                    (x8 (uint16_t (bv 1 16)))))))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;              (fpir:u16x8
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x8 (uint16_t b_imm16)))
;                 (vec-bwand
;                  (vec-if
;                  (x8 (sca-lt  (uint16_t (bv 0 16))  (uint16_t  b_imm16)))
;                  (x8 (uint16_t (bv 1 16)))
;                  (x8 (uint16_t (bv 0 16))))
;                  (vec-shr
;                   a
;                   (x8 (sca-sub  (uint16_t  b_imm16)  (uint16_t (bv 1 16)))))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;              (fpir:u32x4
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x4 (uint32_t (bv 0 32)))
;                   b)
;                  (x4 (uint32_t (bv 1 32)))
;                  (x4 (uint32_t (bv 0 32))))
;                  (vec-shr
;                   a
;                   (vec-sub
;                    b
;                    (x4 (uint32_t (bv 1 32)))))))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;              (fpir:u32x4
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x4 (uint32_t b_imm32)))
;                 (vec-bwand
;                  (vec-if
;                  (x4 (sca-lt  (uint32_t (bv 0 32))  (uint32_t  b_imm32)))
;                  (x4 (uint32_t (bv 1 32)))
;                  (x4 (uint32_t (bv 0 32))))
;                  (vec-shr
;                   a
;                   (x4 (sca-sub  (uint32_t  b_imm32)  (uint32_t (bv 1 32)))))))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;              (fpir:u64x2
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x2 (uint64_t (bv 0 64)))
;                   b)
;                  (x2 (uint64_t (bv 1 64)))
;                  (x2 (uint64_t (bv 0 64))))
;                  (vec-shr
;                   a
;                   (vec-sub
;                    b
;                    (x2 (uint64_t (bv 1 64)))))))))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;              (fpir:u64x2
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x2 (uint64_t b_imm64)))
;                 (vec-bwand
;                  (vec-if
;                  (x2 (sca-lt  (uint64_t (bv 0 64))  (uint64_t  b_imm64)))
;                  (x2 (uint64_t (bv 1 64)))
;                  (x2 (uint64_t (bv 0 64))))
;                  (vec-shr
;                   a
;                   (x2 (sca-sub  (uint64_t  b_imm64)  (uint64_t (bv 1 64)))))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;              (fpir:i8x16
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x16 (int8_t (bv 0 8)))
;                   b)
;                  (x16 (int8_t (bv 1 8)))
;                  (x16 (int8_t (bv 0 8))))
;                  (vec-shr
;                   a
;                   (vec-add
;                    b
;                    (x16 (int8_t (bv -1 8)))))))))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;              (fpir:i8x16
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x16 (int8_t b_imm8)))
;                 (vec-bwand
;                  (vec-if
;                  (x16 (sca-lt  (int8_t (bv 0 8))  (int8_t  b_imm8)))
;                  (x16 (int8_t (bv 1 8)))
;                  (x16 (int8_t (bv 0 8))))
;                  (vec-shr
;                   a
;                   (x16 (sca-add  (int8_t  b_imm8)  (int8_t (bv -1 8)))))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;              (fpir:i16x8
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x8 (int16_t (bv 0 16)))
;                   b)
;                  (x8 (int16_t (bv 1 16)))
;                  (x8 (int16_t (bv 0 16))))
;                  (vec-shr
;                   a
;                   (vec-add
;                    b
;                    (x8 (int16_t (bv -1 16)))))))))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;              (fpir:i16x8
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x8 (int16_t b_imm16)))
;                 (vec-bwand
;                  (vec-if
;                  (x8 (sca-lt  (int16_t (bv 0 16))  (int16_t  b_imm16)))
;                  (x8 (int16_t (bv 1 16)))
;                  (x8 (int16_t (bv 0 16))))
;                  (vec-shr
;                   a
;                   (x8 (sca-add  (int16_t  b_imm16)  (int16_t (bv -1 16)))))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;              (fpir:i32x4
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x4 (int32_t (bv 0 32)))
;                   b)
;                  (x4 (int32_t (bv 1 32)))
;                  (x4 (int32_t (bv 0 32))))
;                  (vec-shr
;                   a
;                   (vec-add
;                    b
;                    (x4 (int32_t (bv -1 32)))))))))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;              (fpir:i32x4
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x4 (int32_t b_imm32)))
;                 (vec-bwand
;                  (vec-if
;                  (x4 (sca-lt  (int32_t (bv 0 32))  (int32_t  b_imm32)))
;                  (x4 (int32_t (bv 1 32)))
;                  (x4 (int32_t (bv 0 32))))
;                  (vec-shr
;                   a
;                   (x4 (sca-add  (int32_t  b_imm32)  (int32_t (bv -1 32)))))))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;              (fpir:i64x2
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 b)
;                 (vec-bwand
;                  (vec-if
;                  (vec-lt
;                   (x2 (int64_t (bv 0 64)))
;                   b)
;                  (x2 (int64_t (bv 1 64)))
;                  (x2 (int64_t (bv 0 64))))
;                  (vec-shr
;                   a
;                   (vec-add
;                    b
;                    (x2 (int64_t (bv -1 64)))))))))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;              (fpir:i64x2
;               (halide:interpret
;                (vec-add
;                (vec-shr
;                 a
;                 (x2 (int64_t b_imm64)))
;                 (vec-bwand
;                  (vec-if
;                  (x2 (sca-lt  (int64_t (bv 0 64))  (int64_t  b_imm64)))
;                  (x2 (int64_t (bv 1 64)))
;                  (x2 (int64_t (bv 0 64))))
;                  (vec-shr
;                   a
;                   (x2 (sca-add  (int64_t  b_imm64)  (int64_t (bv -1 64)))))))))]

;         [(_ _) (assert #f "infeasible in interpreting shr_r")])]

;     [(fpir:shr_w a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-shr
;                (uint16x16
;                 a)
;                (uint16x16
;                 b))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-shr
;                (uint16x16
;                 a)
;                (x16 (uint16x1 (uint8_t b_imm8))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-shr
;                (uint32x8
;                 a)
;                (uint32x8
;                 b))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-shr
;                (uint32x8
;                 a)
;                (x8 (uint32x1 (uint16_t b_imm16))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-shr
;                (uint64x4
;                 a)
;                (uint64x4
;                 b))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-shr
;                (uint64x4
;                 a)
;                (x4 (uint64x1 (uint32_t b_imm32))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-shr
;                (int16x16
;                 a)
;                (int16x16
;                 b))))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-shr
;                (int16x16
;                 a)
;                (x16 (int16x1 (int8_t b_imm8))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-shr
;                (int32x8
;                 a)
;                (int32x8
;                 b))))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-shr
;                (int32x8
;                 a)
;                (x8 (int32x1 (int16_t b_imm16))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-shr
;                (int64x4
;                 a)
;                (int64x4
;                 b))))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-shr
;                (int64x4
;                 a)
;                (x4 (int64x1 (int32_t b_imm32))))))]

;         [(_ _) (assert #f "infeasible in interpreting shr_w")])]

;     [(fpir:sub a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-sub
;                a
;                (x32 (uint8_t b_imm8)))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-sub
;                a
;                (x16 (uint16_t b_imm16)))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-sub
;                a
;                (x8 (uint32_t b_imm32)))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-sub
;                a
;                (x4 (uint64_t b_imm64)))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-sub
;                a
;                (x32 (int8_t b_imm8)))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-sub
;                a
;                (x16 (int16_t b_imm16)))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-sub
;                a
;                (x8 (int32_t b_imm32)))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-sub
;                a
;                (x4 (int64_t b_imm64)))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-sub
;                a
;                (x16 (uint8_t b_imm8)))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-sub
;                a
;                (x8 (uint16_t b_imm16)))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-sub
;                a
;                (x4 (uint32_t b_imm32)))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-sub
;                a
;                (x2 (uint64_t b_imm64)))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-sub
;                a
;                (x16 (int8_t b_imm8)))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-sub
;                a
;                (x8 (int16_t b_imm16)))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-sub
;                a
;                (x4 (int32_t b_imm32)))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-sub
;                a
;                b)))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-sub
;                a
;                (x2 (int64_t b_imm64)))))]

;         [(_ _) (assert #f "infeasible in interpreting sub")])]

;     [(fpir:sub_h a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x32 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  b
;                  (x32 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x32 (uint8_t (bv 1 8))))
;                   (vec-bwand
;                    a
;                    (x32 (uint8_t (bv 1 8)))))
;                  (x32 (uint8_t (bv 1 8))))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x32 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  (x32 (uint8_t b_imm8))
;                  (x32 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x32 (uint8_t b_imm8))
;                    (x32 (uint8_t (bv 1 8))))
;                   (vec-bwand
;                    a
;                    (x32 (uint8_t (bv 1 8)))))
;                  (x32 (uint8_t (bv 1 8))))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  b
;                  (x16 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x16 (uint16_t (bv 1 16))))
;                   (vec-bwand
;                    a
;                    (x16 (uint16_t (bv 1 16)))))
;                  (x16 (uint16_t (bv 1 16))))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  (x16 (uint16_t b_imm16))
;                  (x16 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x16 (uint16_t b_imm16))
;                    (x16 (uint16_t (bv 1 16))))
;                   (vec-bwand
;                    a
;                    (x16 (uint16_t (bv 1 16)))))
;                  (x16 (uint16_t (bv 1 16))))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  b
;                  (x8 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x8 (uint32_t (bv 1 32))))
;                   (vec-bwand
;                    a
;                    (x8 (uint32_t (bv 1 32)))))
;                  (x8 (uint32_t (bv 1 32))))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  (x8 (uint32_t b_imm32))
;                  (x8 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x8 (uint32_t b_imm32))
;                    (x8 (uint32_t (bv 1 32))))
;                   (vec-bwand
;                    a
;                    (x8 (uint32_t (bv 1 32)))))
;                  (x8 (uint32_t (bv 1 32))))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  b
;                  (x4 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x4 (uint64_t (bv 1 64))))
;                   (vec-bwand
;                    a
;                    (x4 (uint64_t (bv 1 64)))))
;                  (x4 (uint64_t (bv 1 64))))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  (x4 (uint64_t b_imm64))
;                  (x4 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x4 (uint64_t b_imm64))
;                    (x4 (uint64_t (bv 1 64))))
;                   (vec-bwand
;                    a
;                    (x4 (uint64_t (bv 1 64)))))
;                  (x4 (uint64_t (bv 1 64))))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x32 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  b
;                  (x32 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x32 (int8_t (bv 1 8))))
;                   (vec-bwand
;                    a
;                    (x32 (int8_t (bv 1 8)))))
;                  (x32 (int8_t (bv 1 8))))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x32 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  (x32 (int8_t b_imm8))
;                  (x32 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x32 (int8_t b_imm8))
;                    (x32 (int8_t (bv 1 8))))
;                   (vec-bwand
;                    a
;                    (x32 (int8_t (bv 1 8)))))
;                  (x32 (int8_t (bv 1 8))))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  b
;                  (x16 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x16 (int16_t (bv 1 16))))
;                   (vec-bwand
;                    a
;                    (x16 (int16_t (bv 1 16)))))
;                  (x16 (int16_t (bv 1 16))))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  (x16 (int16_t b_imm16))
;                  (x16 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x16 (int16_t b_imm16))
;                    (x16 (int16_t (bv 1 16))))
;                   (vec-bwand
;                    a
;                    (x16 (int16_t (bv 1 16)))))
;                  (x16 (int16_t (bv 1 16))))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  b
;                  (x8 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x8 (int32_t (bv 1 32))))
;                   (vec-bwand
;                    a
;                    (x8 (int32_t (bv 1 32)))))
;                  (x8 (int32_t (bv 1 32))))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  (x8 (int32_t b_imm32))
;                  (x8 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x8 (int32_t b_imm32))
;                    (x8 (int32_t (bv 1 32))))
;                   (vec-bwand
;                    a
;                    (x8 (int32_t (bv 1 32)))))
;                  (x8 (int32_t (bv 1 32))))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  b
;                  (x4 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x4 (int64_t (bv 1 64))))
;                   (vec-bwand
;                    a
;                    (x4 (int64_t (bv 1 64)))))
;                  (x4 (int64_t (bv 1 64))))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  (x4 (int64_t b_imm64))
;                  (x4 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x4 (int64_t b_imm64))
;                    (x4 (int64_t (bv 1 64))))
;                   (vec-bwand
;                    a
;                    (x4 (int64_t (bv 1 64)))))
;                  (x4 (int64_t (bv 1 64))))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  b
;                  (x16 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x16 (uint8_t (bv 1 8))))
;                   (vec-bwand
;                    a
;                    (x16 (uint8_t (bv 1 8)))))
;                  (x16 (uint8_t (bv 1 8))))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  (x16 (uint8_t b_imm8))
;                  (x16 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x16 (uint8_t b_imm8))
;                    (x16 (uint8_t (bv 1 8))))
;                   (vec-bwand
;                    a
;                    (x16 (uint8_t (bv 1 8)))))
;                  (x16 (uint8_t (bv 1 8))))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  b
;                  (x8 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x8 (uint16_t (bv 1 16))))
;                   (vec-bwand
;                    a
;                    (x8 (uint16_t (bv 1 16)))))
;                  (x8 (uint16_t (bv 1 16))))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  (x8 (uint16_t b_imm16))
;                  (x8 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x8 (uint16_t b_imm16))
;                    (x8 (uint16_t (bv 1 16))))
;                   (vec-bwand
;                    a
;                    (x8 (uint16_t (bv 1 16)))))
;                  (x8 (uint16_t (bv 1 16))))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  b
;                  (x4 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x4 (uint32_t (bv 1 32))))
;                   (vec-bwand
;                    a
;                    (x4 (uint32_t (bv 1 32)))))
;                  (x4 (uint32_t (bv 1 32))))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  (x4 (uint32_t b_imm32))
;                  (x4 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x4 (uint32_t b_imm32))
;                    (x4 (uint32_t (bv 1 32))))
;                   (vec-bwand
;                    a
;                    (x4 (uint32_t (bv 1 32)))))
;                  (x4 (uint32_t (bv 1 32))))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x2 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  b
;                  (x2 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x2 (uint64_t (bv 1 64))))
;                   (vec-bwand
;                    a
;                    (x2 (uint64_t (bv 1 64)))))
;                  (x2 (uint64_t (bv 1 64))))
;                 (x2 (uint64_t (bv 1 64)))))))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x2 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  (x2 (uint64_t b_imm64))
;                  (x2 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x2 (uint64_t b_imm64))
;                    (x2 (uint64_t (bv 1 64))))
;                   (vec-bwand
;                    a
;                    (x2 (uint64_t (bv 1 64)))))
;                  (x2 (uint64_t (bv 1 64))))
;                 (x2 (uint64_t (bv 1 64)))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  b
;                  (x16 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x16 (int8_t (bv 1 8))))
;                   (vec-bwand
;                    a
;                    (x16 (int8_t (bv 1 8)))))
;                  (x16 (int8_t (bv 1 8))))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  (x16 (int8_t b_imm8))
;                  (x16 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x16 (int8_t b_imm8))
;                    (x16 (int8_t (bv 1 8))))
;                   (vec-bwand
;                    a
;                    (x16 (int8_t (bv 1 8)))))
;                  (x16 (int8_t (bv 1 8))))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  b
;                  (x8 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x8 (int16_t (bv 1 16))))
;                   (vec-bwand
;                    a
;                    (x8 (int16_t (bv 1 16)))))
;                  (x8 (int16_t (bv 1 16))))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  (x8 (int16_t b_imm16))
;                  (x8 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x8 (int16_t b_imm16))
;                    (x8 (int16_t (bv 1 16))))
;                   (vec-bwand
;                    a
;                    (x8 (int16_t (bv 1 16)))))
;                  (x8 (int16_t (bv 1 16))))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  b
;                  (x4 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x4 (int32_t (bv 1 32))))
;                   (vec-bwand
;                    a
;                    (x4 (int32_t (bv 1 32)))))
;                  (x4 (int32_t (bv 1 32))))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  (x4 (int32_t b_imm32))
;                  (x4 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x4 (int32_t b_imm32))
;                    (x4 (int32_t (bv 1 32))))
;                   (vec-bwand
;                    a
;                    (x4 (int32_t (bv 1 32)))))
;                  (x4 (int32_t (bv 1 32))))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x2 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  b
;                  (x2 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    b
;                    (x2 (int64_t (bv 1 64))))
;                   (vec-bwand
;                    a
;                    (x2 (int64_t (bv 1 64)))))
;                  (x2 (int64_t (bv 1 64))))
;                 (x2 (uint64_t (bv 1 64)))))))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-sub
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x2 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  (x2 (int64_t b_imm64))
;                  (x2 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    (x2 (int64_t b_imm64))
;                    (x2 (int64_t (bv 1 64))))
;                   (vec-bwand
;                    a
;                    (x2 (int64_t (bv 1 64)))))
;                  (x2 (int64_t (bv 1 64))))
;                 (x2 (uint64_t (bv 1 64)))))))]

;         [(_ _) (assert #f "infeasible in interpreting sub_h")])]

;     [(fpir:sub_rh a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x32 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  b
;                  (x32 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x32 (uint8_t (bv 1 8))))
;                   (vec-bwand
;                    b
;                    (x32 (uint8_t (bv 1 8)))))
;                  (x32 (uint8_t (bv 1 8))))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x32 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  (x32 (uint8_t b_imm8))
;                  (x32 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x32 (uint8_t (bv 1 8))))
;                   (vec-bwand
;                    (x32 (uint8_t b_imm8))
;                    (x32 (uint8_t (bv 1 8)))))
;                  (x32 (uint8_t (bv 1 8))))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  b
;                  (x16 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x16 (uint16_t (bv 1 16))))
;                   (vec-bwand
;                    b
;                    (x16 (uint16_t (bv 1 16)))))
;                  (x16 (uint16_t (bv 1 16))))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  (x16 (uint16_t b_imm16))
;                  (x16 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x16 (uint16_t (bv 1 16))))
;                   (vec-bwand
;                    (x16 (uint16_t b_imm16))
;                    (x16 (uint16_t (bv 1 16)))))
;                  (x16 (uint16_t (bv 1 16))))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  b
;                  (x8 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x8 (uint32_t (bv 1 32))))
;                   (vec-bwand
;                    b
;                    (x8 (uint32_t (bv 1 32)))))
;                  (x8 (uint32_t (bv 1 32))))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  (x8 (uint32_t b_imm32))
;                  (x8 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x8 (uint32_t (bv 1 32))))
;                   (vec-bwand
;                    (x8 (uint32_t b_imm32))
;                    (x8 (uint32_t (bv 1 32)))))
;                  (x8 (uint32_t (bv 1 32))))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  b
;                  (x4 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x4 (uint64_t (bv 1 64))))
;                   (vec-bwand
;                    b
;                    (x4 (uint64_t (bv 1 64)))))
;                  (x4 (uint64_t (bv 1 64))))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  (x4 (uint64_t b_imm64))
;                  (x4 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x4 (uint64_t (bv 1 64))))
;                   (vec-bwand
;                    (x4 (uint64_t b_imm64))
;                    (x4 (uint64_t (bv 1 64)))))
;                  (x4 (uint64_t (bv 1 64))))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x32 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  b
;                  (x32 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x32 (int8_t (bv 1 8))))
;                   (vec-bwand
;                    b
;                    (x32 (int8_t (bv 1 8)))))
;                  (x32 (int8_t (bv 1 8))))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x32 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  (x32 (int8_t b_imm8))
;                  (x32 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x32 (int8_t (bv 1 8))))
;                   (vec-bwand
;                    (x32 (int8_t b_imm8))
;                    (x32 (int8_t (bv 1 8)))))
;                  (x32 (int8_t (bv 1 8))))
;                 (x32 (uint8_t (bv 1 8)))))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  b
;                  (x16 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x16 (int16_t (bv 1 16))))
;                   (vec-bwand
;                    b
;                    (x16 (int16_t (bv 1 16)))))
;                  (x16 (int16_t (bv 1 16))))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  (x16 (int16_t b_imm16))
;                  (x16 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x16 (int16_t (bv 1 16))))
;                   (vec-bwand
;                    (x16 (int16_t b_imm16))
;                    (x16 (int16_t (bv 1 16)))))
;                  (x16 (int16_t (bv 1 16))))
;                 (x16 (uint16_t (bv 1 16)))))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  b
;                  (x8 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x8 (int32_t (bv 1 32))))
;                   (vec-bwand
;                    b
;                    (x8 (int32_t (bv 1 32)))))
;                  (x8 (int32_t (bv 1 32))))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  (x8 (int32_t b_imm32))
;                  (x8 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x8 (int32_t (bv 1 32))))
;                   (vec-bwand
;                    (x8 (int32_t b_imm32))
;                    (x8 (int32_t (bv 1 32)))))
;                  (x8 (int32_t (bv 1 32))))
;                 (x8 (uint32_t (bv 1 32)))))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  b
;                  (x4 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x4 (int64_t (bv 1 64))))
;                   (vec-bwand
;                    b
;                    (x4 (int64_t (bv 1 64)))))
;                  (x4 (int64_t (bv 1 64))))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  (x4 (int64_t b_imm64))
;                  (x4 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x4 (int64_t (bv 1 64))))
;                   (vec-bwand
;                    (x4 (int64_t b_imm64))
;                    (x4 (int64_t (bv 1 64)))))
;                  (x4 (int64_t (bv 1 64))))
;                 (x4 (uint64_t (bv 1 64)))))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  b
;                  (x16 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x16 (uint8_t (bv 1 8))))
;                   (vec-bwand
;                    b
;                    (x16 (uint8_t (bv 1 8)))))
;                  (x16 (uint8_t (bv 1 8))))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  (x16 (uint8_t b_imm8))
;                  (x16 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x16 (uint8_t (bv 1 8))))
;                   (vec-bwand
;                    (x16 (uint8_t b_imm8))
;                    (x16 (uint8_t (bv 1 8)))))
;                  (x16 (uint8_t (bv 1 8))))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  b
;                  (x8 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x8 (uint16_t (bv 1 16))))
;                   (vec-bwand
;                    b
;                    (x8 (uint16_t (bv 1 16)))))
;                  (x8 (uint16_t (bv 1 16))))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  (x8 (uint16_t b_imm16))
;                  (x8 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x8 (uint16_t (bv 1 16))))
;                   (vec-bwand
;                    (x8 (uint16_t b_imm16))
;                    (x8 (uint16_t (bv 1 16)))))
;                  (x8 (uint16_t (bv 1 16))))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  b
;                  (x4 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x4 (uint32_t (bv 1 32))))
;                   (vec-bwand
;                    b
;                    (x4 (uint32_t (bv 1 32)))))
;                  (x4 (uint32_t (bv 1 32))))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  (x4 (uint32_t b_imm32))
;                  (x4 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x4 (uint32_t (bv 1 32))))
;                   (vec-bwand
;                    (x4 (uint32_t b_imm32))
;                    (x4 (uint32_t (bv 1 32)))))
;                  (x4 (uint32_t (bv 1 32))))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x2 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  b
;                  (x2 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x2 (uint64_t (bv 1 64))))
;                   (vec-bwand
;                    b
;                    (x2 (uint64_t (bv 1 64)))))
;                  (x2 (uint64_t (bv 1 64))))
;                 (x2 (uint64_t (bv 1 64)))))))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x2 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  (x2 (uint64_t b_imm64))
;                  (x2 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x2 (uint64_t (bv 1 64))))
;                   (vec-bwand
;                    (x2 (uint64_t b_imm64))
;                    (x2 (uint64_t (bv 1 64)))))
;                  (x2 (uint64_t (bv 1 64))))
;                 (x2 (uint64_t (bv 1 64)))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  b
;                  (x16 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x16 (int8_t (bv 1 8))))
;                   (vec-bwand
;                    b
;                    (x16 (int8_t (bv 1 8)))))
;                  (x16 (int8_t (bv 1 8))))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x16 (uint8_t (bv 1 8))))
;                 (vec-shr
;                  (x16 (int8_t b_imm8))
;                  (x16 (uint8_t (bv 1 8)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x16 (int8_t (bv 1 8))))
;                   (vec-bwand
;                    (x16 (int8_t b_imm8))
;                    (x16 (int8_t (bv 1 8)))))
;                  (x16 (int8_t (bv 1 8))))
;                 (x16 (uint8_t (bv 1 8)))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  b
;                  (x8 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x8 (int16_t (bv 1 16))))
;                   (vec-bwand
;                    b
;                    (x8 (int16_t (bv 1 16)))))
;                  (x8 (int16_t (bv 1 16))))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x8 (uint16_t (bv 1 16))))
;                 (vec-shr
;                  (x8 (int16_t b_imm16))
;                  (x8 (uint16_t (bv 1 16)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x8 (int16_t (bv 1 16))))
;                   (vec-bwand
;                    (x8 (int16_t b_imm16))
;                    (x8 (int16_t (bv 1 16)))))
;                  (x8 (int16_t (bv 1 16))))
;                 (x8 (uint16_t (bv 1 16)))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  b
;                  (x4 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x4 (int32_t (bv 1 32))))
;                   (vec-bwand
;                    b
;                    (x4 (int32_t (bv 1 32)))))
;                  (x4 (int32_t (bv 1 32))))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x4 (uint32_t (bv 1 32))))
;                 (vec-shr
;                  (x4 (int32_t b_imm32))
;                  (x4 (uint32_t (bv 1 32)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x4 (int32_t (bv 1 32))))
;                   (vec-bwand
;                    (x4 (int32_t b_imm32))
;                    (x4 (int32_t (bv 1 32)))))
;                  (x4 (int32_t (bv 1 32))))
;                 (x4 (uint32_t (bv 1 32)))))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x2 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  b
;                  (x2 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x2 (int64_t (bv 1 64))))
;                   (vec-bwand
;                    b
;                    (x2 (int64_t (bv 1 64)))))
;                  (x2 (int64_t (bv 1 64))))
;                 (x2 (uint64_t (bv 1 64)))))))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-add
;                (vec-sub
;                 (vec-shr
;                  a
;                  (x2 (uint64_t (bv 1 64))))
;                 (vec-shr
;                  (x2 (int64_t b_imm64))
;                  (x2 (uint64_t (bv 1 64)))))
;                (vec-shr
;                 (vec-add
;                  (vec-sub
;                   (vec-bwand
;                    a
;                    (x2 (int64_t (bv 1 64))))
;                   (vec-bwand
;                    (x2 (int64_t b_imm64))
;                    (x2 (int64_t (bv 1 64)))))
;                  (x2 (int64_t (bv 1 64))))
;                 (x2 (uint64_t (bv 1 64)))))))]

;         [(_ _) (assert #f "infeasible in interpreting sub_rh")])]

;     [(fpir:sub_s a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x32 a) (fpir:u8x32 b))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 b)
;                b)))]
;         [((fpir:u8x32 a) (uint8_t b_imm8))
;             (fpir:u8x32
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 (x32 (uint8_t b_imm8)))
;                (x32 (uint8_t b_imm8)))))]
;         [((fpir:u16x16 a) (fpir:u16x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 b)
;                b)))]
;         [((fpir:u16x16 a) (uint16_t b_imm16))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 (x16 (uint16_t b_imm16)))
;                (x16 (uint16_t b_imm16)))))]
;         [((fpir:u32x8 a) (fpir:u32x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 b)
;                b)))]
;         [((fpir:u32x8 a) (uint32_t b_imm32))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 (x8 (uint32_t b_imm32)))
;                (x8 (uint32_t b_imm32)))))]
;         [((fpir:u64x4 a) (fpir:u64x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 b)
;                b)))]
;         [((fpir:u64x4 a) (uint64_t b_imm64))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 (x4 (uint64_t b_imm64)))
;                (x4 (uint64_t b_imm64)))))]
;         [((fpir:i8x32 a) (fpir:i8x32 b))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  (vec-add
;                   (vec-min
;                    b
;                    (x32 (int8_t (bv 0 8))))
;                   (x32 (int8_t (bv 127 8))))
;                  a)
;                 (vec-add
;                  (vec-max
;                   b
;                   (x32 (int8_t (bv 0 8))))
;                  (x32 (int8_t (bv -128 8)))))
;                b)))]
;         [((fpir:i8x32 a) (int8_t b_imm8))
;             (fpir:i8x32
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  a
;                  (x32 (sca-add  (sca-min   (int8_t   b_imm8)   (int8_t (bv 0 8)))  (int8_t (bv 127 8)))))
;                 (x32 (sca-add  (sca-max   (int8_t   b_imm8)   (int8_t (bv 0 8)))  (int8_t (bv -128 8)))))
;                (x32 (int8_t b_imm8)))))]
;         [((fpir:i16x16 a) (fpir:i16x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  (vec-add
;                   (vec-min
;                    b
;                    (x16 (int16_t (bv 0 16))))
;                   (x16 (int16_t (bv 32767 16))))
;                  a)
;                 (vec-add
;                  (vec-max
;                   b
;                   (x16 (int16_t (bv 0 16))))
;                  (x16 (int16_t (bv -32768 16)))))
;                b)))]
;         [((fpir:i16x16 a) (int16_t b_imm16))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  a
;                  (x16 (sca-add  (sca-min   (int16_t   b_imm16)   (int16_t (bv 0 16)))  (int16_t (bv 32767 16)))))
;                 (x16 (sca-add  (sca-max   (int16_t   b_imm16)   (int16_t (bv 0 16)))  (int16_t (bv -32768 16)))))
;                (x16 (int16_t b_imm16)))))]
;         [((fpir:i32x8 a) (fpir:i32x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  (vec-add
;                   (vec-min
;                    b
;                    (x8 (int32_t (bv 0 32))))
;                   (x8 (int32_t (bv 2147483647 32))))
;                  a)
;                 (vec-add
;                  (vec-max
;                   b
;                   (x8 (int32_t (bv 0 32))))
;                  (x8 (int32_t (bv -2147483648 32)))))
;                b)))]
;         [((fpir:i32x8 a) (int32_t b_imm32))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  a
;                  (x8 (sca-add  (sca-min   (int32_t   b_imm32)   (int32_t (bv 0 32)))  (int32_t (bv 2147483647 32)))))
;                 (x8 (sca-add  (sca-max   (int32_t   b_imm32)   (int32_t (bv 0 32)))  (int32_t (bv -2147483648 32)))))
;                (x8 (int32_t b_imm32)))))]
;         [((fpir:i64x4 a) (fpir:i64x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  (vec-add
;                   (vec-min
;                    b
;                    (x4 (int64_t (bv 0 64))))
;                   (x4 (int64_t (bv 9223372036854775807 64))))
;                  a)
;                 (vec-add
;                  (vec-max
;                   b
;                   (x4 (int64_t (bv 0 64))))
;                  (x4 (int64_t (bv -9223372036854775808 64)))))
;                b)))]
;         [((fpir:i64x4 a) (int64_t b_imm64))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  a
;                  (x4 (sca-add  (sca-min   (int64_t   b_imm64)   (int64_t (bv 0 64)))  (int64_t (bv 9223372036854775807 64)))))
;                 (x4 (sca-add  (sca-max   (int64_t   b_imm64)   (int64_t (bv 0 64)))  (int64_t (bv -9223372036854775808 64)))))
;                (x4 (int64_t b_imm64)))))]
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 b)
;                b)))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u8x16
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 (x16 (uint8_t b_imm8)))
;                (x16 (uint8_t b_imm8)))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 b)
;                b)))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u16x8
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 (x8 (uint16_t b_imm16)))
;                (x8 (uint16_t b_imm16)))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 b)
;                b)))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u32x4
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 (x4 (uint32_t b_imm32)))
;                (x4 (uint32_t b_imm32)))))]
;         [((fpir:u64x2 a) (fpir:u64x2 b))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 b)
;                b)))]
;         [((fpir:u64x2 a) (uint64_t b_imm64))
;             (fpir:u64x2
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 a
;                 (x2 (uint64_t b_imm64)))
;                (x2 (uint64_t b_imm64)))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  (vec-add
;                   (vec-min
;                    b
;                    (x16 (int8_t (bv 0 8))))
;                   (x16 (int8_t (bv 127 8))))
;                  a)
;                 (vec-add
;                  (vec-max
;                   b
;                   (x16 (int8_t (bv 0 8))))
;                  (x16 (int8_t (bv -128 8)))))
;                b)))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i8x16
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  a
;                  (x16 (sca-add  (sca-min   (int8_t   b_imm8)   (int8_t (bv 0 8)))  (int8_t (bv 127 8)))))
;                 (x16 (sca-add  (sca-max   (int8_t   b_imm8)   (int8_t (bv 0 8)))  (int8_t (bv -128 8)))))
;                (x16 (int8_t b_imm8)))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  (vec-add
;                   (vec-min
;                    b
;                    (x8 (int16_t (bv 0 16))))
;                   (x8 (int16_t (bv 32767 16))))
;                  a)
;                 (vec-add
;                  (vec-max
;                   b
;                   (x8 (int16_t (bv 0 16))))
;                  (x8 (int16_t (bv -32768 16)))))
;                b)))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i16x8
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  a
;                  (x8 (sca-add  (sca-min   (int16_t   b_imm16)   (int16_t (bv 0 16)))  (int16_t (bv 32767 16)))))
;                 (x8 (sca-add  (sca-max   (int16_t   b_imm16)   (int16_t (bv 0 16)))  (int16_t (bv -32768 16)))))
;                (x8 (int16_t b_imm16)))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  (vec-add
;                   (vec-min
;                    b
;                    (x4 (int32_t (bv 0 32))))
;                   (x4 (int32_t (bv 2147483647 32))))
;                  a)
;                 (vec-add
;                  (vec-max
;                   b
;                   (x4 (int32_t (bv 0 32))))
;                  (x4 (int32_t (bv -2147483648 32)))))
;                b)))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i32x4
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  a
;                  (x4 (sca-add  (sca-min   (int32_t   b_imm32)   (int32_t (bv 0 32)))  (int32_t (bv 2147483647 32)))))
;                 (x4 (sca-add  (sca-max   (int32_t   b_imm32)   (int32_t (bv 0 32)))  (int32_t (bv -2147483648 32)))))
;                (x4 (int32_t b_imm32)))))]
;         [((fpir:i64x2 a) (fpir:i64x2 b))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  (vec-add
;                   (vec-min
;                    b
;                    (x2 (int64_t (bv 0 64))))
;                   (x2 (int64_t (bv 9223372036854775807 64))))
;                  a)
;                 (vec-add
;                  (vec-max
;                   b
;                   (x2 (int64_t (bv 0 64))))
;                  (x2 (int64_t (bv -9223372036854775808 64)))))
;                b)))]
;         [((fpir:i64x2 a) (int64_t b_imm64))
;             (fpir:i64x2
;              (halide:interpret
;               (vec-sub
;                (vec-max
;                 (vec-min
;                  a
;                  (x2 (sca-add  (sca-min   (int64_t   b_imm64)   (int64_t (bv 0 64)))  (int64_t (bv 9223372036854775807 64)))))
;                 (x2 (sca-add  (sca-max   (int64_t   b_imm64)   (int64_t (bv 0 64)))  (int64_t (bv -9223372036854775808 64)))))
;                (x2 (int64_t b_imm64)))))]

;         [(_ _) (assert #f "infeasible in interpreting sub_s")])]

;     [(fpir:sub_w a b)
;       (destruct* ((interpret a) (interpret b))
;         [((fpir:u8x16 a) (fpir:u8x16 b))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-sub
;                (int16x16
;                 a)
;                (int16x16
;                 b))))]
;         [((fpir:u8x16 a) (uint8_t b_imm8))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-sub
;                (int16x16
;                 a)
;                (int16x16
;                 (x16 (uint8_t b_imm8))))))]
;         [((fpir:u16x8 a) (fpir:u16x8 b))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-sub
;                (int32x8
;                 a)
;                (int32x8
;                 b))))]
;         [((fpir:u16x8 a) (uint16_t b_imm16))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-sub
;                (int32x8
;                 a)
;                (int32x8
;                 (x8 (uint16_t b_imm16))))))]
;         [((fpir:u32x4 a) (fpir:u32x4 b))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-sub
;                (int64x4
;                 a)
;                (int64x4
;                 b))))]
;         [((fpir:u32x4 a) (uint32_t b_imm32))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-sub
;                (int64x4
;                 a)
;                (int64x4
;                 (x4 (uint32_t b_imm32))))))]
;         [((fpir:i8x16 a) (fpir:i8x16 b))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-sub
;                (int16x16
;                 a)
;                (int16x16
;                 b))))]
;         [((fpir:i8x16 a) (int8_t b_imm8))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-sub
;                (int16x16
;                 a)
;                (int16x16
;                 (x16 (int8_t b_imm8))))))]
;         [((fpir:i16x8 a) (fpir:i16x8 b))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-sub
;                (int32x8
;                 a)
;                (int32x8
;                 b))))]
;         [((fpir:i16x8 a) (int16_t b_imm16))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-sub
;                (int32x8
;                 a)
;                (int32x8
;                 (x8 (int16_t b_imm16))))))]
;         [((fpir:i32x4 a) (fpir:i32x4 b))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-sub
;                (int64x4
;                 a)
;                (int64x4
;                 b))))]
;         [((fpir:i32x4 a) (int32_t b_imm32))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-sub
;                (int64x4
;                 a)
;                (int64x4
;                 (x4 (int32_t b_imm32))))))]

;         [(_ _) (assert #f "infeasible in interpreting sub_w")])]

;     [(fpir:widen a)
;       (destruct* ((interpret a))
;         [((fpir:u8x16 a))
;             (fpir:u16x16
;              (halide:interpret
;               (vec-widen
;                a)))]
;         [((fpir:u16x8 a))
;             (fpir:u32x8
;              (halide:interpret
;               (vec-widen
;                a)))]
;         [((fpir:u32x4 a))
;             (fpir:u64x4
;              (halide:interpret
;               (vec-widen
;                a)))]
;         [((fpir:i8x16 a))
;             (fpir:i16x16
;              (halide:interpret
;               (vec-widen
;                a)))]
;         [((fpir:i16x8 a))
;             (fpir:i32x8
;              (halide:interpret
;               (vec-widen
;                a)))]
;         [((fpir:i32x4 a))
;             (fpir:i64x4
;              (halide:interpret
;               (vec-widen
;                a)))]

;         [(_) (assert #f "infeasible in interpreting widen")])]

;     ;; TODO: these do not currently get auto-generated.
;     [(fpir:??shuffle id loads output-type)
;       (let ([vecType (fpir:get-type-struct output-type)]
;             [interpreted-loads (map interpret loads)])
;         (define (shuffle-body i)
;           (apply choose* (filter (lambda (r) (not (void? r)) (map (curryr fpir:get-element i) interpreted-loads)))))
;         (vecType shuffle-body))]

;     [(fpir:??load id live-data buffer idx-tbl output-type)
;       (let ([data (buffer-data buffer)]
;             [vecType (fpir:get-type-struct output-type)])
;         ; TODO: understand what the heck this is doing...
;         (define (is-of-buffer? read)
;           (rs-match (cpp:eval read)
;             [(expression (== @app) xs ...) (equal? (list-ref xs 0) data)]
;             [_ #f]))

;         (define (filter-reads reads)
;           (filter is-of-buffer? reads))

;         (define filtered-reads (map filter-reads live-data))

;         (define read-history (make-hash))

;         (define (load-body i)
;           (let ([data (list-ref filtered-reads curr-cn)])
;             (if (empty? data)
;               (void)
;               (hash-ref! read-history i (apply choose* data)))))

;       (vecType load-body))]

;     [(fpir:??swizzle id live-data exprs idx-tbl output-type)
;       (let ([vecType (fpir:get-type-struct output-type)])
;         (vecType
;           (lambda (i) (list-ref (list-ref live-data curr-cn) (list-ref idx-tbl i)))))]

;     [(fpir:??sub-expr exprs c t) (interpret (list-ref exprs c))]

;     [(fpir:reinterpret Vn)
;       (destruct (interpret Vn)
;         [(fpir:i8x16 v0) (fpir:u8x16 (lambda (i) (uint8_t (cpp:eval (v0 i)))))]
;         [(fpir:u8x16 v0) (fpir:i8x16 (lambda (i) (int8_t (cpp:eval (v0 i)))))]

;         [(fpir:i16x8 v0) (fpir:u16x8 (lambda (i) (uint16_t (cpp:eval (v0 i)))))]
;         [(fpir:u16x8 v0) (fpir:i16x8 (lambda (i) (int16_t (cpp:eval (v0 i)))))]

;         [(fpir:i32x4 v0) (fpir:u32x4 (lambda (i) (uint32_t (cpp:eval (v0 i)))))]
;         [(fpir:u32x4 v0) (fpir:i32x4 (lambda (i) (int32_t (cpp:eval (v0 i)))))]

;         [(fpir:i64x2 v0) (fpir:u64x2 (lambda (i) (uint64_t (cpp:eval (v0 i)))))]
;         [(fpir:u64x2 v0) (fpir:i64x2 (lambda (i) (int64_t (cpp:eval (v0 i)))))]

;         [(fpir:i8x32 v0) (fpir:u8x32 (lambda (i) (uint8_t (cpp:eval (v0 i)))))]
;         [(fpir:u8x32 v0) (fpir:i8x32 (lambda (i) (int8_t (cpp:eval (v0 i)))))]

;         [(fpir:i16x16 v0) (fpir:u16x16 (lambda (i) (uint16_t (cpp:eval (v0 i)))))]
;         [(fpir:u16x16 v0) (fpir:i16x16 (lambda (i) (int16_t (cpp:eval (v0 i)))))]

;         [(fpir:i32x8 v0) (fpir:u32x8 (lambda (i) (uint32_t (cpp:eval (v0 i)))))]
;         [(fpir:u32x8 v0) (fpir:i32x8 (lambda (i) (int32_t (cpp:eval (v0 i)))))]

;         [(fpir:i64x4 v0) (fpir:u64x4 (lambda (i) (uint64_t (cpp:eval (v0 i)))))]
;         [(fpir:u64x4 v0) (fpir:i64x4 (lambda (i) (int64_t (cpp:eval (v0 i)))))]
;         [_ (error "fpir:reinterpret interpreter does not recognize instruction: " p)]
;       )]

;     [(fpir:abstr-expr orig-expr abstr-vals offset output-type)
;       (let ([vecType (fpir:get-type-struct output-type)])
;         ;; TODO: is this correct?
;         (vecType (lambda (i) (halide:buffer-ref abstr-vals (+ i offset)))))]

;     [(fpir:concat-tiles tiles)
;       (error "trying to interpret concat-tiles")]

;     [(fpir:ld buf loc align output-type)
;       (let ([vecType (fpir:get-type-struct output-type)])
;         (vecType
;           (lambda (i) (halide:buffer-ref buf (+ (interpret loc) i)))))]

;     [(ramp base stride len)
;       ;; TODO: change this if handle-build-vec changes base type
;       (fpir:i32x8 (halide:interpret p))]
    
;     [(fpir:lo vec)
;       (destruct (interpret vec)
;         ;; TODO: is this the right lowering....?
;         [(fpir:i8x32 v0) (fpir:i8x16 (lambda (i) (v0 i)))]
;         [(fpir:u8x32 v0) (fpir:u8x16 (lambda (i) (v0 i)))]

;         [(fpir:i16x16 v0) (fpir:i16x8 (lambda (i) (v0 i)))]
;         [(fpir:u16x16 v0) (fpir:u16x8 (lambda (i) (v0 i)))]

;         [(fpir:i32x8 v0) (fpir:i32x4 (lambda (i) (v0 i)))]
;         [(fpir:u32x8 v0) (fpir:u32x4 (lambda (i) (v0 i)))]

;         [(fpir:i64x4 v0) (fpir:i64x2 (lambda (i) (v0 i)))]
;         [(fpir:u64x4 v0) (fpir:u64x2 (lambda (i) (v0 i)))]

;         [_ (error "fpir:lo interpreter does not recognize instruction: " p)]
;       )]
    
;     [(fpir:hi vec)
;       (destruct (interpret vec)
;         ;; TODO: is this the right lowering....?
;         [(fpir:i8x32 v0) (fpir:i8x16 (lambda (i) (v0 (+ i 16))))]
;         [(fpir:u8x32 v0) (fpir:u8x16 (lambda (i) (v0 (+ i 16))))]

;         [(fpir:i16x16 v0) (fpir:i16x8 (lambda (i) (v0 (+ i 8))))]
;         [(fpir:u16x16 v0) (fpir:u16x8 (lambda (i) (v0 (+ i 8))))]

;         [(fpir:i32x8 v0) (fpir:i32x4 (lambda (i) (v0 (+ i 4))))]
;         [(fpir:u32x8 v0) (fpir:u32x4 (lambda (i) (v0 (+ i 4))))]

;         [(fpir:i64x4 v0) (fpir:i64x2 (lambda (i) (v0 (+ i 2))))]
;         [(fpir:u64x4 v0) (fpir:u64x2 (lambda (i) (v0 (+ i 2))))]

;         [_ (error "fpir:hi interpreter does not recognize instruction: " p)]
;       )]

;     ;; TODO: check that it is a scalar value, not a forgotten instruction.
;     [_ p]

; ))
  p)
