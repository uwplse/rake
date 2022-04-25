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
  rake/arm/ast/types
  rake/internal/counter)

(provide
 (rename-out
  [interpret arm:interpret]))


;; ARM A64 interpreter
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


    [(arm:abs Vn)
      (destruct* ((interpret Vn))
        [((arm:i8x8 v0))
          (arm:u8x8
           (halide:interpret
            (vec-abs
             v0)))]
        [((arm:i8x16 v0))
          (arm:u8x16
           (halide:interpret
            (vec-abs
             v0)))]
        [((arm:i16x4 v0))
          (arm:u16x4
           (halide:interpret
            (vec-abs
             v0)))]
        [((arm:i16x8 v0))
          (arm:u16x8
           (halide:interpret
            (vec-abs
             v0)))]
        [((arm:i32x2 v0))
          (arm:u32x2
           (halide:interpret
            (vec-abs
             v0)))]
        [((arm:i32x4 v0))
          (arm:u32x4
           (halide:interpret
            (vec-abs
             v0)))]
        [(_) (assert #f (format "infeasible in abs\n~a\n" (pretty-format p)))])]

    [(arm:add Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:u64x2 v0) (arm:u64x2 v1))
          (arm:u64x2
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (arm:i64x2
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [(_ _) (assert #f (format "infeasible in add\n~a\n" (pretty-format p)))])]

    [(arm:addhn Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (arm:i16x8 v1) (arm:i16x8 v2) (arm:i16x8 v3))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (int8x8
              (vec-shr
               (vec-add
                v0
                v1)
               (x8 (uint16_t (bv 8 16)))))
             (int8x8
              (vec-shr
               (vec-add
                v2
                v3)
               (x8 (uint16_t (bv 8 16))))) 8)))]
        [((arm:i32x4 v0) (arm:i32x4 v1) (arm:i32x4 v2) (arm:i32x4 v3))
          (arm:i16x8
           (halide:interpret
            (concat_vectors
             (int16x4
              (vec-shr
               (vec-add
                v0
                v1)
               (x4 (uint32_t (bv 16 32)))))
             (int16x4
              (vec-shr
               (vec-add
                v2
                v3)
               (x4 (uint32_t (bv 16 32))))) 4)))]
        [((arm:i64x2 v0) (arm:i64x2 v1) (arm:i64x2 v2) (arm:i64x2 v3))
          (arm:i32x4
           (halide:interpret
            (concat_vectors
             (int32x2
              (vec-shr
               (vec-add
                v0
                v1)
               (x2 (uint64_t (bv 32 64)))))
             (int32x2
              (vec-shr
               (vec-add
                v2
                v3)
               (x2 (uint64_t (bv 32 64))))) 2)))]
        [((arm:u16x8 v0) (arm:u16x8 v1) (arm:u16x8 v2) (arm:u16x8 v3))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (uint8x8
              (vec-shr
               (vec-add
                v0
                v1)
               (x8 (uint16_t (bv 8 16)))))
             (uint8x8
              (vec-shr
               (vec-add
                v2
                v3)
               (x8 (uint16_t (bv 8 16))))) 8)))]
        [((arm:u32x4 v0) (arm:u32x4 v1) (arm:u32x4 v2) (arm:u32x4 v3))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (uint16x4
              (vec-shr
               (vec-add
                v0
                v1)
               (x4 (uint32_t (bv 16 32)))))
             (uint16x4
              (vec-shr
               (vec-add
                v2
                v3)
               (x4 (uint32_t (bv 16 32))))) 4)))]
        [((arm:u64x2 v0) (arm:u64x2 v1) (arm:u64x2 v2) (arm:u64x2 v3))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (uint32x2
              (vec-shr
               (vec-add
                v0
                v1)
               (x2 (uint64_t (bv 32 64)))))
             (uint32x2
              (vec-shr
               (vec-add
                v2
                v3)
               (x2 (uint64_t (bv 32 64))))) 2)))]
        [(_ _ _ _) (assert #f (format "infeasible in addhn\n~a\n" (pretty-format p)))])]

    [(arm:addp Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1) 4)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1) 8)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1) 4)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1) 8)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1) 2)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1) 4)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1) 2)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1) 4)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1) 1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1) 2)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1) 1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1) 2)))]
        [(_ _) (assert #f (format "infeasible in addp\n~a\n" (pretty-format p)))])]

    [(arm:addv Vn)
      (destruct* ((interpret Vn))
        [((arm:u8x8 v0))
          (uint8_t           (halide:interpret
            (vector_reduce 'add 8
             v0)))]
        [((arm:u16x4 v0))
          (uint16_t           (halide:interpret
            (vector_reduce 'add 4
             v0)))]
        [((arm:u8x16 v0))
          (uint8_t           (halide:interpret
            (vector_reduce 'add 16
             v0)))]
        [((arm:u16x8 v0))
          (uint16_t           (halide:interpret
            (vector_reduce 'add 8
             v0)))]
        [((arm:u32x2 v0))
          (uint32_t           (halide:interpret
            (vector_reduce 'add 2
             v0)))]
        [((arm:i8x8 v0))
          (int8_t           (halide:interpret
            (vector_reduce 'add 8
             v0)))]
        [((arm:i16x4 v0))
          (int16_t           (halide:interpret
            (vector_reduce 'add 4
             v0)))]
        [((arm:i8x16 v0))
          (int8_t           (halide:interpret
            (vector_reduce 'add 16
             v0)))]
        [((arm:i16x8 v0))
          (int16_t           (halide:interpret
            (vector_reduce 'add 8
             v0)))]
        [((arm:i32x2 v0))
          (int32_t           (halide:interpret
            (vector_reduce 'add 2
             v0)))]
        [(_) (assert #f (format "infeasible in addv\n~a\n" (pretty-format p)))])]

    [(arm:dup Vn)
      (destruct* ((interpret Vn))
        [((int8_t v0))
          (arm:i8x8
           (halide:interpret
            (x8 (int8_t v0))))]
        [((int16_t v0))
          (arm:i16x4
           (halide:interpret
            (x4 (int16_t v0))))]
        [((int32_t v0))
          (arm:i32x2
           (halide:interpret
            (x2 (int32_t v0))))]
        [((int64_t v0))
          (arm:i64x2
           (halide:interpret
            (x2 (int64_t v0))))]
        [((uint8_t v0))
          (arm:u8x8
           (halide:interpret
            (x8 (uint8_t v0))))]
        [((uint16_t v0))
          (arm:u16x4
           (halide:interpret
            (x4 (uint16_t v0))))]
        [((uint32_t v0))
          (arm:u32x2
           (halide:interpret
            (x2 (uint32_t v0))))]
        [((uint64_t v0))
          (arm:u64x2
           (halide:interpret
            (x2 (uint64_t v0))))]
        [(_) (assert #f (format "infeasible in dup\n~a\n" (pretty-format p)))])]

    [(arm:dupn Vn)
      (destruct* ((interpret Vn))
        [((int8_t v0))
          (arm:i8x4
           (halide:interpret
            (x4 (int8_t v0))))]
        [((uint8_t v0))
          (arm:u8x4
           (halide:interpret
            (x4 (uint8_t v0))))]
        [(_) (assert #f (format "infeasible in dupn\n~a\n" (pretty-format p)))])]

    [(arm:dupw Vn)
      (destruct* ((interpret Vn))
        [((int8_t v0))
          (arm:i8x16
           (halide:interpret
            (x16 (int8_t v0))))]
        [((int16_t v0))
          (arm:i16x8
           (halide:interpret
            (x8 (int16_t v0))))]
        [((int32_t v0))
          (arm:i32x4
           (halide:interpret
            (x4 (int32_t v0))))]
        [((uint8_t v0))
          (arm:u8x16
           (halide:interpret
            (x16 (uint8_t v0))))]
        [((uint16_t v0))
          (arm:u16x8
           (halide:interpret
            (x8 (uint16_t v0))))]
        [((uint32_t v0))
          (arm:u32x4
           (halide:interpret
            (x4 (uint32_t v0))))]
        [(_) (assert #f (format "infeasible in dupw\n~a\n" (pretty-format p)))])]

    [(arm:ext16i1 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 1 15)
             (slice_vectors
              v1 0 1 1) 15)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 1 15)
             (slice_vectors
              v1 0 1 1) 15)))]
        [(_ _) (assert #f (format "infeasible in ext16i1\n~a\n" (pretty-format p)))])]

    [(arm:ext16i10 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 10 1 6)
             (slice_vectors
              v1 0 1 10) 6)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 10 1 6)
             (slice_vectors
              v1 0 1 10) 6)))]
        [(_ _) (assert #f (format "infeasible in ext16i10\n~a\n" (pretty-format p)))])]

    [(arm:ext16i11 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 11 1 5)
             (slice_vectors
              v1 0 1 11) 5)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 11 1 5)
             (slice_vectors
              v1 0 1 11) 5)))]
        [(_ _) (assert #f (format "infeasible in ext16i11\n~a\n" (pretty-format p)))])]

    [(arm:ext16i12 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 12 1 4)
             (slice_vectors
              v1 0 1 12) 4)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 12 1 4)
             (slice_vectors
              v1 0 1 12) 4)))]
        [(_ _) (assert #f (format "infeasible in ext16i12\n~a\n" (pretty-format p)))])]

    [(arm:ext16i13 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 13 1 3)
             (slice_vectors
              v1 0 1 13) 3)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 13 1 3)
             (slice_vectors
              v1 0 1 13) 3)))]
        [(_ _) (assert #f (format "infeasible in ext16i13\n~a\n" (pretty-format p)))])]

    [(arm:ext16i14 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 14 1 2)
             (slice_vectors
              v1 0 1 14) 2)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 14 1 2)
             (slice_vectors
              v1 0 1 14) 2)))]
        [(_ _) (assert #f (format "infeasible in ext16i14\n~a\n" (pretty-format p)))])]

    [(arm:ext16i15 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 15 1 1)
             (slice_vectors
              v1 0 1 15) 1)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 15 1 1)
             (slice_vectors
              v1 0 1 15) 1)))]
        [(_ _) (assert #f (format "infeasible in ext16i15\n~a\n" (pretty-format p)))])]

    [(arm:ext16i2 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 2 1 14)
             (slice_vectors
              v1 0 1 2) 14)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 2 1 14)
             (slice_vectors
              v1 0 1 2) 14)))]
        [(_ _) (assert #f (format "infeasible in ext16i2\n~a\n" (pretty-format p)))])]

    [(arm:ext16i3 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 3 1 13)
             (slice_vectors
              v1 0 1 3) 13)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 3 1 13)
             (slice_vectors
              v1 0 1 3) 13)))]
        [(_ _) (assert #f (format "infeasible in ext16i3\n~a\n" (pretty-format p)))])]

    [(arm:ext16i4 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 4 1 12)
             (slice_vectors
              v1 0 1 4) 12)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 4 1 12)
             (slice_vectors
              v1 0 1 4) 12)))]
        [(_ _) (assert #f (format "infeasible in ext16i4\n~a\n" (pretty-format p)))])]

    [(arm:ext16i5 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 5 1 11)
             (slice_vectors
              v1 0 1 5) 11)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 5 1 11)
             (slice_vectors
              v1 0 1 5) 11)))]
        [(_ _) (assert #f (format "infeasible in ext16i5\n~a\n" (pretty-format p)))])]

    [(arm:ext16i6 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 6 1 10)
             (slice_vectors
              v1 0 1 6) 10)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 6 1 10)
             (slice_vectors
              v1 0 1 6) 10)))]
        [(_ _) (assert #f (format "infeasible in ext16i6\n~a\n" (pretty-format p)))])]

    [(arm:ext16i7 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 7 1 9)
             (slice_vectors
              v1 0 1 7) 9)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 7 1 9)
             (slice_vectors
              v1 0 1 7) 9)))]
        [(_ _) (assert #f (format "infeasible in ext16i7\n~a\n" (pretty-format p)))])]

    [(arm:ext16i8 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 8 1 8)
             (slice_vectors
              v1 0 1 8) 8)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 8 1 8)
             (slice_vectors
              v1 0 1 8) 8)))]
        [(_ _) (assert #f (format "infeasible in ext16i8\n~a\n" (pretty-format p)))])]

    [(arm:ext16i9 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 9 1 7)
             (slice_vectors
              v1 0 1 9) 7)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 9 1 7)
             (slice_vectors
              v1 0 1 9) 7)))]
        [(_ _) (assert #f (format "infeasible in ext16i9\n~a\n" (pretty-format p)))])]

    [(arm:ext8i1 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 1 7)
             (slice_vectors
              v1 0 1 1) 7)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 1 7)
             (slice_vectors
              v1 0 1 1) 7)))]
        [(_ _) (assert #f (format "infeasible in ext8i1\n~a\n" (pretty-format p)))])]

    [(arm:ext8i2 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 2 1 6)
             (slice_vectors
              v1 0 1 2) 6)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 2 1 6)
             (slice_vectors
              v1 0 1 2) 6)))]
        [(_ _) (assert #f (format "infeasible in ext8i2\n~a\n" (pretty-format p)))])]

    [(arm:ext8i3 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 3 1 5)
             (slice_vectors
              v1 0 1 3) 5)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 3 1 5)
             (slice_vectors
              v1 0 1 3) 5)))]
        [(_ _) (assert #f (format "infeasible in ext8i3\n~a\n" (pretty-format p)))])]

    [(arm:ext8i4 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 4 1 4)
             (slice_vectors
              v1 0 1 4) 4)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 4 1 4)
             (slice_vectors
              v1 0 1 4) 4)))]
        [(_ _) (assert #f (format "infeasible in ext8i4\n~a\n" (pretty-format p)))])]

    [(arm:ext8i5 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 5 1 3)
             (slice_vectors
              v1 0 1 5) 3)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 5 1 3)
             (slice_vectors
              v1 0 1 5) 3)))]
        [(_ _) (assert #f (format "infeasible in ext8i5\n~a\n" (pretty-format p)))])]

    [(arm:ext8i6 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 6 1 2)
             (slice_vectors
              v1 0 1 6) 2)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 6 1 2)
             (slice_vectors
              v1 0 1 6) 2)))]
        [(_ _) (assert #f (format "infeasible in ext8i6\n~a\n" (pretty-format p)))])]

    [(arm:ext8i7 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 7 1 1)
             (slice_vectors
              v1 0 1 7) 1)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 7 1 1)
             (slice_vectors
              v1 0 1 7) 1)))]
        [(_ _) (assert #f (format "infeasible in ext8i7\n~a\n" (pretty-format p)))])]

    [(arm:mla-vs Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1) (uint8_t v2))
          (arm:u8x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              (x8 (uint8_t v2))))))]
        [((arm:u8x16 v0) (arm:u8x16 v1) (uint8_t v2))
          (arm:u8x16
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              (x16 (uint8_t v2))))))]
        [((arm:u16x4 v0) (arm:u16x4 v1) (uint16_t v2))
          (arm:u16x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              (x4 (uint16_t v2))))))]
        [((arm:u16x8 v0) (arm:u16x8 v1) (uint16_t v2))
          (arm:u16x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              (x8 (uint16_t v2))))))]
        [((arm:u32x2 v0) (arm:u32x2 v1) (uint32_t v2))
          (arm:u32x2
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              (x2 (uint32_t v2))))))]
        [((arm:u32x4 v0) (arm:u32x4 v1) (uint32_t v2))
          (arm:u32x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              (x4 (uint32_t v2))))))]
        [(_ _ _) (assert #f (format "infeasible in mla-vs\n~a\n" (pretty-format p)))])]

    [(arm:mla-vv Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1) (arm:u8x8 v2))
          (arm:u8x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              v2))))]
        [((arm:u8x16 v0) (arm:u8x16 v1) (arm:u8x16 v2))
          (arm:u8x16
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              v2))))]
        [((arm:u16x4 v0) (arm:u16x4 v1) (arm:u16x4 v2))
          (arm:u16x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              v2))))]
        [((arm:u16x8 v0) (arm:u16x8 v1) (arm:u16x8 v2))
          (arm:u16x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              v2))))]
        [((arm:u32x2 v0) (arm:u32x2 v1) (arm:u32x2 v2))
          (arm:u32x2
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              v2))))]
        [((arm:u32x4 v0) (arm:u32x4 v1) (arm:u32x4 v2))
          (arm:u32x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              v2))))]
        [(_ _ _) (assert #f (format "infeasible in mla-vv\n~a\n" (pretty-format p)))])]

    [(arm:mls-vs Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1) (uint8_t v2))
          (arm:u8x8
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              (x8 (uint8_t v2))))))]
        [((arm:u8x16 v0) (arm:u8x16 v1) (uint8_t v2))
          (arm:u8x16
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              (x16 (uint8_t v2))))))]
        [((arm:u16x4 v0) (arm:u16x4 v1) (uint16_t v2))
          (arm:u16x4
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              (x4 (uint16_t v2))))))]
        [((arm:u16x8 v0) (arm:u16x8 v1) (uint16_t v2))
          (arm:u16x8
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              (x8 (uint16_t v2))))))]
        [((arm:u32x2 v0) (arm:u32x2 v1) (uint32_t v2))
          (arm:u32x2
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              (x2 (uint32_t v2))))))]
        [((arm:u32x4 v0) (arm:u32x4 v1) (uint32_t v2))
          (arm:u32x4
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              (x4 (uint32_t v2))))))]
        [(_ _ _) (assert #f (format "infeasible in mls-vs\n~a\n" (pretty-format p)))])]

    [(arm:mls-vv Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1) (arm:u8x8 v2))
          (arm:u8x8
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              v2))))]
        [((arm:u8x16 v0) (arm:u8x16 v1) (arm:u8x16 v2))
          (arm:u8x16
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              v2))))]
        [((arm:u16x4 v0) (arm:u16x4 v1) (arm:u16x4 v2))
          (arm:u16x4
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              v2))))]
        [((arm:u16x8 v0) (arm:u16x8 v1) (arm:u16x8 v2))
          (arm:u16x8
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              v2))))]
        [((arm:u32x2 v0) (arm:u32x2 v1) (arm:u32x2 v2))
          (arm:u32x2
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              v2))))]
        [((arm:u32x4 v0) (arm:u32x4 v1) (arm:u32x4 v2))
          (arm:u32x4
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              v2))))]
        [(_ _ _) (assert #f (format "infeasible in mls-vv\n~a\n" (pretty-format p)))])]

    [(arm:mul-vs Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (uint8_t v1))
          (arm:u8x8
           (halide:interpret
            (vec-mul
             v0
             (x8 (uint8_t v1)))))]
        [((arm:u8x16 v0) (uint8_t v1))
          (arm:u8x16
           (halide:interpret
            (vec-mul
             v0
             (x16 (uint8_t v1)))))]
        [((arm:u16x4 v0) (uint16_t v1))
          (arm:u16x4
           (halide:interpret
            (vec-mul
             v0
             (x4 (uint16_t v1)))))]
        [((arm:u16x8 v0) (uint16_t v1))
          (arm:u16x8
           (halide:interpret
            (vec-mul
             v0
             (x8 (uint16_t v1)))))]
        [((arm:u32x2 v0) (uint32_t v1))
          (arm:u32x2
           (halide:interpret
            (vec-mul
             v0
             (x2 (uint32_t v1)))))]
        [((arm:u32x4 v0) (uint32_t v1))
          (arm:u32x4
           (halide:interpret
            (vec-mul
             v0
             (x4 (uint32_t v1)))))]
        [((arm:i8x8 v0) (int8_t v1))
          (arm:i8x8
           (halide:interpret
            (vec-mul
             v0
             (x8 (int8_t v1)))))]
        [((arm:i8x16 v0) (int8_t v1))
          (arm:i8x16
           (halide:interpret
            (vec-mul
             v0
             (x16 (int8_t v1)))))]
        [((arm:i16x4 v0) (int16_t v1))
          (arm:i16x4
           (halide:interpret
            (vec-mul
             v0
             (x4 (int16_t v1)))))]
        [((arm:i16x8 v0) (int16_t v1))
          (arm:i16x8
           (halide:interpret
            (vec-mul
             v0
             (x8 (int16_t v1)))))]
        [((arm:i32x2 v0) (int32_t v1))
          (arm:i32x2
           (halide:interpret
            (vec-mul
             v0
             (x2 (int32_t v1)))))]
        [((arm:i32x4 v0) (int32_t v1))
          (arm:i32x4
           (halide:interpret
            (vec-mul
             v0
             (x4 (int32_t v1)))))]
        [(_ _) (assert #f (format "infeasible in mul-vs\n~a\n" (pretty-format p)))])]

    [(arm:mul-vv Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [(_ _) (assert #f (format "infeasible in mul-vv\n~a\n" (pretty-format p)))])]

    [(arm:neg Vn)
      (destruct* ((interpret Vn))
        [((arm:i8x8 v0))
          (arm:i8x8
           (halide:interpret
            (vec-sub
             (x8 (int8_t (bv 0 8)))
             v0)))]
        [((arm:i8x16 v0))
          (arm:i8x16
           (halide:interpret
            (vec-sub
             (x16 (int8_t (bv 0 8)))
             v0)))]
        [((arm:i16x4 v0))
          (arm:i16x4
           (halide:interpret
            (vec-sub
             (x4 (int16_t (bv 0 16)))
             v0)))]
        [((arm:i16x8 v0))
          (arm:i16x8
           (halide:interpret
            (vec-sub
             (x8 (int16_t (bv 0 16)))
             v0)))]
        [((arm:i32x2 v0))
          (arm:i32x2
           (halide:interpret
            (vec-sub
             (x2 (int32_t (bv 0 32)))
             v0)))]
        [((arm:i32x4 v0))
          (arm:i32x4
           (halide:interpret
            (vec-sub
             (x4 (int32_t (bv 0 32)))
             v0)))]
        [((arm:i64x2 v0))
          (arm:i64x2
           (halide:interpret
            (vec-sub
             (x2 (int64_t (bv 0 64)))
             v0)))]
        [(_) (assert #f (format "infeasible in neg\n~a\n" (pretty-format p)))])]

    [(arm:raddhn Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (arm:i16x8 v1) (arm:i16x8 v2) (arm:i16x8 v3))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (int8x8
              (vec-add
               (vec-bwand
                (x8 (int32_t (bv 1 32)))
                (vec-div
                 (int32x8
                  (vec-add
                   v0
                   v1))
                 (x8 (int32_t (bv 128 32)))))
               (vec-div
                (int32x8
                 (vec-add
                  v0
                  v1))
                (x8 (int32_t (bv 256 32))))))
             (int8x8
              (vec-add
               (vec-bwand
                (x8 (int32_t (bv 1 32)))
                (vec-div
                 (int32x8
                  (vec-add
                   v2
                   v3))
                 (x8 (int32_t (bv 128 32)))))
               (vec-div
                (int32x8
                 (vec-add
                  v2
                  v3))
                (x8 (int32_t (bv 256 32)))))) 8)))]
        [((arm:i32x4 v0) (arm:i32x4 v1) (arm:i32x4 v2) (arm:i32x4 v3))
          (arm:i16x8
           (halide:interpret
            (concat_vectors
             (int16x4
              (vec-add
               (vec-bwand
                (x4 (int32_t (bv 1 32)))
                (vec-div
                 (vec-add
                  v0
                  v1)
                 (x4 (int32_t (bv 32768 32)))))
               (vec-div
                (vec-add
                 v0
                 v1)
                (x4 (int32_t (bv 65536 32))))))
             (int16x4
              (vec-add
               (vec-bwand
                (x4 (int32_t (bv 1 32)))
                (vec-div
                 (vec-add
                  v2
                  v3)
                 (x4 (int32_t (bv 32768 32)))))
               (vec-div
                (vec-add
                 v2
                 v3)
                (x4 (int32_t (bv 65536 32)))))) 4)))]
        [((arm:i64x2 v0) (arm:i64x2 v1) (arm:i64x2 v2) (arm:i64x2 v3))
          (arm:i32x4
           (halide:interpret
            (concat_vectors
             (int32x2
              (vec-add
               (vec-bwand
                (x2 (int64_t (bv 1 64)))
                (vec-div
                 (vec-add
                  v0
                  v1)
                 (x2 (int64_t (bv 2147483648 64)))))
               (vec-div
                (vec-add
                 v0
                 v1)
                (x2 (int64_t (bv 4294967296 64))))))
             (int32x2
              (vec-add
               (vec-bwand
                (x2 (int64_t (bv 1 64)))
                (vec-div
                 (vec-add
                  v2
                  v3)
                 (x2 (int64_t (bv 2147483648 64)))))
               (vec-div
                (vec-add
                 v2
                 v3)
                (x2 (int64_t (bv 4294967296 64)))))) 2)))]
        [((arm:u16x8 v0) (arm:u16x8 v1) (arm:u16x8 v2) (arm:u16x8 v3))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (uint8x8
              (vec-add
               (vec-bwand
                (x8 (uint32_t (bv 1 32)))
                (vec-div
                 (uint32x8
                  (vec-add
                   v0
                   v1))
                 (x8 (uint32_t (bv 128 32)))))
               (vec-div
                (uint32x8
                 (vec-add
                  v0
                  v1))
                (x8 (uint32_t (bv 256 32))))))
             (uint8x8
              (vec-add
               (vec-bwand
                (x8 (uint32_t (bv 1 32)))
                (vec-div
                 (uint32x8
                  (vec-add
                   v2
                   v3))
                 (x8 (uint32_t (bv 128 32)))))
               (vec-div
                (uint32x8
                 (vec-add
                  v2
                  v3))
                (x8 (uint32_t (bv 256 32)))))) 8)))]
        [((arm:u32x4 v0) (arm:u32x4 v1) (arm:u32x4 v2) (arm:u32x4 v3))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (uint16x4
              (vec-add
               (vec-bwand
                (x4 (uint32_t (bv 1 32)))
                (vec-div
                 (vec-add
                  v0
                  v1)
                 (x4 (uint32_t (bv 32768 32)))))
               (vec-div
                (vec-add
                 v0
                 v1)
                (x4 (uint32_t (bv 65536 32))))))
             (uint16x4
              (vec-add
               (vec-bwand
                (x4 (uint32_t (bv 1 32)))
                (vec-div
                 (vec-add
                  v2
                  v3)
                 (x4 (uint32_t (bv 32768 32)))))
               (vec-div
                (vec-add
                 v2
                 v3)
                (x4 (uint32_t (bv 65536 32)))))) 4)))]
        [((arm:u64x2 v0) (arm:u64x2 v1) (arm:u64x2 v2) (arm:u64x2 v3))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (uint32x2
              (vec-add
               (vec-bwand
                (x2 (uint64_t (bv 1 64)))
                (vec-div
                 (vec-add
                  v0
                  v1)
                 (x2 (uint64_t (bv 2147483648 64)))))
               (vec-div
                (vec-add
                 v0
                 v1)
                (x2 (uint64_t (bv 4294967296 64))))))
             (uint32x2
              (vec-add
               (vec-bwand
                (x2 (uint64_t (bv 1 64)))
                (vec-div
                 (vec-add
                  v2
                  v3)
                 (x2 (uint64_t (bv 2147483648 64)))))
               (vec-div
                (vec-add
                 v2
                 v3)
                (x2 (uint64_t (bv 4294967296 64)))))) 2)))]
        [(_ _ _ _) (assert #f (format "infeasible in raddhn\n~a\n" (pretty-format p)))])]

    [(arm:rshrn Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (uint16_t v1) (arm:i16x8 v2) (uint16_t v3))
            (arm:i8x16
             (halide:interpret
              (concat_vectors
              (int8x8
               (vec-add
               (vec-shr
                v0
                (x8 (uint16_t v1)))
                (vec-bwand
                 (vec-if
                 (x8 (sca-lt  (uint16_t (bv 0 16))  (uint16_t  v1)))
                 (x8 (int16_t (bv 1 16)))
                 (x8 (int16_t (bv 0 16))))
                 (vec-shr
                  v0
                  (x8 (sca-sub  (uint16_t  v1)  (uint16_t (bv 1 16))))))))
               (int8x8
                (vec-add
                (vec-shr
                 v2
                 (x8 (uint16_t v3)))
                 (vec-bwand
                  (vec-if
                  (x8 (sca-lt  (uint16_t (bv 0 16))  (uint16_t  v3)))
                  (x8 (int16_t (bv 1 16)))
                  (x8 (int16_t (bv 0 16))))
                  (vec-shr
                   v2
                   (x8 (sca-sub  (uint16_t  v3)  (uint16_t (bv 1 16)))))))) 8)))]
        [((arm:i32x4 v0) (uint32_t v1) (arm:i32x4 v2) (uint32_t v3))
            (arm:i16x8
             (halide:interpret
              (concat_vectors
              (int16x4
               (vec-add
               (vec-shr
                v0
                (x4 (uint32_t v1)))
                (vec-bwand
                 (vec-if
                 (x4 (sca-lt  (uint32_t (bv 0 32))  (uint32_t  v1)))
                 (x4 (int32_t (bv 1 32)))
                 (x4 (int32_t (bv 0 32))))
                 (vec-shr
                  v0
                  (x4 (sca-sub  (uint32_t  v1)  (uint32_t (bv 1 32))))))))
               (int16x4
                (vec-add
                (vec-shr
                 v2
                 (x4 (uint32_t v3)))
                 (vec-bwand
                  (vec-if
                  (x4 (sca-lt  (uint32_t (bv 0 32))  (uint32_t  v3)))
                  (x4 (int32_t (bv 1 32)))
                  (x4 (int32_t (bv 0 32))))
                  (vec-shr
                   v2
                   (x4 (sca-sub  (uint32_t  v3)  (uint32_t (bv 1 32)))))))) 4)))]
        [((arm:i64x2 v0) (uint64_t v1) (arm:i64x2 v2) (uint64_t v3))
            (arm:i32x4
             (halide:interpret
              (concat_vectors
              (int32x2
               (vec-add
               (vec-shr
                v0
                (x2 (uint64_t v1)))
                (vec-bwand
                 (vec-if
                 (x2 (sca-lt  (uint64_t (bv 0 64))  (uint64_t  v1)))
                 (x2 (int64_t (bv 1 64)))
                 (x2 (int64_t (bv 0 64))))
                 (vec-shr
                  v0
                  (x2 (sca-sub  (uint64_t  v1)  (uint64_t (bv 1 64))))))))
               (int32x2
                (vec-add
                (vec-shr
                 v2
                 (x2 (uint64_t v3)))
                 (vec-bwand
                  (vec-if
                  (x2 (sca-lt  (uint64_t (bv 0 64))  (uint64_t  v3)))
                  (x2 (int64_t (bv 1 64)))
                  (x2 (int64_t (bv 0 64))))
                  (vec-shr
                   v2
                   (x2 (sca-sub  (uint64_t  v3)  (uint64_t (bv 1 64)))))))) 2)))]
        [((arm:u16x8 v0) (uint16_t v1) (arm:u16x8 v2) (uint16_t v3))
            (arm:u8x16
             (halide:interpret
              (concat_vectors
              (uint8x8
               (vec-add
               (vec-shr
                v0
                (x8 (uint16_t v1)))
                (vec-bwand
                 (vec-if
                 (x8 (sca-lt  (uint16_t (bv 0 16))  (uint16_t  v1)))
                 (x8 (uint16_t (bv 1 16)))
                 (x8 (uint16_t (bv 0 16))))
                 (vec-shr
                  v0
                  (x8 (sca-sub  (uint16_t  v1)  (uint16_t (bv 1 16))))))))
               (uint8x8
                (vec-add
                (vec-shr
                 v2
                 (x8 (uint16_t v3)))
                 (vec-bwand
                  (vec-if
                  (x8 (sca-lt  (uint16_t (bv 0 16))  (uint16_t  v3)))
                  (x8 (uint16_t (bv 1 16)))
                  (x8 (uint16_t (bv 0 16))))
                  (vec-shr
                   v2
                   (x8 (sca-sub  (uint16_t  v3)  (uint16_t (bv 1 16)))))))) 8)))]
        [((arm:u32x4 v0) (uint32_t v1) (arm:u32x4 v2) (uint32_t v3))
            (arm:u16x8
             (halide:interpret
              (concat_vectors
              (uint16x4
               (vec-add
               (vec-shr
                v0
                (x4 (uint32_t v1)))
                (vec-bwand
                 (vec-if
                 (x4 (sca-lt  (uint32_t (bv 0 32))  (uint32_t  v1)))
                 (x4 (uint32_t (bv 1 32)))
                 (x4 (uint32_t (bv 0 32))))
                 (vec-shr
                  v0
                  (x4 (sca-sub  (uint32_t  v1)  (uint32_t (bv 1 32))))))))
               (uint16x4
                (vec-add
                (vec-shr
                 v2
                 (x4 (uint32_t v3)))
                 (vec-bwand
                  (vec-if
                  (x4 (sca-lt  (uint32_t (bv 0 32))  (uint32_t  v3)))
                  (x4 (uint32_t (bv 1 32)))
                  (x4 (uint32_t (bv 0 32))))
                  (vec-shr
                   v2
                   (x4 (sca-sub  (uint32_t  v3)  (uint32_t (bv 1 32)))))))) 4)))]
        [((arm:u64x2 v0) (uint64_t v1) (arm:u64x2 v2) (uint64_t v3))
            (arm:u32x4
             (halide:interpret
              (concat_vectors
              (uint32x2
               (vec-add
               (vec-shr
                v0
                (x2 (uint64_t v1)))
                (vec-bwand
                 (vec-if
                 (x2 (sca-lt  (uint64_t (bv 0 64))  (uint64_t  v1)))
                 (x2 (uint64_t (bv 1 64)))
                 (x2 (uint64_t (bv 0 64))))
                 (vec-shr
                  v0
                  (x2 (sca-sub  (uint64_t  v1)  (uint64_t (bv 1 64))))))))
               (uint32x2
                (vec-add
                (vec-shr
                 v2
                 (x2 (uint64_t v3)))
                 (vec-bwand
                  (vec-if
                  (x2 (sca-lt  (uint64_t (bv 0 64))  (uint64_t  v3)))
                  (x2 (uint64_t (bv 1 64)))
                  (x2 (uint64_t (bv 0 64))))
                  (vec-shr
                   v2
                   (x2 (sca-sub  (uint64_t  v3)  (uint64_t (bv 1 64)))))))) 2)))]
        [(_ _ _ _) (assert #f (format "infeasible in rshrn\n~a\n" (pretty-format p)))])]

    [(arm:rsubhn Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (arm:i16x8 v1) (arm:i16x8 v2) (arm:i16x8 v3))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (int8x8
              (vec-add
               (vec-bwand
                (x8 (int32_t (bv 1 32)))
                (vec-div
                 (int32x8
                  (vec-sub
                   v0
                   v1))
                 (x8 (int32_t (bv 128 32)))))
               (vec-div
                (int32x8
                 (vec-sub
                  v0
                  v1))
                (x8 (int32_t (bv 256 32))))))
             (int8x8
              (vec-add
               (vec-bwand
                (x8 (int32_t (bv 1 32)))
                (vec-div
                 (int32x8
                  (vec-sub
                   v2
                   v3))
                 (x8 (int32_t (bv 128 32)))))
               (vec-div
                (int32x8
                 (vec-sub
                  v2
                  v3))
                (x8 (int32_t (bv 256 32)))))) 8)))]
        [((arm:i32x4 v0) (arm:i32x4 v1) (arm:i32x4 v2) (arm:i32x4 v3))
          (arm:i16x8
           (halide:interpret
            (concat_vectors
             (int16x4
              (vec-add
               (vec-bwand
                (x4 (int32_t (bv 1 32)))
                (vec-div
                 (vec-sub
                  v0
                  v1)
                 (x4 (int32_t (bv 32768 32)))))
               (vec-div
                (vec-sub
                 v0
                 v1)
                (x4 (int32_t (bv 65536 32))))))
             (int16x4
              (vec-add
               (vec-bwand
                (x4 (int32_t (bv 1 32)))
                (vec-div
                 (vec-sub
                  v2
                  v3)
                 (x4 (int32_t (bv 32768 32)))))
               (vec-div
                (vec-sub
                 v2
                 v3)
                (x4 (int32_t (bv 65536 32)))))) 4)))]
        [((arm:i64x2 v0) (arm:i64x2 v1) (arm:i64x2 v2) (arm:i64x2 v3))
          (arm:i32x4
           (halide:interpret
            (concat_vectors
             (int32x2
              (vec-add
               (vec-bwand
                (x2 (int64_t (bv 1 64)))
                (vec-div
                 (vec-sub
                  v0
                  v1)
                 (x2 (int64_t (bv 2147483648 64)))))
               (vec-div
                (vec-sub
                 v0
                 v1)
                (x2 (int64_t (bv 4294967296 64))))))
             (int32x2
              (vec-add
               (vec-bwand
                (x2 (int64_t (bv 1 64)))
                (vec-div
                 (vec-sub
                  v2
                  v3)
                 (x2 (int64_t (bv 2147483648 64)))))
               (vec-div
                (vec-sub
                 v2
                 v3)
                (x2 (int64_t (bv 4294967296 64)))))) 2)))]
        [((arm:u16x8 v0) (arm:u16x8 v1) (arm:u16x8 v2) (arm:u16x8 v3))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (uint8x8
              (vec-add
               (vec-bwand
                (x8 (uint32_t (bv 1 32)))
                (vec-div
                 (uint32x8
                  (vec-sub
                   v0
                   v1))
                 (x8 (uint32_t (bv 128 32)))))
               (vec-div
                (uint32x8
                 (vec-sub
                  v0
                  v1))
                (x8 (uint32_t (bv 256 32))))))
             (uint8x8
              (vec-add
               (vec-bwand
                (x8 (uint32_t (bv 1 32)))
                (vec-div
                 (uint32x8
                  (vec-sub
                   v2
                   v3))
                 (x8 (uint32_t (bv 128 32)))))
               (vec-div
                (uint32x8
                 (vec-sub
                  v2
                  v3))
                (x8 (uint32_t (bv 256 32)))))) 8)))]
        [((arm:u32x4 v0) (arm:u32x4 v1) (arm:u32x4 v2) (arm:u32x4 v3))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (uint16x4
              (vec-add
               (vec-bwand
                (x4 (uint32_t (bv 1 32)))
                (vec-div
                 (vec-sub
                  v0
                  v1)
                 (x4 (uint32_t (bv 32768 32)))))
               (vec-div
                (vec-sub
                 v0
                 v1)
                (x4 (uint32_t (bv 65536 32))))))
             (uint16x4
              (vec-add
               (vec-bwand
                (x4 (uint32_t (bv 1 32)))
                (vec-div
                 (vec-sub
                  v2
                  v3)
                 (x4 (uint32_t (bv 32768 32)))))
               (vec-div
                (vec-sub
                 v2
                 v3)
                (x4 (uint32_t (bv 65536 32)))))) 4)))]
        [((arm:u64x2 v0) (arm:u64x2 v1) (arm:u64x2 v2) (arm:u64x2 v3))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (uint32x2
              (vec-add
               (vec-bwand
                (x2 (uint64_t (bv 1 64)))
                (vec-div
                 (vec-sub
                  v0
                  v1)
                 (x2 (uint64_t (bv 2147483648 64)))))
               (vec-div
                (vec-sub
                 v0
                 v1)
                (x2 (uint64_t (bv 4294967296 64))))))
             (uint32x2
              (vec-add
               (vec-bwand
                (x2 (uint64_t (bv 1 64)))
                (vec-div
                 (vec-sub
                  v2
                  v3)
                 (x2 (uint64_t (bv 2147483648 64)))))
               (vec-div
                (vec-sub
                 v2
                 v3)
                (x2 (uint64_t (bv 4294967296 64)))))) 2)))]
        [(_ _ _ _) (assert #f (format "infeasible in rsubhn\n~a\n" (pretty-format p)))])]

    [(arm:saba Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1) (arm:i8x8 v2))
          (arm:i8x8
           (halide:interpret
            (vec-add
             v0
             (int8x8
              (vec-absd
               v1
               v2)))))]
        [((arm:i8x16 v0) (arm:i8x16 v1) (arm:i8x16 v2))
          (arm:i8x16
           (halide:interpret
            (vec-add
             v0
             (int8x16
              (vec-absd
               v1
               v2)))))]
        [((arm:i16x4 v0) (arm:i16x4 v1) (arm:i16x4 v2))
          (arm:i16x4
           (halide:interpret
            (vec-add
             v0
             (int16x4
              (vec-absd
               v1
               v2)))))]
        [((arm:i16x8 v0) (arm:i16x8 v1) (arm:i16x8 v2))
          (arm:i16x8
           (halide:interpret
            (vec-add
             v0
             (int16x8
              (vec-absd
               v1
               v2)))))]
        [((arm:i32x2 v0) (arm:i32x2 v1) (arm:i32x2 v2))
          (arm:i32x2
           (halide:interpret
            (vec-add
             v0
             (int32x2
              (vec-absd
               v1
               v2)))))]
        [((arm:i32x4 v0) (arm:i32x4 v1) (arm:i32x4 v2))
          (arm:i32x4
           (halide:interpret
            (vec-add
             v0
             (int32x4
              (vec-absd
               v1
               v2)))))]
        [(_ _ _) (assert #f (format "infeasible in saba\n~a\n" (pretty-format p)))])]

    [(arm:sabal Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (arm:i8x16 v1) (arm:i8x16 v2) (uint1_t v3))
           (arm:i16x8
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x8 (uint1_t v3))
              (int16x8
               (vec-absd
                (slice_vectors
                 v1 8 1 8)
                (slice_vectors
                 v2 8 1 8)))
              (int16x8
               (vec-absd
                (slice_vectors
                 v1 0 1 8)
                (slice_vectors
                 v2 0 1 8)))))))]
        [((arm:i32x4 v0) (arm:i16x8 v1) (arm:i16x8 v2) (uint1_t v3))
           (arm:i32x4
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x4 (uint1_t v3))
              (int32x4
               (vec-absd
                (slice_vectors
                 v1 4 1 4)
                (slice_vectors
                 v2 4 1 4)))
              (int32x4
               (vec-absd
                (slice_vectors
                 v1 0 1 4)
                (slice_vectors
                 v2 0 1 4)))))))]
        [((arm:i64x2 v0) (arm:i32x4 v1) (arm:i32x4 v2) (uint1_t v3))
           (arm:i64x2
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x2 (uint1_t v3))
              (int64x2
               (vec-absd
                (slice_vectors
                 v1 2 1 2)
                (slice_vectors
                 v2 2 1 2)))
              (int64x2
               (vec-absd
                (slice_vectors
                 v1 0 1 2)
                (slice_vectors
                 v2 0 1 2)))))))]
        [(_ _ _ _) (assert #f (format "infeasible in sabal\n~a\n" (pretty-format p)))])]

    [(arm:sabd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:u8x8
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:u8x16
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:u16x4
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:u16x8
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:u32x4
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [(_ _) (assert #f (format "infeasible in sabd\n~a\n" (pretty-format p)))])]

    [(arm:sadalp Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i16x4 v0) (arm:i8x8 v1))
          (arm:i16x4
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (int16x8
               v1)))))]
        [((arm:i16x8 v0) (arm:i8x16 v1))
          (arm:i16x8
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (int16x16
               v1)))))]
        [((arm:i32x2 v0) (arm:i16x4 v1))
          (arm:i32x2
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (int32x4
               v1)))))]
        [((arm:i32x4 v0) (arm:i16x8 v1))
          (arm:i32x4
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (int32x8
               v1)))))]
        [((int64_t v0) (arm:i32x2 v1))
          (int64_t           (halide:interpret
            (sca-add              (int64_t              v0)              (vector_reduce 'add 2
              (int64x2
               v1)))))]
        [((arm:i64x2 v0) (arm:i32x4 v1))
          (arm:i64x2
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (int64x4
               v1)))))]
        [(_ _) (assert #f (format "infeasible in sadalp\n~a\n" (pretty-format p)))])]

    [(arm:saddl Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1) (uint1_t v2))
           (arm:i16x8
            (halide:interpret
             (vec-if
             (x8 (uint1_t v2))
             (vec-add
              (int16x8
               (slice_vectors
                v0 8 1 8))
              (int16x8
               (slice_vectors
                v1 8 1 8)))
             (vec-add
              (int16x8
               (slice_vectors
                v0 0 1 8))
              (int16x8
               (slice_vectors
                v1 0 1 8))))))]
        [((arm:i16x8 v0) (arm:i16x8 v1) (uint1_t v2))
           (arm:i32x4
            (halide:interpret
             (vec-if
             (x4 (uint1_t v2))
             (vec-add
              (int32x4
               (slice_vectors
                v0 4 1 4))
              (int32x4
               (slice_vectors
                v1 4 1 4)))
             (vec-add
              (int32x4
               (slice_vectors
                v0 0 1 4))
              (int32x4
               (slice_vectors
                v1 0 1 4))))))]
        [((arm:i32x4 v0) (arm:i32x4 v1) (uint1_t v2))
           (arm:i64x2
            (halide:interpret
             (vec-if
             (x2 (uint1_t v2))
             (vec-add
              (int64x2
               (slice_vectors
                v0 2 1 2))
              (int64x2
               (slice_vectors
                v1 2 1 2)))
             (vec-add
              (int64x2
               (slice_vectors
                v0 0 1 2))
              (int64x2
               (slice_vectors
                v1 0 1 2))))))]
        [(_ _ _) (assert #f (format "infeasible in saddl\n~a\n" (pretty-format p)))])]

    [(arm:saddlp Vn)
      (destruct* ((interpret Vn))
        [((arm:i8x8 v0))
          (arm:i16x4
           (halide:interpret
            (vector_reduce 'add 2
             (int16x8
              v0))))]
        [((arm:i8x16 v0))
          (arm:i16x8
           (halide:interpret
            (vector_reduce 'add 2
             (int16x16
              v0))))]
        [((arm:i16x4 v0))
          (arm:i32x2
           (halide:interpret
            (vector_reduce 'add 2
             (int32x4
              v0))))]
        [((arm:i16x8 v0))
          (arm:i32x4
           (halide:interpret
            (vector_reduce 'add 2
             (int32x8
              v0))))]
        [((arm:i32x2 v0))
          (int64_t           (halide:interpret
            (vector_reduce 'add 2
             (int64x2
              v0))))]
        [((arm:i32x4 v0))
          (arm:i64x2
           (halide:interpret
            (vector_reduce 'add 2
             (int64x4
              v0))))]
        [(_) (assert #f (format "infeasible in saddlp\n~a\n" (pretty-format p)))])]

    [(arm:saddlv Vn)
      (destruct* ((interpret Vn))
        [((arm:i8x8 v0))
          (int16_t           (halide:interpret
            (vector_reduce 'add 8
             (int16x8
              v0))))]
        [((arm:i8x16 v0))
          (int16_t           (halide:interpret
            (vector_reduce 'add 16
             (int16x16
              v0))))]
        [((arm:i16x4 v0))
          (int32_t           (halide:interpret
            (vector_reduce 'add 4
             (int32x4
              v0))))]
        [((arm:i16x8 v0))
          (int32_t           (halide:interpret
            (vector_reduce 'add 8
             (int32x8
              v0))))]
        [((arm:i32x4 v0))
          (int64_t           (halide:interpret
            (vector_reduce 'add 4
             (int64x4
              v0))))]
        [(_) (assert #f (format "infeasible in saddlv\n~a\n" (pretty-format p)))])]

    [(arm:saddw Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i16x8 v0) (arm:i8x16 v1) (uint1_t v2))
           (arm:i16x8
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x8 (uint1_t v2))
              (int16x8
               (slice_vectors
                v1 8 1 8))
              (int16x8
               (slice_vectors
                v1 0 1 8))))))]
        [((arm:i32x4 v0) (arm:i16x8 v1) (uint1_t v2))
           (arm:i32x4
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x4 (uint1_t v2))
              (int32x4
               (slice_vectors
                v1 4 1 4))
              (int32x4
               (slice_vectors
                v1 0 1 4))))))]
        [((arm:i64x2 v0) (arm:i32x4 v1) (uint1_t v2))
           (arm:i64x2
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x2 (uint1_t v2))
              (int64x2
               (slice_vectors
                v1 2 1 2))
              (int64x2
               (slice_vectors
                v1 0 1 2))))))]
        [(_ _ _) (assert #f (format "infeasible in saddw\n~a\n" (pretty-format p)))])]

    [(arm:sdot.v2i32.v8i4 Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i32x2 v0) (arm:i8x8 v1) (arm:i8x4 v2))
          (arm:i32x2
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 4
              (int32x8
               (vec-mul
                (int16x8
                 v1)
                (int16x8
                 (concat_vectors
                  v2
                  v2 4))))))))]
        [(_ _ _) (assert #f (format "infeasible in sdot.v2i32.v8i4\n~a\n" (pretty-format p)))])]

    [(arm:sdot.v2i32.v8i8 Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i32x2 v0) (arm:i8x8 v1) (arm:i8x8 v2))
          (arm:i32x2
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 4
              (int32x8
               (vec-mul
                (int16x8
                 v1)
                (int16x8
                 v2)))))))]
        [(_ _ _) (assert #f (format "infeasible in sdot.v2i32.v8i8\n~a\n" (pretty-format p)))])]

    [(arm:sdot.v4i32.v16i4 Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i32x4 v0) (arm:i8x16 v1) (arm:i8x4 v2))
          (arm:i32x4
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 4
              (int32x16
               (vec-mul
                (int16x16
                 v1)
                (int16x16
                 (concat_vectors
                  (concat_vectors
                   v2
                   v2 4)
                  (concat_vectors
                   v2
                   v2 4) 8))))))))]
        [(_ _ _) (assert #f (format "infeasible in sdot.v4i32.v16i4\n~a\n" (pretty-format p)))])]

    [(arm:sdot.v4i32.v16i8 Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i32x4 v0) (arm:i8x16 v1) (arm:i8x16 v2))
          (arm:i32x4
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 4
              (int32x16
               (vec-mul
                (int16x16
                 v1)
                (int16x16
                 v2)))))))]
        [(_ _ _) (assert #f (format "infeasible in sdot.v4i32.v16i8\n~a\n" (pretty-format p)))])]

    [(arm:shadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (vec-add
             (vec-bwand
              v0
              v1)
             (vec-shr
              (vec-bwxor
               v0
               v1)
              (x8 (uint8_t (bv 1 8)))))))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (vec-add
             (vec-bwand
              v0
              v1)
             (vec-shr
              (vec-bwxor
               v0
               v1)
              (x16 (uint8_t (bv 1 8)))))))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (vec-add
             (vec-bwand
              v0
              v1)
             (vec-shr
              (vec-bwxor
               v0
               v1)
              (x4 (uint16_t (bv 1 16)))))))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (vec-add
             (vec-bwand
              v0
              v1)
             (vec-shr
              (vec-bwxor
               v0
               v1)
              (x8 (uint16_t (bv 1 16)))))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (vec-add
             (vec-bwand
              v0
              v1)
             (vec-shr
              (vec-bwxor
               v0
               v1)
              (x2 (uint32_t (bv 1 32)))))))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (vec-add
             (vec-bwand
              v0
              v1)
             (vec-shr
              (vec-bwxor
               v0
               v1)
              (x4 (uint32_t (bv 1 32)))))))]
        [(_ _) (assert #f (format "infeasible in shadd\n~a\n" (pretty-format p)))])]

    [(arm:shl Vn)
      (destruct* ((interpret Vn))
        [((arm:i8x8 v0))
          (arm:i8x8
           (halide:interpret
            (vec-shl
             v0)))]
        [((arm:i8x16 v0))
          (arm:i8x16
           (halide:interpret
            (vec-shl
             v0)))]
        [((arm:i16x4 v0))
          (arm:i16x4
           (halide:interpret
            (vec-shl
             v0)))]
        [((arm:i16x8 v0))
          (arm:i16x8
           (halide:interpret
            (vec-shl
             v0)))]
        [((arm:i32x2 v0))
          (arm:i32x2
           (halide:interpret
            (vec-shl
             v0)))]
        [((arm:i32x4 v0))
          (arm:i32x4
           (halide:interpret
            (vec-shl
             v0)))]
        [((arm:i64x2 v0))
          (arm:i64x2
           (halide:interpret
            (vec-shl
             v0)))]
        [((arm:u8x8 v0))
          (arm:u8x8
           (halide:interpret
            (vec-shl
             v0)))]
        [((arm:u8x16 v0))
          (arm:u8x16
           (halide:interpret
            (vec-shl
             v0)))]
        [((arm:u16x4 v0))
          (arm:u16x4
           (halide:interpret
            (vec-shl
             v0)))]
        [((arm:u16x8 v0))
          (arm:u16x8
           (halide:interpret
            (vec-shl
             v0)))]
        [((arm:u32x2 v0))
          (arm:u32x2
           (halide:interpret
            (vec-shl
             v0)))]
        [((arm:u32x4 v0))
          (arm:u32x4
           (halide:interpret
            (vec-shl
             v0)))]
        [((arm:u64x2 v0))
          (arm:u64x2
           (halide:interpret
            (vec-shl
             v0)))]
        [(_) (assert #f (format "infeasible in shl\n~a\n" (pretty-format p)))])]

    [(arm:shll Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (uint1_t v1))
           (arm:i16x8
            (halide:interpret
             (vec-shl
              (int16x8
               (vec-if
               (x8 (uint1_t v1))
               (slice_vectors
                v0 8 1 8)
               (slice_vectors
                v0 0 1 8)))
              (x8 (int16_t (bv 8 16))))))]
        [((arm:i16x8 v0) (uint1_t v1))
           (arm:i32x4
            (halide:interpret
             (vec-shl
              (int32x4
               (vec-if
               (x4 (uint1_t v1))
               (slice_vectors
                v0 4 1 4)
               (slice_vectors
                v0 0 1 4)))
              (x4 (int32_t (bv 16 32))))))]
        [((arm:i32x4 v0) (uint1_t v1))
           (arm:i64x2
            (halide:interpret
             (vec-shl
              (int64x2
               (vec-if
               (x2 (uint1_t v1))
               (slice_vectors
                v0 2 1 2)
               (slice_vectors
                v0 0 1 2)))
              (x2 (int64_t (bv 32 64))))))]
        [((arm:u8x16 v0) (uint1_t v1))
           (arm:u16x8
            (halide:interpret
             (vec-shl
              (uint16x8
               (vec-if
               (x8 (uint1_t v1))
               (slice_vectors
                v0 8 1 8)
               (slice_vectors
                v0 0 1 8)))
              (x8 (uint16_t (bv 8 16))))))]
        [((arm:u16x8 v0) (uint1_t v1))
           (arm:u32x4
            (halide:interpret
             (vec-shl
              (uint32x4
               (vec-if
               (x4 (uint1_t v1))
               (slice_vectors
                v0 4 1 4)
               (slice_vectors
                v0 0 1 4)))
              (x4 (uint32_t (bv 16 32))))))]
        [((arm:u32x4 v0) (uint1_t v1))
           (arm:u64x2
            (halide:interpret
             (vec-shl
              (uint64x2
               (vec-if
               (x2 (uint1_t v1))
               (slice_vectors
                v0 2 1 2)
               (slice_vectors
                v0 0 1 2)))
              (x2 (uint64_t (bv 32 64))))))]
        [(_ _) (assert #f (format "infeasible in shll\n~a\n" (pretty-format p)))])]

    [(arm:shrn Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (uint16_t v1) (arm:i16x8 v2) (uint16_t v3))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (int8x8
              (vec-shr
               v0
               (x8 (uint16_t v1))))
             (int8x8
              (vec-shr
               v2
               (x8 (uint16_t v3)))) 8)))]
        [((arm:i32x4 v0) (uint32_t v1) (arm:i32x4 v2) (uint32_t v3))
          (arm:i16x8
           (halide:interpret
            (concat_vectors
             (int16x4
              (vec-shr
               v0
               (x4 (uint32_t v1))))
             (int16x4
              (vec-shr
               v2
               (x4 (uint32_t v3)))) 4)))]
        [((arm:i64x2 v0) (uint64_t v1) (arm:i64x2 v2) (uint64_t v3))
          (arm:i32x4
           (halide:interpret
            (concat_vectors
             (int32x2
              (vec-shr
               v0
               (x2 (uint64_t v1))))
             (int32x2
              (vec-shr
               v2
               (x2 (uint64_t v3)))) 2)))]
        [((arm:u16x8 v0) (uint16_t v1) (arm:u16x8 v2) (uint16_t v3))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (uint8x8
              (vec-shr
               v0
               (x8 (uint16_t v1))))
             (uint8x8
              (vec-shr
               v2
               (x8 (uint16_t v3)))) 8)))]
        [((arm:u32x4 v0) (uint32_t v1) (arm:u32x4 v2) (uint32_t v3))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (uint16x4
              (vec-shr
               v0
               (x4 (uint32_t v1))))
             (uint16x4
              (vec-shr
               v2
               (x4 (uint32_t v3)))) 4)))]
        [((arm:u64x2 v0) (uint64_t v1) (arm:u64x2 v2) (uint64_t v3))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (uint32x2
              (vec-shr
               v0
               (x2 (uint64_t v1))))
             (uint32x2
              (vec-shr
               v2
               (x2 (uint64_t v3)))) 2)))]
        [(_ _ _ _) (assert #f (format "infeasible in shrn\n~a\n" (pretty-format p)))])]

    [(arm:shsub Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (vec-sub
             (vec-sub
              (vec-shr
               v0
               (x8 (uint8_t (bv 1 8))))
              (vec-shr
               v1
               (x8 (uint8_t (bv 1 8)))))
             (vec-shr
              (vec-add
               (vec-sub
                (vec-bwand
                 v1
                 (x8 (int8_t (bv 1 8))))
                (vec-bwand
                 v0
                 (x8 (int8_t (bv 1 8)))))
               (x8 (int8_t (bv 1 8))))
              (x8 (uint8_t (bv 1 8)))))))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (vec-sub
             (vec-sub
              (vec-shr
               v0
               (x16 (uint8_t (bv 1 8))))
              (vec-shr
               v1
               (x16 (uint8_t (bv 1 8)))))
             (vec-shr
              (vec-add
               (vec-sub
                (vec-bwand
                 v1
                 (x16 (int8_t (bv 1 8))))
                (vec-bwand
                 v0
                 (x16 (int8_t (bv 1 8)))))
               (x16 (int8_t (bv 1 8))))
              (x16 (uint8_t (bv 1 8)))))))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (vec-sub
             (vec-sub
              (vec-shr
               v0
               (x4 (uint16_t (bv 1 16))))
              (vec-shr
               v1
               (x4 (uint16_t (bv 1 16)))))
             (vec-shr
              (vec-add
               (vec-sub
                (vec-bwand
                 v1
                 (x4 (int16_t (bv 1 16))))
                (vec-bwand
                 v0
                 (x4 (int16_t (bv 1 16)))))
               (x4 (int16_t (bv 1 16))))
              (x4 (uint16_t (bv 1 16)))))))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (vec-sub
             (vec-sub
              (vec-shr
               v0
               (x8 (uint16_t (bv 1 16))))
              (vec-shr
               v1
               (x8 (uint16_t (bv 1 16)))))
             (vec-shr
              (vec-add
               (vec-sub
                (vec-bwand
                 v1
                 (x8 (int16_t (bv 1 16))))
                (vec-bwand
                 v0
                 (x8 (int16_t (bv 1 16)))))
               (x8 (int16_t (bv 1 16))))
              (x8 (uint16_t (bv 1 16)))))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (vec-sub
             (vec-sub
              (vec-shr
               v0
               (x2 (uint32_t (bv 1 32))))
              (vec-shr
               v1
               (x2 (uint32_t (bv 1 32)))))
             (vec-shr
              (vec-add
               (vec-sub
                (vec-bwand
                 v1
                 (x2 (int32_t (bv 1 32))))
                (vec-bwand
                 v0
                 (x2 (int32_t (bv 1 32)))))
               (x2 (int32_t (bv 1 32))))
              (x2 (uint32_t (bv 1 32)))))))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (vec-sub
             (vec-sub
              (vec-shr
               v0
               (x4 (uint32_t (bv 1 32))))
              (vec-shr
               v1
               (x4 (uint32_t (bv 1 32)))))
             (vec-shr
              (vec-add
               (vec-sub
                (vec-bwand
                 v1
                 (x4 (int32_t (bv 1 32))))
                (vec-bwand
                 v0
                 (x4 (int32_t (bv 1 32)))))
               (x4 (int32_t (bv 1 32))))
              (x4 (uint32_t (bv 1 32)))))))]
        [(_ _) (assert #f (format "infeasible in shsub\n~a\n" (pretty-format p)))])]

    [(arm:smax Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [(_ _) (assert #f (format "infeasible in smax\n~a\n" (pretty-format p)))])]

    [(arm:smaxp Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1) 4)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1) 8)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1) 2)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1) 4)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1) 1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1) 2)))]
        [(_ _) (assert #f (format "infeasible in smaxp\n~a\n" (pretty-format p)))])]

    [(arm:smaxv Vn)
      (destruct* ((interpret Vn))
        [((arm:i8x8 v0))
          (int8_t           (halide:interpret
            (vector_reduce 'max 8
             v0)))]
        [((arm:i8x16 v0))
          (int8_t           (halide:interpret
            (vector_reduce 'max 16
             v0)))]
        [((arm:i16x4 v0))
          (int16_t           (halide:interpret
            (vector_reduce 'max 4
             v0)))]
        [((arm:i16x8 v0))
          (int16_t           (halide:interpret
            (vector_reduce 'max 8
             v0)))]
        [((arm:i32x4 v0))
          (int32_t           (halide:interpret
            (vector_reduce 'max 4
             v0)))]
        [(_) (assert #f (format "infeasible in smaxv\n~a\n" (pretty-format p)))])]

    [(arm:smin Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [(_ _) (assert #f (format "infeasible in smin\n~a\n" (pretty-format p)))])]

    [(arm:sminp Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1) 4)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1) 8)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1) 2)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1) 4)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1) 1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1) 2)))]
        [(_ _) (assert #f (format "infeasible in sminp\n~a\n" (pretty-format p)))])]

    [(arm:sminv Vn)
      (destruct* ((interpret Vn))
        [((arm:i8x8 v0))
          (int8_t           (halide:interpret
            (vector_reduce 'min 8
             v0)))]
        [((arm:i8x16 v0))
          (int8_t           (halide:interpret
            (vector_reduce 'min 16
             v0)))]
        [((arm:i16x4 v0))
          (int16_t           (halide:interpret
            (vector_reduce 'min 4
             v0)))]
        [((arm:i16x8 v0))
          (int16_t           (halide:interpret
            (vector_reduce 'min 8
             v0)))]
        [((arm:i32x4 v0))
          (int32_t           (halide:interpret
            (vector_reduce 'min 4
             v0)))]
        [(_) (assert #f (format "infeasible in sminv\n~a\n" (pretty-format p)))])]

    [(arm:smlal-vs Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (arm:i8x16 v1) (int8_t v2) (uint1_t v3))
           (arm:i16x8
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x8 (uint1_t v3))
              (vec-mul
               (int16x8
                (slice_vectors
                 v1 8 1 8))
               (x8 (int16x1 (int8_t v2))))
              (vec-mul
               (int16x8
                (slice_vectors
                 v1 0 1 8))
               (x8 (int16x1 (int8_t v2))))))))]
        [((arm:i32x4 v0) (arm:i16x8 v1) (int16_t v2) (uint1_t v3))
           (arm:i32x4
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x4 (uint1_t v3))
              (vec-mul
               (int32x4
                (slice_vectors
                 v1 4 1 4))
               (x4 (int32x1 (int16_t v2))))
              (vec-mul
               (int32x4
                (slice_vectors
                 v1 0 1 4))
               (x4 (int32x1 (int16_t v2))))))))]
        [((arm:i64x2 v0) (arm:i32x4 v1) (int32_t v2) (uint1_t v3))
           (arm:i64x2
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x2 (uint1_t v3))
              (vec-mul
               (int64x2
                (slice_vectors
                 v1 2 1 2))
               (x2 (int64x1 (int32_t v2))))
              (vec-mul
               (int64x2
                (slice_vectors
                 v1 0 1 2))
               (x2 (int64x1 (int32_t v2))))))))]
        [(_ _ _ _) (assert #f (format "infeasible in smlal-vs\n~a\n" (pretty-format p)))])]

    [(arm:smlal-vv Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (arm:i8x16 v1) (arm:i8x16 v2) (uint1_t v3))
           (arm:i16x8
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x8 (uint1_t v3))
              (vec-mul
               (int16x8
                (slice_vectors
                 v1 8 1 8))
               (int16x8
                (slice_vectors
                 v2 8 1 8)))
              (vec-mul
               (int16x8
                (slice_vectors
                 v1 0 1 8))
               (int16x8
                (slice_vectors
                 v2 0 1 8)))))))]
        [((arm:i32x4 v0) (arm:i16x8 v1) (arm:i16x8 v2) (uint1_t v3))
           (arm:i32x4
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x4 (uint1_t v3))
              (vec-mul
               (int32x4
                (slice_vectors
                 v1 4 1 4))
               (int32x4
                (slice_vectors
                 v2 4 1 4)))
              (vec-mul
               (int32x4
                (slice_vectors
                 v1 0 1 4))
               (int32x4
                (slice_vectors
                 v2 0 1 4)))))))]
        [((arm:i64x2 v0) (arm:i32x4 v1) (arm:i32x4 v2) (uint1_t v3))
           (arm:i64x2
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x2 (uint1_t v3))
              (vec-mul
               (int64x2
                (slice_vectors
                 v1 2 1 2))
               (int64x2
                (slice_vectors
                 v2 2 1 2)))
              (vec-mul
               (int64x2
                (slice_vectors
                 v1 0 1 2))
               (int64x2
                (slice_vectors
                 v2 0 1 2)))))))]
        [(_ _ _ _) (assert #f (format "infeasible in smlal-vv\n~a\n" (pretty-format p)))])]

    [(arm:smlsl-vs Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (arm:i8x16 v1) (int8_t v2) (uint1_t v3))
           (arm:i16x8
            (halide:interpret
             (vec-sub
             v0
              (vec-if
              (x8 (uint1_t v3))
              (vec-mul
               (int16x8
                (slice_vectors
                 v1 8 1 8))
               (x8 (int16x1 (int8_t v2))))
              (vec-mul
               (int16x8
                (slice_vectors
                 v1 0 1 8))
               (x8 (int16x1 (int8_t v2))))))))]
        [((arm:i32x4 v0) (arm:i16x8 v1) (int16_t v2) (uint1_t v3))
           (arm:i32x4
            (halide:interpret
             (vec-sub
             v0
              (vec-if
              (x4 (uint1_t v3))
              (vec-mul
               (int32x4
                (slice_vectors
                 v1 4 1 4))
               (x4 (int32x1 (int16_t v2))))
              (vec-mul
               (int32x4
                (slice_vectors
                 v1 0 1 4))
               (x4 (int32x1 (int16_t v2))))))))]
        [((arm:i64x2 v0) (arm:i32x4 v1) (int32_t v2) (uint1_t v3))
           (arm:i64x2
            (halide:interpret
             (vec-sub
             v0
              (vec-if
              (x2 (uint1_t v3))
              (vec-mul
               (int64x2
                (slice_vectors
                 v1 2 1 2))
               (x2 (int64x1 (int32_t v2))))
              (vec-mul
               (int64x2
                (slice_vectors
                 v1 0 1 2))
               (x2 (int64x1 (int32_t v2))))))))]
        [(_ _ _ _) (assert #f (format "infeasible in smlsl-vs\n~a\n" (pretty-format p)))])]

    [(arm:smlsl-vv Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (arm:i8x16 v1) (arm:i8x16 v2) (uint1_t v3))
           (arm:i16x8
            (halide:interpret
             (vec-sub
             v0
              (vec-if
              (x8 (uint1_t v3))
              (vec-mul
               (int16x8
                (slice_vectors
                 v1 8 1 8))
               (int16x8
                (slice_vectors
                 v2 8 1 8)))
              (vec-mul
               (int16x8
                (slice_vectors
                 v1 0 1 8))
               (int16x8
                (slice_vectors
                 v2 0 1 8)))))))]
        [((arm:i32x4 v0) (arm:i16x8 v1) (arm:i16x8 v2) (uint1_t v3))
           (arm:i32x4
            (halide:interpret
             (vec-sub
             v0
              (vec-if
              (x4 (uint1_t v3))
              (vec-mul
               (int32x4
                (slice_vectors
                 v1 4 1 4))
               (int32x4
                (slice_vectors
                 v2 4 1 4)))
              (vec-mul
               (int32x4
                (slice_vectors
                 v1 0 1 4))
               (int32x4
                (slice_vectors
                 v2 0 1 4)))))))]
        [((arm:i64x2 v0) (arm:i32x4 v1) (arm:i32x4 v2) (uint1_t v3))
           (arm:i64x2
            (halide:interpret
             (vec-sub
             v0
              (vec-if
              (x2 (uint1_t v3))
              (vec-mul
               (int64x2
                (slice_vectors
                 v1 2 1 2))
               (int64x2
                (slice_vectors
                 v2 2 1 2)))
              (vec-mul
               (int64x2
                (slice_vectors
                 v1 0 1 2))
               (int64x2
                (slice_vectors
                 v2 0 1 2)))))))]
        [(_ _ _ _) (assert #f (format "infeasible in smlsl-vv\n~a\n" (pretty-format p)))])]

    [(arm:smull-vs Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (int8_t v1) (uint1_t v2))
           (arm:i16x8
            (halide:interpret
             (vec-if
             (x8 (uint1_t v2))
             (vec-mul
              (int16x8
               (slice_vectors
                v0 8 1 8))
              (int16x8
               (x8 (int8_t v1))))
             (vec-mul
              (int16x8
               (slice_vectors
                v0 0 1 8))
              (int16x8
               (x8 (int8_t v1)))))))]
        [((arm:i16x8 v0) (int16_t v1) (uint1_t v2))
           (arm:i32x4
            (halide:interpret
             (vec-if
             (x4 (uint1_t v2))
             (vec-mul
              (int32x4
               (slice_vectors
                v0 4 1 4))
              (int32x4
               (x4 (int16_t v1))))
             (vec-mul
              (int32x4
               (slice_vectors
                v0 0 1 4))
              (int32x4
               (x4 (int16_t v1)))))))]
        [((arm:i32x4 v0) (int32_t v1) (uint1_t v2))
           (arm:i64x2
            (halide:interpret
             (vec-if
             (x2 (uint1_t v2))
             (vec-mul
              (int64x2
               (slice_vectors
                v0 2 1 2))
              (int64x2
               (x2 (int32_t v1))))
             (vec-mul
              (int64x2
               (slice_vectors
                v0 0 1 2))
              (int64x2
               (x2 (int32_t v1)))))))]
        [(_ _ _) (assert #f (format "infeasible in smull-vs\n~a\n" (pretty-format p)))])]

    [(arm:smull-vv Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1) (uint1_t v2))
           (arm:i16x8
            (halide:interpret
             (vec-if
             (x8 (uint1_t v2))
             (vec-mul
              (int16x8
               (slice_vectors
                v0 8 1 8))
              (int16x8
               (slice_vectors
                v1 8 1 8)))
             (vec-mul
              (int16x8
               (slice_vectors
                v0 0 1 8))
              (int16x8
               (slice_vectors
                v1 0 1 8))))))]
        [((arm:i16x8 v0) (arm:i16x8 v1) (uint1_t v2))
           (arm:i32x4
            (halide:interpret
             (vec-if
             (x4 (uint1_t v2))
             (vec-mul
              (int32x4
               (slice_vectors
                v0 4 1 4))
              (int32x4
               (slice_vectors
                v1 4 1 4)))
             (vec-mul
              (int32x4
               (slice_vectors
                v0 0 1 4))
              (int32x4
               (slice_vectors
                v1 0 1 4))))))]
        [((arm:i32x4 v0) (arm:i32x4 v1) (uint1_t v2))
           (arm:i64x2
            (halide:interpret
             (vec-if
             (x2 (uint1_t v2))
             (vec-mul
              (int64x2
               (slice_vectors
                v0 2 1 2))
              (int64x2
               (slice_vectors
                v1 2 1 2)))
             (vec-mul
              (int64x2
               (slice_vectors
                v0 0 1 2))
              (int64x2
               (slice_vectors
                v1 0 1 2))))))]
        [(_ _ _) (assert #f (format "infeasible in smull-vv\n~a\n" (pretty-format p)))])]

    [(arm:sqabs Vn)
      (destruct* ((interpret Vn))
        [((arm:i8x8 v0))
           (arm:i8x8
            (halide:interpret
             (vec-if
             (vec-lt
              v0
              (vec-sub
               (x8 (int8_t (bv 0 8)))
               (x8 (int8_t (bv 127 8)))))
             (x8 (int8_t (bv 127 8)))
             (int8x8
              (vec-abs
               v0)))))]
        [((arm:i8x16 v0))
           (arm:i8x16
            (halide:interpret
             (vec-if
             (vec-lt
              v0
              (vec-sub
               (x16 (int8_t (bv 0 8)))
               (x16 (int8_t (bv 127 8)))))
             (x16 (int8_t (bv 127 8)))
             (int8x16
              (vec-abs
               v0)))))]
        [((arm:i16x4 v0))
           (arm:i16x4
            (halide:interpret
             (vec-if
             (vec-lt
              v0
              (vec-sub
               (x4 (int16_t (bv 0 16)))
               (x4 (int16_t (bv 32767 16)))))
             (x4 (int16_t (bv 32767 16)))
             (int16x4
              (vec-abs
               v0)))))]
        [((arm:i16x8 v0))
           (arm:i16x8
            (halide:interpret
             (vec-if
             (vec-lt
              v0
              (vec-sub
               (x8 (int16_t (bv 0 16)))
               (x8 (int16_t (bv 32767 16)))))
             (x8 (int16_t (bv 32767 16)))
             (int16x8
              (vec-abs
               v0)))))]
        [((arm:i32x2 v0))
           (arm:i32x2
            (halide:interpret
             (vec-if
             (vec-lt
              v0
              (vec-sub
               (x2 (int32_t (bv 0 32)))
               (x2 (int32_t (bv 2147483647 32)))))
             (x2 (int32_t (bv 2147483647 32)))
             (int32x2
              (vec-abs
               v0)))))]
        [((arm:i32x4 v0))
           (arm:i32x4
            (halide:interpret
             (vec-if
             (vec-lt
              v0
              (vec-sub
               (x4 (int32_t (bv 0 32)))
               (x4 (int32_t (bv 2147483647 32)))))
             (x4 (int32_t (bv 2147483647 32)))
             (int32x4
              (vec-abs
               v0)))))]
        [((arm:i64x2 v0))
           (arm:i64x2
            (halide:interpret
             (vec-if
             (vec-lt
              v0
              (vec-sub
               (x2 (int64_t (bv 0 64)))
               (x2 (int64_t (bv 9223372036854775807 64)))))
             (x2 (int64_t (bv 9223372036854775807 64)))
             (int64x2
              (vec-abs
               v0)))))]
        [(_) (assert #f (format "infeasible in sqabs\n~a\n" (pretty-format p)))])]

    [(arm:sqadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (vec-add
             (vec-max
              (vec-min
               (vec-sub
                (x8 (int8_t (bv 127 8)))
                (vec-max
                 v1
                 (x8 (int8_t (bv 0 8)))))
               v0)
              (vec-sub
               (x8 (int8_t (bv -128 8)))
               (vec-min
                v1
                (x8 (int8_t (bv 0 8))))))
             v1)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (vec-add
             (vec-max
              (vec-min
               (vec-sub
                (x16 (int8_t (bv 127 8)))
                (vec-max
                 v1
                 (x16 (int8_t (bv 0 8)))))
               v0)
              (vec-sub
               (x16 (int8_t (bv -128 8)))
               (vec-min
                v1
                (x16 (int8_t (bv 0 8))))))
             v1)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (vec-add
             (vec-max
              (vec-min
               (vec-sub
                (x4 (int16_t (bv 32767 16)))
                (vec-max
                 v1
                 (x4 (int16_t (bv 0 16)))))
               v0)
              (vec-sub
               (x4 (int16_t (bv -32768 16)))
               (vec-min
                v1
                (x4 (int16_t (bv 0 16))))))
             v1)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (vec-add
             (vec-max
              (vec-min
               (vec-sub
                (x8 (int16_t (bv 32767 16)))
                (vec-max
                 v1
                 (x8 (int16_t (bv 0 16)))))
               v0)
              (vec-sub
               (x8 (int16_t (bv -32768 16)))
               (vec-min
                v1
                (x8 (int16_t (bv 0 16))))))
             v1)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (vec-add
             (vec-max
              (vec-min
               (vec-sub
                (x2 (int32_t (bv 2147483647 32)))
                (vec-max
                 v1
                 (x2 (int32_t (bv 0 32)))))
               v0)
              (vec-sub
               (x2 (int32_t (bv -2147483648 32)))
               (vec-min
                v1
                (x2 (int32_t (bv 0 32))))))
             v1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (vec-add
             (vec-max
              (vec-min
               (vec-sub
                (x4 (int32_t (bv 2147483647 32)))
                (vec-max
                 v1
                 (x4 (int32_t (bv 0 32)))))
               v0)
              (vec-sub
               (x4 (int32_t (bv -2147483648 32)))
               (vec-min
                v1
                (x4 (int32_t (bv 0 32))))))
             v1)))]
        [(_ _) (assert #f (format "infeasible in sqadd\n~a\n" (pretty-format p)))])]

    [(arm:sqdmlal-vs Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i32x4 v0) (arm:i16x8 v1) (int16_t v2) (uint1_t v3))
                 (arm:i32x4
                  (halide:interpret
                   (vec-add
             v0
                    (vec-if
                 (vec-lt
                  (vec-if
                 (vec-gt
                  (vec-mul
                   (int32x4
                    (vec-if
                    (x4 (uint1_t v3))
                    (slice_vectors
                     v1 4 1 4)
                    (slice_vectors
                     v1 0 1 4)))
                   (int32x4
                    (x4 (int16_t v2))))
                  (vec-div
                   (x4 (int32_t (bv 2147483647 32)))
                   (x4 (int32_t (bv 2 32)))))
                 (x4 (int32_t (bv 2147483647 32)))
                  (vec-mul
                   (vec-mul
                    (int32x4
                     (vec-if
                     (x4 (uint1_t v3))
                     (slice_vectors
                      v1 4 1 4)
                     (slice_vectors
                      v1 0 1 4)))
                    (int32x4
                     (x4 (int16_t v2))))
                   (x4 (int32_t (bv 2 32)))))
                  (vec-div
                   (x4 (int32_t (bv -2147483648 32)))
                   (x4 (int32_t (bv 2 32)))))
                 (x4 (int32_t (bv -2147483648 32)))
                    (vec-mul
                     (vec-if
                    (vec-gt
                     (vec-mul
                      (int32x4
                       (vec-if
                       (x4 (uint1_t v3))
                       (slice_vectors
                        v1 4 1 4)
                       (slice_vectors
                        v1 0 1 4)))
                      (int32x4
                       (x4 (int16_t v2))))
                     (vec-div
                      (x4 (int32_t (bv 2147483647 32)))
                      (x4 (int32_t (bv 2 32)))))
                    (x4 (int32_t (bv 2147483647 32)))
                     (vec-mul
                      (vec-mul
                       (int32x4
                        (vec-if
                        (x4 (uint1_t v3))
                        (slice_vectors
                         v1 4 1 4)
                        (slice_vectors
                         v1 0 1 4)))
                       (int32x4
                        (x4 (int16_t v2))))
                      (x4 (int32_t (bv 2 32)))))
                     (x4 (int32_t (bv 2 32))))))))]
        [((arm:i64x2 v0) (arm:i32x4 v1) (int32_t v2) (uint1_t v3))
                 (arm:i64x2
                  (halide:interpret
                   (vec-add
             v0
                    (vec-if
                 (vec-lt
                  (vec-if
                 (vec-gt
                  (vec-mul
                   (int64x2
                    (vec-if
                    (x2 (uint1_t v3))
                    (slice_vectors
                     v1 2 1 2)
                    (slice_vectors
                     v1 0 1 2)))
                   (int64x2
                    (x2 (int32_t v2))))
                  (vec-div
                   (x2 (int64_t (bv 9223372036854775807 64)))
                   (x2 (int64_t (bv 2 64)))))
                 (x2 (int64_t (bv 9223372036854775807 64)))
                  (vec-mul
                   (vec-mul
                    (int64x2
                     (vec-if
                     (x2 (uint1_t v3))
                     (slice_vectors
                      v1 2 1 2)
                     (slice_vectors
                      v1 0 1 2)))
                    (int64x2
                     (x2 (int32_t v2))))
                   (x2 (int64_t (bv 2 64)))))
                  (vec-div
                   (x2 (int64_t (bv -9223372036854775808 64)))
                   (x2 (int64_t (bv 2 64)))))
                 (x2 (int64_t (bv -9223372036854775808 64)))
                    (vec-mul
                     (vec-if
                    (vec-gt
                     (vec-mul
                      (int64x2
                       (vec-if
                       (x2 (uint1_t v3))
                       (slice_vectors
                        v1 2 1 2)
                       (slice_vectors
                        v1 0 1 2)))
                      (int64x2
                       (x2 (int32_t v2))))
                     (vec-div
                      (x2 (int64_t (bv 9223372036854775807 64)))
                      (x2 (int64_t (bv 2 64)))))
                    (x2 (int64_t (bv 9223372036854775807 64)))
                     (vec-mul
                      (vec-mul
                       (int64x2
                        (vec-if
                        (x2 (uint1_t v3))
                        (slice_vectors
                         v1 2 1 2)
                        (slice_vectors
                         v1 0 1 2)))
                       (int64x2
                        (x2 (int32_t v2))))
                      (x2 (int64_t (bv 2 64)))))
                     (x2 (int64_t (bv 2 64))))))))]
        [(_ _ _ _) (assert #f (format "infeasible in sqdmlal-vs\n~a\n" (pretty-format p)))])]

    [(arm:sqdmlal-vv Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i32x4 v0) (arm:i16x8 v1) (arm:i16x8 v2) (uint1_t v3))
                     (arm:i32x4
                      (halide:interpret
                       (vec-add
             v0
                        (vec-if
                   (vec-lt
                    (vec-if
                  (vec-gt
                   (vec-mul
                   (int32x4
                    (vec-if
                    (x4 (uint1_t v3))
                    (slice_vectors
                     v1 4 1 4)
                    (slice_vectors
                     v1 0 1 4)))
                    (int32x4
                     (vec-if
                     (x4 (uint1_t v3))
                     (slice_vectors
                      v2 4 1 4)
                     (slice_vectors
                      v2 0 1 4))))
                   (vec-div
                    (x4 (int32_t (bv 2147483647 32)))
                    (x4 (int32_t (bv 2 32)))))
                  (x4 (int32_t (bv 2147483647 32)))
                    (vec-mul
                     (vec-mul
                     (int32x4
                      (vec-if
                      (x4 (uint1_t v3))
                      (slice_vectors
                       v1 4 1 4)
                      (slice_vectors
                       v1 0 1 4)))
                      (int32x4
                       (vec-if
                       (x4 (uint1_t v3))
                       (slice_vectors
                        v2 4 1 4)
                       (slice_vectors
                        v2 0 1 4))))
                     (x4 (int32_t (bv 2 32)))))
                    (vec-div
                     (x4 (int32_t (bv -2147483648 32)))
                     (x4 (int32_t (bv 2 32)))))
                   (x4 (int32_t (bv -2147483648 32)))
                        (vec-mul
                         (vec-if
                       (vec-gt
                        (vec-mul
                        (int32x4
                         (vec-if
                         (x4 (uint1_t v3))
                         (slice_vectors
                          v1 4 1 4)
                         (slice_vectors
                          v1 0 1 4)))
                         (int32x4
                          (vec-if
                          (x4 (uint1_t v3))
                          (slice_vectors
                           v2 4 1 4)
                          (slice_vectors
                           v2 0 1 4))))
                        (vec-div
                         (x4 (int32_t (bv 2147483647 32)))
                         (x4 (int32_t (bv 2 32)))))
                       (x4 (int32_t (bv 2147483647 32)))
                         (vec-mul
                          (vec-mul
                          (int32x4
                           (vec-if
                           (x4 (uint1_t v3))
                           (slice_vectors
                            v1 4 1 4)
                           (slice_vectors
                            v1 0 1 4)))
                           (int32x4
                            (vec-if
                            (x4 (uint1_t v3))
                            (slice_vectors
                             v2 4 1 4)
                            (slice_vectors
                             v2 0 1 4))))
                          (x4 (int32_t (bv 2 32)))))
                         (x4 (int32_t (bv 2 32))))))))]
        [((arm:i64x2 v0) (arm:i32x4 v1) (arm:i32x4 v2) (uint1_t v3))
                     (arm:i64x2
                      (halide:interpret
                       (vec-add
             v0
                        (vec-if
                   (vec-lt
                    (vec-if
                  (vec-gt
                   (vec-mul
                   (int64x2
                    (vec-if
                    (x2 (uint1_t v3))
                    (slice_vectors
                     v1 2 1 2)
                    (slice_vectors
                     v1 0 1 2)))
                    (int64x2
                     (vec-if
                     (x2 (uint1_t v3))
                     (slice_vectors
                      v2 2 1 2)
                     (slice_vectors
                      v2 0 1 2))))
                   (vec-div
                    (x2 (int64_t (bv 9223372036854775807 64)))
                    (x2 (int64_t (bv 2 64)))))
                  (x2 (int64_t (bv 9223372036854775807 64)))
                    (vec-mul
                     (vec-mul
                     (int64x2
                      (vec-if
                      (x2 (uint1_t v3))
                      (slice_vectors
                       v1 2 1 2)
                      (slice_vectors
                       v1 0 1 2)))
                      (int64x2
                       (vec-if
                       (x2 (uint1_t v3))
                       (slice_vectors
                        v2 2 1 2)
                       (slice_vectors
                        v2 0 1 2))))
                     (x2 (int64_t (bv 2 64)))))
                    (vec-div
                     (x2 (int64_t (bv -9223372036854775808 64)))
                     (x2 (int64_t (bv 2 64)))))
                   (x2 (int64_t (bv -9223372036854775808 64)))
                        (vec-mul
                         (vec-if
                       (vec-gt
                        (vec-mul
                        (int64x2
                         (vec-if
                         (x2 (uint1_t v3))
                         (slice_vectors
                          v1 2 1 2)
                         (slice_vectors
                          v1 0 1 2)))
                         (int64x2
                          (vec-if
                          (x2 (uint1_t v3))
                          (slice_vectors
                           v2 2 1 2)
                          (slice_vectors
                           v2 0 1 2))))
                        (vec-div
                         (x2 (int64_t (bv 9223372036854775807 64)))
                         (x2 (int64_t (bv 2 64)))))
                       (x2 (int64_t (bv 9223372036854775807 64)))
                         (vec-mul
                          (vec-mul
                          (int64x2
                           (vec-if
                           (x2 (uint1_t v3))
                           (slice_vectors
                            v1 2 1 2)
                           (slice_vectors
                            v1 0 1 2)))
                           (int64x2
                            (vec-if
                            (x2 (uint1_t v3))
                            (slice_vectors
                             v2 2 1 2)
                            (slice_vectors
                             v2 0 1 2))))
                          (x2 (int64_t (bv 2 64)))))
                         (x2 (int64_t (bv 2 64))))))))]
        [(_ _ _ _) (assert #f (format "infeasible in sqdmlal-vv\n~a\n" (pretty-format p)))])]

    [(arm:sqdmlsl-vs Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i32x4 v0) (arm:i16x8 v1) (int16_t v2) (uint1_t v3))
                 (arm:i32x4
                  (halide:interpret
                   (vec-sub
             v0
                    (vec-if
                 (vec-lt
                  (vec-if
                 (vec-gt
                  (vec-mul
                   (int32x4
                    (vec-if
                    (x4 (uint1_t v3))
                    (slice_vectors
                     v1 4 1 4)
                    (slice_vectors
                     v1 0 1 4)))
                   (int32x4
                    (x4 (int16_t v2))))
                  (vec-div
                   (x4 (int32_t (bv 2147483647 32)))
                   (x4 (int32_t (bv 2 32)))))
                 (x4 (int32_t (bv 2147483647 32)))
                  (vec-mul
                   (vec-mul
                    (int32x4
                     (vec-if
                     (x4 (uint1_t v3))
                     (slice_vectors
                      v1 4 1 4)
                     (slice_vectors
                      v1 0 1 4)))
                    (int32x4
                     (x4 (int16_t v2))))
                   (x4 (int32_t (bv 2 32)))))
                  (vec-div
                   (x4 (int32_t (bv -2147483648 32)))
                   (x4 (int32_t (bv 2 32)))))
                 (x4 (int32_t (bv -2147483648 32)))
                    (vec-mul
                     (vec-if
                    (vec-gt
                     (vec-mul
                      (int32x4
                       (vec-if
                       (x4 (uint1_t v3))
                       (slice_vectors
                        v1 4 1 4)
                       (slice_vectors
                        v1 0 1 4)))
                      (int32x4
                       (x4 (int16_t v2))))
                     (vec-div
                      (x4 (int32_t (bv 2147483647 32)))
                      (x4 (int32_t (bv 2 32)))))
                    (x4 (int32_t (bv 2147483647 32)))
                     (vec-mul
                      (vec-mul
                       (int32x4
                        (vec-if
                        (x4 (uint1_t v3))
                        (slice_vectors
                         v1 4 1 4)
                        (slice_vectors
                         v1 0 1 4)))
                       (int32x4
                        (x4 (int16_t v2))))
                      (x4 (int32_t (bv 2 32)))))
                     (x4 (int32_t (bv 2 32))))))))]
        [((arm:i64x2 v0) (arm:i32x4 v1) (int32_t v2) (uint1_t v3))
                 (arm:i64x2
                  (halide:interpret
                   (vec-sub
             v0
                    (vec-if
                 (vec-lt
                  (vec-if
                 (vec-gt
                  (vec-mul
                   (int64x2
                    (vec-if
                    (x2 (uint1_t v3))
                    (slice_vectors
                     v1 2 1 2)
                    (slice_vectors
                     v1 0 1 2)))
                   (int64x2
                    (x2 (int32_t v2))))
                  (vec-div
                   (x2 (int64_t (bv 9223372036854775807 64)))
                   (x2 (int64_t (bv 2 64)))))
                 (x2 (int64_t (bv 9223372036854775807 64)))
                  (vec-mul
                   (vec-mul
                    (int64x2
                     (vec-if
                     (x2 (uint1_t v3))
                     (slice_vectors
                      v1 2 1 2)
                     (slice_vectors
                      v1 0 1 2)))
                    (int64x2
                     (x2 (int32_t v2))))
                   (x2 (int64_t (bv 2 64)))))
                  (vec-div
                   (x2 (int64_t (bv -9223372036854775808 64)))
                   (x2 (int64_t (bv 2 64)))))
                 (x2 (int64_t (bv -9223372036854775808 64)))
                    (vec-mul
                     (vec-if
                    (vec-gt
                     (vec-mul
                      (int64x2
                       (vec-if
                       (x2 (uint1_t v3))
                       (slice_vectors
                        v1 2 1 2)
                       (slice_vectors
                        v1 0 1 2)))
                      (int64x2
                       (x2 (int32_t v2))))
                     (vec-div
                      (x2 (int64_t (bv 9223372036854775807 64)))
                      (x2 (int64_t (bv 2 64)))))
                    (x2 (int64_t (bv 9223372036854775807 64)))
                     (vec-mul
                      (vec-mul
                       (int64x2
                        (vec-if
                        (x2 (uint1_t v3))
                        (slice_vectors
                         v1 2 1 2)
                        (slice_vectors
                         v1 0 1 2)))
                       (int64x2
                        (x2 (int32_t v2))))
                      (x2 (int64_t (bv 2 64)))))
                     (x2 (int64_t (bv 2 64))))))))]
        [(_ _ _ _) (assert #f (format "infeasible in sqdmlsl-vs\n~a\n" (pretty-format p)))])]

    [(arm:sqdmlsl-vv Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i32x4 v0) (arm:i16x8 v1) (arm:i16x8 v2) (uint1_t v3))
                     (arm:i32x4
                      (halide:interpret
                       (vec-sub
             v0
                        (vec-if
                   (vec-lt
                    (vec-if
                  (vec-gt
                   (vec-mul
                   (int32x4
                    (vec-if
                    (x4 (uint1_t v3))
                    (slice_vectors
                     v1 4 1 4)
                    (slice_vectors
                     v1 0 1 4)))
                    (int32x4
                     (vec-if
                     (x4 (uint1_t v3))
                     (slice_vectors
                      v2 4 1 4)
                     (slice_vectors
                      v2 0 1 4))))
                   (vec-div
                    (x4 (int32_t (bv 2147483647 32)))
                    (x4 (int32_t (bv 2 32)))))
                  (x4 (int32_t (bv 2147483647 32)))
                    (vec-mul
                     (vec-mul
                     (int32x4
                      (vec-if
                      (x4 (uint1_t v3))
                      (slice_vectors
                       v1 4 1 4)
                      (slice_vectors
                       v1 0 1 4)))
                      (int32x4
                       (vec-if
                       (x4 (uint1_t v3))
                       (slice_vectors
                        v2 4 1 4)
                       (slice_vectors
                        v2 0 1 4))))
                     (x4 (int32_t (bv 2 32)))))
                    (vec-div
                     (x4 (int32_t (bv -2147483648 32)))
                     (x4 (int32_t (bv 2 32)))))
                   (x4 (int32_t (bv -2147483648 32)))
                        (vec-mul
                         (vec-if
                       (vec-gt
                        (vec-mul
                        (int32x4
                         (vec-if
                         (x4 (uint1_t v3))
                         (slice_vectors
                          v1 4 1 4)
                         (slice_vectors
                          v1 0 1 4)))
                         (int32x4
                          (vec-if
                          (x4 (uint1_t v3))
                          (slice_vectors
                           v2 4 1 4)
                          (slice_vectors
                           v2 0 1 4))))
                        (vec-div
                         (x4 (int32_t (bv 2147483647 32)))
                         (x4 (int32_t (bv 2 32)))))
                       (x4 (int32_t (bv 2147483647 32)))
                         (vec-mul
                          (vec-mul
                          (int32x4
                           (vec-if
                           (x4 (uint1_t v3))
                           (slice_vectors
                            v1 4 1 4)
                           (slice_vectors
                            v1 0 1 4)))
                           (int32x4
                            (vec-if
                            (x4 (uint1_t v3))
                            (slice_vectors
                             v2 4 1 4)
                            (slice_vectors
                             v2 0 1 4))))
                          (x4 (int32_t (bv 2 32)))))
                         (x4 (int32_t (bv 2 32))))))))]
        [((arm:i64x2 v0) (arm:i32x4 v1) (arm:i32x4 v2) (uint1_t v3))
                     (arm:i64x2
                      (halide:interpret
                       (vec-sub
             v0
                        (vec-if
                   (vec-lt
                    (vec-if
                  (vec-gt
                   (vec-mul
                   (int64x2
                    (vec-if
                    (x2 (uint1_t v3))
                    (slice_vectors
                     v1 2 1 2)
                    (slice_vectors
                     v1 0 1 2)))
                    (int64x2
                     (vec-if
                     (x2 (uint1_t v3))
                     (slice_vectors
                      v2 2 1 2)
                     (slice_vectors
                      v2 0 1 2))))
                   (vec-div
                    (x2 (int64_t (bv 9223372036854775807 64)))
                    (x2 (int64_t (bv 2 64)))))
                  (x2 (int64_t (bv 9223372036854775807 64)))
                    (vec-mul
                     (vec-mul
                     (int64x2
                      (vec-if
                      (x2 (uint1_t v3))
                      (slice_vectors
                       v1 2 1 2)
                      (slice_vectors
                       v1 0 1 2)))
                      (int64x2
                       (vec-if
                       (x2 (uint1_t v3))
                       (slice_vectors
                        v2 2 1 2)
                       (slice_vectors
                        v2 0 1 2))))
                     (x2 (int64_t (bv 2 64)))))
                    (vec-div
                     (x2 (int64_t (bv -9223372036854775808 64)))
                     (x2 (int64_t (bv 2 64)))))
                   (x2 (int64_t (bv -9223372036854775808 64)))
                        (vec-mul
                         (vec-if
                       (vec-gt
                        (vec-mul
                        (int64x2
                         (vec-if
                         (x2 (uint1_t v3))
                         (slice_vectors
                          v1 2 1 2)
                         (slice_vectors
                          v1 0 1 2)))
                         (int64x2
                          (vec-if
                          (x2 (uint1_t v3))
                          (slice_vectors
                           v2 2 1 2)
                          (slice_vectors
                           v2 0 1 2))))
                        (vec-div
                         (x2 (int64_t (bv 9223372036854775807 64)))
                         (x2 (int64_t (bv 2 64)))))
                       (x2 (int64_t (bv 9223372036854775807 64)))
                         (vec-mul
                          (vec-mul
                          (int64x2
                           (vec-if
                           (x2 (uint1_t v3))
                           (slice_vectors
                            v1 2 1 2)
                           (slice_vectors
                            v1 0 1 2)))
                           (int64x2
                            (vec-if
                            (x2 (uint1_t v3))
                            (slice_vectors
                             v2 2 1 2)
                            (slice_vectors
                             v2 0 1 2))))
                          (x2 (int64_t (bv 2 64)))))
                         (x2 (int64_t (bv 2 64))))))))]
        [(_ _ _ _) (assert #f (format "infeasible in sqdmlsl-vv\n~a\n" (pretty-format p)))])]

    [(arm:sqdmulh Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (int16x4
             (vec-max
              (vec-min
               (vec-shr
                (vec-mul
                 (int32x4
                  v0)
                 (int32x4
                  v1))
                (x4 (uint32_t (bv 15 32))))
               (x4 (int32_t (bv 32767 32))))
              (x4 (int32_t (bv -32768 32)))))))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (int16x8
             (vec-max
              (vec-min
               (vec-shr
                (vec-mul
                 (int32x8
                  v0)
                 (int32x8
                  v1))
                (x8 (uint32_t (bv 15 32))))
               (x8 (int32_t (bv 32767 32))))
              (x8 (int32_t (bv -32768 32)))))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (int32x2
             (vec-max
              (vec-min
               (vec-shr
                (vec-mul
                 (int64x2
                  v0)
                 (int64x2
                  v1))
                (x2 (uint64_t (bv 31 64))))
               (x2 (int64_t (bv 2147483647 64))))
              (x2 (int64_t (bv -2147483648 64)))))))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (int32x4
             (vec-max
              (vec-min
               (vec-shr
                (vec-mul
                 (int64x4
                  v0)
                 (int64x4
                  v1))
                (x4 (uint64_t (bv 31 64))))
               (x4 (int64_t (bv 2147483647 64))))
              (x4 (int64_t (bv -2147483648 64)))))))]
        [(_ _) (assert #f (format "infeasible in sqdmulh\n~a\n" (pretty-format p)))])]

    [(arm:sqdmulh-vs Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i16x4 v0) (int16_t v1))
          (arm:i16x4
           (halide:interpret
            (int16x4
             (vec-max
              (vec-min
               (vec-shr
                (vec-mul
                 (int32x4
                  v0)
                 (int32x4
                  (x4 (int16_t v1))))
                (x4 (uint32_t (bv 15 32))))
               (x4 (int32_t (bv 32767 32))))
              (x4 (int32_t (bv -32768 32)))))))]
        [((arm:i16x8 v0) (int16_t v1))
          (arm:i16x8
           (halide:interpret
            (int16x8
             (vec-max
              (vec-min
               (vec-shr
                (vec-mul
                 (int32x8
                  v0)
                 (int32x8
                  (x8 (int16_t v1))))
                (x8 (uint32_t (bv 15 32))))
               (x8 (int32_t (bv 32767 32))))
              (x8 (int32_t (bv -32768 32)))))))]
        [((arm:i32x2 v0) (int32_t v1))
          (arm:i32x2
           (halide:interpret
            (int32x2
             (vec-max
              (vec-min
               (vec-shr
                (vec-mul
                 (int64x2
                  v0)
                 (int64x2
                  (x2 (int32_t v1))))
                (x2 (uint64_t (bv 31 64))))
               (x2 (int64_t (bv 2147483647 64))))
              (x2 (int64_t (bv -2147483648 64)))))))]
        [((arm:i32x4 v0) (int32_t v1))
          (arm:i32x4
           (halide:interpret
            (int32x4
             (vec-max
              (vec-min
               (vec-shr
                (vec-mul
                 (int64x4
                  v0)
                 (int64x4
                  (x4 (int32_t v1))))
                (x4 (uint64_t (bv 31 64))))
               (x4 (int64_t (bv 2147483647 64))))
              (x4 (int64_t (bv -2147483648 64)))))))]
        [(_ _) (assert #f (format "infeasible in sqdmulh-vs\n~a\n" (pretty-format p)))])]

    [(arm:sqdmull-vs Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i16x8 v0) (int16_t v1) (uint1_t v2))
                 (arm:i32x4
                  (halide:interpret
                   (vec-if
                (vec-lt
                 (vec-if
                (vec-gt
                 (vec-mul
                  (int32x4
                   (vec-if
                   (x4 (uint1_t v2))
                   (slice_vectors
                    v0 4 1 4)
                   (slice_vectors
                    v0 0 1 4)))
                  (int32x4
                   (x4 (int16_t v1))))
                 (vec-div
                  (x4 (int32_t (bv 2147483647 32)))
                  (x4 (int32_t (bv 2 32)))))
                (x4 (int32_t (bv 2147483647 32)))
                 (vec-mul
                  (vec-mul
                   (int32x4
                    (vec-if
                    (x4 (uint1_t v2))
                    (slice_vectors
                     v0 4 1 4)
                    (slice_vectors
                     v0 0 1 4)))
                   (int32x4
                    (x4 (int16_t v1))))
                  (x4 (int32_t (bv 2 32)))))
                 (vec-div
                  (x4 (int32_t (bv -2147483648 32)))
                  (x4 (int32_t (bv 2 32)))))
                (x4 (int32_t (bv -2147483648 32)))
                   (vec-mul
                    (vec-if
                   (vec-gt
                    (vec-mul
                     (int32x4
                      (vec-if
                      (x4 (uint1_t v2))
                      (slice_vectors
                       v0 4 1 4)
                      (slice_vectors
                       v0 0 1 4)))
                     (int32x4
                      (x4 (int16_t v1))))
                    (vec-div
                     (x4 (int32_t (bv 2147483647 32)))
                     (x4 (int32_t (bv 2 32)))))
                   (x4 (int32_t (bv 2147483647 32)))
                    (vec-mul
                     (vec-mul
                      (int32x4
                       (vec-if
                       (x4 (uint1_t v2))
                       (slice_vectors
                        v0 4 1 4)
                       (slice_vectors
                        v0 0 1 4)))
                      (int32x4
                       (x4 (int16_t v1))))
                     (x4 (int32_t (bv 2 32)))))
                    (x4 (int32_t (bv 2 32)))))))]
        [((arm:i32x4 v0) (int32_t v1) (uint1_t v2))
                 (arm:i64x2
                  (halide:interpret
                   (vec-if
                (vec-lt
                 (vec-if
                (vec-gt
                 (vec-mul
                  (int64x2
                   (vec-if
                   (x2 (uint1_t v2))
                   (slice_vectors
                    v0 2 1 2)
                   (slice_vectors
                    v0 0 1 2)))
                  (int64x2
                   (x2 (int32_t v1))))
                 (vec-div
                  (x2 (int64_t (bv 9223372036854775807 64)))
                  (x2 (int64_t (bv 2 64)))))
                (x2 (int64_t (bv 9223372036854775807 64)))
                 (vec-mul
                  (vec-mul
                   (int64x2
                    (vec-if
                    (x2 (uint1_t v2))
                    (slice_vectors
                     v0 2 1 2)
                    (slice_vectors
                     v0 0 1 2)))
                   (int64x2
                    (x2 (int32_t v1))))
                  (x2 (int64_t (bv 2 64)))))
                 (vec-div
                  (x2 (int64_t (bv -9223372036854775808 64)))
                  (x2 (int64_t (bv 2 64)))))
                (x2 (int64_t (bv -9223372036854775808 64)))
                   (vec-mul
                    (vec-if
                   (vec-gt
                    (vec-mul
                     (int64x2
                      (vec-if
                      (x2 (uint1_t v2))
                      (slice_vectors
                       v0 2 1 2)
                      (slice_vectors
                       v0 0 1 2)))
                     (int64x2
                      (x2 (int32_t v1))))
                    (vec-div
                     (x2 (int64_t (bv 9223372036854775807 64)))
                     (x2 (int64_t (bv 2 64)))))
                   (x2 (int64_t (bv 9223372036854775807 64)))
                    (vec-mul
                     (vec-mul
                      (int64x2
                       (vec-if
                       (x2 (uint1_t v2))
                       (slice_vectors
                        v0 2 1 2)
                       (slice_vectors
                        v0 0 1 2)))
                      (int64x2
                       (x2 (int32_t v1))))
                     (x2 (int64_t (bv 2 64)))))
                    (x2 (int64_t (bv 2 64)))))))]
        [(_ _ _) (assert #f (format "infeasible in sqdmull-vs\n~a\n" (pretty-format p)))])]

    [(arm:sqdmull-vv Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i16x8 v0) (arm:i16x8 v1) (uint1_t v2))
                     (arm:i32x4
                      (halide:interpret
                       (vec-if
                  (vec-lt
                   (vec-if
                 (vec-gt
                  (vec-mul
                  (int32x4
                   (vec-if
                   (x4 (uint1_t v2))
                   (slice_vectors
                    v0 4 1 4)
                   (slice_vectors
                    v0 0 1 4)))
                   (int32x4
                    (vec-if
                    (x4 (uint1_t v2))
                    (slice_vectors
                     v1 4 1 4)
                    (slice_vectors
                     v1 0 1 4))))
                  (vec-div
                   (x4 (int32_t (bv 2147483647 32)))
                   (x4 (int32_t (bv 2 32)))))
                 (x4 (int32_t (bv 2147483647 32)))
                   (vec-mul
                    (vec-mul
                    (int32x4
                     (vec-if
                     (x4 (uint1_t v2))
                     (slice_vectors
                      v0 4 1 4)
                     (slice_vectors
                      v0 0 1 4)))
                     (int32x4
                      (vec-if
                      (x4 (uint1_t v2))
                      (slice_vectors
                       v1 4 1 4)
                      (slice_vectors
                       v1 0 1 4))))
                    (x4 (int32_t (bv 2 32)))))
                   (vec-div
                    (x4 (int32_t (bv -2147483648 32)))
                    (x4 (int32_t (bv 2 32)))))
                  (x4 (int32_t (bv -2147483648 32)))
                       (vec-mul
                        (vec-if
                      (vec-gt
                       (vec-mul
                       (int32x4
                        (vec-if
                        (x4 (uint1_t v2))
                        (slice_vectors
                         v0 4 1 4)
                        (slice_vectors
                         v0 0 1 4)))
                        (int32x4
                         (vec-if
                         (x4 (uint1_t v2))
                         (slice_vectors
                          v1 4 1 4)
                         (slice_vectors
                          v1 0 1 4))))
                       (vec-div
                        (x4 (int32_t (bv 2147483647 32)))
                        (x4 (int32_t (bv 2 32)))))
                      (x4 (int32_t (bv 2147483647 32)))
                        (vec-mul
                         (vec-mul
                         (int32x4
                          (vec-if
                          (x4 (uint1_t v2))
                          (slice_vectors
                           v0 4 1 4)
                          (slice_vectors
                           v0 0 1 4)))
                          (int32x4
                           (vec-if
                           (x4 (uint1_t v2))
                           (slice_vectors
                            v1 4 1 4)
                           (slice_vectors
                            v1 0 1 4))))
                         (x4 (int32_t (bv 2 32)))))
                        (x4 (int32_t (bv 2 32)))))))]
        [((arm:i32x4 v0) (arm:i32x4 v1) (uint1_t v2))
                     (arm:i64x2
                      (halide:interpret
                       (vec-if
                  (vec-lt
                   (vec-if
                 (vec-gt
                  (vec-mul
                  (int64x2
                   (vec-if
                   (x2 (uint1_t v2))
                   (slice_vectors
                    v0 2 1 2)
                   (slice_vectors
                    v0 0 1 2)))
                   (int64x2
                    (vec-if
                    (x2 (uint1_t v2))
                    (slice_vectors
                     v1 2 1 2)
                    (slice_vectors
                     v1 0 1 2))))
                  (vec-div
                   (x2 (int64_t (bv 9223372036854775807 64)))
                   (x2 (int64_t (bv 2 64)))))
                 (x2 (int64_t (bv 9223372036854775807 64)))
                   (vec-mul
                    (vec-mul
                    (int64x2
                     (vec-if
                     (x2 (uint1_t v2))
                     (slice_vectors
                      v0 2 1 2)
                     (slice_vectors
                      v0 0 1 2)))
                     (int64x2
                      (vec-if
                      (x2 (uint1_t v2))
                      (slice_vectors
                       v1 2 1 2)
                      (slice_vectors
                       v1 0 1 2))))
                    (x2 (int64_t (bv 2 64)))))
                   (vec-div
                    (x2 (int64_t (bv -9223372036854775808 64)))
                    (x2 (int64_t (bv 2 64)))))
                  (x2 (int64_t (bv -9223372036854775808 64)))
                       (vec-mul
                        (vec-if
                      (vec-gt
                       (vec-mul
                       (int64x2
                        (vec-if
                        (x2 (uint1_t v2))
                        (slice_vectors
                         v0 2 1 2)
                        (slice_vectors
                         v0 0 1 2)))
                        (int64x2
                         (vec-if
                         (x2 (uint1_t v2))
                         (slice_vectors
                          v1 2 1 2)
                         (slice_vectors
                          v1 0 1 2))))
                       (vec-div
                        (x2 (int64_t (bv 9223372036854775807 64)))
                        (x2 (int64_t (bv 2 64)))))
                      (x2 (int64_t (bv 9223372036854775807 64)))
                        (vec-mul
                         (vec-mul
                         (int64x2
                          (vec-if
                          (x2 (uint1_t v2))
                          (slice_vectors
                           v0 2 1 2)
                          (slice_vectors
                           v0 0 1 2)))
                          (int64x2
                           (vec-if
                           (x2 (uint1_t v2))
                           (slice_vectors
                            v1 2 1 2)
                           (slice_vectors
                            v1 0 1 2))))
                         (x2 (int64_t (bv 2 64)))))
                        (x2 (int64_t (bv 2 64)))))))]
        [(_ _ _) (assert #f (format "infeasible in sqdmull-vv\n~a\n" (pretty-format p)))])]

    [(arm:sqneg Vn)
      (destruct* ((interpret Vn))
        [((arm:i8x8 v0))
          (arm:i8x8
           (halide:interpret
            (vec-sub
             (x8 (int8_t (bv 0 8)))
             (vec-max
              v0
              (x8 (int8_t (bv -128 8)))))))]
        [((arm:i8x16 v0))
          (arm:i8x16
           (halide:interpret
            (vec-sub
             (x16 (int8_t (bv 0 8)))
             (vec-max
              v0
              (x16 (int8_t (bv -128 8)))))))]
        [((arm:i16x4 v0))
          (arm:i16x4
           (halide:interpret
            (vec-sub
             (x4 (int16_t (bv 0 16)))
             (vec-max
              v0
              (x4 (int16_t (bv -32768 16)))))))]
        [((arm:i16x8 v0))
          (arm:i16x8
           (halide:interpret
            (vec-sub
             (x8 (int16_t (bv 0 16)))
             (vec-max
              v0
              (x8 (int16_t (bv -32768 16)))))))]
        [((arm:i32x2 v0))
          (arm:i32x2
           (halide:interpret
            (vec-sub
             (x2 (int32_t (bv 0 32)))
             (vec-max
              v0
              (x2 (int32_t (bv -2147483648 32)))))))]
        [((arm:i32x4 v0))
          (arm:i32x4
           (halide:interpret
            (vec-sub
             (x4 (int32_t (bv 0 32)))
             (vec-max
              v0
              (x4 (int32_t (bv -2147483648 32)))))))]
        [((arm:i64x2 v0))
          (arm:i64x2
           (halide:interpret
            (vec-sub
             (x2 (int64_t (bv 0 64)))
             (vec-max
              v0
              (x2 (int64_t (bv -9223372036854775808 64)))))))]
        [(_) (assert #f (format "infeasible in sqneg\n~a\n" (pretty-format p)))])]

    [(arm:sqrdmulh Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (int16x4
             (vec-max
              (vec-min
               (vec-add
                (vec-bwand
                 (x4 (int32_t (bv 1 32)))
                 (vec-div
                  (vec-mul
                   (int32x4
                    v0)
                   (int32x4
                    v1))
                  (x4 (int32_t (bv 16384 32)))))
                (vec-div
                 (vec-mul
                  (int32x4
                   v0)
                  (int32x4
                   v1))
                 (x4 (int32_t (bv 32768 32)))))
               (x4 (int32_t (bv 32767 32))))
              (x4 (int32_t (bv -32768 32)))))))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (int16x8
             (vec-max
              (vec-min
               (vec-add
                (vec-bwand
                 (x8 (int32_t (bv 1 32)))
                 (vec-div
                  (vec-mul
                   (int32x8
                    v0)
                   (int32x8
                    v1))
                  (x8 (int32_t (bv 16384 32)))))
                (vec-div
                 (vec-mul
                  (int32x8
                   v0)
                  (int32x8
                   v1))
                 (x8 (int32_t (bv 32768 32)))))
               (x8 (int32_t (bv 32767 32))))
              (x8 (int32_t (bv -32768 32)))))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (int32x2
             (vec-max
              (vec-min
               (vec-add
                (vec-bwand
                 (x2 (int64_t (bv 1 64)))
                 (vec-div
                  (vec-mul
                   (int64x2
                    v0)
                   (int64x2
                    v1))
                  (x2 (int64_t (bv 1073741824 64)))))
                (vec-div
                 (vec-mul
                  (int64x2
                   v0)
                  (int64x2
                   v1))
                 (x2 (int64_t (bv 2147483648 64)))))
               (x2 (int64_t (bv 2147483647 64))))
              (x2 (int64_t (bv -2147483648 64)))))))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (int32x4
             (vec-max
              (vec-min
               (vec-add
                (vec-bwand
                 (x4 (int64_t (bv 1 64)))
                 (vec-div
                  (vec-mul
                   (int64x4
                    v0)
                   (int64x4
                    v1))
                  (x4 (int64_t (bv 1073741824 64)))))
                (vec-div
                 (vec-mul
                  (int64x4
                   v0)
                  (int64x4
                   v1))
                 (x4 (int64_t (bv 2147483648 64)))))
               (x4 (int64_t (bv 2147483647 64))))
              (x4 (int64_t (bv -2147483648 64)))))))]
        [(_ _) (assert #f (format "infeasible in sqrdmulh\n~a\n" (pretty-format p)))])]

    [(arm:sqrdmulh-vs Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i16x4 v0) (int16_t v1))
          (arm:i16x4
           (halide:interpret
            (int16x4
             (vec-max
              (vec-min
               (vec-add
                (vec-bwand
                 (x4 (int32_t (bv 1 32)))
                 (vec-div
                  (vec-mul
                   (int32x4
                    v0)
                   (int32x4
                    (x4 (int16_t v1))))
                  (x4 (int32_t (bv 16384 32)))))
                (vec-div
                 (vec-mul
                  (int32x4
                   v0)
                  (int32x4
                   (x4 (int16_t v1))))
                 (x4 (int32_t (bv 32768 32)))))
               (x4 (int32_t (bv 32767 32))))
              (x4 (int32_t (bv -32768 32)))))))]
        [((arm:i16x8 v0) (int16_t v1))
          (arm:i16x8
           (halide:interpret
            (int16x8
             (vec-max
              (vec-min
               (vec-add
                (vec-bwand
                 (x8 (int32_t (bv 1 32)))
                 (vec-div
                  (vec-mul
                   (int32x8
                    v0)
                   (int32x8
                    (x8 (int16_t v1))))
                  (x8 (int32_t (bv 16384 32)))))
                (vec-div
                 (vec-mul
                  (int32x8
                   v0)
                  (int32x8
                   (x8 (int16_t v1))))
                 (x8 (int32_t (bv 32768 32)))))
               (x8 (int32_t (bv 32767 32))))
              (x8 (int32_t (bv -32768 32)))))))]
        [((arm:i32x2 v0) (int32_t v1))
          (arm:i32x2
           (halide:interpret
            (int32x2
             (vec-max
              (vec-min
               (vec-add
                (vec-bwand
                 (x2 (int64_t (bv 1 64)))
                 (vec-div
                  (vec-mul
                   (int64x2
                    v0)
                   (int64x2
                    (x2 (int32_t v1))))
                  (x2 (int64_t (bv 1073741824 64)))))
                (vec-div
                 (vec-mul
                  (int64x2
                   v0)
                  (int64x2
                   (x2 (int32_t v1))))
                 (x2 (int64_t (bv 2147483648 64)))))
               (x2 (int64_t (bv 2147483647 64))))
              (x2 (int64_t (bv -2147483648 64)))))))]
        [((arm:i32x4 v0) (int32_t v1))
          (arm:i32x4
           (halide:interpret
            (int32x4
             (vec-max
              (vec-min
               (vec-add
                (vec-bwand
                 (x4 (int64_t (bv 1 64)))
                 (vec-div
                  (vec-mul
                   (int64x4
                    v0)
                   (int64x4
                    (x4 (int32_t v1))))
                  (x4 (int64_t (bv 1073741824 64)))))
                (vec-div
                 (vec-mul
                  (int64x4
                   v0)
                  (int64x4
                   (x4 (int32_t v1))))
                 (x4 (int64_t (bv 2147483648 64)))))
               (x4 (int64_t (bv 2147483647 64))))
              (x4 (int64_t (bv -2147483648 64)))))))]
        [(_ _) (assert #f (format "infeasible in sqrdmulh-vs\n~a\n" (pretty-format p)))])]

    [(arm:sqrshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
            (arm:i8x8
             (halide:interpret
              (vec-if
             (vec-lt
              (x8 (int8_t (bv 0 8)))
              v1)
             (int8x8
              (vec-max
               (vec-min
                (vec-shl
                 (int16x8
                  v0)
                 (int16x8
                  v1))
                (x8 (int16_t (bv 127 16))))
               (x8 (int16_t (bv -128 16)))))
              (vec-add
              (vec-shl
               v0
               v1)
               (vec-bwand
                (vec-if
                (vec-lt
                 (x8 (int8_t (bv 0 8)))
                 (vec-sub
                  (x8 (int8_t (bv 0 8)))
                  v1))
                (x8 (int8_t (bv 1 8)))
                (x8 (int8_t (bv 0 8))))
                (vec-shr
                 v0
                 (vec-sub
                  (x8 (int8_t (bv -1 8)))
                  v1)))))))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
            (arm:i8x16
             (halide:interpret
              (vec-if
             (vec-lt
              (x16 (int8_t (bv 0 8)))
              v1)
             (int8x16
              (vec-max
               (vec-min
                (vec-shl
                 (int16x16
                  v0)
                 (int16x16
                  v1))
                (x16 (int16_t (bv 127 16))))
               (x16 (int16_t (bv -128 16)))))
              (vec-add
              (vec-shl
               v0
               v1)
               (vec-bwand
                (vec-if
                (vec-lt
                 (x16 (int8_t (bv 0 8)))
                 (vec-sub
                  (x16 (int8_t (bv 0 8)))
                  v1))
                (x16 (int8_t (bv 1 8)))
                (x16 (int8_t (bv 0 8))))
                (vec-shr
                 v0
                 (vec-sub
                  (x16 (int8_t (bv -1 8)))
                  v1)))))))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
            (arm:i16x4
             (halide:interpret
              (vec-if
             (vec-lt
              (x4 (int16_t (bv 0 16)))
              v1)
             (int16x4
              (vec-max
               (vec-min
                (vec-shl
                 (int32x4
                  v0)
                 (int32x4
                  v1))
                (x4 (int32_t (bv 32767 32))))
               (x4 (int32_t (bv -32768 32)))))
              (vec-add
              (vec-shl
               v0
               v1)
               (vec-bwand
                (vec-if
                (vec-lt
                 (x4 (int16_t (bv 0 16)))
                 (vec-sub
                  (x4 (int16_t (bv 0 16)))
                  v1))
                (x4 (int16_t (bv 1 16)))
                (x4 (int16_t (bv 0 16))))
                (vec-shr
                 v0
                 (vec-sub
                  (x4 (int16_t (bv -1 16)))
                  v1)))))))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
            (arm:i16x8
             (halide:interpret
              (vec-if
             (vec-lt
              (x8 (int16_t (bv 0 16)))
              v1)
             (int16x8
              (vec-max
               (vec-min
                (vec-shl
                 (int32x8
                  v0)
                 (int32x8
                  v1))
                (x8 (int32_t (bv 32767 32))))
               (x8 (int32_t (bv -32768 32)))))
              (vec-add
              (vec-shl
               v0
               v1)
               (vec-bwand
                (vec-if
                (vec-lt
                 (x8 (int16_t (bv 0 16)))
                 (vec-sub
                  (x8 (int16_t (bv 0 16)))
                  v1))
                (x8 (int16_t (bv 1 16)))
                (x8 (int16_t (bv 0 16))))
                (vec-shr
                 v0
                 (vec-sub
                  (x8 (int16_t (bv -1 16)))
                  v1)))))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
            (arm:i32x2
             (halide:interpret
              (vec-if
             (vec-lt
              (x2 (int32_t (bv 0 32)))
              v1)
             (int32x2
              (vec-max
               (vec-min
                (vec-shl
                 (int64x2
                  v0)
                 (int64x2
                  v1))
                (x2 (int64_t (bv 2147483647 64))))
               (x2 (int64_t (bv -2147483648 64)))))
              (vec-add
              (vec-shl
               v0
               v1)
               (vec-bwand
                (vec-if
                (vec-lt
                 v1
                 (x2 (int32_t (bv 0 32))))
                (x2 (int32_t (bv 1 32)))
                (x2 (int32_t (bv 0 32))))
                (vec-shr
                 v0
                 (vec-sub
                  (x2 (int32_t (bv -1 32)))
                  v1)))))))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
            (arm:i32x4
             (halide:interpret
              (vec-if
             (vec-lt
              (x4 (int32_t (bv 0 32)))
              v1)
             (int32x4
              (vec-max
               (vec-min
                (vec-shl
                 (int64x4
                  v0)
                 (int64x4
                  v1))
                (x4 (int64_t (bv 2147483647 64))))
               (x4 (int64_t (bv -2147483648 64)))))
              (vec-add
              (vec-shl
               v0
               v1)
               (vec-bwand
                (vec-if
                (vec-lt
                 v1
                 (x4 (int32_t (bv 0 32))))
                (x4 (int32_t (bv 1 32)))
                (x4 (int32_t (bv 0 32))))
                (vec-shr
                 v0
                 (vec-sub
                  (x4 (int32_t (bv -1 32)))
                  v1)))))))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
             (arm:i64x2
              (halide:interpret
               (vec-if
             (vec-lt
              (x2 (int64_t (bv 0 64)))
              v1)
              (vec-if
              (vec-lt
               (vec-shr
                (x2 (int64_t (bv 9223372036854775807 64)))
                v1)
               v0)
              (x2 (int64_t (bv 9223372036854775807 64)))
              (vec-shl
               v0
               v1))
               (vec-add
               (vec-shl
                v0
                v1)
                (vec-bwand
                 (vec-if
                 (vec-lt
                  v1
                  (x2 (int64_t (bv 0 64))))
                 (x2 (int64_t (bv 1 64)))
                 (x2 (int64_t (bv 0 64))))
                 (vec-shr
                  v0
                  (vec-sub
                   (x2 (int64_t (bv -1 64)))
                   v1)))))))]
        [(_ _) (assert #f (format "infeasible in sqrshl\n~a\n" (pretty-format p)))])]

    [(arm:sqrshrn Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (uint16_t v1) (arm:i16x8 v2) (uint16_t v3))
            (arm:i8x16
             (halide:interpret
              (concat_vectors
              (int8x8
               (vec-max
                (vec-min
                 (vec-add
                 (vec-shr
                  v0
                  (x8 (uint16_t v1)))
                  (vec-bwand
                   (vec-if
                   (x8 (sca-lt  (uint16_t (bv 0 16))  (uint16_t  v1)))
                   (x8 (int16_t (bv 1 16)))
                   (x8 (int16_t (bv 0 16))))
                   (vec-shr
                    v0
                    (x8 (sca-sub  (uint16_t  v1)  (uint16_t (bv 1 16)))))))
                 (x8 (int16_t (bv 127 16))))
                (x8 (int16_t (bv -128 16)))))
               (int8x8
                (vec-max
                 (vec-min
                  (vec-add
                  (vec-shr
                   v2
                   (x8 (uint16_t v3)))
                   (vec-bwand
                    (vec-if
                    (x8 (sca-lt  (uint16_t (bv 0 16))  (uint16_t  v3)))
                    (x8 (int16_t (bv 1 16)))
                    (x8 (int16_t (bv 0 16))))
                    (vec-shr
                     v2
                     (x8 (sca-sub  (uint16_t  v3)  (uint16_t (bv 1 16)))))))
                  (x8 (int16_t (bv 127 16))))
                 (x8 (int16_t (bv -128 16))))) 8)))]
        [((arm:i32x4 v0) (uint32_t v1) (arm:i32x4 v2) (uint32_t v3))
            (arm:i16x8
             (halide:interpret
              (concat_vectors
              (int16x4
               (vec-max
                (vec-min
                 (vec-add
                 (vec-shr
                  v0
                  (x4 (uint32_t v1)))
                  (vec-bwand
                   (vec-if
                   (x4 (sca-lt  (uint32_t (bv 0 32))  (uint32_t  v1)))
                   (x4 (int32_t (bv 1 32)))
                   (x4 (int32_t (bv 0 32))))
                   (vec-shr
                    v0
                    (x4 (sca-sub  (uint32_t  v1)  (uint32_t (bv 1 32)))))))
                 (x4 (int32_t (bv 32767 32))))
                (x4 (int32_t (bv -32768 32)))))
               (int16x4
                (vec-max
                 (vec-min
                  (vec-add
                  (vec-shr
                   v2
                   (x4 (uint32_t v3)))
                   (vec-bwand
                    (vec-if
                    (x4 (sca-lt  (uint32_t (bv 0 32))  (uint32_t  v3)))
                    (x4 (int32_t (bv 1 32)))
                    (x4 (int32_t (bv 0 32))))
                    (vec-shr
                     v2
                     (x4 (sca-sub  (uint32_t  v3)  (uint32_t (bv 1 32)))))))
                  (x4 (int32_t (bv 32767 32))))
                 (x4 (int32_t (bv -32768 32))))) 4)))]
        [((arm:i64x2 v0) (uint64_t v1) (arm:i64x2 v2) (uint64_t v3))
            (arm:i32x4
             (halide:interpret
              (concat_vectors
              (int32x2
               (vec-max
                (vec-min
                 (vec-add
                 (vec-shr
                  v0
                  (x2 (uint64_t v1)))
                  (vec-bwand
                   (vec-if
                   (x2 (sca-lt  (uint64_t (bv 0 64))  (uint64_t  v1)))
                   (x2 (int64_t (bv 1 64)))
                   (x2 (int64_t (bv 0 64))))
                   (vec-shr
                    v0
                    (x2 (sca-sub  (uint64_t  v1)  (uint64_t (bv 1 64)))))))
                 (x2 (int64_t (bv 2147483647 64))))
                (x2 (int64_t (bv -2147483648 64)))))
               (int32x2
                (vec-max
                 (vec-min
                  (vec-add
                  (vec-shr
                   v2
                   (x2 (uint64_t v3)))
                   (vec-bwand
                    (vec-if
                    (x2 (sca-lt  (uint64_t (bv 0 64))  (uint64_t  v3)))
                    (x2 (int64_t (bv 1 64)))
                    (x2 (int64_t (bv 0 64))))
                    (vec-shr
                     v2
                     (x2 (sca-sub  (uint64_t  v3)  (uint64_t (bv 1 64)))))))
                  (x2 (int64_t (bv 2147483647 64))))
                 (x2 (int64_t (bv -2147483648 64))))) 2)))]
        [(_ _ _ _) (assert #f (format "infeasible in sqrshrn\n~a\n" (pretty-format p)))])]

    [(arm:sqrshrun Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (uint16_t v1) (arm:i16x8 v2) (uint16_t v3))
            (arm:u8x16
             (halide:interpret
              (concat_vectors
              (uint8x8
               (vec-max
                (vec-min
                 (vec-add
                 (vec-shr
                  v0
                  (x8 (uint16_t v1)))
                  (vec-bwand
                   (vec-if
                   (x8 (sca-lt  (uint16_t (bv 0 16))  (uint16_t  v1)))
                   (x8 (int16_t (bv 1 16)))
                   (x8 (int16_t (bv 0 16))))
                   (vec-shr
                    v0
                    (x8 (sca-sub  (uint16_t  v1)  (uint16_t (bv 1 16)))))))
                 (x8 (int16_t (bv 255 16))))
                (x8 (int16_t (bv 0 16)))))
               (uint8x8
                (vec-max
                 (vec-min
                  (vec-add
                  (vec-shr
                   v2
                   (x8 (uint16_t v3)))
                   (vec-bwand
                    (vec-if
                    (x8 (sca-lt  (uint16_t (bv 0 16))  (uint16_t  v3)))
                    (x8 (int16_t (bv 1 16)))
                    (x8 (int16_t (bv 0 16))))
                    (vec-shr
                     v2
                     (x8 (sca-sub  (uint16_t  v3)  (uint16_t (bv 1 16)))))))
                  (x8 (int16_t (bv 255 16))))
                 (x8 (int16_t (bv 0 16))))) 8)))]
        [((arm:i32x4 v0) (uint32_t v1) (arm:i32x4 v2) (uint32_t v3))
            (arm:u16x8
             (halide:interpret
              (concat_vectors
              (uint16x4
               (vec-max
                (vec-min
                 (vec-add
                 (vec-shr
                  v0
                  (x4 (uint32_t v1)))
                  (vec-bwand
                   (vec-if
                   (x4 (sca-lt  (uint32_t (bv 0 32))  (uint32_t  v1)))
                   (x4 (int32_t (bv 1 32)))
                   (x4 (int32_t (bv 0 32))))
                   (vec-shr
                    v0
                    (x4 (sca-sub  (uint32_t  v1)  (uint32_t (bv 1 32)))))))
                 (x4 (int32_t (bv 65535 32))))
                (x4 (int32_t (bv 0 32)))))
               (uint16x4
                (vec-max
                 (vec-min
                  (vec-add
                  (vec-shr
                   v2
                   (x4 (uint32_t v3)))
                   (vec-bwand
                    (vec-if
                    (x4 (sca-lt  (uint32_t (bv 0 32))  (uint32_t  v3)))
                    (x4 (int32_t (bv 1 32)))
                    (x4 (int32_t (bv 0 32))))
                    (vec-shr
                     v2
                     (x4 (sca-sub  (uint32_t  v3)  (uint32_t (bv 1 32)))))))
                  (x4 (int32_t (bv 65535 32))))
                 (x4 (int32_t (bv 0 32))))) 4)))]
        [((arm:i64x2 v0) (uint64_t v1) (arm:i64x2 v2) (uint64_t v3))
            (arm:u32x4
             (halide:interpret
              (concat_vectors
              (uint32x2
               (vec-max
                (vec-min
                 (vec-add
                 (vec-shr
                  v0
                  (x2 (uint64_t v1)))
                  (vec-bwand
                   (vec-if
                   (x2 (sca-lt  (uint64_t (bv 0 64))  (uint64_t  v1)))
                   (x2 (int64_t (bv 1 64)))
                   (x2 (int64_t (bv 0 64))))
                   (vec-shr
                    v0
                    (x2 (sca-sub  (uint64_t  v1)  (uint64_t (bv 1 64)))))))
                 (x2 (int64_t (bv 4294967295 64))))
                (x2 (int64_t (bv 0 64)))))
               (uint32x2
                (vec-max
                 (vec-min
                  (vec-add
                  (vec-shr
                   v2
                   (x2 (uint64_t v3)))
                   (vec-bwand
                    (vec-if
                    (x2 (sca-lt  (uint64_t (bv 0 64))  (uint64_t  v3)))
                    (x2 (int64_t (bv 1 64)))
                    (x2 (int64_t (bv 0 64))))
                    (vec-shr
                     v2
                     (x2 (sca-sub  (uint64_t  v3)  (uint64_t (bv 1 64)))))))
                  (x2 (int64_t (bv 4294967295 64))))
                 (x2 (int64_t (bv 0 64))))) 2)))]
        [(_ _ _ _) (assert #f (format "infeasible in sqrshrun\n~a\n" (pretty-format p)))])]

    [(arm:sqshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (int8x8
             (vec-max
              (vec-min
               (vec-shl
                (int16x8
                 v0)
                (int16x8
                 v1))
               (x8 (int16_t (bv 127 16))))
              (x8 (int16_t (bv -128 16)))))))]
        [((arm:i8x8 v0) (arm:u8x8 v1))
          (arm:i8x8
           (halide:interpret
            (int8x8
             (vec-max
              (vec-min
               (vec-shl
                (int16x8
                 v0)
                (uint16x8
                 v1))
               (x8 (int16_t (bv 127 16))))
              (x8 (int16_t (bv -128 16)))))))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (int8x16
             (vec-max
              (vec-min
               (vec-shl
                (int16x16
                 v0)
                (int16x16
                 v1))
               (x16 (int16_t (bv 127 16))))
              (x16 (int16_t (bv -128 16)))))))]
        [((arm:i8x16 v0) (arm:u8x16 v1))
          (arm:i8x16
           (halide:interpret
            (int8x16
             (vec-max
              (vec-min
               (vec-shl
                (int16x16
                 v0)
                (uint16x16
                 v1))
               (x16 (int16_t (bv 127 16))))
              (x16 (int16_t (bv -128 16)))))))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (int16x4
             (vec-max
              (vec-min
               (vec-shl
                (int32x4
                 v0)
                (int32x4
                 v1))
               (x4 (int32_t (bv 32767 32))))
              (x4 (int32_t (bv -32768 32)))))))]
        [((arm:i16x4 v0) (arm:u16x4 v1))
          (arm:i16x4
           (halide:interpret
            (int16x4
             (vec-max
              (vec-min
               (vec-shl
                (int32x4
                 v0)
                (uint32x4
                 v1))
               (x4 (int32_t (bv 32767 32))))
              (x4 (int32_t (bv -32768 32)))))))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (int16x8
             (vec-max
              (vec-min
               (vec-shl
                (int32x8
                 v0)
                (int32x8
                 v1))
               (x8 (int32_t (bv 32767 32))))
              (x8 (int32_t (bv -32768 32)))))))]
        [((arm:i16x8 v0) (arm:u16x8 v1))
          (arm:i16x8
           (halide:interpret
            (int16x8
             (vec-max
              (vec-min
               (vec-shl
                (int32x8
                 v0)
                (uint32x8
                 v1))
               (x8 (int32_t (bv 32767 32))))
              (x8 (int32_t (bv -32768 32)))))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (int32x2
             (vec-max
              (vec-min
               (vec-shl
                (int64x2
                 v0)
                (int64x2
                 v1))
               (x2 (int64_t (bv 2147483647 64))))
              (x2 (int64_t (bv -2147483648 64)))))))]
        [((arm:i32x2 v0) (arm:u32x2 v1))
          (arm:i32x2
           (halide:interpret
            (int32x2
             (vec-max
              (vec-min
               (vec-shl
                (int64x2
                 v0)
                (uint64x2
                 v1))
               (x2 (int64_t (bv 2147483647 64))))
              (x2 (int64_t (bv -2147483648 64)))))))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (int32x4
             (vec-max
              (vec-min
               (vec-shl
                (int64x4
                 v0)
                (int64x4
                 v1))
               (x4 (int64_t (bv 2147483647 64))))
              (x4 (int64_t (bv -2147483648 64)))))))]
        [((arm:i32x4 v0) (arm:u32x4 v1))
          (arm:i32x4
           (halide:interpret
            (int32x4
             (vec-max
              (vec-min
               (vec-shl
                (int64x4
                 v0)
                (uint64x4
                 v1))
               (x4 (int64_t (bv 2147483647 64))))
              (x4 (int64_t (bv -2147483648 64)))))))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
           (arm:i64x2
            (halide:interpret
             (vec-if
             (vec-gt
              v0
              (vec-shr
               (x2 (int64_t (bv 9223372036854775807 64)))
               v1))
             (x2 (int64_t (bv 9223372036854775807 64)))
             (vec-shl
              (int64x2
               v0)
              v1))))]
        [((arm:i64x2 v0) (arm:u64x2 v1))
           (arm:i64x2
            (halide:interpret
             (vec-if
             (vec-gt
              v0
              (vec-shr
               (x2 (int64_t (bv 9223372036854775807 64)))
               v1))
             (x2 (int64_t (bv 9223372036854775807 64)))
             (vec-shl
              (int64x2
               v0)
              v1))))]
        [(_ _) (assert #f (format "infeasible in sqshl\n~a\n" (pretty-format p)))])]

    [(arm:sqshlu Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:u8x8
           (halide:interpret
            (uint8x8
             (vec-max
              (vec-min
               (vec-shl
                (int16x8
                 v0)
                (int16x8
                 v1))
               (x8 (int16_t (bv 255 16))))
              (x8 (int16_t (bv 0 16)))))))]
        [((arm:i8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (uint8x8
             (vec-max
              (vec-min
               (vec-shl
                (int16x8
                 v0)
                (uint16x8
                 v1))
               (x8 (int16_t (bv 255 16))))
              (x8 (int16_t (bv 0 16)))))))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:u8x16
           (halide:interpret
            (uint8x16
             (vec-max
              (vec-min
               (vec-shl
                (int16x16
                 v0)
                (int16x16
                 v1))
               (x16 (int16_t (bv 255 16))))
              (x16 (int16_t (bv 0 16)))))))]
        [((arm:i8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (uint8x16
             (vec-max
              (vec-min
               (vec-shl
                (int16x16
                 v0)
                (uint16x16
                 v1))
               (x16 (int16_t (bv 255 16))))
              (x16 (int16_t (bv 0 16)))))))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:u16x4
           (halide:interpret
            (uint16x4
             (vec-max
              (vec-min
               (vec-shl
                (int32x4
                 v0)
                (int32x4
                 v1))
               (x4 (int32_t (bv 65535 32))))
              (x4 (int32_t (bv 0 32)))))))]
        [((arm:i16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (uint16x4
             (vec-max
              (vec-min
               (vec-shl
                (int32x4
                 v0)
                (uint32x4
                 v1))
               (x4 (int32_t (bv 65535 32))))
              (x4 (int32_t (bv 0 32)))))))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:u16x8
           (halide:interpret
            (uint16x8
             (vec-max
              (vec-min
               (vec-shl
                (int32x8
                 v0)
                (int32x8
                 v1))
               (x8 (int32_t (bv 65535 32))))
              (x8 (int32_t (bv 0 32)))))))]
        [((arm:i16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (uint16x8
             (vec-max
              (vec-min
               (vec-shl
                (int32x8
                 v0)
                (uint32x8
                 v1))
               (x8 (int32_t (bv 65535 32))))
              (x8 (int32_t (bv 0 32)))))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:u32x2
           (halide:interpret
            (uint32x2
             (vec-max
              (vec-min
               (vec-shl
                (int64x2
                 v0)
                (int64x2
                 v1))
               (x2 (int64_t (bv 4294967295 64))))
              (x2 (int64_t (bv 0 64)))))))]
        [((arm:i32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (uint32x2
             (vec-max
              (vec-min
               (vec-shl
                (int64x2
                 v0)
                (uint64x2
                 v1))
               (x2 (int64_t (bv 4294967295 64))))
              (x2 (int64_t (bv 0 64)))))))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:u32x4
           (halide:interpret
            (uint32x4
             (vec-max
              (vec-min
               (vec-shl
                (int64x4
                 v0)
                (int64x4
                 v1))
               (x4 (int64_t (bv 4294967295 64))))
              (x4 (int64_t (bv 0 64)))))))]
        [((arm:i32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (uint32x4
             (vec-max
              (vec-min
               (vec-shl
                (int64x4
                 v0)
                (uint64x4
                 v1))
               (x4 (int64_t (bv 4294967295 64))))
              (x4 (int64_t (bv 0 64)))))))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
           (arm:u64x2
            (halide:interpret
             (vec-if
             (vec-gt
              v0
              (int64x2
               (vec-shr
                (x2 (uint64_t (bv 18446744073709551615 64)))
                v1)))
             (x2 (uint64_t (bv 18446744073709551615 64)))
             (vec-shl
              (uint64x2
               v0)
              v1))))]
        [((arm:i64x2 v0) (arm:u64x2 v1))
           (arm:u64x2
            (halide:interpret
             (vec-if
             (vec-gt
              v0
              (int64x2
               (vec-shr
                (x2 (uint64_t (bv 18446744073709551615 64)))
                v1)))
             (x2 (uint64_t (bv 18446744073709551615 64)))
             (vec-shl
              (uint64x2
               v0)
              v1))))]
        [(_ _) (assert #f (format "infeasible in sqshlu\n~a\n" (pretty-format p)))])]

    [(arm:sqshrn Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (uint16_t v1) (arm:i16x8 v2) (uint16_t v3))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (int8x8
              (vec-max
               (vec-min
                (vec-shr
                 v0
                 (x8 (uint16_t v1)))
                (x8 (int16_t (bv 127 16))))
               (x8 (int16_t (bv -128 16)))))
             (int8x8
              (vec-max
               (vec-min
                (vec-shr
                 v2
                 (x8 (uint16_t v3)))
                (x8 (int16_t (bv 127 16))))
               (x8 (int16_t (bv -128 16))))) 8)))]
        [((arm:i32x4 v0) (uint32_t v1) (arm:i32x4 v2) (uint32_t v3))
          (arm:i16x8
           (halide:interpret
            (concat_vectors
             (int16x4
              (vec-max
               (vec-min
                (vec-shr
                 v0
                 (x4 (uint32_t v1)))
                (x4 (int32_t (bv 32767 32))))
               (x4 (int32_t (bv -32768 32)))))
             (int16x4
              (vec-max
               (vec-min
                (vec-shr
                 v2
                 (x4 (uint32_t v3)))
                (x4 (int32_t (bv 32767 32))))
               (x4 (int32_t (bv -32768 32))))) 4)))]
        [((arm:i64x2 v0) (uint64_t v1) (arm:i64x2 v2) (uint64_t v3))
          (arm:i32x4
           (halide:interpret
            (concat_vectors
             (int32x2
              (vec-max
               (vec-min
                (vec-shr
                 v0
                 (x2 (uint64_t v1)))
                (x2 (int64_t (bv 2147483647 64))))
               (x2 (int64_t (bv -2147483648 64)))))
             (int32x2
              (vec-max
               (vec-min
                (vec-shr
                 v2
                 (x2 (uint64_t v3)))
                (x2 (int64_t (bv 2147483647 64))))
               (x2 (int64_t (bv -2147483648 64))))) 2)))]
        [(_ _ _ _) (assert #f (format "infeasible in sqshrn\n~a\n" (pretty-format p)))])]

    [(arm:sqshrun Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (uint16_t v1) (arm:i16x8 v2) (uint16_t v3))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (uint8x8
              (vec-max
               (vec-min
                (vec-shr
                 v0
                 (x8 (uint16_t v1)))
                (x8 (int16_t (bv 255 16))))
               (x8 (int16_t (bv 0 16)))))
             (uint8x8
              (vec-max
               (vec-min
                (vec-shr
                 v2
                 (x8 (uint16_t v3)))
                (x8 (int16_t (bv 255 16))))
               (x8 (int16_t (bv 0 16))))) 8)))]
        [((arm:i32x4 v0) (uint32_t v1) (arm:i32x4 v2) (uint32_t v3))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (uint16x4
              (vec-max
               (vec-min
                (vec-shr
                 v0
                 (x4 (uint32_t v1)))
                (x4 (int32_t (bv 65535 32))))
               (x4 (int32_t (bv 0 32)))))
             (uint16x4
              (vec-max
               (vec-min
                (vec-shr
                 v2
                 (x4 (uint32_t v3)))
                (x4 (int32_t (bv 65535 32))))
               (x4 (int32_t (bv 0 32))))) 4)))]
        [((arm:i64x2 v0) (uint64_t v1) (arm:i64x2 v2) (uint64_t v3))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (uint32x2
              (vec-max
               (vec-min
                (vec-shr
                 v0
                 (x2 (uint64_t v1)))
                (x2 (int64_t (bv 4294967295 64))))
               (x2 (int64_t (bv 0 64)))))
             (uint32x2
              (vec-max
               (vec-min
                (vec-shr
                 v2
                 (x2 (uint64_t v3)))
                (x2 (int64_t (bv 4294967295 64))))
               (x2 (int64_t (bv 0 64))))) 2)))]
        [(_ _ _ _) (assert #f (format "infeasible in sqshrun\n~a\n" (pretty-format p)))])]

    [(arm:sqsub Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (vec-sub
             (vec-max
              (vec-min
               (vec-add
                (vec-min
                 v1
                 (x8 (int8_t (bv 0 8))))
                (x8 (int8_t (bv 127 8))))
               v0)
              (vec-add
               (vec-max
                v1
                (x8 (int8_t (bv 0 8))))
               (x8 (int8_t (bv -128 8)))))
             v1)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (vec-sub
             (vec-max
              (vec-min
               (vec-add
                (vec-min
                 v1
                 (x16 (int8_t (bv 0 8))))
                (x16 (int8_t (bv 127 8))))
               v0)
              (vec-add
               (vec-max
                v1
                (x16 (int8_t (bv 0 8))))
               (x16 (int8_t (bv -128 8)))))
             v1)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (vec-sub
             (vec-max
              (vec-min
               (vec-add
                (vec-min
                 v1
                 (x4 (int16_t (bv 0 16))))
                (x4 (int16_t (bv 32767 16))))
               v0)
              (vec-add
               (vec-max
                v1
                (x4 (int16_t (bv 0 16))))
               (x4 (int16_t (bv -32768 16)))))
             v1)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (vec-sub
             (vec-max
              (vec-min
               (vec-add
                (vec-min
                 v1
                 (x8 (int16_t (bv 0 16))))
                (x8 (int16_t (bv 32767 16))))
               v0)
              (vec-add
               (vec-max
                v1
                (x8 (int16_t (bv 0 16))))
               (x8 (int16_t (bv -32768 16)))))
             v1)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (vec-sub
             (vec-max
              (vec-min
               (vec-add
                (vec-min
                 v1
                 (x2 (int32_t (bv 0 32))))
                (x2 (int32_t (bv 2147483647 32))))
               v0)
              (vec-add
               (vec-max
                v1
                (x2 (int32_t (bv 0 32))))
               (x2 (int32_t (bv -2147483648 32)))))
             v1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (vec-sub
             (vec-max
              (vec-min
               (vec-add
                (vec-min
                 v1
                 (x4 (int32_t (bv 0 32))))
                (x4 (int32_t (bv 2147483647 32))))
               v0)
              (vec-add
               (vec-max
                v1
                (x4 (int32_t (bv 0 32))))
               (x4 (int32_t (bv -2147483648 32)))))
             v1)))]
        [(_ _) (assert #f (format "infeasible in sqsub\n~a\n" (pretty-format p)))])]

    [(arm:sqxtn Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (int8x8
              (vec-max
               (vec-min
                v0
                (x8 (int16_t (bv 127 16))))
               (x8 (int16_t (bv -128 16)))))
             (int8x8
              (vec-max
               (vec-min
                v1
                (x8 (int16_t (bv 127 16))))
               (x8 (int16_t (bv -128 16))))) 8)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i16x8
           (halide:interpret
            (concat_vectors
             (int16x4
              (vec-max
               (vec-min
                v0
                (x4 (int32_t (bv 32767 32))))
               (x4 (int32_t (bv -32768 32)))))
             (int16x4
              (vec-max
               (vec-min
                v1
                (x4 (int32_t (bv 32767 32))))
               (x4 (int32_t (bv -32768 32))))) 4)))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (arm:i32x4
           (halide:interpret
            (concat_vectors
             (int32x2
              (vec-max
               (vec-min
                v0
                (x2 (int64_t (bv 2147483647 64))))
               (x2 (int64_t (bv -2147483648 64)))))
             (int32x2
              (vec-max
               (vec-min
                v1
                (x2 (int64_t (bv 2147483647 64))))
               (x2 (int64_t (bv -2147483648 64))))) 2)))]
        [(_ _) (assert #f (format "infeasible in sqxtn\n~a\n" (pretty-format p)))])]

    [(arm:sqxtun Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (uint8x8
              (vec-max
               (vec-min
                v0
                (x8 (int16_t (bv 255 16))))
               (x8 (int16_t (bv 0 16)))))
             (uint8x8
              (vec-max
               (vec-min
                v1
                (x8 (int16_t (bv 255 16))))
               (x8 (int16_t (bv 0 16))))) 8)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (uint16x4
              (vec-max
               (vec-min
                v0
                (x4 (int32_t (bv 65535 32))))
               (x4 (int32_t (bv 0 32)))))
             (uint16x4
              (vec-max
               (vec-min
                v1
                (x4 (int32_t (bv 65535 32))))
               (x4 (int32_t (bv 0 32))))) 4)))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (uint32x2
              (vec-max
               (vec-min
                v0
                (x2 (int64_t (bv 4294967295 64))))
               (x2 (int64_t (bv 0 64)))))
             (uint32x2
              (vec-max
               (vec-min
                v1
                (x2 (int64_t (bv 4294967295 64))))
               (x2 (int64_t (bv 0 64))))) 2)))]
        [(_ _) (assert #f (format "infeasible in sqxtun\n~a\n" (pretty-format p)))])]

    [(arm:srhadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (vec-add
             (vec-add
              (vec-shr
               v0
               (x8 (uint8_t (bv 1 8))))
              (vec-shr
               v1
               (x8 (uint8_t (bv 1 8)))))
             (vec-shr
              (vec-add
               (vec-add
                (vec-bwand
                 v0
                 (x8 (int8_t (bv 1 8))))
                (vec-bwand
                 v1
                 (x8 (int8_t (bv 1 8)))))
               (x8 (int8_t (bv 1 8))))
              (x8 (uint8_t (bv 1 8)))))))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (vec-add
             (vec-add
              (vec-shr
               v0
               (x16 (uint8_t (bv 1 8))))
              (vec-shr
               v1
               (x16 (uint8_t (bv 1 8)))))
             (vec-shr
              (vec-add
               (vec-add
                (vec-bwand
                 v0
                 (x16 (int8_t (bv 1 8))))
                (vec-bwand
                 v1
                 (x16 (int8_t (bv 1 8)))))
               (x16 (int8_t (bv 1 8))))
              (x16 (uint8_t (bv 1 8)))))))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (vec-add
             (vec-add
              (vec-shr
               v0
               (x4 (uint16_t (bv 1 16))))
              (vec-shr
               v1
               (x4 (uint16_t (bv 1 16)))))
             (vec-shr
              (vec-add
               (vec-add
                (vec-bwand
                 v0
                 (x4 (int16_t (bv 1 16))))
                (vec-bwand
                 v1
                 (x4 (int16_t (bv 1 16)))))
               (x4 (int16_t (bv 1 16))))
              (x4 (uint16_t (bv 1 16)))))))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (vec-add
             (vec-add
              (vec-shr
               v0
               (x8 (uint16_t (bv 1 16))))
              (vec-shr
               v1
               (x8 (uint16_t (bv 1 16)))))
             (vec-shr
              (vec-add
               (vec-add
                (vec-bwand
                 v0
                 (x8 (int16_t (bv 1 16))))
                (vec-bwand
                 v1
                 (x8 (int16_t (bv 1 16)))))
               (x8 (int16_t (bv 1 16))))
              (x8 (uint16_t (bv 1 16)))))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (vec-add
             (vec-add
              (vec-shr
               v0
               (x2 (uint32_t (bv 1 32))))
              (vec-shr
               v1
               (x2 (uint32_t (bv 1 32)))))
             (vec-shr
              (vec-add
               (vec-add
                (vec-bwand
                 v0
                 (x2 (int32_t (bv 1 32))))
                (vec-bwand
                 v1
                 (x2 (int32_t (bv 1 32)))))
               (x2 (int32_t (bv 1 32))))
              (x2 (uint32_t (bv 1 32)))))))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (vec-add
             (vec-add
              (vec-shr
               v0
               (x4 (uint32_t (bv 1 32))))
              (vec-shr
               v1
               (x4 (uint32_t (bv 1 32)))))
             (vec-shr
              (vec-add
               (vec-add
                (vec-bwand
                 v0
                 (x4 (int32_t (bv 1 32))))
                (vec-bwand
                 v1
                 (x4 (int32_t (bv 1 32)))))
               (x4 (int32_t (bv 1 32))))
              (x4 (uint32_t (bv 1 32)))))))]
        [(_ _) (assert #f (format "infeasible in srhadd\n~a\n" (pretty-format p)))])]

    ; [(arm:srhsub Vn Vm)
    ;   (destruct* ((interpret Vn) (interpret Vm))
    ;     [((arm:i8x8 v0) (arm:i8x8 v1))
    ;       (arm:i8x8
    ;        (halide:interpret
    ;         (vec-add
    ;          (vec-sub
    ;           (vec-shr
    ;            v0
    ;            (x8 (uint8_t (bv 1 8))))
    ;           (vec-shr
    ;            v1
    ;            (x8 (uint8_t (bv 1 8)))))
    ;          (vec-shr
    ;           (vec-add
    ;            (vec-sub
    ;             (vec-bwand
    ;              v0
    ;              (x8 (int8_t (bv 1 8))))
    ;             (vec-bwand
    ;              v1
    ;              (x8 (int8_t (bv 1 8)))))
    ;            (x8 (int8_t (bv 1 8))))
    ;           (x8 (uint8_t (bv 1 8)))))))]
    ;     [((arm:i8x16 v0) (arm:i8x16 v1))
    ;       (arm:i8x16
    ;        (halide:interpret
    ;         (vec-add
    ;          (vec-sub
    ;           (vec-shr
    ;            v0
    ;            (x16 (uint8_t (bv 1 8))))
    ;           (vec-shr
    ;            v1
    ;            (x16 (uint8_t (bv 1 8)))))
    ;          (vec-shr
    ;           (vec-add
    ;            (vec-sub
    ;             (vec-bwand
    ;              v0
    ;              (x16 (int8_t (bv 1 8))))
    ;             (vec-bwand
    ;              v1
    ;              (x16 (int8_t (bv 1 8)))))
    ;            (x16 (int8_t (bv 1 8))))
    ;           (x16 (uint8_t (bv 1 8)))))))]
    ;     [((arm:i16x4 v0) (arm:i16x4 v1))
    ;       (arm:i16x4
    ;        (halide:interpret
    ;         (vec-add
    ;          (vec-sub
    ;           (vec-shr
    ;            v0
    ;            (x4 (uint16_t (bv 1 16))))
    ;           (vec-shr
    ;            v1
    ;            (x4 (uint16_t (bv 1 16)))))
    ;          (vec-shr
    ;           (vec-add
    ;            (vec-sub
    ;             (vec-bwand
    ;              v0
    ;              (x4 (int16_t (bv 1 16))))
    ;             (vec-bwand
    ;              v1
    ;              (x4 (int16_t (bv 1 16)))))
    ;            (x4 (int16_t (bv 1 16))))
    ;           (x4 (uint16_t (bv 1 16)))))))]
    ;     [((arm:i16x8 v0) (arm:i16x8 v1))
    ;       (arm:i16x8
    ;        (halide:interpret
    ;         (vec-add
    ;          (vec-sub
    ;           (vec-shr
    ;            v0
    ;            (x8 (uint16_t (bv 1 16))))
    ;           (vec-shr
    ;            v1
    ;            (x8 (uint16_t (bv 1 16)))))
    ;          (vec-shr
    ;           (vec-add
    ;            (vec-sub
    ;             (vec-bwand
    ;              v0
    ;              (x8 (int16_t (bv 1 16))))
    ;             (vec-bwand
    ;              v1
    ;              (x8 (int16_t (bv 1 16)))))
    ;            (x8 (int16_t (bv 1 16))))
    ;           (x8 (uint16_t (bv 1 16)))))))]
    ;     [((arm:i32x2 v0) (arm:i32x2 v1))
    ;       (arm:i32x2
    ;        (halide:interpret
    ;         (vec-add
    ;          (vec-sub
    ;           (vec-shr
    ;            v0
    ;            (x2 (uint32_t (bv 1 32))))
    ;           (vec-shr
    ;            v1
    ;            (x2 (uint32_t (bv 1 32)))))
    ;          (vec-shr
    ;           (vec-add
    ;            (vec-sub
    ;             (vec-bwand
    ;              v0
    ;              (x2 (int32_t (bv 1 32))))
    ;             (vec-bwand
    ;              v1
    ;              (x2 (int32_t (bv 1 32)))))
    ;            (x2 (int32_t (bv 1 32))))
    ;           (x2 (uint32_t (bv 1 32)))))))]
    ;     [((arm:i32x4 v0) (arm:i32x4 v1))
    ;       (arm:i32x4
    ;        (halide:interpret
    ;         (vec-add
    ;          (vec-sub
    ;           (vec-shr
    ;            v0
    ;            (x4 (uint32_t (bv 1 32))))
    ;           (vec-shr
    ;            v1
    ;            (x4 (uint32_t (bv 1 32)))))
    ;          (vec-shr
    ;           (vec-add
    ;            (vec-sub
    ;             (vec-bwand
    ;              v0
    ;              (x4 (int32_t (bv 1 32))))
    ;             (vec-bwand
    ;              v1
    ;              (x4 (int32_t (bv 1 32)))))
    ;            (x4 (int32_t (bv 1 32))))
    ;           (x4 (uint32_t (bv 1 32)))))))]
    ;     [(_ _) (assert #f (format "infeasible in srhsub\n~a\n" (pretty-format p)))])]

    [(arm:srshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
           (arm:i8x8
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x8 (int8_t (bv 0 8))))
               (x8 (int8_t (bv 1 8)))
               (x8 (int8_t (bv 0 8))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x8 (int8_t (bv 1 8)))))))))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
           (arm:i8x16
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x16 (int8_t (bv 0 8))))
               (x16 (int8_t (bv 1 8)))
               (x16 (int8_t (bv 0 8))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x16 (int8_t (bv 1 8)))))))))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
           (arm:i16x4
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x4 (int16_t (bv 0 16))))
               (x4 (int16_t (bv 1 16)))
               (x4 (int16_t (bv 0 16))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x4 (int16_t (bv 1 16)))))))))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
           (arm:i16x8
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x8 (int16_t (bv 0 16))))
               (x8 (int16_t (bv 1 16)))
               (x8 (int16_t (bv 0 16))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x8 (int16_t (bv 1 16)))))))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
           (arm:i32x2
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x2 (int32_t (bv 0 32))))
               (x2 (int32_t (bv 1 32)))
               (x2 (int32_t (bv 0 32))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x2 (int32_t (bv 1 32)))))))))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
           (arm:i32x4
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x4 (int32_t (bv 0 32))))
               (x4 (int32_t (bv 1 32)))
               (x4 (int32_t (bv 0 32))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x4 (int32_t (bv 1 32)))))))))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
           (arm:i64x2
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x2 (int64_t (bv 0 64))))
               (x2 (int64_t (bv 1 64)))
               (x2 (int64_t (bv 0 64))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x2 (int64_t (bv 1 64)))))))))]
        [(_ _) (assert #f (format "infeasible in srshl\n~a\n" (pretty-format p)))])]

    [(arm:sshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (arm:i64x2
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [(_ _) (assert #f (format "infeasible in sshl\n~a\n" (pretty-format p)))])]

    [(arm:sshll Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (uint8_t v1) (uint1_t v2))
           (arm:i16x8
            (halide:interpret
             (vec-shl
              (int16x8
               (vec-if
               (x8 (uint1_t v2))
               (slice_vectors
                v0 8 1 8)
               (slice_vectors
                v0 0 1 8)))
              (x8 (uint16x1 (uint8_t v1))))))]
        [((arm:i16x8 v0) (uint16_t v1) (uint1_t v2))
           (arm:i32x4
            (halide:interpret
             (vec-shl
              (int32x4
               (vec-if
               (x4 (uint1_t v2))
               (slice_vectors
                v0 4 1 4)
               (slice_vectors
                v0 0 1 4)))
              (x4 (uint32x1 (uint16_t v1))))))]
        [((arm:i32x4 v0) (uint32_t v1) (uint1_t v2))
           (arm:i64x2
            (halide:interpret
             (vec-shl
              (int64x2
               (vec-if
               (x2 (uint1_t v2))
               (slice_vectors
                v0 2 1 2)
               (slice_vectors
                v0 0 1 2)))
              (x2 (uint64x1 (uint32_t v1))))))]
        [(_ _ _) (assert #f (format "infeasible in sshll\n~a\n" (pretty-format p)))])]

    [(arm:sshr Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (uint8_t v1))
          (arm:i8x8
           (halide:interpret
            (vec-shr
             v0
             (x8 (uint8_t v1)))))]
        [((arm:i8x16 v0) (uint8_t v1))
          (arm:i8x16
           (halide:interpret
            (vec-shr
             v0
             (x16 (uint8_t v1)))))]
        [((arm:i16x4 v0) (uint8_t v1))
          (arm:i16x4
           (halide:interpret
            (vec-shr
             v0
             (x4 (uint16x1 (uint8_t v1))))))]
        [((arm:i16x8 v0) (uint8_t v1))
          (arm:i16x8
           (halide:interpret
            (vec-shr
             v0
             (x8 (uint16x1 (uint8_t v1))))))]
        [((arm:i32x2 v0) (uint8_t v1))
          (arm:i32x2
           (halide:interpret
            (vec-shr
             v0
             (x2 (uint32x1 (uint8_t v1))))))]
        [((arm:i32x4 v0) (uint8_t v1))
          (arm:i32x4
           (halide:interpret
            (vec-shr
             v0
             (x4 (uint32x1 (uint8_t v1))))))]
        [((arm:i64x2 v0) (uint8_t v1))
          (arm:i64x2
           (halide:interpret
            (vec-shr
             v0
             (x2 (uint64x1 (uint8_t v1))))))]
        [(_ _) (assert #f (format "infeasible in sshr\n~a\n" (pretty-format p)))])]

    [(arm:ssubl Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1) (uint1_t v2))
           (arm:i16x8
            (halide:interpret
             (vec-if
             (x8 (uint1_t v2))
             (vec-sub
              (int16x8
               (slice_vectors
                v0 8 1 8))
              (int16x8
               (slice_vectors
                v1 8 1 8)))
             (vec-sub
              (int16x8
               (slice_vectors
                v0 0 1 8))
              (int16x8
               (slice_vectors
                v1 0 1 8))))))]
        [((arm:i16x8 v0) (arm:i16x8 v1) (uint1_t v2))
           (arm:i32x4
            (halide:interpret
             (vec-if
             (x4 (uint1_t v2))
             (vec-sub
              (int32x4
               (slice_vectors
                v0 4 1 4))
              (int32x4
               (slice_vectors
                v1 4 1 4)))
             (vec-sub
              (int32x4
               (slice_vectors
                v0 0 1 4))
              (int32x4
               (slice_vectors
                v1 0 1 4))))))]
        [((arm:i32x4 v0) (arm:i32x4 v1) (uint1_t v2))
           (arm:i64x2
            (halide:interpret
             (vec-if
             (x2 (uint1_t v2))
             (vec-sub
              (int64x2
               (slice_vectors
                v0 2 1 2))
              (int64x2
               (slice_vectors
                v1 2 1 2)))
             (vec-sub
              (int64x2
               (slice_vectors
                v0 0 1 2))
              (int64x2
               (slice_vectors
                v1 0 1 2))))))]
        [(_ _ _) (assert #f (format "infeasible in ssubl\n~a\n" (pretty-format p)))])]

    [(arm:ssubw Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i16x8 v0) (arm:i8x16 v1) (uint1_t v2))
           (arm:i16x8
            (halide:interpret
             (vec-sub
             v0
              (int16x8
               (vec-if
               (x8 (uint1_t v2))
               (slice_vectors
                v1 8 1 8)
               (slice_vectors
                v1 0 1 8))))))]
        [((arm:i32x4 v0) (arm:i16x8 v1) (uint1_t v2))
           (arm:i32x4
            (halide:interpret
             (vec-sub
             v0
              (int32x4
               (vec-if
               (x4 (uint1_t v2))
               (slice_vectors
                v1 4 1 4)
               (slice_vectors
                v1 0 1 4))))))]
        [((arm:i64x2 v0) (arm:i32x4 v1) (uint1_t v2))
           (arm:i64x2
            (halide:interpret
             (vec-sub
             v0
              (int64x2
               (vec-if
               (x2 (uint1_t v2))
               (slice_vectors
                v1 2 1 2)
               (slice_vectors
                v1 0 1 2))))))]
        [(_ _ _) (assert #f (format "infeasible in ssubw\n~a\n" (pretty-format p)))])]

    [(arm:sub Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:u64x2 v0) (arm:u64x2 v1))
          (arm:u64x2
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (arm:i64x2
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [(_ _) (assert #f (format "infeasible in sub\n~a\n" (pretty-format p)))])]

    [(arm:subhn Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:i16x8 v0) (arm:i16x8 v1) (arm:i16x8 v2) (arm:i16x8 v3))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (int8x8
              (vec-shr
               (vec-sub
                v0
                v1)
               (x8 (uint16_t (bv 8 16)))))
             (int8x8
              (vec-shr
               (vec-sub
                v2
                v3)
               (x8 (uint16_t (bv 8 16))))) 8)))]
        [((arm:i32x4 v0) (arm:i32x4 v1) (arm:i32x4 v2) (arm:i32x4 v3))
          (arm:i16x8
           (halide:interpret
            (concat_vectors
             (int16x4
              (vec-shr
               (vec-sub
                v0
                v1)
               (x4 (uint32_t (bv 16 32)))))
             (int16x4
              (vec-shr
               (vec-sub
                v2
                v3)
               (x4 (uint32_t (bv 16 32))))) 4)))]
        [((arm:i64x2 v0) (arm:i64x2 v1) (arm:i64x2 v2) (arm:i64x2 v3))
          (arm:i32x4
           (halide:interpret
            (concat_vectors
             (int32x2
              (vec-shr
               (vec-sub
                v0
                v1)
               (x2 (uint64_t (bv 32 64)))))
             (int32x2
              (vec-shr
               (vec-sub
                v2
                v3)
               (x2 (uint64_t (bv 32 64))))) 2)))]
        [((arm:u16x8 v0) (arm:u16x8 v1) (arm:u16x8 v2) (arm:u16x8 v3))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (uint8x8
              (vec-shr
               (vec-sub
                v0
                v1)
               (x8 (uint16_t (bv 8 16)))))
             (uint8x8
              (vec-shr
               (vec-sub
                v2
                v3)
               (x8 (uint16_t (bv 8 16))))) 8)))]
        [((arm:u32x4 v0) (arm:u32x4 v1) (arm:u32x4 v2) (arm:u32x4 v3))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (uint16x4
              (vec-shr
               (vec-sub
                v0
                v1)
               (x4 (uint32_t (bv 16 32)))))
             (uint16x4
              (vec-shr
               (vec-sub
                v2
                v3)
               (x4 (uint32_t (bv 16 32))))) 4)))]
        [((arm:u64x2 v0) (arm:u64x2 v1) (arm:u64x2 v2) (arm:u64x2 v3))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (uint32x2
              (vec-shr
               (vec-sub
                v0
                v1)
               (x2 (uint64_t (bv 32 64)))))
             (uint32x2
              (vec-shr
               (vec-sub
                v2
                v3)
               (x2 (uint64_t (bv 32 64))))) 2)))]
        [(_ _ _ _) (assert #f (format "infeasible in subhn\n~a\n" (pretty-format p)))])]

    [(arm:suqadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:u8x8 v1))
          (arm:i8x8
           (halide:interpret
            (int8x8
             (vec-add
              (int16x8
               v0)
              (int16x8
               v1)))))]
        [((arm:i8x16 v0) (arm:u8x16 v1))
          (arm:i8x16
           (halide:interpret
            (int8x16
             (vec-add
              (int16x16
               v0)
              (int16x16
               v1)))))]
        [((arm:i16x4 v0) (arm:u16x4 v1))
          (arm:i16x4
           (halide:interpret
            (int16x4
             (vec-add
              (int32x4
               v0)
              (int32x4
               v1)))))]
        [((arm:i16x8 v0) (arm:u16x8 v1))
          (arm:i16x8
           (halide:interpret
            (int16x8
             (vec-add
              (int32x8
               v0)
              (int32x8
               v1)))))]
        [((arm:i32x2 v0) (arm:u32x2 v1))
          (arm:i32x2
           (halide:interpret
            (int32x2
             (vec-add
              (int64x2
               v0)
              (int64x2
               v1)))))]
        [((arm:i32x4 v0) (arm:u32x4 v1))
          (arm:i32x4
           (halide:interpret
            (int32x4
             (vec-add
              (int64x4
               v0)
              (int64x4
               v1)))))]
        [(_ _) (assert #f (format "infeasible in suqadd\n~a\n" (pretty-format p)))])]

    [(arm:sxtl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x16 v0) (uint1_t v1))
           (arm:i16x8
            (halide:interpret
             (int16x8
              (vec-if
              (x8 (uint1_t v1))
              (slice_vectors
               v0 8 1 8)
              (slice_vectors
               v0 0 1 8)))))]
        [((arm:i16x8 v0) (uint1_t v1))
           (arm:i32x4
            (halide:interpret
             (int32x4
              (vec-if
              (x4 (uint1_t v1))
              (slice_vectors
               v0 4 1 4)
              (slice_vectors
               v0 0 1 4)))))]
        [((arm:i32x4 v0) (uint1_t v1))
           (arm:i64x2
            (halide:interpret
             (int64x2
              (vec-if
              (x2 (uint1_t v1))
              (slice_vectors
               v0 2 1 2)
              (slice_vectors
               v0 0 1 2)))))]
        [(_ _) (assert #f (format "infeasible in sxtl\n~a\n" (pretty-format p)))])]

    [(arm:trn1 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (interleave
             (slice_vectors
              v1 1 2 4)
             (slice_vectors
              v0 1 2 4))))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (interleave
             (slice_vectors
              v1 1 2 8)
             (slice_vectors
              v0 1 2 8))))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (interleave
             (slice_vectors
              v1 1 2 2)
             (slice_vectors
              v0 1 2 2))))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (interleave
             (slice_vectors
              v1 1 2 4)
             (slice_vectors
              v0 1 2 4))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v1 1 1 1)
             (slice_vectors
              v0 1 1 1) 1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (interleave
             (slice_vectors
              v1 1 2 2)
             (slice_vectors
              v0 1 2 2))))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (arm:i64x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v1 1 1 1)
             (slice_vectors
              v0 1 1 1) 1)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (interleave
             (slice_vectors
              v1 1 2 4)
             (slice_vectors
              v0 1 2 4))))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (interleave
             (slice_vectors
              v1 1 2 8)
             (slice_vectors
              v0 1 2 8))))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (interleave
             (slice_vectors
              v1 1 2 2)
             (slice_vectors
              v0 1 2 2))))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (interleave
             (slice_vectors
              v1 1 2 4)
             (slice_vectors
              v0 1 2 4))))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v1 1 1 1)
             (slice_vectors
              v0 1 1 1) 1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (interleave
             (slice_vectors
              v1 1 2 2)
             (slice_vectors
              v0 1 2 2))))]
        [((arm:u64x2 v0) (arm:u64x2 v1))
          (arm:u64x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v1 1 1 1)
             (slice_vectors
              v0 1 1 1) 1)))]
        [(_ _) (assert #f (format "infeasible in trn1\n~a\n" (pretty-format p)))])]

    [(arm:trn2 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (interleave
             (slice_vectors
              v1 0 2 4)
             (slice_vectors
              v0 0 2 4))))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (interleave
             (slice_vectors
              v1 0 2 8)
             (slice_vectors
              v0 0 2 8))))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (interleave
             (slice_vectors
              v1 0 2 2)
             (slice_vectors
              v0 0 2 2))))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (interleave
             (slice_vectors
              v1 0 2 4)
             (slice_vectors
              v0 0 2 4))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v1 0 1 1)
             (slice_vectors
              v0 0 1 1) 1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (interleave
             (slice_vectors
              v1 0 2 2)
             (slice_vectors
              v0 0 2 2))))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (arm:i64x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v1 0 1 1)
             (slice_vectors
              v0 0 1 1) 1)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (interleave
             (slice_vectors
              v1 0 2 4)
             (slice_vectors
              v0 0 2 4))))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (interleave
             (slice_vectors
              v1 0 2 8)
             (slice_vectors
              v0 0 2 8))))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (interleave
             (slice_vectors
              v1 0 2 2)
             (slice_vectors
              v0 0 2 2))))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (interleave
             (slice_vectors
              v1 0 2 4)
             (slice_vectors
              v0 0 2 4))))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v1 0 1 1)
             (slice_vectors
              v0 0 1 1) 1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (interleave
             (slice_vectors
              v1 0 2 2)
             (slice_vectors
              v0 0 2 2))))]
        [((arm:u64x2 v0) (arm:u64x2 v1))
          (arm:u64x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v1 0 1 1)
             (slice_vectors
              v0 0 1 1) 1)))]
        [(_ _) (assert #f (format "infeasible in trn2\n~a\n" (pretty-format p)))])]

    [(arm:uabd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [(_ _) (assert #f (format "infeasible in uabd\n~a\n" (pretty-format p)))])]

    [(arm:uadalp Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u16x4 v0) (arm:u8x8 v1))
          (arm:i16x4
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (uint16x8
               v1)))))]
        [((arm:u16x8 v0) (arm:u8x16 v1))
          (arm:i16x8
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (uint16x16
               v1)))))]
        [((arm:u32x2 v0) (arm:u16x4 v1))
          (arm:i32x2
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (uint32x4
               v1)))))]
        [((arm:u32x4 v0) (arm:u16x8 v1))
          (arm:i32x4
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (uint32x8
               v1)))))]
        [((uint64_t v0) (arm:u32x2 v1))
          (int64_t           (halide:interpret
            (sca-add              (uint64_t              v0)              (vector_reduce 'add 2
              (uint64x2
               v1)))))]
        [((arm:u64x2 v0) (arm:u32x4 v1))
          (arm:i64x2
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (uint64x4
               v1)))))]
        [(_ _) (assert #f (format "infeasible in uadalp\n~a\n" (pretty-format p)))])]

    [(arm:uaddl Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:u8x16 v0) (arm:u8x16 v1) (uint1_t v2))
           (arm:u16x8
            (halide:interpret
             (vec-if
             (x8 (uint1_t v2))
             (vec-add
              (uint16x8
               (slice_vectors
                v0 8 1 8))
              (uint16x8
               (slice_vectors
                v1 8 1 8)))
             (vec-add
              (uint16x8
               (slice_vectors
                v0 0 1 8))
              (uint16x8
               (slice_vectors
                v1 0 1 8))))))]
        [((arm:i16x8 v0) (arm:u16x8 v1) (uint1_t v2))
           (arm:u32x4
            (halide:interpret
             (vec-if
             (x4 (uint1_t v2))
             (vec-add
              (int32x4
               (slice_vectors
                v0 4 1 4))
              (int32x4
               (uint32x4
                (slice_vectors
                 v1 4 1 4))))
             (vec-add
              (int32x4
               (slice_vectors
                v0 0 1 4))
              (int32x4
               (uint32x4
                (slice_vectors
                 v1 0 1 4)))))))]
        [((arm:u32x4 v0) (arm:u32x4 v1) (uint1_t v2))
           (arm:u64x2
            (halide:interpret
             (vec-if
             (x2 (uint1_t v2))
             (vec-add
              (uint64x2
               (slice_vectors
                v0 2 1 2))
              (uint64x2
               (slice_vectors
                v1 2 1 2)))
             (vec-add
              (uint64x2
               (slice_vectors
                v0 0 1 2))
              (uint64x2
               (slice_vectors
                v1 0 1 2))))))]
        [(_ _ _) (assert #f (format "infeasible in uaddl\n~a\n" (pretty-format p)))])]

    [(arm:uaddlp Vn)
      (destruct* ((interpret Vn))
        [((arm:u8x8 v0))
          (arm:u16x4
           (halide:interpret
            (vector_reduce 'add 2
             (uint16x8
              v0))))]
        [((arm:u8x16 v0))
          (arm:u16x8
           (halide:interpret
            (vector_reduce 'add 2
             (uint16x16
              v0))))]
        [((arm:u8x8 v0))
          (arm:i16x4
           (halide:interpret
            (vector_reduce 'add 2
             (uint16x8
              v0))))]
        [((arm:u8x16 v0))
          (arm:i16x8
           (halide:interpret
            (vector_reduce 'add 2
             (uint16x16
              v0))))]
        [((arm:u16x4 v0))
          (arm:u32x2
           (halide:interpret
            (vector_reduce 'add 2
             (uint32x4
              v0))))]
        [((arm:u16x8 v0))
          (arm:u32x4
           (halide:interpret
            (vector_reduce 'add 2
             (uint32x8
              v0))))]
        [((arm:u16x4 v0))
          (arm:i32x2
           (halide:interpret
            (vector_reduce 'add 2
             (uint32x4
              v0))))]
        [((arm:u16x8 v0))
          (arm:i32x4
           (halide:interpret
            (vector_reduce 'add 2
             (uint32x8
              v0))))]
        [((arm:u32x2 v0))
          (uint64_t           (halide:interpret
            (vector_reduce 'add 2
             (uint64x2
              v0))))]
        [((arm:u32x4 v0))
          (arm:u64x2
           (halide:interpret
            (vector_reduce 'add 2
             (uint64x4
              v0))))]
        [((arm:u32x2 v0))
          (int64_t           (halide:interpret
            (vector_reduce 'add 2
             (uint64x2
              v0))))]
        [((arm:u32x4 v0))
          (arm:i64x2
           (halide:interpret
            (vector_reduce 'add 2
             (uint64x4
              v0))))]
        [(_) (assert #f (format "infeasible in uaddlp\n~a\n" (pretty-format p)))])]

    [(arm:uaddlv Vn)
      (destruct* ((interpret Vn))
        [((arm:u8x8 v0))
          (uint16_t           (halide:interpret
            (vector_reduce 'add 8
             (uint16x8
              v0))))]
        [((arm:u8x16 v0))
          (uint16_t           (halide:interpret
            (vector_reduce 'add 16
             (uint16x16
              v0))))]
        [((arm:u16x4 v0))
          (uint32_t           (halide:interpret
            (vector_reduce 'add 4
             (uint32x4
              v0))))]
        [((arm:u16x8 v0))
          (uint32_t           (halide:interpret
            (vector_reduce 'add 8
             (uint32x8
              v0))))]
        [((arm:u32x4 v0))
          (uint64_t           (halide:interpret
            (vector_reduce 'add 4
             (uint64x4
              v0))))]
        [(_) (assert #f (format "infeasible in uaddlv\n~a\n" (pretty-format p)))])]

    [(arm:uaddw Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:u16x8 v0) (arm:u8x16 v1) (uint1_t v2))
           (arm:u16x8
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x8 (uint1_t v2))
              (uint16x8
               (slice_vectors
                v1 8 1 8))
              (uint16x8
               (slice_vectors
                v1 0 1 8))))))]
        [((arm:u32x4 v0) (arm:u16x8 v1) (uint1_t v2))
           (arm:u32x4
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x4 (uint1_t v2))
              (uint32x4
               (slice_vectors
                v1 4 1 4))
              (uint32x4
               (slice_vectors
                v1 0 1 4))))))]
        [((arm:u64x2 v0) (arm:u32x4 v1) (uint1_t v2))
           (arm:u64x2
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x2 (uint1_t v2))
              (uint64x2
               (slice_vectors
                v1 2 1 2))
              (uint64x2
               (slice_vectors
                v1 0 1 2))))))]
        [(_ _ _) (assert #f (format "infeasible in uaddw\n~a\n" (pretty-format p)))])]

    [(arm:udot.v2i32.v8i4 Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i32x2 v0) (arm:u8x8 v1) (arm:u8x4 v2))
          (arm:i32x2
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 4
              (int32x8
               (vec-mul
                (uint16x8
                 v1)
                (uint16x8
                 (concat_vectors
                  v2
                  v2 4))))))))]
        [((arm:u32x2 v0) (arm:u8x8 v1) (arm:u8x4 v2))
          (arm:u32x2
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 4
              (uint32x8
               (vec-mul
                (uint16x8
                 v1)
                (uint16x8
                 (concat_vectors
                  v2
                  v2 4))))))))]
        [(_ _ _) (assert #f (format "infeasible in udot.v2i32.v8i4\n~a\n" (pretty-format p)))])]

    [(arm:udot.v2i32.v8i8 Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i32x2 v0) (arm:u8x8 v1) (arm:u8x8 v2))
          (arm:i32x2
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 4
              (int32x8
               (vec-mul
                (uint16x8
                 v1)
                (uint16x8
                 v2)))))))]
        [((arm:u32x2 v0) (arm:u8x8 v1) (arm:u8x8 v2))
          (arm:u32x2
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 4
              (uint32x8
               (vec-mul
                (uint16x8
                 v1)
                (uint16x8
                 v2)))))))]
        [(_ _ _) (assert #f (format "infeasible in udot.v2i32.v8i8\n~a\n" (pretty-format p)))])]

    [(arm:udot.v4i32.v16i4 Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i32x4 v0) (arm:u8x16 v1) (arm:u8x4 v2))
          (arm:i32x4
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 4
              (int32x16
               (vec-mul
                (uint16x16
                 v1)
                (uint16x16
                 (concat_vectors
                  (concat_vectors
                   v2
                   v2 4)
                  (concat_vectors
                   v2
                   v2 4) 8))))))))]
        [((arm:u32x4 v0) (arm:u8x16 v1) (arm:u8x4 v2))
          (arm:u32x4
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 4
              (uint32x16
               (vec-mul
                (uint16x16
                 v1)
                (uint16x16
                 (concat_vectors
                  (concat_vectors
                   v2
                   v2 4)
                  (concat_vectors
                   v2
                   v2 4) 8))))))))]
        [(_ _ _) (assert #f (format "infeasible in udot.v4i32.v16i4\n~a\n" (pretty-format p)))])]

    [(arm:udot.v4i32.v16i8 Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:i32x4 v0) (arm:u8x16 v1) (arm:u8x16 v2))
          (arm:i32x4
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 4
              (int32x16
               (vec-mul
                (uint16x16
                 v1)
                (uint16x16
                 v2)))))))]
        [((arm:u32x4 v0) (arm:u8x16 v1) (arm:u8x16 v2))
          (arm:u32x4
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 4
              (uint32x16
               (vec-mul
                (uint16x16
                 v1)
                (uint16x16
                 v2)))))))]
        [(_ _ _) (assert #f (format "infeasible in udot.v4i32.v16i8\n~a\n" (pretty-format p)))])]

    [(arm:uhadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (vec-add
             (vec-bwand
              v0
              v1)
             (vec-shr
              (vec-bwxor
               v0
               v1)
              (x8 (uint8_t (bv 1 8)))))))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (vec-add
             (vec-bwand
              v0
              v1)
             (vec-shr
              (vec-bwxor
               v0
               v1)
              (x16 (uint8_t (bv 1 8)))))))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (vec-add
             (vec-bwand
              v0
              v1)
             (vec-shr
              (vec-bwxor
               v0
               v1)
              (x4 (uint16_t (bv 1 16)))))))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (vec-add
             (vec-bwand
              v0
              v1)
             (vec-shr
              (vec-bwxor
               v0
               v1)
              (x8 (uint16_t (bv 1 16)))))))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-add
             (vec-bwand
              v0
              v1)
             (vec-shr
              (vec-bwxor
               v0
               v1)
              (x2 (uint32_t (bv 1 32)))))))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (vec-add
             (vec-bwand
              v0
              v1)
             (vec-shr
              (vec-bwxor
               v0
               v1)
              (x4 (uint32_t (bv 1 32)))))))]
        [(_ _) (assert #f (format "infeasible in uhadd\n~a\n" (pretty-format p)))])]

    [(arm:uhsub Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (vec-sub
             (vec-sub
              (vec-shr
               v0
               (x8 (uint8_t (bv 1 8))))
              (vec-shr
               v1
               (x8 (uint8_t (bv 1 8)))))
             (vec-shr
              (vec-add
               (vec-sub
                (vec-bwand
                 v1
                 (x8 (uint8_t (bv 1 8))))
                (vec-bwand
                 v0
                 (x8 (uint8_t (bv 1 8)))))
               (x8 (uint8_t (bv 1 8))))
              (x8 (uint8_t (bv 1 8)))))))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (vec-sub
             (vec-sub
              (vec-shr
               v0
               (x16 (uint8_t (bv 1 8))))
              (vec-shr
               v1
               (x16 (uint8_t (bv 1 8)))))
             (vec-shr
              (vec-add
               (vec-sub
                (vec-bwand
                 v1
                 (x16 (uint8_t (bv 1 8))))
                (vec-bwand
                 v0
                 (x16 (uint8_t (bv 1 8)))))
               (x16 (uint8_t (bv 1 8))))
              (x16 (uint8_t (bv 1 8)))))))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (vec-sub
             (vec-sub
              (vec-shr
               v0
               (x4 (uint16_t (bv 1 16))))
              (vec-shr
               v1
               (x4 (uint16_t (bv 1 16)))))
             (vec-shr
              (vec-add
               (vec-sub
                (vec-bwand
                 v1
                 (x4 (uint16_t (bv 1 16))))
                (vec-bwand
                 v0
                 (x4 (uint16_t (bv 1 16)))))
               (x4 (uint16_t (bv 1 16))))
              (x4 (uint16_t (bv 1 16)))))))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (vec-sub
             (vec-sub
              (vec-shr
               v0
               (x8 (uint16_t (bv 1 16))))
              (vec-shr
               v1
               (x8 (uint16_t (bv 1 16)))))
             (vec-shr
              (vec-add
               (vec-sub
                (vec-bwand
                 v1
                 (x8 (uint16_t (bv 1 16))))
                (vec-bwand
                 v0
                 (x8 (uint16_t (bv 1 16)))))
               (x8 (uint16_t (bv 1 16))))
              (x8 (uint16_t (bv 1 16)))))))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-sub
             (vec-sub
              (vec-shr
               v0
               (x2 (uint32_t (bv 1 32))))
              (vec-shr
               v1
               (x2 (uint32_t (bv 1 32)))))
             (vec-shr
              (vec-add
               (vec-sub
                (vec-bwand
                 v1
                 (x2 (uint32_t (bv 1 32))))
                (vec-bwand
                 v0
                 (x2 (uint32_t (bv 1 32)))))
               (x2 (uint32_t (bv 1 32))))
              (x2 (uint32_t (bv 1 32)))))))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (vec-sub
             (vec-sub
              (vec-shr
               v0
               (x4 (uint32_t (bv 1 32))))
              (vec-shr
               v1
               (x4 (uint32_t (bv 1 32)))))
             (vec-shr
              (vec-add
               (vec-sub
                (vec-bwand
                 v1
                 (x4 (uint32_t (bv 1 32))))
                (vec-bwand
                 v0
                 (x4 (uint32_t (bv 1 32)))))
               (x4 (uint32_t (bv 1 32))))
              (x4 (uint32_t (bv 1 32)))))))]
        [(_ _) (assert #f (format "infeasible in uhsub\n~a\n" (pretty-format p)))])]

    [(arm:umax Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [(_ _) (assert #f (format "infeasible in umax\n~a\n" (pretty-format p)))])]

    [(arm:umaxp Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1) 4)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1) 8)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1) 2)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1) 4)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1) 1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1) 2)))]
        [(_ _) (assert #f (format "infeasible in umaxp\n~a\n" (pretty-format p)))])]

    [(arm:umaxv Vn)
      (destruct* ((interpret Vn))
        [((arm:u8x8 v0))
          (uint8_t           (halide:interpret
            (vector_reduce 'max 8
             v0)))]
        [((arm:u8x16 v0))
          (uint8_t           (halide:interpret
            (vector_reduce 'max 16
             v0)))]
        [((arm:u16x4 v0))
          (uint16_t           (halide:interpret
            (vector_reduce 'max 4
             v0)))]
        [((arm:u16x8 v0))
          (uint16_t           (halide:interpret
            (vector_reduce 'max 8
             v0)))]
        [((arm:u32x4 v0))
          (uint32_t           (halide:interpret
            (vector_reduce 'max 4
             v0)))]
        [(_) (assert #f (format "infeasible in umaxv\n~a\n" (pretty-format p)))])]

    [(arm:umin Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [(_ _) (assert #f (format "infeasible in umin\n~a\n" (pretty-format p)))])]

    [(arm:uminp Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1) 4)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1) 8)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1) 2)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1) 4)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1) 1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1) 2)))]
        [(_ _) (assert #f (format "infeasible in uminp\n~a\n" (pretty-format p)))])]

    [(arm:uminv Vn)
      (destruct* ((interpret Vn))
        [((arm:u8x8 v0))
          (uint8_t           (halide:interpret
            (vector_reduce 'min 8
             v0)))]
        [((arm:u8x16 v0))
          (uint8_t           (halide:interpret
            (vector_reduce 'min 16
             v0)))]
        [((arm:u16x4 v0))
          (uint16_t           (halide:interpret
            (vector_reduce 'min 4
             v0)))]
        [((arm:u16x8 v0))
          (uint16_t           (halide:interpret
            (vector_reduce 'min 8
             v0)))]
        [((arm:u32x4 v0))
          (uint32_t           (halide:interpret
            (vector_reduce 'min 4
             v0)))]
        [(_) (assert #f (format "infeasible in uminv\n~a\n" (pretty-format p)))])]

    [(arm:umlal-vs Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:u16x8 v0) (arm:u8x16 v1) (uint8_t v2) (uint1_t v3))
           (arm:u16x8
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x8 (uint1_t v3))
              (vec-mul
               (uint16x8
                (slice_vectors
                 v1 8 1 8))
               (x8 (uint16x1 (uint8_t v2))))
              (vec-mul
               (uint16x8
                (slice_vectors
                 v1 0 1 8))
               (x8 (uint16x1 (uint8_t v2))))))))]
        [((arm:u32x4 v0) (arm:u16x8 v1) (uint16_t v2) (uint1_t v3))
           (arm:u32x4
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x4 (uint1_t v3))
              (vec-mul
               (uint32x4
                (slice_vectors
                 v1 4 1 4))
               (x4 (uint32x1 (uint16_t v2))))
              (vec-mul
               (uint32x4
                (slice_vectors
                 v1 0 1 4))
               (x4 (uint32x1 (uint16_t v2))))))))]
        [((arm:u64x2 v0) (arm:u32x4 v1) (uint32_t v2) (uint1_t v3))
           (arm:u64x2
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x2 (uint1_t v3))
              (vec-mul
               (uint64x2
                (slice_vectors
                 v1 2 1 2))
               (x2 (uint64x1 (uint32_t v2))))
              (vec-mul
               (uint64x2
                (slice_vectors
                 v1 0 1 2))
               (x2 (uint64x1 (uint32_t v2))))))))]
        [(_ _ _ _) (assert #f (format "infeasible in umlal-vs\n~a\n" (pretty-format p)))])]

    [(arm:umlal-vv Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:u16x8 v0) (arm:u8x16 v1) (arm:u8x16 v2) (uint1_t v3))
           (arm:u16x8
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x8 (uint1_t v3))
              (vec-mul
               (uint16x8
                (slice_vectors
                 v1 8 1 8))
               (uint16x8
                (slice_vectors
                 v2 8 1 8)))
              (vec-mul
               (uint16x8
                (slice_vectors
                 v1 0 1 8))
               (uint16x8
                (slice_vectors
                 v2 0 1 8)))))))]
        [((arm:u32x4 v0) (arm:u16x8 v1) (arm:u16x8 v2) (uint1_t v3))
           (arm:u32x4
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x4 (uint1_t v3))
              (vec-mul
               (uint32x4
                (slice_vectors
                 v1 4 1 4))
               (uint32x4
                (slice_vectors
                 v2 4 1 4)))
              (vec-mul
               (uint32x4
                (slice_vectors
                 v1 0 1 4))
               (uint32x4
                (slice_vectors
                 v2 0 1 4)))))))]
        [((arm:u64x2 v0) (arm:u32x4 v1) (arm:u32x4 v2) (uint1_t v3))
           (arm:u64x2
            (halide:interpret
             (vec-add
             v0
              (vec-if
              (x2 (uint1_t v3))
              (vec-mul
               (uint64x2
                (slice_vectors
                 v1 2 1 2))
               (uint64x2
                (slice_vectors
                 v2 2 1 2)))
              (vec-mul
               (uint64x2
                (slice_vectors
                 v1 0 1 2))
               (uint64x2
                (slice_vectors
                 v2 0 1 2)))))))]
        [(_ _ _ _) (assert #f (format "infeasible in umlal-vv\n~a\n" (pretty-format p)))])]

    [(arm:umlsl-vs Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:u16x8 v0) (arm:u8x16 v1) (uint8_t v2) (uint1_t v3))
           (arm:u16x8
            (halide:interpret
             (vec-sub
             v0
              (vec-if
              (x8 (uint1_t v3))
              (vec-mul
               (uint16x8
                (slice_vectors
                 v1 8 1 8))
               (x8 (uint16x1 (uint8_t v2))))
              (vec-mul
               (uint16x8
                (slice_vectors
                 v1 0 1 8))
               (x8 (uint16x1 (uint8_t v2))))))))]
        [((arm:u32x4 v0) (arm:u16x8 v1) (uint16_t v2) (uint1_t v3))
           (arm:u32x4
            (halide:interpret
             (vec-sub
             v0
              (vec-if
              (x4 (uint1_t v3))
              (vec-mul
               (uint32x4
                (slice_vectors
                 v1 4 1 4))
               (x4 (uint32x1 (uint16_t v2))))
              (vec-mul
               (uint32x4
                (slice_vectors
                 v1 0 1 4))
               (x4 (uint32x1 (uint16_t v2))))))))]
        [((arm:u64x2 v0) (arm:u32x4 v1) (uint32_t v2) (uint1_t v3))
           (arm:u64x2
            (halide:interpret
             (vec-sub
             v0
              (vec-if
              (x2 (uint1_t v3))
              (vec-mul
               (uint64x2
                (slice_vectors
                 v1 2 1 2))
               (x2 (uint64x1 (uint32_t v2))))
              (vec-mul
               (uint64x2
                (slice_vectors
                 v1 0 1 2))
               (x2 (uint64x1 (uint32_t v2))))))))]
        [(_ _ _ _) (assert #f (format "infeasible in umlsl-vs\n~a\n" (pretty-format p)))])]

    [(arm:umlsl-vv Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:u16x8 v0) (arm:u8x16 v1) (arm:u8x16 v2) (uint1_t v3))
           (arm:u16x8
            (halide:interpret
             (vec-sub
             v0
              (vec-if
              (x8 (uint1_t v3))
              (vec-mul
               (uint16x8
                (slice_vectors
                 v1 8 1 8))
               (uint16x8
                (slice_vectors
                 v2 8 1 8)))
              (vec-mul
               (uint16x8
                (slice_vectors
                 v1 0 1 8))
               (uint16x8
                (slice_vectors
                 v2 0 1 8)))))))]
        [((arm:u32x4 v0) (arm:u16x8 v1) (arm:u16x8 v2) (uint1_t v3))
           (arm:u32x4
            (halide:interpret
             (vec-sub
             v0
              (vec-if
              (x4 (uint1_t v3))
              (vec-mul
               (uint32x4
                (slice_vectors
                 v1 4 1 4))
               (uint32x4
                (slice_vectors
                 v2 4 1 4)))
              (vec-mul
               (uint32x4
                (slice_vectors
                 v1 0 1 4))
               (uint32x4
                (slice_vectors
                 v2 0 1 4)))))))]
        [((arm:u64x2 v0) (arm:u32x4 v1) (arm:u32x4 v2) (uint1_t v3))
           (arm:u64x2
            (halide:interpret
             (vec-sub
             v0
              (vec-if
              (x2 (uint1_t v3))
              (vec-mul
               (uint64x2
                (slice_vectors
                 v1 2 1 2))
               (uint64x2
                (slice_vectors
                 v2 2 1 2)))
              (vec-mul
               (uint64x2
                (slice_vectors
                 v1 0 1 2))
               (uint64x2
                (slice_vectors
                 v2 0 1 2)))))))]
        [(_ _ _ _) (assert #f (format "infeasible in umlsl-vv\n~a\n" (pretty-format p)))])]

    [(arm:umull-vs Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:u8x16 v0) (uint8_t v1) (uint1_t v2))
           (arm:u16x8
            (halide:interpret
             (vec-if
             (x8 (uint1_t v2))
             (vec-mul
              (uint16x8
               (slice_vectors
                v0 8 1 8))
              (uint16x8
               (x8 (uint8_t v1))))
             (vec-mul
              (uint16x8
               (slice_vectors
                v0 0 1 8))
              (uint16x8
               (x8 (uint8_t v1)))))))]
        [((arm:u16x8 v0) (uint16_t v1) (uint1_t v2))
           (arm:u32x4
            (halide:interpret
             (vec-if
             (x4 (uint1_t v2))
             (vec-mul
              (uint32x4
               (slice_vectors
                v0 4 1 4))
              (uint32x4
               (x4 (uint16_t v1))))
             (vec-mul
              (uint32x4
               (slice_vectors
                v0 0 1 4))
              (uint32x4
               (x4 (uint16_t v1)))))))]
        [((arm:u32x4 v0) (uint32_t v1) (uint1_t v2))
           (arm:u64x2
            (halide:interpret
             (vec-if
             (x2 (uint1_t v2))
             (vec-mul
              (uint64x2
               (slice_vectors
                v0 2 1 2))
              (uint64x2
               (x2 (uint32_t v1))))
             (vec-mul
              (uint64x2
               (slice_vectors
                v0 0 1 2))
              (uint64x2
               (x2 (uint32_t v1)))))))]
        [(_ _ _) (assert #f (format "infeasible in umull-vs\n~a\n" (pretty-format p)))])]

    [(arm:umull-vv Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:u8x16 v0) (arm:u8x16 v1) (uint1_t v2))
           (arm:u16x8
            (halide:interpret
             (vec-if
             (x8 (uint1_t v2))
             (vec-mul
              (uint16x8
               (slice_vectors
                v0 8 1 8))
              (uint16x8
               (slice_vectors
                v1 8 1 8)))
             (vec-mul
              (uint16x8
               (slice_vectors
                v0 0 1 8))
              (uint16x8
               (slice_vectors
                v1 0 1 8))))))]
        [((arm:u16x8 v0) (arm:u16x8 v1) (uint1_t v2))
           (arm:u32x4
            (halide:interpret
             (vec-if
             (x4 (uint1_t v2))
             (vec-mul
              (uint32x4
               (slice_vectors
                v0 4 1 4))
              (uint32x4
               (slice_vectors
                v1 4 1 4)))
             (vec-mul
              (uint32x4
               (slice_vectors
                v0 0 1 4))
              (uint32x4
               (slice_vectors
                v1 0 1 4))))))]
        [((arm:u32x4 v0) (arm:u32x4 v1) (uint1_t v2))
           (arm:u64x2
            (halide:interpret
             (vec-if
             (x2 (uint1_t v2))
             (vec-mul
              (uint64x2
               (slice_vectors
                v0 2 1 2))
              (uint64x2
               (slice_vectors
                v1 2 1 2)))
             (vec-mul
              (uint64x2
               (slice_vectors
                v0 0 1 2))
              (uint64x2
               (slice_vectors
                v1 0 1 2))))))]
        [(_ _ _) (assert #f (format "infeasible in umull-vv\n~a\n" (pretty-format p)))])]

    [(arm:uqadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (vec-add
             (vec-min
              (vec-sub
               (x8 (uint8_t (bv 255 8)))
               v1)
              v0)
             v1)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (vec-add
             (vec-min
              (vec-sub
               (x16 (uint8_t (bv 255 8)))
               v1)
              v0)
             v1)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (vec-add
             (vec-min
              (vec-sub
               (x4 (uint16_t (bv 65535 16)))
               v1)
              v0)
             v1)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (vec-add
             (vec-min
              (vec-sub
               (x8 (uint16_t (bv 65535 16)))
               v1)
              v0)
             v1)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-add
             (vec-min
              (vec-sub
               (x2 (uint32_t (bv 4294967295 32)))
               v1)
              v0)
             v1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (vec-add
             (vec-min
              (vec-sub
               (x4 (uint32_t (bv 4294967295 32)))
               v1)
              v0)
             v1)))]
        [(_ _) (assert #f (format "infeasible in uqadd\n~a\n" (pretty-format p)))])]

    [(arm:uqrshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:i8x8 v1))
            (arm:u8x8
             (halide:interpret
              (vec-if
             (vec-lt
              (x8 (int8_t (bv 0 8)))
              v1)
             (uint8x8
              (vec-min
               (vec-shl
                (uint16x8
                 v0)
                (int16x8
                 v1))
               (x8 (uint16_t (bv 255 16)))))
              (vec-add
              (vec-shl
               v0
               v1)
               (vec-bwand
                (vec-if
                (vec-lt
                 (x8 (int8_t (bv 0 8)))
                 (vec-sub
                  (x8 (int8_t (bv 0 8)))
                  v1))
                (x8 (uint8_t (bv 1 8)))
                (x8 (uint8_t (bv 0 8))))
                (vec-shr
                 v0
                 (vec-sub
                  (x8 (int8_t (bv -1 8)))
                  v1)))))))]
        [((arm:u8x16 v0) (arm:i8x16 v1))
            (arm:u8x16
             (halide:interpret
              (vec-if
             (vec-lt
              (x16 (int8_t (bv 0 8)))
              v1)
             (uint8x16
              (vec-min
               (vec-shl
                (uint16x16
                 v0)
                (int16x16
                 v1))
               (x16 (uint16_t (bv 255 16)))))
              (vec-add
              (vec-shl
               v0
               v1)
               (vec-bwand
                (vec-if
                (vec-lt
                 (x16 (int8_t (bv 0 8)))
                 (vec-sub
                  (x16 (int8_t (bv 0 8)))
                  v1))
                (x16 (uint8_t (bv 1 8)))
                (x16 (uint8_t (bv 0 8))))
                (vec-shr
                 v0
                 (vec-sub
                  (x16 (int8_t (bv -1 8)))
                  v1)))))))]
        [((arm:u16x4 v0) (arm:i16x4 v1))
            (arm:u16x4
             (halide:interpret
              (vec-if
             (vec-lt
              (x4 (int16_t (bv 0 16)))
              v1)
             (uint16x4
              (vec-min
               (vec-shl
                (uint32x4
                 v0)
                (int32x4
                 v1))
               (x4 (uint32_t (bv 65535 32)))))
              (vec-add
              (vec-shl
               v0
               v1)
               (vec-bwand
                (vec-if
                (vec-lt
                 (x4 (int16_t (bv 0 16)))
                 (vec-sub
                  (x4 (int16_t (bv 0 16)))
                  v1))
                (x4 (uint16_t (bv 1 16)))
                (x4 (uint16_t (bv 0 16))))
                (vec-shr
                 v0
                 (vec-sub
                  (x4 (int16_t (bv -1 16)))
                  v1)))))))]
        [((arm:u16x8 v0) (arm:i16x8 v1))
            (arm:u16x8
             (halide:interpret
              (vec-if
             (vec-lt
              (x8 (int16_t (bv 0 16)))
              v1)
             (uint16x8
              (vec-min
               (vec-shl
                (uint32x8
                 v0)
                (int32x8
                 v1))
               (x8 (uint32_t (bv 65535 32)))))
              (vec-add
              (vec-shl
               v0
               v1)
               (vec-bwand
                (vec-if
                (vec-lt
                 (x8 (int16_t (bv 0 16)))
                 (vec-sub
                  (x8 (int16_t (bv 0 16)))
                  v1))
                (x8 (uint16_t (bv 1 16)))
                (x8 (uint16_t (bv 0 16))))
                (vec-shr
                 v0
                 (vec-sub
                  (x8 (int16_t (bv -1 16)))
                  v1)))))))]
        [((arm:u32x2 v0) (arm:i32x2 v1))
            (arm:u32x2
             (halide:interpret
              (vec-if
             (vec-lt
              (x2 (int32_t (bv 0 32)))
              v1)
             (uint32x2
              (vec-min
               (vec-shl
                (uint64x2
                 v0)
                (int64x2
                 v1))
               (x2 (uint64_t (bv 4294967295 64)))))
              (vec-add
              (vec-shl
               v0
               v1)
               (vec-bwand
                (vec-if
                (vec-lt
                 v1
                 (x2 (int32_t (bv 0 32))))
                (x2 (uint32_t (bv 1 32)))
                (x2 (uint32_t (bv 0 32))))
                (vec-shr
                 v0
                 (vec-sub
                  (x2 (int32_t (bv -1 32)))
                  v1)))))))]
        [((arm:u32x4 v0) (arm:i32x4 v1))
            (arm:u32x4
             (halide:interpret
              (vec-if
             (vec-lt
              (x4 (int32_t (bv 0 32)))
              v1)
             (uint32x4
              (vec-min
               (vec-shl
                (uint64x4
                 v0)
                (int64x4
                 v1))
               (x4 (uint64_t (bv 4294967295 64)))))
              (vec-add
              (vec-shl
               v0
               v1)
               (vec-bwand
                (vec-if
                (vec-lt
                 v1
                 (x4 (int32_t (bv 0 32))))
                (x4 (uint32_t (bv 1 32)))
                (x4 (uint32_t (bv 0 32))))
                (vec-shr
                 v0
                 (vec-sub
                  (x4 (int32_t (bv -1 32)))
                  v1)))))))]
        [((arm:u64x2 v0) (arm:i64x2 v1))
             (arm:u64x2
              (halide:interpret
               (vec-if
             (vec-lt
              (x2 (int64_t (bv 0 64)))
              v1)
              (vec-if
              (vec-lt
               (vec-shr
                (x2 (uint64_t (bv 18446744073709551615 64)))
                v1)
               v0)
              (x2 (uint64_t (bv 18446744073709551615 64)))
              (vec-shl
               v0
               v1))
               (vec-add
               (vec-shl
                v0
                v1)
                (vec-bwand
                 (vec-if
                 (vec-lt
                  v1
                  (x2 (int64_t (bv 0 64))))
                 (x2 (uint64_t (bv 1 64)))
                 (x2 (uint64_t (bv 0 64))))
                 (vec-shr
                  v0
                  (vec-sub
                   (x2 (int64_t (bv -1 64)))
                   v1)))))))]
        [(_ _) (assert #f (format "infeasible in uqrshl\n~a\n" (pretty-format p)))])]

    [(arm:uqrshrn Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:u16x8 v0) (uint16_t v1) (arm:u16x8 v2) (uint16_t v3))
            (arm:u8x16
             (halide:interpret
              (concat_vectors
              (uint8x8
               (vec-min
                (vec-add
                (vec-shr
                 v0
                 (x8 (uint16_t v1)))
                 (vec-bwand
                  (vec-if
                  (x8 (sca-lt  (uint16_t (bv 0 16))  (uint16_t  v1)))
                  (x8 (uint16_t (bv 1 16)))
                  (x8 (uint16_t (bv 0 16))))
                  (vec-shr
                   v0
                   (x8 (sca-sub  (uint16_t  v1)  (uint16_t (bv 1 16)))))))
                (x8 (uint16_t (bv 255 16)))))
               (uint8x8
                (vec-min
                 (vec-add
                 (vec-shr
                  v2
                  (x8 (uint16_t v3)))
                  (vec-bwand
                   (vec-if
                   (x8 (sca-lt  (uint16_t (bv 0 16))  (uint16_t  v3)))
                   (x8 (uint16_t (bv 1 16)))
                   (x8 (uint16_t (bv 0 16))))
                   (vec-shr
                    v2
                    (x8 (sca-sub  (uint16_t  v3)  (uint16_t (bv 1 16)))))))
                 (x8 (uint16_t (bv 255 16))))) 8)))]
        [((arm:u32x4 v0) (uint32_t v1) (arm:u32x4 v2) (uint32_t v3))
            (arm:u16x8
             (halide:interpret
              (concat_vectors
              (uint16x4
               (vec-min
                (vec-add
                (vec-shr
                 v0
                 (x4 (uint32_t v1)))
                 (vec-bwand
                  (vec-if
                  (x4 (sca-lt  (uint32_t (bv 0 32))  (uint32_t  v1)))
                  (x4 (uint32_t (bv 1 32)))
                  (x4 (uint32_t (bv 0 32))))
                  (vec-shr
                   v0
                   (x4 (sca-sub  (uint32_t  v1)  (uint32_t (bv 1 32)))))))
                (x4 (uint32_t (bv 65535 32)))))
               (uint16x4
                (vec-min
                 (vec-add
                 (vec-shr
                  v2
                  (x4 (uint32_t v3)))
                  (vec-bwand
                   (vec-if
                   (x4 (sca-lt  (uint32_t (bv 0 32))  (uint32_t  v3)))
                   (x4 (uint32_t (bv 1 32)))
                   (x4 (uint32_t (bv 0 32))))
                   (vec-shr
                    v2
                    (x4 (sca-sub  (uint32_t  v3)  (uint32_t (bv 1 32)))))))
                 (x4 (uint32_t (bv 65535 32))))) 4)))]
        [((arm:u64x2 v0) (uint64_t v1) (arm:u64x2 v2) (uint64_t v3))
            (arm:u32x4
             (halide:interpret
              (concat_vectors
              (uint32x2
               (vec-min
                (vec-add
                (vec-shr
                 v0
                 (x2 (uint64_t v1)))
                 (vec-bwand
                  (vec-if
                  (x2 (sca-lt  (uint64_t (bv 0 64))  (uint64_t  v1)))
                  (x2 (uint64_t (bv 1 64)))
                  (x2 (uint64_t (bv 0 64))))
                  (vec-shr
                   v0
                   (x2 (sca-sub  (uint64_t  v1)  (uint64_t (bv 1 64)))))))
                (x2 (uint64_t (bv 4294967295 64)))))
               (uint32x2
                (vec-min
                 (vec-add
                 (vec-shr
                  v2
                  (x2 (uint64_t v3)))
                  (vec-bwand
                   (vec-if
                   (x2 (sca-lt  (uint64_t (bv 0 64))  (uint64_t  v3)))
                   (x2 (uint64_t (bv 1 64)))
                   (x2 (uint64_t (bv 0 64))))
                   (vec-shr
                    v2
                    (x2 (sca-sub  (uint64_t  v3)  (uint64_t (bv 1 64)))))))
                 (x2 (uint64_t (bv 4294967295 64))))) 2)))]
        [(_ _ _ _) (assert #f (format "infeasible in uqrshrn\n~a\n" (pretty-format p)))])]

    [(arm:uqshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:i8x8 v1))
          (arm:u8x8
           (halide:interpret
            (uint8x8
             (vec-min
              (vec-shl
               (uint16x8
                v0)
               (int16x8
                v1))
              (x8 (uint16_t (bv 255 16)))))))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (uint8x8
             (vec-min
              (vec-shl
               (uint16x8
                v0)
               (uint16x8
                v1))
              (x8 (uint16_t (bv 255 16)))))))]
        [((arm:u8x16 v0) (arm:i8x16 v1))
          (arm:u8x16
           (halide:interpret
            (uint8x16
             (vec-min
              (vec-shl
               (uint16x16
                v0)
               (int16x16
                v1))
              (x16 (uint16_t (bv 255 16)))))))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (uint8x16
             (vec-min
              (vec-shl
               (uint16x16
                v0)
               (uint16x16
                v1))
              (x16 (uint16_t (bv 255 16)))))))]
        [((arm:u16x4 v0) (arm:i16x4 v1))
          (arm:u16x4
           (halide:interpret
            (uint16x4
             (vec-min
              (vec-shl
               (uint32x4
                v0)
               (int32x4
                v1))
              (x4 (uint32_t (bv 65535 32)))))))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (uint16x4
             (vec-min
              (vec-shl
               (uint32x4
                v0)
               (uint32x4
                v1))
              (x4 (uint32_t (bv 65535 32)))))))]
        [((arm:u16x8 v0) (arm:i16x8 v1))
          (arm:u16x8
           (halide:interpret
            (uint16x8
             (vec-min
              (vec-shl
               (uint32x8
                v0)
               (int32x8
                v1))
              (x8 (uint32_t (bv 65535 32)))))))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (uint16x8
             (vec-min
              (vec-shl
               (uint32x8
                v0)
               (uint32x8
                v1))
              (x8 (uint32_t (bv 65535 32)))))))]
        [((arm:u32x2 v0) (arm:i32x2 v1))
          (arm:u32x2
           (halide:interpret
            (uint32x2
             (vec-min
              (vec-shl
               (uint64x2
                v0)
               (int64x2
                v1))
              (x2 (uint64_t (bv 4294967295 64)))))))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (uint32x2
             (vec-min
              (vec-shl
               (uint64x2
                v0)
               (uint64x2
                v1))
              (x2 (uint64_t (bv 4294967295 64)))))))]
        [((arm:u32x4 v0) (arm:i32x4 v1))
          (arm:u32x4
           (halide:interpret
            (uint32x4
             (vec-min
              (vec-shl
               (uint64x4
                v0)
               (int64x4
                v1))
              (x4 (uint64_t (bv 4294967295 64)))))))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (uint32x4
             (vec-min
              (vec-shl
               (uint64x4
                v0)
               (uint64x4
                v1))
              (x4 (uint64_t (bv 4294967295 64)))))))]
        [((arm:u64x2 v0) (arm:i64x2 v1))
           (arm:u64x2
            (halide:interpret
             (vec-if
             (vec-gt
              v0
              (vec-shr
               (x2 (uint64_t (bv 18446744073709551615 64)))
               v1))
             (x2 (uint64_t (bv 18446744073709551615 64)))
             (vec-shl
              (uint64x2
               v0)
              v1))))]
        [((arm:u64x2 v0) (arm:u64x2 v1))
           (arm:u64x2
            (halide:interpret
             (vec-if
             (vec-gt
              v0
              (vec-shr
               (x2 (uint64_t (bv 18446744073709551615 64)))
               v1))
             (x2 (uint64_t (bv 18446744073709551615 64)))
             (vec-shl
              (uint64x2
               v0)
              v1))))]
        [(_ _) (assert #f (format "infeasible in uqshl\n~a\n" (pretty-format p)))])]

    [(arm:uqshrn Vd Vn Vm Vb)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm) (interpret Vb))
        [((arm:u16x8 v0) (uint16_t v1) (arm:u16x8 v2) (uint16_t v3))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (uint8x8
              (vec-min
               (vec-shr
                v0
                (x8 (uint16_t v1)))
               (x8 (uint16_t (bv 255 16)))))
             (uint8x8
              (vec-min
               (vec-shr
                v2
                (x8 (uint16_t v3)))
               (x8 (uint16_t (bv 255 16))))) 8)))]
        [((arm:u32x4 v0) (uint32_t v1) (arm:u32x4 v2) (uint32_t v3))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (uint16x4
              (vec-min
               (vec-shr
                v0
                (x4 (uint32_t v1)))
               (x4 (uint32_t (bv 65535 32)))))
             (uint16x4
              (vec-min
               (vec-shr
                v2
                (x4 (uint32_t v3)))
               (x4 (uint32_t (bv 65535 32))))) 4)))]
        [((arm:u64x2 v0) (uint64_t v1) (arm:u64x2 v2) (uint64_t v3))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (uint32x2
              (vec-min
               (vec-shr
                v0
                (x2 (uint64_t v1)))
               (x2 (uint64_t (bv 4294967295 64)))))
             (uint32x2
              (vec-min
               (vec-shr
                v2
                (x2 (uint64_t v3)))
               (x2 (uint64_t (bv 4294967295 64))))) 2)))]
        [(_ _ _ _) (assert #f (format "infeasible in uqshrn\n~a\n" (pretty-format p)))])]

    [(arm:uqsub Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (vec-sub
             (vec-max
              v0
              v1)
             v1)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (vec-sub
             (vec-max
              v0
              v1)
             v1)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (vec-sub
             (vec-max
              v0
              v1)
             v1)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (vec-sub
             (vec-max
              v0
              v1)
             v1)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-sub
             (vec-max
              v0
              v1)
             v1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (vec-sub
             (vec-max
              v0
              v1)
             v1)))]
        [(_ _) (assert #f (format "infeasible in uqsub\n~a\n" (pretty-format p)))])]

    [(arm:uqxtn Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (uint8x8
              (vec-min
               v0
               (x8 (uint16_t (bv 255 16)))))
             (uint8x8
              (vec-min
               v1
               (x8 (uint16_t (bv 255 16))))) 8)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (uint16x4
              (vec-min
               v0
               (x4 (uint32_t (bv 65535 32)))))
             (uint16x4
              (vec-min
               v1
               (x4 (uint32_t (bv 65535 32))))) 4)))]
        [((arm:u64x2 v0) (arm:u64x2 v1))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (uint32x2
              (vec-min
               v0
               (x2 (uint64_t (bv 4294967295 64)))))
             (uint32x2
              (vec-min
               v1
               (x2 (uint64_t (bv 4294967295 64))))) 2)))]
        [(_ _) (assert #f (format "infeasible in uqxtn\n~a\n" (pretty-format p)))])]

    [(arm:urhadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (vec-add
             (vec-add
              (vec-shr
               v0
               (x8 (uint8_t (bv 1 8))))
              (vec-shr
               v1
               (x8 (uint8_t (bv 1 8)))))
             (vec-shr
              (vec-add
               (vec-add
                (vec-bwand
                 v0
                 (x8 (uint8_t (bv 1 8))))
                (vec-bwand
                 v1
                 (x8 (uint8_t (bv 1 8)))))
               (x8 (uint8_t (bv 1 8))))
              (x8 (uint8_t (bv 1 8)))))))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (vec-add
             (vec-add
              (vec-shr
               v0
               (x16 (uint8_t (bv 1 8))))
              (vec-shr
               v1
               (x16 (uint8_t (bv 1 8)))))
             (vec-shr
              (vec-add
               (vec-add
                (vec-bwand
                 v0
                 (x16 (uint8_t (bv 1 8))))
                (vec-bwand
                 v1
                 (x16 (uint8_t (bv 1 8)))))
               (x16 (uint8_t (bv 1 8))))
              (x16 (uint8_t (bv 1 8)))))))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (vec-add
             (vec-add
              (vec-shr
               v0
               (x4 (uint16_t (bv 1 16))))
              (vec-shr
               v1
               (x4 (uint16_t (bv 1 16)))))
             (vec-shr
              (vec-add
               (vec-add
                (vec-bwand
                 v0
                 (x4 (uint16_t (bv 1 16))))
                (vec-bwand
                 v1
                 (x4 (uint16_t (bv 1 16)))))
               (x4 (uint16_t (bv 1 16))))
              (x4 (uint16_t (bv 1 16)))))))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (vec-add
             (vec-add
              (vec-shr
               v0
               (x8 (uint16_t (bv 1 16))))
              (vec-shr
               v1
               (x8 (uint16_t (bv 1 16)))))
             (vec-shr
              (vec-add
               (vec-add
                (vec-bwand
                 v0
                 (x8 (uint16_t (bv 1 16))))
                (vec-bwand
                 v1
                 (x8 (uint16_t (bv 1 16)))))
               (x8 (uint16_t (bv 1 16))))
              (x8 (uint16_t (bv 1 16)))))))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-add
             (vec-add
              (vec-shr
               v0
               (x2 (uint32_t (bv 1 32))))
              (vec-shr
               v1
               (x2 (uint32_t (bv 1 32)))))
             (vec-shr
              (vec-add
               (vec-add
                (vec-bwand
                 v0
                 (x2 (uint32_t (bv 1 32))))
                (vec-bwand
                 v1
                 (x2 (uint32_t (bv 1 32)))))
               (x2 (uint32_t (bv 1 32))))
              (x2 (uint32_t (bv 1 32)))))))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (vec-add
             (vec-add
              (vec-shr
               v0
               (x4 (uint32_t (bv 1 32))))
              (vec-shr
               v1
               (x4 (uint32_t (bv 1 32)))))
             (vec-shr
              (vec-add
               (vec-add
                (vec-bwand
                 v0
                 (x4 (uint32_t (bv 1 32))))
                (vec-bwand
                 v1
                 (x4 (uint32_t (bv 1 32)))))
               (x4 (uint32_t (bv 1 32))))
              (x4 (uint32_t (bv 1 32)))))))]
        [(_ _) (assert #f (format "infeasible in urhadd\n~a\n" (pretty-format p)))])]

    ; [(arm:urhsub Vn Vm)
    ;   (destruct* ((interpret Vn) (interpret Vm))
    ;     [((arm:u8x8 v0) (arm:u8x8 v1))
    ;       (arm:u8x8
    ;        (halide:interpret
    ;         (vec-add
    ;          (vec-sub
    ;           (vec-shr
    ;            v0
    ;            (x8 (uint8_t (bv 1 8))))
    ;           (vec-shr
    ;            v1
    ;            (x8 (uint8_t (bv 1 8)))))
    ;          (vec-shr
    ;           (vec-add
    ;            (vec-sub
    ;             (vec-bwand
    ;              v0
    ;              (x8 (uint8_t (bv 1 8))))
    ;             (vec-bwand
    ;              v1
    ;              (x8 (uint8_t (bv 1 8)))))
    ;            (x8 (uint8_t (bv 1 8))))
    ;           (x8 (uint8_t (bv 1 8)))))))]
    ;     [((arm:u8x16 v0) (arm:u8x16 v1))
    ;       (arm:u8x16
    ;        (halide:interpret
    ;         (vec-add
    ;          (vec-sub
    ;           (vec-shr
    ;            v0
    ;            (x16 (uint8_t (bv 1 8))))
    ;           (vec-shr
    ;            v1
    ;            (x16 (uint8_t (bv 1 8)))))
    ;          (vec-shr
    ;           (vec-add
    ;            (vec-sub
    ;             (vec-bwand
    ;              v0
    ;              (x16 (uint8_t (bv 1 8))))
    ;             (vec-bwand
    ;              v1
    ;              (x16 (uint8_t (bv 1 8)))))
    ;            (x16 (uint8_t (bv 1 8))))
    ;           (x16 (uint8_t (bv 1 8)))))))]
    ;     [((arm:u16x4 v0) (arm:u16x4 v1))
    ;       (arm:u16x4
    ;        (halide:interpret
    ;         (vec-add
    ;          (vec-sub
    ;           (vec-shr
    ;            v0
    ;            (x4 (uint16_t (bv 1 16))))
    ;           (vec-shr
    ;            v1
    ;            (x4 (uint16_t (bv 1 16)))))
    ;          (vec-shr
    ;           (vec-add
    ;            (vec-sub
    ;             (vec-bwand
    ;              v0
    ;              (x4 (uint16_t (bv 1 16))))
    ;             (vec-bwand
    ;              v1
    ;              (x4 (uint16_t (bv 1 16)))))
    ;            (x4 (uint16_t (bv 1 16))))
    ;           (x4 (uint16_t (bv 1 16)))))))]
    ;     [((arm:u16x8 v0) (arm:u16x8 v1))
    ;       (arm:u16x8
    ;        (halide:interpret
    ;         (vec-add
    ;          (vec-sub
    ;           (vec-shr
    ;            v0
    ;            (x8 (uint16_t (bv 1 16))))
    ;           (vec-shr
    ;            v1
    ;            (x8 (uint16_t (bv 1 16)))))
    ;          (vec-shr
    ;           (vec-add
    ;            (vec-sub
    ;             (vec-bwand
    ;              v0
    ;              (x8 (uint16_t (bv 1 16))))
    ;             (vec-bwand
    ;              v1
    ;              (x8 (uint16_t (bv 1 16)))))
    ;            (x8 (uint16_t (bv 1 16))))
    ;           (x8 (uint16_t (bv 1 16)))))))]
    ;     [((arm:u32x2 v0) (arm:u32x2 v1))
    ;       (arm:u32x2
    ;        (halide:interpret
    ;         (vec-add
    ;          (vec-sub
    ;           (vec-shr
    ;            v0
    ;            (x2 (uint32_t (bv 1 32))))
    ;           (vec-shr
    ;            v1
    ;            (x2 (uint32_t (bv 1 32)))))
    ;          (vec-shr
    ;           (vec-add
    ;            (vec-sub
    ;             (vec-bwand
    ;              v0
    ;              (x2 (uint32_t (bv 1 32))))
    ;             (vec-bwand
    ;              v1
    ;              (x2 (uint32_t (bv 1 32)))))
    ;            (x2 (uint32_t (bv 1 32))))
    ;           (x2 (uint32_t (bv 1 32)))))))]
    ;     [((arm:u32x4 v0) (arm:u32x4 v1))
    ;       (arm:u32x4
    ;        (halide:interpret
    ;         (vec-add
    ;          (vec-sub
    ;           (vec-shr
    ;            v0
    ;            (x4 (uint32_t (bv 1 32))))
    ;           (vec-shr
    ;            v1
    ;            (x4 (uint32_t (bv 1 32)))))
    ;          (vec-shr
    ;           (vec-add
    ;            (vec-sub
    ;             (vec-bwand
    ;              v0
    ;              (x4 (uint32_t (bv 1 32))))
    ;             (vec-bwand
    ;              v1
    ;              (x4 (uint32_t (bv 1 32)))))
    ;            (x4 (uint32_t (bv 1 32))))
    ;           (x4 (uint32_t (bv 1 32)))))))]
    ;     [(_ _) (assert #f (format "infeasible in urhsub\n~a\n" (pretty-format p)))])]

    [(arm:urshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:i8x8 v1))
           (arm:u8x8
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x8 (int8_t (bv 0 8))))
               (x8 (uint8_t (bv 1 8)))
               (x8 (uint8_t (bv 0 8))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x8 (int8_t (bv 1 8)))))))))]
        [((arm:u8x16 v0) (arm:i8x16 v1))
           (arm:u8x16
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x16 (int8_t (bv 0 8))))
               (x16 (uint8_t (bv 1 8)))
               (x16 (uint8_t (bv 0 8))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x16 (int8_t (bv 1 8)))))))))]
        [((arm:u16x4 v0) (arm:i16x4 v1))
           (arm:u16x4
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x4 (int16_t (bv 0 16))))
               (x4 (uint16_t (bv 1 16)))
               (x4 (uint16_t (bv 0 16))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x4 (int16_t (bv 1 16)))))))))]
        [((arm:u16x8 v0) (arm:i16x8 v1))
           (arm:u16x8
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x8 (int16_t (bv 0 16))))
               (x8 (uint16_t (bv 1 16)))
               (x8 (uint16_t (bv 0 16))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x8 (int16_t (bv 1 16)))))))))]
        [((arm:u32x2 v0) (arm:i32x2 v1))
           (arm:u32x2
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x2 (int32_t (bv 0 32))))
               (x2 (uint32_t (bv 1 32)))
               (x2 (uint32_t (bv 0 32))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x2 (int32_t (bv 1 32)))))))))]
        [((arm:u32x4 v0) (arm:i32x4 v1))
           (arm:u32x4
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x4 (int32_t (bv 0 32))))
               (x4 (uint32_t (bv 1 32)))
               (x4 (uint32_t (bv 0 32))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x4 (int32_t (bv 1 32)))))))))]
        [((arm:u64x2 v0) (arm:i64x2 v1))
           (arm:u64x2
            (halide:interpret
             (vec-add
             (vec-shl
              v0
              v1)
              (vec-bwand
               (vec-if
               (vec-lt
                v1
                (x2 (int64_t (bv 0 64))))
               (x2 (uint64_t (bv 1 64)))
               (x2 (uint64_t (bv 0 64))))
               (vec-shl
                v0
                (vec-add
                 v1
                 (x2 (int64_t (bv 1 64)))))))))]
        [(_ _) (assert #f (format "infeasible in urshl\n~a\n" (pretty-format p)))])]

    [(arm:ushl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:i8x8 v1))
          (arm:u8x8
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((arm:u8x16 v0) (arm:i8x16 v1))
          (arm:u8x16
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((arm:u16x4 v0) (arm:i16x4 v1))
          (arm:u16x4
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((arm:u16x8 v0) (arm:i16x8 v1))
          (arm:u16x8
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((arm:u32x2 v0) (arm:i32x2 v1))
          (arm:u32x2
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((arm:u32x4 v0) (arm:i32x4 v1))
          (arm:u32x4
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((arm:u64x2 v0) (arm:i64x2 v1))
          (arm:u64x2
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [(_ _) (assert #f (format "infeasible in ushl\n~a\n" (pretty-format p)))])]

    [(arm:ushll Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:u8x16 v0) (uint8_t v1) (uint1_t v2))
           (arm:u16x8
            (halide:interpret
             (vec-shl
              (uint16x8
               (vec-if
               (x8 (uint1_t v2))
               (slice_vectors
                v0 8 1 8)
               (slice_vectors
                v0 0 1 8)))
              (x8 (uint16x1 (uint8_t v1))))))]
        [((arm:u16x8 v0) (uint16_t v1) (uint1_t v2))
           (arm:u32x4
            (halide:interpret
             (vec-shl
              (uint32x4
               (vec-if
               (x4 (uint1_t v2))
               (slice_vectors
                v0 4 1 4)
               (slice_vectors
                v0 0 1 4)))
              (x4 (uint32x1 (uint16_t v1))))))]
        [((arm:u32x4 v0) (uint32_t v1) (uint1_t v2))
           (arm:u64x2
            (halide:interpret
             (vec-shl
              (uint64x2
               (vec-if
               (x2 (uint1_t v2))
               (slice_vectors
                v0 2 1 2)
               (slice_vectors
                v0 0 1 2)))
              (x2 (uint64x1 (uint32_t v1))))))]
        [(_ _ _) (assert #f (format "infeasible in ushll\n~a\n" (pretty-format p)))])]

    [(arm:ushr Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (uint8_t v1))
          (arm:u8x8
           (halide:interpret
            (vec-shr
             v0
             (x8 (uint8_t v1)))))]
        [((arm:u8x16 v0) (uint8_t v1))
          (arm:u8x16
           (halide:interpret
            (vec-shr
             v0
             (x16 (uint8_t v1)))))]
        [((arm:u16x4 v0) (uint8_t v1))
          (arm:u16x4
           (halide:interpret
            (vec-shr
             v0
             (x4 (uint16x1 (uint8_t v1))))))]
        [((arm:u16x8 v0) (uint8_t v1))
          (arm:u16x8
           (halide:interpret
            (vec-shr
             v0
             (x8 (uint16x1 (uint8_t v1))))))]
        [((arm:u32x2 v0) (uint8_t v1))
          (arm:u32x2
           (halide:interpret
            (vec-shr
             v0
             (x2 (uint32x1 (uint8_t v1))))))]
        [((arm:u32x4 v0) (uint8_t v1))
          (arm:u32x4
           (halide:interpret
            (vec-shr
             v0
             (x4 (uint32x1 (uint8_t v1))))))]
        [((arm:u64x2 v0) (uint8_t v1))
          (arm:u64x2
           (halide:interpret
            (vec-shr
             v0
             (x2 (uint64x1 (uint8_t v1))))))]
        [(_ _) (assert #f (format "infeasible in ushr\n~a\n" (pretty-format p)))])]

    [(arm:usqadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:i8x8 v1))
          (arm:u8x8
           (halide:interpret
            (uint8x8
             (vec-add
              (int16x8
               v0)
              (int16x8
               v1)))))]
        [((arm:u8x16 v0) (arm:i8x16 v1))
          (arm:u8x16
           (halide:interpret
            (uint8x16
             (vec-add
              (int16x16
               v0)
              (int16x16
               v1)))))]
        [((arm:u16x4 v0) (arm:i16x4 v1))
          (arm:u16x4
           (halide:interpret
            (uint16x4
             (vec-add
              (int32x4
               v0)
              (int32x4
               v1)))))]
        [((arm:u16x8 v0) (arm:i16x8 v1))
          (arm:u16x8
           (halide:interpret
            (uint16x8
             (vec-add
              (int32x8
               v0)
              (int32x8
               v1)))))]
        [((arm:u32x2 v0) (arm:i32x2 v1))
          (arm:u32x2
           (halide:interpret
            (uint32x2
             (vec-add
              (int64x2
               v0)
              (int64x2
               v1)))))]
        [((arm:u32x4 v0) (arm:i32x4 v1))
          (arm:u32x4
           (halide:interpret
            (uint32x4
             (vec-add
              (int64x4
               v0)
              (int64x4
               v1)))))]
        [(_ _) (assert #f (format "infeasible in usqadd\n~a\n" (pretty-format p)))])]

    [(arm:usubl Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:u8x16 v0) (arm:u8x16 v1) (uint1_t v2))
           (arm:u16x8
            (halide:interpret
             (vec-if
             (x8 (uint1_t v2))
             (vec-sub
              (int16x8
               (slice_vectors
                v0 8 1 8))
              (int16x8
               (slice_vectors
                v1 8 1 8)))
             (vec-sub
              (int16x8
               (slice_vectors
                v0 0 1 8))
              (int16x8
               (slice_vectors
                v1 0 1 8))))))]
        [((arm:u16x8 v0) (arm:u16x8 v1) (uint1_t v2))
           (arm:u32x4
            (halide:interpret
             (vec-if
             (x4 (uint1_t v2))
             (vec-sub
              (int32x4
               (slice_vectors
                v0 4 1 4))
              (int32x4
               (slice_vectors
                v1 4 1 4)))
             (vec-sub
              (int32x4
               (slice_vectors
                v0 0 1 4))
              (int32x4
               (slice_vectors
                v1 0 1 4))))))]
        [((arm:u32x4 v0) (arm:u32x4 v1) (uint1_t v2))
           (arm:u64x2
            (halide:interpret
             (vec-if
             (x2 (uint1_t v2))
             (vec-sub
              (int64x2
               (slice_vectors
                v0 2 1 2))
              (int64x2
               (slice_vectors
                v1 2 1 2)))
             (vec-sub
              (int64x2
               (slice_vectors
                v0 0 1 2))
              (int64x2
               (slice_vectors
                v1 0 1 2))))))]
        [(_ _ _) (assert #f (format "infeasible in usubl\n~a\n" (pretty-format p)))])]

    [(arm:usubw Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((arm:u16x8 v0) (arm:u8x16 v1) (uint1_t v2))
           (arm:u16x8
            (halide:interpret
             (vec-sub
             v0
              (uint16x8
               (vec-if
               (x8 (uint1_t v2))
               (slice_vectors
                v1 8 1 8)
               (slice_vectors
                v1 0 1 8))))))]
        [((arm:u32x4 v0) (arm:u16x8 v1) (uint1_t v2))
           (arm:u32x4
            (halide:interpret
             (vec-sub
             v0
              (uint32x4
               (vec-if
               (x4 (uint1_t v2))
               (slice_vectors
                v1 4 1 4)
               (slice_vectors
                v1 0 1 4))))))]
        [((arm:u64x2 v0) (arm:u32x4 v1) (uint1_t v2))
           (arm:u64x2
            (halide:interpret
             (vec-sub
             v0
              (uint64x2
               (vec-if
               (x2 (uint1_t v2))
               (slice_vectors
                v1 2 1 2)
               (slice_vectors
                v1 0 1 2))))))]
        [(_ _ _) (assert #f (format "infeasible in usubw\n~a\n" (pretty-format p)))])]

    [(arm:uxtl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x16 v0) (uint1_t v1))
           (arm:u16x8
            (halide:interpret
             (uint16x8
              (vec-if
              (x8 (uint1_t v1))
              (slice_vectors
               v0 8 1 8)
              (slice_vectors
               v0 0 1 8)))))]
        [((arm:u16x8 v0) (uint1_t v1))
           (arm:u32x4
            (halide:interpret
             (uint32x4
              (vec-if
              (x4 (uint1_t v1))
              (slice_vectors
               v0 4 1 4)
              (slice_vectors
               v0 0 1 4)))))]
        [((arm:u32x4 v0) (uint1_t v1))
           (arm:u64x2
            (halide:interpret
             (uint64x2
              (vec-if
              (x2 (uint1_t v1))
              (slice_vectors
               v0 2 1 2)
              (slice_vectors
               v0 0 1 2)))))]
        [(_ _) (assert #f (format "infeasible in uxtl\n~a\n" (pretty-format p)))])]

    [(arm:uzip1 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 2 4)
             (slice_vectors
              v1 0 2 4) 4)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 2 8)
             (slice_vectors
              v1 0 2 8) 8)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 2 2)
             (slice_vectors
              v1 0 2 2) 2)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 2 4)
             (slice_vectors
              v1 0 2 4) 4)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 1 1)
             (slice_vectors
              v1 0 1 1) 1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 2 2)
             (slice_vectors
              v1 0 2 2) 2)))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (arm:i64x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 1 1)
             (slice_vectors
              v1 0 1 1) 1)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 2 4)
             (slice_vectors
              v1 0 2 4) 4)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 2 8)
             (slice_vectors
              v1 0 2 8) 8)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 2 2)
             (slice_vectors
              v1 0 2 2) 2)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 2 4)
             (slice_vectors
              v1 0 2 4) 4)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 1 1)
             (slice_vectors
              v1 0 1 1) 1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 2 2)
             (slice_vectors
              v1 0 2 2) 2)))]
        [((arm:u64x2 v0) (arm:u64x2 v1))
          (arm:u64x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 1 1)
             (slice_vectors
              v1 0 1 1) 1)))]
        [(_ _) (assert #f (format "infeasible in uzip1\n~a\n" (pretty-format p)))])]

    [(arm:uzip2 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 2 4)
             (slice_vectors
              v1 1 2 4) 4)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 2 8)
             (slice_vectors
              v1 1 2 8) 8)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 2 2)
             (slice_vectors
              v1 1 2 2) 2)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 2 4)
             (slice_vectors
              v1 1 2 4) 4)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 1 1)
             (slice_vectors
              v1 1 1 1) 1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 2 2)
             (slice_vectors
              v1 1 2 2) 2)))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (arm:i64x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 1 1)
             (slice_vectors
              v1 1 1 1) 1)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 2 4)
             (slice_vectors
              v1 1 2 4) 4)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 2 8)
             (slice_vectors
              v1 1 2 8) 8)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 2 2)
             (slice_vectors
              v1 1 2 2) 2)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 2 4)
             (slice_vectors
              v1 1 2 4) 4)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 1 1)
             (slice_vectors
              v1 1 1 1) 1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 2 2)
             (slice_vectors
              v1 1 2 2) 2)))]
        [((arm:u64x2 v0) (arm:u64x2 v1))
          (arm:u64x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 1 1)
             (slice_vectors
              v1 1 1 1) 1)))]
        [(_ _) (assert #f (format "infeasible in uzip2\n~a\n" (pretty-format p)))])]

    [(arm:vabdl_i16x4 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i32x4
           (halide:interpret
            (int32x4
             (vec-absd
              v0
              v1))))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:u32x4
           (halide:interpret
            (uint32x4
             (vec-absd
              v0
              v1))))]
        [(_ _) (assert #f (format "infeasible in vabdl_i16x4\n~a\n" (pretty-format p)))])]

    [(arm:vabdl_i32x2 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i64x2
           (halide:interpret
            (int64x2
             (vec-absd
              v0
              v1))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:u64x2
           (halide:interpret
            (uint64x2
             (vec-absd
              v0
              v1))))]
        [(_ _) (assert #f (format "infeasible in vabdl_i32x2\n~a\n" (pretty-format p)))])]

    [(arm:vabdl_i8x8 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i16x8
           (halide:interpret
            (int16x8
             (vec-absd
              v0
              v1))))]
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:u16x8
           (halide:interpret
            (uint16x8
             (vec-absd
              v0
              v1))))]
        [(_ _) (assert #f (format "infeasible in vabdl_i8x8\n~a\n" (pretty-format p)))])]

    [(arm:vabdl_u16x4 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u32x4
           (halide:interpret
            (uint32x4
             (vec-absd
              v0
              v1))))]
        [(_ _) (assert #f (format "infeasible in vabdl_u16x4\n~a\n" (pretty-format p)))])]

    [(arm:vabdl_u32x2 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u64x2
           (halide:interpret
            (uint64x2
             (vec-absd
              v0
              v1))))]
        [(_ _) (assert #f (format "infeasible in vabdl_u32x2\n~a\n" (pretty-format p)))])]

    [(arm:vabdl_u8x8 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u16x8
           (halide:interpret
            (uint16x8
             (vec-absd
              v0
              v1))))]
        [(_ _) (assert #f (format "infeasible in vabdl_u8x8\n~a\n" (pretty-format p)))])]

    [(arm:xtn Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u8x16
           (halide:interpret
            (concat_vectors
             (uint8x8
              v0)
             (uint8x8
              v1) 8)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u16x8
           (halide:interpret
            (concat_vectors
             (uint16x4
              v0)
             (uint16x4
              v1) 4)))]
        [((arm:u64x2 v0) (arm:u64x2 v1))
          (arm:u32x4
           (halide:interpret
            (concat_vectors
             (uint32x2
              v0)
             (uint32x2
              v1) 2)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i8x16
           (halide:interpret
            (concat_vectors
             (int8x8
              v0)
             (int8x8
              v1) 8)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i16x8
           (halide:interpret
            (concat_vectors
             (int16x4
              v0)
             (int16x4
              v1) 4)))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (arm:i32x4
           (halide:interpret
            (concat_vectors
             (int32x2
              v0)
             (int32x2
              v1) 2)))]
        [(_ _) (assert #f (format "infeasible in xtn\n~a\n" (pretty-format p)))])]

    [(arm:zip1 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (interleave
             (slice_vectors
              v0 0 1 4)
             (slice_vectors
              v1 0 1 4))))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (interleave
             (slice_vectors
              v0 0 1 8)
             (slice_vectors
              v1 0 1 8))))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (interleave
             (slice_vectors
              v0 0 1 2)
             (slice_vectors
              v1 0 1 2))))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (interleave
             (slice_vectors
              v0 0 1 4)
             (slice_vectors
              v1 0 1 4))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 1 1)
             (slice_vectors
              v1 0 1 1) 1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (interleave
             (slice_vectors
              v0 0 1 2)
             (slice_vectors
              v1 0 1 2))))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (arm:i64x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 1 1)
             (slice_vectors
              v1 0 1 1) 1)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (interleave
             (slice_vectors
              v0 0 1 4)
             (slice_vectors
              v1 0 1 4))))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (interleave
             (slice_vectors
              v0 0 1 8)
             (slice_vectors
              v1 0 1 8))))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (interleave
             (slice_vectors
              v0 0 1 2)
             (slice_vectors
              v1 0 1 2))))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (interleave
             (slice_vectors
              v0 0 1 4)
             (slice_vectors
              v1 0 1 4))))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 1 1)
             (slice_vectors
              v1 0 1 1) 1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (interleave
             (slice_vectors
              v0 0 1 2)
             (slice_vectors
              v1 0 1 2))))]
        [((arm:u64x2 v0) (arm:u64x2 v1))
          (arm:u64x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 0 1 1)
             (slice_vectors
              v1 0 1 1) 1)))]
        [(_ _) (assert #f (format "infeasible in zip1\n~a\n" (pretty-format p)))])]

    [(arm:zip2 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (arm:i8x8
           (halide:interpret
            (interleave
             (slice_vectors
              v0 4 1 4)
             (slice_vectors
              v1 4 1 4))))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (arm:i8x16
           (halide:interpret
            (interleave
             (slice_vectors
              v0 8 1 8)
             (slice_vectors
              v1 8 1 8))))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (arm:i16x4
           (halide:interpret
            (interleave
             (slice_vectors
              v0 2 1 2)
             (slice_vectors
              v1 2 1 2))))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (arm:i16x8
           (halide:interpret
            (interleave
             (slice_vectors
              v0 4 1 4)
             (slice_vectors
              v1 4 1 4))))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (arm:i32x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 1 1)
             (slice_vectors
              v1 1 1 1) 1)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (arm:i32x4
           (halide:interpret
            (interleave
             (slice_vectors
              v0 2 1 2)
             (slice_vectors
              v1 2 1 2))))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (arm:i64x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 1 1)
             (slice_vectors
              v1 1 1 1) 1)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (arm:u8x8
           (halide:interpret
            (interleave
             (slice_vectors
              v0 4 1 4)
             (slice_vectors
              v1 4 1 4))))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (arm:u8x16
           (halide:interpret
            (interleave
             (slice_vectors
              v0 8 1 8)
             (slice_vectors
              v1 8 1 8))))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (arm:u16x4
           (halide:interpret
            (interleave
             (slice_vectors
              v0 2 1 2)
             (slice_vectors
              v1 2 1 2))))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (arm:u16x8
           (halide:interpret
            (interleave
             (slice_vectors
              v0 4 1 4)
             (slice_vectors
              v1 4 1 4))))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (arm:u32x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 1 1)
             (slice_vectors
              v1 1 1 1) 1)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (arm:u32x4
           (halide:interpret
            (interleave
             (slice_vectors
              v0 2 1 2)
             (slice_vectors
              v1 2 1 2))))]
        [((arm:u64x2 v0) (arm:u64x2 v1))
          (arm:u64x2
           (halide:interpret
            (concat_vectors
             (slice_vectors
              v0 1 1 1)
             (slice_vectors
              v1 1 1 1) 1)))]
        [(_ _) (assert #f (format "infeasible in zip2\n~a\n" (pretty-format p)))])]

    [(arm:reinterpret Vn)
      (destruct (interpret Vn)
        [(arm:i8x8 v0) (arm:u8x8 (lambda (i) (uint8_t (cpp:eval (v0 i)))))]
        [(arm:i16x4 v0) (arm:u16x4 (lambda (i) (uint16_t (cpp:eval (v0 i)))))]
        [(arm:i32x2 v0) (arm:u32x2 (lambda (i) (uint32_t (cpp:eval (v0 i)))))]
        [(arm:i64x1 v0) (arm:u64x1 (lambda (i) (uint64_t (cpp:eval (v0 i)))))]
        [(arm:i8x16 v0) (arm:u8x16 (lambda (i) (uint8_t (cpp:eval (v0 i)))))]
        [(arm:i16x8 v0) (arm:u16x8 (lambda (i) (uint16_t (cpp:eval (v0 i)))))]
        [(arm:i32x4 v0) (arm:u32x4 (lambda (i) (uint32_t (cpp:eval (v0 i)))))]
        [(arm:i64x2 v0) (arm:u64x2 (lambda (i) (uint64_t (cpp:eval (v0 i)))))]
        ; [(arm:i8x32 v0) (arm:u8x32 (lambda (i) (uint8_t (cpp:eval (v0 i)))))]
        ; [(arm:i16x16 v0) (arm:u16x16 (lambda (i) (uint16_t (cpp:eval (v0 i)))))]
        ; [(arm:i32x8 v0) (arm:u32x8 (lambda (i) (uint32_t (cpp:eval (v0 i)))))]
        ; [(arm:i64x4 v0) (arm:u64x4 (lambda (i) (uint64_t (cpp:eval (v0 i)))))]

        [(arm:u8x8 v0) (arm:i8x8 (lambda (i) (int8_t (cpp:eval (v0 i)))))]
        [(arm:u16x4 v0) (arm:i16x4 (lambda (i) (int16_t (cpp:eval (v0 i)))))]
        [(arm:u32x2 v0) (arm:i32x2 (lambda (i) (int32_t (cpp:eval (v0 i)))))]
        [(arm:u64x1 v0) (arm:i64x1 (lambda (i) (int64_t (cpp:eval (v0 i)))))]
        [(arm:u8x16 v0) (arm:i8x16 (lambda (i) (int8_t (cpp:eval (v0 i)))))]
        [(arm:u16x8 v0) (arm:i16x8 (lambda (i) (int16_t (cpp:eval (v0 i)))))]
        [(arm:u32x4 v0) (arm:i32x4 (lambda (i) (int32_t (cpp:eval (v0 i)))))]
        [(arm:u64x2 v0) (arm:i64x2 (lambda (i) (int64_t (cpp:eval (v0 i)))))]
        ; [(arm:u8x32 v0) (arm:i8x32 (lambda (i) (int8_t (cpp:eval (v0 i)))))]
        ; [(arm:u16x16 v0) (arm:i16x16 (lambda (i) (int16_t (cpp:eval (v0 i)))))]
        ; [(arm:u32x8 v0) (arm:i32x8 (lambda (i) (int32_t (cpp:eval (v0 i)))))]
        ; [(arm:u64x4 v0) (arm:i64x4 (lambda (i) (int64_t (cpp:eval (v0 i)))))]
      )]

    [(arm:??shuffle id loads output-type)
      (let ([vecType (arm:get-type-struct output-type)]
            [interpreted-loads (map interpret loads)])
        (define (shuffle-body i)
          (apply choose* (filter (lambda (r) (not (void? r)) (map (curryr arm:get-element i) interpreted-loads)))))
        (vecType shuffle-body))]

    [(arm:??load id live-data buffer idx-tbl output-type)
      (let ([data (buffer-data buffer)]
            [vecType (arm:get-type-struct output-type)])
        ; TODO: understand what the heck this is doing...
        (define (is-of-buffer? read)
          (rs-match (cpp:eval read)
            [(expression (== @app) xs ...) (equal? (list-ref xs 0) data)]
            [_ #f]))

        (define (filter-reads reads)
          (filter is-of-buffer? reads))

        (define filtered-reads (map filter-reads live-data))

        (define read-history (make-hash))

        (define (load-body i)
          (let ([data (list-ref filtered-reads curr-cn)])
            (if (empty? data)
              (void)
              (hash-ref! read-history i (apply choose* data)))))

      (vecType load-body))]

    [(arm:??swizzle id live-data exprs idx-tbl output-type)
      ;(println live-data)
      ;(println (take live-data 1))
      (let ([vecType (arm:get-type-struct output-type)])
        ;; TODO: it is probably much more complicated than this...
        (vecType
          (lambda (i) (list-ref (list-ref live-data curr-cn) (list-ref idx-tbl i)))))]

    [(arm:ld buf loc align output-type)
      (let ([vecType (arm:get-type-struct output-type)])
        (vecType
          (lambda (i) (halide:buffer-ref buf (+ (interpret loc) i)))))]

    [(arm:Ri8x4 v0 v1 v2 v3)
      (arm:i8x4
        (lambda (i)
          (cond
            [(eq? i 0) (interpret v0)]
            [(eq? i 1) (interpret v1)]
            [(eq? i 2) (interpret v2)]
            [(eq? i 3) (interpret v3)]
            [else (assert #f (format "infeasible in Ri8x4\n~a\n~a\n" (pretty-format p) i))])))]

    [(arm:Ru8x4 v0 v1 v2 v3)
      (arm:u8x4
        (lambda (i)
          (cond
            [(eq? i 0) (interpret v0)]
            [(eq? i 1) (interpret v1)]
            [(eq? i 2) (interpret v2)]
            [(eq? i 3) (interpret v3)]
            [else (assert #f (format "infeasible in Ru8x4\n~a\n~a\n" (pretty-format p) i))])))]

    [(arm:??sub-expr exprs c) (interpret (list-ref exprs c))]
    
    [(ramp base stride len)
     (define intr-base (interpret base))
     (define intr-stride (interpret stride))
     ((arm:get-type-struct 'i32x4)
      (lambda (i)
        (mk-cpp-expr
         (bvadd
          (cpp:eval intr-base)
          (bvmul
           (integer->bitvector i (bitvector (cpp:expr-bw intr-stride)))
           (cpp:eval intr-stride)))
         (cpp:type intr-base))))]

    [(arm:abstr-expr orig-expr abstr-vals offset)
     (define vecType (arm:get-type-struct (interpret orig-expr)))
     (vecType (lambda (i) (halide:buffer-ref abstr-vals (+ i offset))))]
    [_ p]))
