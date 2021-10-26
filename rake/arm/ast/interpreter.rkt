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
  rake/arm/ast/types)

(provide
 (rename-out
  [interpret arm:interpret]
  ; [set-curr-cn arm:set-curr-cn]
  ))



;; ARM A64 interpreter
(define (interpret p)
  (destruct p

    [(abs Vn)
      (destruct* ((interpret Vn))
        [((i8x16 v0))
          (u8x16
           (halide:interpret
            (vec-abs
             v0)))]
        [((i16x8 v0))
          (u16x8
           (halide:interpret
            (vec-abs
             v0)))]
        [((i32x4 v0))
          (u32x4
           (halide:interpret
            (vec-abs
             v0)))]
        [(_) (assert #f "infeasible")])]

    [(add Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x8 v0) (u8x8 v1))
          (u8x8
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((u16x4 v0) (u16x4 v1))
          (u16x4
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((u32x2 v0) (u32x2 v1))
          (u32x2
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((u8x16 v0) (u8x16 v1))
          (u8x16
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((u16x8 v0) (u16x8 v1))
          (u16x8
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((u32x2 v0) (u32x2 v1))
          (u32x2
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((u32x4 v0) (u32x4 v1))
          (u32x4
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((u64x2 v0) (u64x2 v1))
          (u64x2
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((i8x8 v0) (i8x8 v1))
          (i8x8
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((i16x4 v0) (i16x4 v1))
          (i16x4
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((i32x2 v0) (i32x2 v1))
          (i32x2
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((i8x16 v0) (i8x16 v1))
          (i8x16
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((i16x8 v0) (i16x8 v1))
          (i16x8
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((i32x2 v0) (i32x2 v1))
          (i32x2
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((i32x4 v0) (i32x4 v1))
          (i32x4
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [((i64x2 v0) (i64x2 v1))
          (i64x2
           (halide:interpret
            (vec-add
             v0
             v1)))]
        [(_ _) (assert #f "infeasible")])]

    [(addhn Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x8 v0) (i16x8 v1))
          (i16x8
           (halide:interpret
            (int16x8
             (vec-reinterpret
              (vec-shr
               (vec-reinterpret
                (vec-add
                 (int32x8
                  v0)
                 (int32x8
                  v1))
                'uint32 8)
               (x8 (uint32_t (bv 16 32))))
              'int32 8))))]
        [((i32x4 v0) (i32x4 v1))
          (i32x4
           (halide:interpret
            (int32x4
             (vec-reinterpret
              (vec-shr
               (vec-reinterpret
                (vec-add
                 (int64x4
                  v0)
                 (int64x4
                  v1))
                'uint64 4)
               (x4 (uint64_t (bv 32 64))))
              'int64 4))))]
        [(_ _) (assert #f "infeasible")])]

    [(addp Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1))))]
        [((u8x16 v0) (u8x16 v1))
          (u8x16
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1))))]
        [((i16x8 v0) (i16x8 v1))
          (i16x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1))))]
        [((u16x8 v0) (u16x8 v1))
          (u16x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1))))]
        [((i32x4 v0) (i32x4 v1))
          (i32x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1))))]
        [((u32x4 v0) (u32x4 v1))
          (u32x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'add 2
              v0)
             (vector_reduce 'add 2
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(addv Vn)
      (destruct* ((interpret Vn))
        [((u8x8 v0))
          (u8x8
           (halide:interpret
            (vector_reduce 'add 8
             v0)))]
        [((u16x4 v0))
          (u16x4
           (halide:interpret
            (vector_reduce 'add 4
             v0)))]
        [((u8x16 v0))
          (u8x16
           (halide:interpret
            (vector_reduce 'add 16
             v0)))]
        [((u16x8 v0))
          (u16x8
           (halide:interpret
            (vector_reduce 'add 8
             v0)))]
        [((u32x2 v0))
          (u32x4
           (halide:interpret
            (vector_reduce 'add 2
             v0)))]
        [((i8x8 v0))
          (i8x8
           (halide:interpret
            (vector_reduce 'add 8
             v0)))]
        [((i16x4 v0))
          (i16x4
           (halide:interpret
            (vector_reduce 'add 4
             v0)))]
        [((i8x16 v0))
          (i8x16
           (halide:interpret
            (vector_reduce 'add 16
             v0)))]
        [((i16x8 v0))
          (i16x8
           (halide:interpret
            (vector_reduce 'add 8
             v0)))]
        [((i32x2 v0))
          (i32x4
           (halide:interpret
            (vector_reduce 'add 2
             v0)))]
        [(_) (assert #f "infeasible")])]

    [(mla Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((u8x8 v0) (u8x8 v1) (uint8_t v2))
          (u8x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              (x8 v2)))))]
        [((u8x16 v0) (u8x16 v1) (uint8_t v2))
          (u8x16
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              (x16 v2)))))]
        [((u16x4 v0) (u16x4 v1) (uint16_t v2))
          (u16x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              (x4 v2)))))]
        [((u16x8 v0) (u16x8 v1) (uint16_t v2))
          (u16x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              (x8 v2)))))]
        [((u32x2 v0) (u32x2 v1) (uint32_t v2))
          (u32x2
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              (x2 v2)))))]
        [((u32x4 v0) (u32x4 v1) (uint32_t v2))
          (u32x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              (x4 v2)))))]
        [((u8x8 v0) (u8x8 v1) (u8x8 v2))
          (u8x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              v2))))]
        [((u8x16 v0) (u8x16 v1) (u8x16 v2))
          (u8x16
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              v2))))]
        [((u16x4 v0) (u16x4 v1) (u16x4 v2))
          (u16x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              v2))))]
        [((u16x8 v0) (u16x8 v1) (u16x8 v2))
          (u16x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              v2))))]
        [((u32x2 v0) (u32x2 v1) (u32x2 v2))
          (u32x2
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              v2))))]
        [((u32x4 v0) (u32x4 v1) (u32x4 v2))
          (u32x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              v1
              v2))))]
        [(_ _ _) (assert #f "infeasible")])]

    [(mls Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((u8x8 v0) (u8x8 v1) (uint8_t v2))
          (u8x8
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              (x8 v2)))))]
        [((u8x16 v0) (u8x16 v1) (uint8_t v2))
          (u8x16
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              (x16 v2)))))]
        [((u16x4 v0) (u16x4 v1) (uint16_t v2))
          (u16x4
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              (x4 v2)))))]
        [((u16x8 v0) (u16x8 v1) (uint16_t v2))
          (u16x8
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              (x8 v2)))))]
        [((u32x2 v0) (u32x2 v1) (uint32_t v2))
          (u32x2
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              (x2 v2)))))]
        [((u32x4 v0) (u32x4 v1) (uint32_t v2))
          (u32x4
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              (x4 v2)))))]
        [((u8x8 v0) (u8x8 v1) (u8x8 v2))
          (u8x8
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              v2))))]
        [((u8x16 v0) (u8x16 v1) (u8x16 v2))
          (u8x16
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              v2))))]
        [((u16x4 v0) (u16x4 v1) (u16x4 v2))
          (u16x4
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              v2))))]
        [((u16x8 v0) (u16x8 v1) (u16x8 v2))
          (u16x8
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              v2))))]
        [((u32x2 v0) (u32x2 v1) (u32x2 v2))
          (u32x2
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              v2))))]
        [((u32x4 v0) (u32x4 v1) (u32x4 v2))
          (u32x4
           (halide:interpret
            (vec-sub
             v0
             (vec-mul
              v1
              v2))))]
        [(_ _ _) (assert #f "infeasible")])]

    [(mul Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x8 v0) (uint8_t v1))
          (u8x8
           (halide:interpret
            (vec-mul
             v0
             (x8 v1))))]
        [((u8x16 v0) (uint8_t v1))
          (u8x16
           (halide:interpret
            (vec-mul
             v0
             (x16 v1))))]
        [((u16x4 v0) (uint16_t v1))
          (u16x4
           (halide:interpret
            (vec-mul
             v0
             (x4 v1))))]
        [((u16x8 v0) (uint16_t v1))
          (u16x8
           (halide:interpret
            (vec-mul
             v0
             (x8 v1))))]
        [((u32x2 v0) (uint32_t v1))
          (u32x2
           (halide:interpret
            (vec-mul
             v0
             (x2 v1))))]
        [((u32x4 v0) (uint32_t v1))
          (u32x4
           (halide:interpret
            (vec-mul
             v0
             (x4 v1))))]
        [((i8x8 v0) (int8_t v1))
          (i8x8
           (halide:interpret
            (vec-mul
             v0
             (x8 v1))))]
        [((i8x16 v0) (int8_t v1))
          (i8x16
           (halide:interpret
            (vec-mul
             v0
             (x16 v1))))]
        [((i16x4 v0) (int16_t v1))
          (i16x4
           (halide:interpret
            (vec-mul
             v0
             (x4 v1))))]
        [((i16x8 v0) (int16_t v1))
          (i16x8
           (halide:interpret
            (vec-mul
             v0
             (x8 v1))))]
        [((i32x2 v0) (int32_t v1))
          (i32x2
           (halide:interpret
            (vec-mul
             v0
             (x2 v1))))]
        [((i32x4 v0) (int32_t v1))
          (i32x4
           (halide:interpret
            (vec-mul
             v0
             (x4 v1))))]
        [((u8x8 v0) (u8x8 v1))
          (u8x8
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((u8x16 v0) (u8x16 v1))
          (u8x16
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((u16x4 v0) (u16x4 v1))
          (u16x4
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((u16x8 v0) (u16x8 v1))
          (u16x8
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((u32x2 v0) (u32x2 v1))
          (u32x2
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((u32x4 v0) (u32x4 v1))
          (u32x4
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((i8x8 v0) (i8x8 v1))
          (i8x8
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((i8x16 v0) (i8x16 v1))
          (i8x16
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((i16x4 v0) (i16x4 v1))
          (i16x4
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((i16x8 v0) (i16x8 v1))
          (i16x8
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((i32x2 v0) (i32x2 v1))
          (i32x2
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [((i32x4 v0) (i32x4 v1))
          (i32x4
           (halide:interpret
            (vec-mul
             v0
             v1)))]
        [(_ _) (assert #f "infeasible")])]

    [(neg Vn)
      (destruct* ((interpret Vn))
        [((i8x8 v0))
          (i8x8
           (halide:interpret
            (vec-sub
             (x8 (int8_t (bv 0 8)))
             v0)))]
        [((i8x16 v0))
          (i8x16
           (halide:interpret
            (vec-sub
             (x16 (int8_t (bv 0 8)))
             v0)))]
        [((i16x4 v0))
          (i16x4
           (halide:interpret
            (vec-sub
             (x4 (int16_t (bv 0 16)))
             v0)))]
        [((i16x8 v0))
          (i16x8
           (halide:interpret
            (vec-sub
             (x8 (int16_t (bv 0 16)))
             v0)))]
        [((i32x2 v0))
          (i32x2
           (halide:interpret
            (vec-sub
             (x2 (int32_t (bv 0 32)))
             v0)))]
        [((i32x4 v0))
          (i32x4
           (halide:interpret
            (vec-sub
             (x4 (int32_t (bv 0 32)))
             v0)))]
        [((i64x2 v0))
          (i64x2
           (halide:interpret
            (vec-sub
             (x2 (int64_t (bv 0 64)))
             v0)))]
        [(_) (assert #f "infeasible")])]

    [(raddhn Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x8 v0) (i16x8 v1))
          (i8x8
           (halide:interpret
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
               (x8 (int32_t (bv 256 32))))))))]
        [((u16x8 v0) (u16x8 v1))
          (u8x8
           (halide:interpret
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
               (x8 (uint32_t (bv 256 32))))))))]
        [((i32x4 v0) (i32x4 v1))
          (i16x4
           (halide:interpret
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
               (x4 (int32_t (bv 65536 32))))))))]
        [((u32x4 v0) (u32x4 v1))
          (u16x4
           (halide:interpret
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
               (x4 (uint32_t (bv 65536 32))))))))]
        [((i64x2 v0) (i64x2 v1))
          (i32x2
           (halide:interpret
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
               (x2 (int64_t (bv 4294967296 64))))))))]
        [((u64x2 v0) (u64x2 v1))
          (u32x2
           (halide:interpret
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
               (x2 (uint64_t (bv 4294967296 64))))))))]
        [(_ _) (assert #f "infeasible")])]

    [(rshrn Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x8 v0) (uint32_t v1))
          (i8x8
           (halide:interpret
            (int8x8
             (vec-add
              (vec-shr
               (int32x8
                v0)
               (x8 v1))
              (vec-bwand
               (int32x8
                (vec-if
                 (x8 (sca-lt (uint32_t (bv 0 32)) v1))
                 (x8 (int16_t (bv 1 16)))
                 (x8 (int16_t (bv 0 16)))))
               (vec-shr
                (int32x8
                 v0)
                (x8 (sca-sub v1 (uint32_t (bv 1 32))))))))))]
        [((u16x8 v0) (uint32_t v1))
          (u8x8
           (halide:interpret
            (uint8x8
             (vec-add
              (vec-shr
               (uint32x8
                v0)
               (x8 v1))
              (vec-bwand
               (uint32x8
                (vec-if
                 (x8 (sca-lt (uint32_t (bv 0 32)) v1))
                 (x8 (uint16_t (bv 1 16)))
                 (x8 (uint16_t (bv 0 16)))))
               (vec-shr
                (uint32x8
                 v0)
                (x8 (sca-sub v1 (uint32_t (bv 1 32))))))))))]
        [((i32x4 v0) (uint32_t v1))
          (i16x4
           (halide:interpret
            (int16x4
             (vec-add
              (vec-shr
               v0
               (x4 v1))
              (vec-bwand
               (vec-if
                (x4 (sca-lt (uint32_t (bv 0 32)) v1))
                (x4 (int32_t (bv 1 32)))
                (x4 (int32_t (bv 0 32))))
               (vec-shr
                v0
                (x4 (sca-sub v1 (uint32_t (bv 1 32))))))))))]
        [((u32x4 v0) (uint32_t v1))
          (u16x4
           (halide:interpret
            (uint16x4
             (vec-add
              (vec-shr
               v0
               (x4 v1))
              (vec-bwand
               (vec-if
                (x4 (sca-lt (uint32_t (bv 0 32)) v1))
                (x4 (uint32_t (bv 1 32)))
                (x4 (uint32_t (bv 0 32))))
               (vec-shr
                v0
                (x4 (sca-sub v1 (uint32_t (bv 1 32))))))))))]
        [((i64x2 v0) (uint32_t v1))
          (i32x2
           (halide:interpret
            (int32x2
             (vec-add
              (vec-shr
               v0
               (x2 (uint64x1 v1)))
              (vec-bwand
               (vec-if
                (x2 (sca-lt (uint32_t (bv 0 32)) v1))
                (x2 (int64_t (bv 1 64)))
                (x2 (int64_t (bv 0 64))))
               (vec-shr
                v0
                (x2 (uint64x1 (sca-sub v1 (uint32_t (bv 1 32)))))))))))]
        [((u64x2 v0) (uint32_t v1))
          (u32x2
           (halide:interpret
            (uint32x2
             (vec-add
              (vec-shr
               v0
               (x2 (uint64x1 v1)))
              (vec-bwand
               (vec-if
                (x2 (sca-lt (uint32_t (bv 0 32)) v1))
                (x2 (uint64_t (bv 1 64)))
                (x2 (uint64_t (bv 0 64))))
               (vec-shr
                v0
                (x2 (uint64x1 (sca-sub v1 (uint32_t (bv 1 32)))))))))))]
        [(_ _) (assert #f "infeasible")])]

    [(rsubhn Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x8 v0) (i16x8 v1))
          (i8x8
           (halide:interpret
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
               (x8 (int32_t (bv 256 32))))))))]
        [((u16x8 v0) (u16x8 v1))
          (u8x8
           (halide:interpret
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
               (x8 (uint32_t (bv 256 32))))))))]
        [((i32x4 v0) (i32x4 v1))
          (i16x4
           (halide:interpret
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
               (x4 (int32_t (bv 65536 32))))))))]
        [((u32x4 v0) (u32x4 v1))
          (u16x4
           (halide:interpret
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
               (x4 (uint32_t (bv 65536 32))))))))]
        [((i64x2 v0) (i64x2 v1))
          (i32x2
           (halide:interpret
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
               (x2 (int64_t (bv 4294967296 64))))))))]
        [((u64x2 v0) (u64x2 v1))
          (u32x2
           (halide:interpret
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
               (x2 (uint64_t (bv 4294967296 64))))))))]
        [(_ _) (assert #f "infeasible")])]

    [(saba Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((i8x8 v0) (i8x8 v1) (i8x8 v2))
          (i8x8
           (halide:interpret
            (vec-add
             v0
             (int8x8
              (vec-absd
               v1
               v2)))))]
        [((i8x16 v0) (i8x16 v1) (i8x16 v2))
          (i8x16
           (halide:interpret
            (vec-add
             v0
             (int8x16
              (vec-absd
               v1
               v2)))))]
        [((i16x4 v0) (i16x4 v1) (i16x4 v2))
          (i16x4
           (halide:interpret
            (vec-add
             v0
             (int16x4
              (vec-absd
               v1
               v2)))))]
        [((i16x8 v0) (i16x8 v1) (i16x8 v2))
          (i16x8
           (halide:interpret
            (vec-add
             v0
             (int16x8
              (vec-absd
               v1
               v2)))))]
        [((i32x2 v0) (i32x2 v1) (i32x2 v2))
          (i32x2
           (halide:interpret
            (vec-add
             v0
             (int32x2
              (vec-absd
               v1
               v2)))))]
        [((i32x4 v0) (i32x4 v1) (i32x4 v2))
          (i32x4
           (halide:interpret
            (vec-add
             v0
             (int32x4
              (vec-absd
               v1
               v2)))))]
        [(_ _ _) (assert #f "infeasible")])]

    [(sabal Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((i16x8 v0) (i8x8 v1) (i8x8 v2))
          (i16x8
           (halide:interpret
            (vec-add
             v0
             (int16x8
              (vec-absd
               v1
               v2)))))]
        [((i16x16 v0) (i8x16 v1) (i8x16 v2))
          (i16x16
           (halide:interpret
            (vec-add
             v0
             (int16x16
              (vec-absd
               v1
               v2)))))]
        [((i32x4 v0) (i16x4 v1) (i16x4 v2))
          (i32x4
           (halide:interpret
            (vec-add
             v0
             (int32x4
              (vec-absd
               v1
               v2)))))]
        [((i32x8 v0) (i16x8 v1) (i16x8 v2))
          (i32x8
           (halide:interpret
            (vec-add
             v0
             (int32x8
              (vec-absd
               v1
               v2)))))]
        [((i64x2 v0) (i32x2 v1) (i32x2 v2))
          (i64x2
           (halide:interpret
            (vec-add
             v0
             (int64x2
              (vec-absd
               v1
               v2)))))]
        [((i64x4 v0) (i32x4 v1) (i32x4 v2))
          (i64x4
           (halide:interpret
            (vec-add
             v0
             (int64x4
              (vec-absd
               v1
               v2)))))]
        [(_ _ _) (assert #f "infeasible")])]

    [(sabd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (u8x16
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((i16x8 v0) (i16x8 v1))
          (u16x8
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((i32x4 v0) (i32x4 v1))
          (u32x4
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [(_ _) (assert #f "infeasible")])]

    [(sadalp Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x4 v0) (i8x8 v1))
          (i16x4
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (int16x8
               v1)))))]
        [((i16x8 v0) (i8x16 v1))
          (i16x8
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (int16x16
               v1)))))]
        [((i32x2 v0) (i16x4 v1))
          (i32x2
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (int32x4
               v1)))))]
        [((i32x4 v0) (i16x8 v1))
          (i32x4
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (int32x8
               v1)))))]
        [((int64_t v0) (i32x2 v1))
          (int64_t
           (halide:interpret
            (sca-add             v0             (vector_reduce 'add 2
             (int64x2
              v1)))))]
        [((i64x2 v0) (i32x4 v1))
          (i64x2
           (halide:interpret
            (vec-add
             v0
             (vector_reduce 'add 2
              (int64x4
               v1)))))]
        [(_ _) (assert #f "infeasible")])]

    [(saddl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x8 v0) (i8x8 v1))
          (i16x8
           (halide:interpret
            (vec-add
             (int16x8
              v0)
             (int16x8
              v1))))]
        [((i8x16 v0) (i8x16 v1))
          (i16x16
           (halide:interpret
            (vec-add
             (int16x16
              v0)
             (int16x16
              v1))))]
        [((i16x4 v0) (i16x4 v1))
          (i32x4
           (halide:interpret
            (vec-add
             (int32x4
              v0)
             (int32x4
              v1))))]
        [((i16x8 v0) (i16x8 v1))
          (i32x8
           (halide:interpret
            (vec-add
             (int32x8
              v0)
             (int32x8
              v1))))]
        [((i32x2 v0) (i32x2 v1))
          (i64x2
           (halide:interpret
            (vec-add
             (int64x2
              v0)
             (int64x2
              v1))))]
        [((i32x4 v0) (i32x4 v1))
          (i64x4
           (halide:interpret
            (vec-add
             (int64x4
              v0)
             (int64x4
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(saddlp Vn)
      (destruct* ((interpret Vn))
        [((i8x16 v0))
          (i16x8
           (halide:interpret
            (vector_reduce 'add 2
             (int16x16
              v0))))]
        [((i16x8 v0))
          (i32x4
           (halide:interpret
            (vector_reduce 'add 2
             (int32x8
              v0))))]
        [((i32x4 v0))
          (i64x2
           (halide:interpret
            (vector_reduce 'add 2
             (int64x4
              v0))))]
        [(_) (assert #f "infeasible")])]

    [(saddlv Vn)
      (destruct* ((interpret Vn))
        [((i8x8 v0))
          (int16_t
           (halide:interpret
            (vector_reduce 'add 8
             (int16x8
              v0))))]
        [((i8x16 v0))
          (int16_t
           (halide:interpret
            (vector_reduce 'add 16
             (int16x16
              v0))))]
        [((i16x4 v0))
          (int32_t
           (halide:interpret
            (vector_reduce 'add 4
             (int32x4
              v0))))]
        [((i16x8 v0))
          (int32_t
           (halide:interpret
            (vector_reduce 'add 8
             (int32x8
              v0))))]
        [((i32x4 v0))
          (int64_t
           (halide:interpret
            (vector_reduce 'add 4
             (int64x4
              v0))))]
        [(_) (assert #f "infeasible")])]

    [(saddw Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x8 v0) (i8x8 v1))
          (i16x8
           (halide:interpret
            (vec-add
             v0
             (int16x8
              v1))))]
        [((i16x16 v0) (i8x16 v1))
          (i16x16
           (halide:interpret
            (vec-add
             v0
             (int16x16
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(sdot.v2i32.v8i8 Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((i32x2 v0) (i8x8 v1) (i8x8 v2))
          (i32x2
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
        [(_ _ _) (assert #f "infeasible")])]

    [(sdot.v4i32.v16i8 Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((i32x4 v0) (i8x16 v1) (i8x16 v2))
          (i32x4
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
        [(_ _ _) (assert #f "infeasible")])]

    [(shadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
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
        [((i16x8 v0) (i16x8 v1))
          (i16x8
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
        [((i32x4 v0) (i32x4 v1))
          (i32x4
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
        [(_ _) (assert #f "infeasible")])]

    [(shll Vn)
      (destruct* ((interpret Vn))
        [((i8x8 v0))
          (i16x8
           (halide:interpret
            (vec-shl
             (int16x8
              v0)
             (x8 (uint16_t (bv 8 16))))))]
        [((i8x16 v0))
          (i16x16
           (halide:interpret
            (vec-shl
             (int16x16
              v0)
             (x16 (uint16_t (bv 8 16))))))]
        [((i16x4 v0))
          (i32x4
           (halide:interpret
            (vec-shl
             (int32x4
              v0)
             (x4 (uint32_t (bv 16 32))))))]
        [((i16x8 v0))
          (i32x8
           (halide:interpret
            (vec-shl
             (int32x8
              v0)
             (x8 (uint32_t (bv 16 32))))))]
        [((i32x2 v0))
          (i64x2
           (halide:interpret
            (vec-shl
             (int64x2
              v0)
             (x2 (uint64_t (bv 32 64))))))]
        [((i32x4 v0))
          (i64x4
           (halide:interpret
            (vec-shl
             (int64x4
              v0)
             (x4 (uint64_t (bv 32 64))))))]
        [(_) (assert #f "infeasible")])]

    [(shrn Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x8 v0) (uint16_t v1))
          (i8x8
           (halide:interpret
            (int8x8
             (vec-shr
              v0
              (x8 v1)))))]
        [((u16x8 v0) (uint16_t v1))
          (u8x8
           (halide:interpret
            (uint8x8
             (vec-shr
              v0
              (x8 v1)))))]
        [((i32x4 v0) (uint32_t v1))
          (i16x4
           (halide:interpret
            (int16x4
             (vec-shr
              v0
              (x4 v1)))))]
        [((u32x4 v0) (uint32_t v1))
          (u16x4
           (halide:interpret
            (uint16x4
             (vec-shr
              v0
              (x4 v1)))))]
        [((u64x2 v0) (uint64_t v1))
          (u32x2
           (halide:interpret
            (uint32x2
             (vec-shr
              v0
              (x2 v1)))))]
        [((i64x2 v0) (uint64_t v1))
          (i32x2
           (halide:interpret
            (int32x2
             (vec-shr
              v0
              (x2 v1)))))]
        [(_ _) (assert #f "infeasible")])]

    [(shsub Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
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
        [((i16x8 v0) (i16x8 v1))
          (i16x8
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
        [((i32x4 v0) (i32x4 v1))
          (i32x4
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
        [(_ _) (assert #f "infeasible")])]

    [(smax Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((i16x8 v0) (i16x8 v1))
          (i16x8
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((i32x4 v0) (i32x4 v1))
          (i32x4
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [(_ _) (assert #f "infeasible")])]

    [(smaxp Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1))))]
        [((i16x8 v0) (i16x8 v1))
          (i16x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1))))]
        [((i32x4 v0) (i32x4 v1))
          (i32x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(smaxv Vn)
      (destruct* ((interpret Vn))
        [((i8x8 v0))
          (int8_t
           (halide:interpret
            (vector_reduce 'max 8
             v0)))]
        [((i8x16 v0))
          (int8_t
           (halide:interpret
            (vector_reduce 'max 16
             v0)))]
        [((i16x4 v0))
          (int16_t
           (halide:interpret
            (vector_reduce 'max 4
             v0)))]
        [((i16x8 v0))
          (int16_t
           (halide:interpret
            (vector_reduce 'max 8
             v0)))]
        [((i32x4 v0))
          (int32_t
           (halide:interpret
            (vector_reduce 'max 4
             v0)))]
        [(_) (assert #f "infeasible")])]

    [(smin Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((i16x8 v0) (i16x8 v1))
          (i16x8
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((i32x4 v0) (i32x4 v1))
          (i32x4
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [(_ _) (assert #f "infeasible")])]

    [(sminp Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1))))]
        [((i16x8 v0) (i16x8 v1))
          (i16x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1))))]
        [((i32x4 v0) (i32x4 v1))
          (i32x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(sminv Vn)
      (destruct* ((interpret Vn))
        [((i8x8 v0))
          (int8_t
           (halide:interpret
            (vector_reduce 'min 8
             v0)))]
        [((i8x16 v0))
          (int8_t
           (halide:interpret
            (vector_reduce 'min 16
             v0)))]
        [((i16x4 v0))
          (int16_t
           (halide:interpret
            (vector_reduce 'min 4
             v0)))]
        [((i16x8 v0))
          (int16_t
           (halide:interpret
            (vector_reduce 'min 8
             v0)))]
        [((i32x4 v0))
          (int32_t
           (halide:interpret
            (vector_reduce 'min 4
             v0)))]
        [(_) (assert #f "infeasible")])]

    [(smlal Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((i32x4 v0) (i16x4 v1) (int16_t v2))
          (i32x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (int32x4
               v1)
              (x4 (int32x1 v2))))))]
        [((i32x8 v0) (i16x8 v1) (int16_t v2))
          (i32x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (int32x8
               v1)
              (x8 (int32x1 v2))))))]
        [((i64x2 v0) (i32x2 v1) (int32_t v2))
          (i64x2
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (int64x2
               v1)
              (x2 (int64x1 v2))))))]
        [((i64x4 v0) (i32x4 v1) (int32_t v2))
          (i64x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (int64x4
               v1)
              (x4 (int64x1 v2))))))]
        [((i16x8 v0) (i8x8 v1) (i8x8 v2))
          (i16x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (int16x8
               v1)
              (int16x8
               v2)))))]
        [((i16x16 v0) (i8x16 v1) (i8x16 v2))
          (i16x16
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (int16x16
               v1)
              (int16x16
               v2)))))]
        [((i32x4 v0) (i16x4 v1) (i16x4 v2))
          (i32x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (int32x4
               v1)
              (int32x4
               v2)))))]
        [((i32x8 v0) (i16x8 v1) (i16x8 v2))
          (i32x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (int32x8
               v1)
              (int32x8
               v2)))))]
        [((i64x2 v0) (i32x2 v1) (i32x2 v2))
          (i64x2
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (int64x2
               v1)
              (int64x2
               v2)))))]
        [((i64x4 v0) (i32x4 v1) (i32x4 v2))
          (i64x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (int64x4
               v1)
              (int64x4
               v2)))))]
        [(_ _ _) (assert #f "infeasible")])]

    [(smull Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x8 v0) (i8x8 v1))
          (i16x8
           (halide:interpret
            (vec-mul
             (int16x8
              v0)
             (int16x8
              v1))))]
        [((i16x4 v0) (i16x4 v1))
          (i32x4
           (halide:interpret
            (vec-mul
             (int32x4
              v0)
             (int32x4
              v1))))]
        [((i32x2 v0) (i32x2 v1))
          (i64x2
           (halide:interpret
            (vec-mul
             (int64x2
              v0)
             (int64x2
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(sqabs Vn)
      (destruct* ((interpret Vn))
        [((i8x8 v0))
          (i8x8
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
        [((i8x16 v0))
          (i8x16
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
        [((i16x4 v0))
          (i16x4
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
        [((i16x8 v0))
          (i16x8
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
        [((i32x2 v0))
          (i32x2
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
        [((i32x4 v0))
          (i32x4
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
        [((i64x2 v0))
          (i64x2
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
        [(_) (assert #f "infeasible")])]

    [(sqadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
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
        [((i16x8 v0) (i16x8 v1))
          (i16x8
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
        [((i32x4 v0) (i32x4 v1))
          (i32x4
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
        [(_ _) (assert #f "infeasible")])]

    [(sqdmulh Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x8 v0) (i16x8 v1))
          (i16x8
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
        [((i32x4 v0) (i32x4 v1))
          (i32x4
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
        [(_ _) (assert #f "infeasible")])]

    [(sqdmull Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x4 v0) (int16_t v1))
          (i32x4
           (halide:interpret
            (vec-mul
             (vec-max
              (vec-if
               (vec-lt
                (x4 (int32_t (bv 1073741823 32)))
                (vec-mul
                 (int32x4
                  v0)
                 (x4 (int32x1 v1))))
               (x4 (int32_t (bv 2147483647 32)))
               (vec-mul
                (vec-mul
                 (int32x4
                  v0)
                 (x4 (int32x1 v1)))
                (x4 (int32_t (bv 2 32)))))
              (x4 (int32_t (bv -1073741824 32))))
             (x4 (int32_t (bv 2 32))))))]
        [((i16x8 v0) (int16_t v1))
          (i32x8
           (halide:interpret
            (vec-mul
             (vec-max
              (vec-if
               (vec-lt
                (x8 (int32_t (bv 1073741823 32)))
                (vec-mul
                 (int32x8
                  v0)
                 (x8 (int32x1 v1))))
               (x8 (int32_t (bv 2147483647 32)))
               (vec-mul
                (vec-mul
                 (int32x8
                  v0)
                 (x8 (int32x1 v1)))
                (x8 (int32_t (bv 2 32)))))
              (x8 (int32_t (bv -1073741824 32))))
             (x8 (int32_t (bv 2 32))))))]
        [((i32x2 v0) (int32_t v1))
          (i64x2
           (halide:interpret
            (vec-mul
             (vec-max
              (vec-if
               (vec-lt
                (x2 (int64_t (bv 4611686018427387903 64)))
                (vec-mul
                 (int64x2
                  v0)
                 (x2 (int64x1 v1))))
               (x2 (int64_t (bv 9223372036854775807 64)))
               (vec-mul
                (vec-mul
                 (int64x2
                  v0)
                 (x2 (int64x1 v1)))
                (x2 (int64_t (bv 2 64)))))
              (x2 (int64_t (bv -4611686018427387904 64))))
             (x2 (int64_t (bv 2 64))))))]
        [((i32x4 v0) (int32_t v1))
          (i64x4
           (halide:interpret
            (vec-mul
             (vec-max
              (vec-if
               (vec-lt
                (x4 (int64_t (bv 4611686018427387903 64)))
                (vec-mul
                 (int64x4
                  v0)
                 (x4 (int64x1 v1))))
               (x4 (int64_t (bv 9223372036854775807 64)))
               (vec-mul
                (vec-mul
                 (int64x4
                  v0)
                 (x4 (int64x1 v1)))
                (x4 (int64_t (bv 2 64)))))
              (x4 (int64_t (bv -4611686018427387904 64))))
             (x4 (int64_t (bv 2 64))))))]
        [((i16x4 v0) (i16x4 v1))
          (i32x4
           (halide:interpret
            (vec-mul
             (vec-max
              (vec-if
               (vec-lt
                (x4 (int32_t (bv 1073741823 32)))
                (vec-mul
                 (int32x4
                  v0)
                 (int32x4
                  v1)))
               (x4 (int32_t (bv 2147483647 32)))
               (vec-mul
                (vec-mul
                 (int32x4
                  v0)
                 (int32x4
                  v1))
                (x4 (int32_t (bv 2 32)))))
              (x4 (int32_t (bv -1073741824 32))))
             (x4 (int32_t (bv 2 32))))))]
        [((i16x8 v0) (i16x8 v1))
          (i32x8
           (halide:interpret
            (vec-mul
             (vec-max
              (vec-if
               (vec-lt
                (x8 (int32_t (bv 1073741823 32)))
                (vec-mul
                 (int32x8
                  v0)
                 (int32x8
                  v1)))
               (x8 (int32_t (bv 2147483647 32)))
               (vec-mul
                (vec-mul
                 (int32x8
                  v0)
                 (int32x8
                  v1))
                (x8 (int32_t (bv 2 32)))))
              (x8 (int32_t (bv -1073741824 32))))
             (x8 (int32_t (bv 2 32))))))]
        [((i32x2 v0) (i32x2 v1))
          (i64x2
           (halide:interpret
            (vec-mul
             (vec-max
              (vec-if
               (vec-lt
                (x2 (int64_t (bv 4611686018427387903 64)))
                (vec-mul
                 (int64x2
                  v0)
                 (int64x2
                  v1)))
               (x2 (int64_t (bv 9223372036854775807 64)))
               (vec-mul
                (vec-mul
                 (int64x2
                  v0)
                 (int64x2
                  v1))
                (x2 (int64_t (bv 2 64)))))
              (x2 (int64_t (bv -4611686018427387904 64))))
             (x2 (int64_t (bv 2 64))))))]
        [((i32x4 v0) (i32x4 v1))
          (i64x4
           (halide:interpret
            (vec-mul
             (vec-max
              (vec-if
               (vec-lt
                (x4 (int64_t (bv 4611686018427387903 64)))
                (vec-mul
                 (int64x4
                  v0)
                 (int64x4
                  v1)))
               (x4 (int64_t (bv 9223372036854775807 64)))
               (vec-mul
                (vec-mul
                 (int64x4
                  v0)
                 (int64x4
                  v1))
                (x4 (int64_t (bv 2 64)))))
              (x4 (int64_t (bv -4611686018427387904 64))))
             (x4 (int64_t (bv 2 64))))))]
        [(_ _) (assert #f "infeasible")])]

    [(sqneg Vn)
      (destruct* ((interpret Vn))
        [((i8x16 v0))
          (i8x16
           (halide:interpret
            (vec-sub
             (x16 (int8_t (bv 0 8)))
             (vec-max
              v0
              (x16 (int8_t (bv -128 8)))))))]
        [((i16x8 v0))
          (i16x8
           (halide:interpret
            (vec-sub
             (x8 (int16_t (bv 0 16)))
             (vec-max
              v0
              (x8 (int16_t (bv -32768 16)))))))]
        [((i32x4 v0))
          (i32x4
           (halide:interpret
            (vec-sub
             (x4 (int32_t (bv 0 32)))
             (vec-max
              v0
              (x4 (int32_t (bv -2147483648 32)))))))]
        [((i64x2 v0))
          (i64x2
           (halide:interpret
            (vec-sub
             (x2 (int64_t (bv 0 64)))
             (vec-max
              v0
              (x2 (int64_t (bv -9223372036854775808 64)))))))]
        [(_) (assert #f "infeasible")])]

    [(sqrdmulh Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x8 v0) (i16x8 v1))
          (i16x8
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
        [((i32x4 v0) (i32x4 v1))
          (i32x4
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
        [(_ _) (assert #f "infeasible")])]

    [(sqrshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
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
        [((i16x8 v0) (i16x8 v1))
          (i16x8
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
        [((i32x4 v0) (i32x4 v1))
          (i32x4
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
        [((i64x2 v0) (i64x2 v1))
          (i64x2
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
        [(_ _) (assert #f "infeasible")])]

    [(sqrshrn Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x8 v0) (uint32_t v1))
          (i8x8
           (halide:interpret
            (int8x8
             (vec-max
              (vec-min
               (vec-add
                (vec-shr
                 (int32x8
                  v0)
                 (x8 v1))
                (vec-bwand
                 (int32x8
                  (vec-if
                   (x8 (sca-lt (uint32_t (bv 0 32)) v1))
                   (x8 (int16_t (bv 1 16)))
                   (x8 (int16_t (bv 0 16)))))
                 (vec-shr
                  (int32x8
                   v0)
                  (x8 (sca-sub v1 (uint32_t (bv 1 32)))))))
               (x8 (int32_t (bv 127 32))))
              (x8 (int32_t (bv -128 32)))))))]
        [((i32x4 v0) (uint32_t v1))
          (i16x4
           (halide:interpret
            (int16x4
             (vec-max
              (vec-min
               (vec-add
                (vec-shr
                 v0
                 (x4 v1))
                (vec-bwand
                 (vec-if
                  (x4 (sca-lt (uint32_t (bv 0 32)) v1))
                  (x4 (int32_t (bv 1 32)))
                  (x4 (int32_t (bv 0 32))))
                 (vec-shr
                  v0
                  (x4 (sca-sub v1 (uint32_t (bv 1 32)))))))
               (x4 (int32_t (bv 32767 32))))
              (x4 (int32_t (bv -32768 32)))))))]
        [((i64x2 v0) (uint32_t v1))
          (i32x2
           (halide:interpret
            (int32x2
             (vec-max
              (vec-min
               (vec-add
                (vec-shr
                 v0
                 (x2 (uint64x1 v1)))
                (vec-bwand
                 (vec-if
                  (x2 (sca-lt (uint32_t (bv 0 32)) v1))
                  (x2 (int64_t (bv 1 64)))
                  (x2 (int64_t (bv 0 64))))
                 (vec-shr
                  v0
                  (x2 (uint64x1 (sca-sub v1 (uint32_t (bv 1 32))))))))
               (x2 (int64_t (bv 2147483647 64))))
              (x2 (int64_t (bv -2147483648 64)))))))]
        [(_ _) (assert #f "infeasible")])]

    [(sqrshrun Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x8 v0) (uint32_t v1))
          (u8x8
           (halide:interpret
            (uint8x8
             (vec-max
              (vec-min
               (vec-add
                (vec-shr
                 (int32x8
                  v0)
                 (x8 v1))
                (vec-bwand
                 (int32x8
                  (vec-if
                   (x8 (sca-lt (uint32_t (bv 0 32)) v1))
                   (x8 (int16_t (bv 1 16)))
                   (x8 (int16_t (bv 0 16)))))
                 (vec-shr
                  (int32x8
                   v0)
                  (x8 (sca-sub v1 (uint32_t (bv 1 32)))))))
               (x8 (int32_t (bv 255 32))))
              (x8 (int32_t (bv 0 32)))))))]
        [((i32x4 v0) (uint32_t v1))
          (u16x4
           (halide:interpret
            (uint16x4
             (vec-max
              (vec-min
               (vec-add
                (vec-shr
                 v0
                 (x4 v1))
                (vec-bwand
                 (vec-if
                  (x4 (sca-lt (uint32_t (bv 0 32)) v1))
                  (x4 (int32_t (bv 1 32)))
                  (x4 (int32_t (bv 0 32))))
                 (vec-shr
                  v0
                  (x4 (sca-sub v1 (uint32_t (bv 1 32)))))))
               (x4 (int32_t (bv 65535 32))))
              (x4 (int32_t (bv 0 32)))))))]
        [((i64x2 v0) (uint32_t v1))
          (u32x2
           (halide:interpret
            (uint32x2
             (vec-max
              (vec-min
               (vec-add
                (vec-shr
                 v0
                 (x2 (uint64x1 v1)))
                (vec-bwand
                 (vec-if
                  (x2 (sca-lt (uint32_t (bv 0 32)) v1))
                  (x2 (int64_t (bv 1 64)))
                  (x2 (int64_t (bv 0 64))))
                 (vec-shr
                  v0
                  (x2 (uint64x1 (sca-sub v1 (uint32_t (bv 1 32))))))))
               (x2 (int64_t (bv 4294967295 64))))
              (x2 (int64_t (bv 0 64)))))))]
        [(_ _) (assert #f "infeasible")])]

    [(sqshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
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
        [((i8x16 v0) (u8x16 v1))
          (i8x16
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
        [((i16x8 v0) (i16x8 v1))
          (i16x8
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
        [((i16x8 v0) (u16x8 v1))
          (i16x8
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
        [((i32x4 v0) (i32x4 v1))
          (i32x4
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
        [((i32x4 v0) (u32x4 v1))
          (i32x4
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
        [((i64x2 v0) (i64x2 v1))
          (i64x2
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
        [((i64x2 v0) (u64x2 v1))
          (i64x2
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
        [(_ _) (assert #f "infeasible")])]

    [(sqshlu Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (u8x16
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
        [((i8x16 v0) (u8x16 v1))
          (u8x16
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
        [((i16x8 v0) (i16x8 v1))
          (u16x8
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
        [((i16x8 v0) (u16x8 v1))
          (u16x8
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
        [((i32x4 v0) (i32x4 v1))
          (u32x4
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
        [((i32x4 v0) (u32x4 v1))
          (u32x4
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
        [((i64x2 v0) (i64x2 v1))
          (u64x2
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
        [((i64x2 v0) (u64x2 v1))
          (u64x2
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
        [(_ _) (assert #f "infeasible")])]

    [(sqshrn Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x8 v0) (uint32_t v1))
          (i8x8
           (halide:interpret
            (int8x8
             (vec-max
              (vec-min
               (vec-shr
                (int32x8
                 v0)
                (x8 v1))
               (x8 (int32_t (bv 127 32))))
              (x8 (int32_t (bv -128 32)))))))]
        [((i32x4 v0) (uint32_t v1))
          (i16x4
           (halide:interpret
            (int16x4
             (vec-max
              (vec-min
               (vec-shr
                v0
                (x4 v1))
               (x4 (int32_t (bv 32767 32))))
              (x4 (int32_t (bv -32768 32)))))))]
        [((i64x2 v0) (uint32_t v1))
          (i32x2
           (halide:interpret
            (int32x2
             (vec-max
              (vec-min
               (vec-shr
                v0
                (x2 (uint64x1 v1)))
               (x2 (int64_t (bv 2147483647 64))))
              (x2 (int64_t (bv -2147483648 64)))))))]
        [(_ _) (assert #f "infeasible")])]

    [(sqshrun Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x8 v0) (uint32_t v1))
          (u8x8
           (halide:interpret
            (uint8x8
             (vec-max
              (vec-min
               (vec-shr
                (int32x8
                 v0)
                (x8 v1))
               (x8 (int32_t (bv 255 32))))
              (x8 (int32_t (bv 0 32)))))))]
        [((i32x4 v0) (uint32_t v1))
          (u16x4
           (halide:interpret
            (uint16x4
             (vec-max
              (vec-min
               (vec-shr
                v0
                (x4 v1))
               (x4 (int32_t (bv 65535 32))))
              (x4 (int32_t (bv 0 32)))))))]
        [((i64x2 v0) (uint32_t v1))
          (u32x2
           (halide:interpret
            (uint32x2
             (vec-max
              (vec-min
               (vec-shr
                v0
                (x2 (uint64x1 v1)))
               (x2 (int64_t (bv 4294967295 64))))
              (x2 (int64_t (bv 0 64)))))))]
        [(_ _) (assert #f "infeasible")])]

    [(sqsub Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
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
        [((i16x8 v0) (i16x8 v1))
          (i16x8
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
        [((i32x4 v0) (i32x4 v1))
          (i32x4
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
        [(_ _) (assert #f "infeasible")])]

    [(sqxtn Vn)
      (destruct* ((interpret Vn))
        [((i16x8 v0))
          (i8x8
           (halide:interpret
            (int8x8
             (vec-max
              (vec-min
               v0
               (x8 (int16_t (bv 127 16))))
              (x8 (int16_t (bv -128 16)))))))]
        [((i32x4 v0))
          (i16x4
           (halide:interpret
            (int16x4
             (vec-max
              (vec-min
               v0
               (x4 (int32_t (bv 32767 32))))
              (x4 (int32_t (bv -32768 32)))))))]
        [((i64x2 v0))
          (i32x2
           (halide:interpret
            (int32x2
             (vec-max
              (vec-min
               v0
               (x2 (int64_t (bv 2147483647 64))))
              (x2 (int64_t (bv -2147483648 64)))))))]
        [(_) (assert #f "infeasible")])]

    [(sqxtun Vn)
      (destruct* ((interpret Vn))
        [((i16x8 v0))
          (u8x8
           (halide:interpret
            (int8x8
             (vec-max
              (vec-min
               v0
               (x8 (int16_t (bv 127 16))))
              (x8 (int16_t (bv -128 16)))))))]
        [((i32x4 v0))
          (u16x4
           (halide:interpret
            (int16x4
             (vec-max
              (vec-min
               v0
               (x4 (int32_t (bv 32767 32))))
              (x4 (int32_t (bv -32768 32)))))))]
        [((i64x2 v0))
          (u32x2
           (halide:interpret
            (int32x2
             (vec-max
              (vec-min
               v0
               (x2 (int64_t (bv 2147483647 64))))
              (x2 (int64_t (bv -2147483648 64)))))))]
        [(_) (assert #f "infeasible")])]

    [(srhadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
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
        [((i16x8 v0) (i16x8 v1))
          (i16x8
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
        [((i32x4 v0) (i32x4 v1))
          (i32x4
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
        [(_ _) (assert #f "infeasible")])]

    [(srhsub Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
           (halide:interpret
            (vec-add
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
                 v0
                 (x16 (int8_t (bv 1 8))))
                (vec-bwand
                 v1
                 (x16 (int8_t (bv 1 8)))))
               (x16 (int8_t (bv 1 8))))
              (x16 (uint8_t (bv 1 8)))))))]
        [((i16x8 v0) (i16x8 v1))
          (i16x8
           (halide:interpret
            (vec-add
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
                 v0
                 (x8 (int16_t (bv 1 16))))
                (vec-bwand
                 v1
                 (x8 (int16_t (bv 1 16)))))
               (x8 (int16_t (bv 1 16))))
              (x8 (uint16_t (bv 1 16)))))))]
        [((i32x4 v0) (i32x4 v1))
          (i32x4
           (halide:interpret
            (vec-add
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
                 v0
                 (x4 (int32_t (bv 1 32))))
                (vec-bwand
                 v1
                 (x4 (int32_t (bv 1 32)))))
               (x4 (int32_t (bv 1 32))))
              (x4 (uint32_t (bv 1 32)))))))]
        [(_ _) (assert #f "infeasible")])]

    [(srshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
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
        [((i16x8 v0) (i16x8 v1))
          (i16x8
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
        [((i32x4 v0) (i32x4 v1))
          (i32x4
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
        [((i64x2 v0) (i64x2 v1))
          (i64x2
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
        [(_ _) (assert #f "infeasible")])]

    [(sshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x16 v0) (i8x16 v1))
          (i8x16
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((i16x8 v0) (i16x8 v1))
          (i16x8
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((i32x4 v0) (i32x4 v1))
          (i32x4
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((i64x2 v0) (i64x2 v1))
          (i64x2
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [(_ _) (assert #f "infeasible")])]

    [(sshll Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x8 v0) (uint8_t v1))
          (i16x8
           (halide:interpret
            (vec-shl
             (int16x8
              v0)
             (x8 (uint16x1 v1)))))]
        [((i8x16 v0) (uint8_t v1))
          (i16x16
           (halide:interpret
            (vec-shl
             (int16x16
              v0)
             (x16 (uint16x1 v1)))))]
        [((i16x4 v0) (uint16_t v1))
          (i32x4
           (halide:interpret
            (vec-shl
             (int32x4
              v0)
             (x4 (uint32x1 v1)))))]
        [((i16x8 v0) (uint16_t v1))
          (i32x8
           (halide:interpret
            (vec-shl
             (int32x8
              v0)
             (x8 (uint32x1 v1)))))]
        [((i32x2 v0) (uint32_t v1))
          (i64x2
           (halide:interpret
            (vec-shl
             (int64x2
              v0)
             (x2 (uint64x1 v1)))))]
        [((i32x4 v0) (uint32_t v1))
          (i64x4
           (halide:interpret
            (vec-shl
             (int64x4
              v0)
             (x4 (uint64x1 v1)))))]
        [(_ _) (assert #f "infeasible")])]

    [(sub Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x8 v0) (u8x8 v1))
          (u8x8
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((u16x4 v0) (u16x4 v1))
          (u16x4
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((u32x2 v0) (u32x2 v1))
          (u32x2
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((u8x16 v0) (u8x16 v1))
          (u8x16
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((u16x8 v0) (u16x8 v1))
          (u16x8
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((u32x2 v0) (u32x2 v1))
          (u32x2
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((u32x4 v0) (u32x4 v1))
          (u32x4
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((u64x2 v0) (u64x2 v1))
          (u64x2
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((i8x8 v0) (i8x8 v1))
          (i8x8
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((i16x4 v0) (i16x4 v1))
          (i16x4
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((i32x2 v0) (i32x2 v1))
          (i32x2
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((i8x16 v0) (i8x16 v1))
          (i8x16
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((i16x8 v0) (i16x8 v1))
          (i16x8
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((i32x2 v0) (i32x2 v1))
          (i32x2
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((i32x4 v0) (i32x4 v1))
          (i32x4
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [((i64x2 v0) (i64x2 v1))
          (i64x2
           (halide:interpret
            (vec-sub
             v0
             v1)))]
        [(_ _) (assert #f "infeasible")])]

    [(subhn Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x4 v0) (i16x4 v1))
          (i16x4
           (halide:interpret
            (int16x4
             (vec-reinterpret
              (vec-shr
               (vec-reinterpret
                (vec-sub
                 (int32x4
                  v0)
                 (int32x4
                  v1))
                'uint32 4)
               (x4 (uint32_t (bv 16 32))))
              'int32 4))))]
        [((i32x4 v0) (i32x4 v1))
          (i32x4
           (halide:interpret
            (int32x4
             (vec-reinterpret
              (vec-shr
               (vec-reinterpret
                (vec-sub
                 (int64x4
                  v0)
                 (int64x4
                  v1))
                'uint64 4)
               (x4 (uint64_t (bv 32 64))))
              'int64 4))))]
        [(_ _) (assert #f "infeasible")])]

    [(suqadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x8 v0) (u8x8 v1))
          (i8x8
           (halide:interpret
            (int8x8
             (vec-add
              (int16x8
               v0)
              (int16x8
               v1)))))]
        [((i8x16 v0) (u8x16 v1))
          (i8x16
           (halide:interpret
            (int8x16
             (vec-add
              (int16x16
               v0)
              (int16x16
               v1)))))]
        [((i16x4 v0) (u16x4 v1))
          (i16x4
           (halide:interpret
            (int16x4
             (vec-add
              (int32x4
               v0)
              (int32x4
               v1)))))]
        [((i16x8 v0) (u16x8 v1))
          (i16x8
           (halide:interpret
            (int16x8
             (vec-add
              (int32x8
               v0)
              (int32x8
               v1)))))]
        [((i32x2 v0) (u32x2 v1))
          (i32x2
           (halide:interpret
            (int32x2
             (vec-add
              (int64x2
               v0)
              (int64x2
               v1)))))]
        [((i32x4 v0) (u32x4 v1))
          (i32x4
           (halide:interpret
            (int32x4
             (vec-add
              (int64x4
               v0)
              (int64x4
               v1)))))]
        [(_ _) (assert #f "infeasible")])]

    [(uabd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (u8x16 v1))
          (u8x16
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((u16x8 v0) (u16x8 v1))
          (u16x8
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [((u32x4 v0) (u32x4 v1))
          (u32x4
           (halide:interpret
            (vec-absd
             v0
             v1)))]
        [(_ _) (assert #f "infeasible")])]

    [(uaddlp Vn)
      (destruct* ((interpret Vn))
        [((u8x16 v0))
          (u16x8
           (halide:interpret
            (vector_reduce 'add 2
             (uint16x16
              v0))))]
        [((u8x16 v0))
          (i16x8
           (halide:interpret
            (vector_reduce 'add 2
             (uint16x16
              v0))))]
        [((u16x8 v0))
          (u32x4
           (halide:interpret
            (vector_reduce 'add 2
             (uint32x8
              v0))))]
        [((u16x8 v0))
          (i32x4
           (halide:interpret
            (vector_reduce 'add 2
             (uint32x8
              v0))))]
        [((u32x4 v0))
          (u64x2
           (halide:interpret
            (vector_reduce 'add 2
             (uint64x4
              v0))))]
        [((u32x4 v0))
          (i64x2
           (halide:interpret
            (vector_reduce 'add 2
             (uint64x4
              v0))))]
        [(_) (assert #f "infeasible")])]

    [(uaddlv Vn)
      (destruct* ((interpret Vn))
        [((u8x8 v0))
          (uint16_t
           (halide:interpret
            (vector_reduce 'add 8
             (uint16x8
              v0))))]
        [((u8x16 v0))
          (uint16_t
           (halide:interpret
            (vector_reduce 'add 16
             (uint16x16
              v0))))]
        [((u16x4 v0))
          (uint32_t
           (halide:interpret
            (vector_reduce 'add 4
             (uint32x4
              v0))))]
        [((u16x8 v0))
          (uint32_t
           (halide:interpret
            (vector_reduce 'add 8
             (uint32x8
              v0))))]
        [((u32x4 v0))
          (uint64_t
           (halide:interpret
            (vector_reduce 'add 4
             (uint64x4
              v0))))]
        [(_) (assert #f "infeasible")])]

    [(udot.v2i32.v8i8 Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((i32x2 v0) (u8x8 v1) (u8x8 v2))
          (i32x2
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
        [((u32x2 v0) (u8x8 v1) (u8x8 v2))
          (u32x2
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
        [(_ _ _) (assert #f "infeasible")])]

    [(udot.v4i32.v16i8 Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((i32x4 v0) (u8x16 v1) (u8x16 v2))
          (i32x4
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
        [((u32x4 v0) (u8x16 v1) (u8x16 v2))
          (u32x4
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
        [(_ _ _) (assert #f "infeasible")])]

    [(uhadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (u8x16 v1))
          (u8x16
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
        [((u16x8 v0) (u16x8 v1))
          (u16x8
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
        [((u32x4 v0) (u32x4 v1))
          (u32x4
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
        [(_ _) (assert #f "infeasible")])]

    [(uhsub Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (u8x16 v1))
          (u8x16
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
        [((u16x8 v0) (u16x8 v1))
          (u16x8
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
        [((u32x4 v0) (u32x4 v1))
          (u32x4
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
        [(_ _) (assert #f "infeasible")])]

    [(umax Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (u8x16 v1))
          (u8x16
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((u16x8 v0) (u16x8 v1))
          (u16x8
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [((u32x4 v0) (u32x4 v1))
          (u32x4
           (halide:interpret
            (vec-max
             v0
             v1)))]
        [(_ _) (assert #f "infeasible")])]

    [(umaxp Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (u8x16 v1))
          (u8x16
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1))))]
        [((u16x8 v0) (u16x8 v1))
          (u16x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1))))]
        [((u32x4 v0) (u32x4 v1))
          (u32x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'max 2
              v0)
             (vector_reduce 'max 2
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(umaxv Vn)
      (destruct* ((interpret Vn))
        [((u8x8 v0))
          (uint8_t
           (halide:interpret
            (vector_reduce 'max 8
             v0)))]
        [((u8x16 v0))
          (uint8_t
           (halide:interpret
            (vector_reduce 'max 16
             v0)))]
        [((u16x4 v0))
          (uint16_t
           (halide:interpret
            (vector_reduce 'max 4
             v0)))]
        [((u16x8 v0))
          (uint16_t
           (halide:interpret
            (vector_reduce 'max 8
             v0)))]
        [((u32x4 v0))
          (uint32_t
           (halide:interpret
            (vector_reduce 'max 4
             v0)))]
        [(_) (assert #f "infeasible")])]

    [(umin Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (u8x16 v1))
          (u8x16
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((u16x8 v0) (u16x8 v1))
          (u16x8
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [((u32x4 v0) (u32x4 v1))
          (u32x4
           (halide:interpret
            (vec-min
             v0
             v1)))]
        [(_ _) (assert #f "infeasible")])]

    [(uminp Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (u8x16 v1))
          (u8x16
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1))))]
        [((u16x8 v0) (u16x8 v1))
          (u16x8
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1))))]
        [((u32x4 v0) (u32x4 v1))
          (u32x4
           (halide:interpret
            (concat_vectors
             (vector_reduce 'min 2
              v0)
             (vector_reduce 'min 2
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(uminv Vn)
      (destruct* ((interpret Vn))
        [((u8x8 v0))
          (uint8_t
           (halide:interpret
            (vector_reduce 'min 8
             v0)))]
        [((u8x16 v0))
          (uint8_t
           (halide:interpret
            (vector_reduce 'min 16
             v0)))]
        [((u16x4 v0))
          (uint16_t
           (halide:interpret
            (vector_reduce 'min 4
             v0)))]
        [((u16x8 v0))
          (uint16_t
           (halide:interpret
            (vector_reduce 'min 8
             v0)))]
        [((u32x4 v0))
          (uint32_t
           (halide:interpret
            (vector_reduce 'min 4
             v0)))]
        [(_) (assert #f "infeasible")])]

    [(umlal Vd Vn Vm)
      (destruct* ((interpret Vd) (interpret Vn) (interpret Vm))
        [((u32x4 v0) (u16x4 v1) (uint16_t v2))
          (u32x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (uint32x4
               v1)
              (x4 (uint32x1 v2))))))]
        [((u32x8 v0) (u16x8 v1) (uint16_t v2))
          (u32x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (uint32x8
               v1)
              (x8 (uint32x1 v2))))))]
        [((u64x2 v0) (u32x2 v1) (uint32_t v2))
          (u64x2
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (uint64x2
               v1)
              (x2 (uint64x1 v2))))))]
        [((u64x4 v0) (u32x4 v1) (uint32_t v2))
          (u64x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (uint64x4
               v1)
              (x4 (uint64x1 v2))))))]
        [((u16x8 v0) (u8x8 v1) (u8x8 v2))
          (u16x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (uint16x8
               v1)
              (uint16x8
               v2)))))]
        [((u16x16 v0) (u8x16 v1) (u8x16 v2))
          (u16x16
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (uint16x16
               v1)
              (uint16x16
               v2)))))]
        [((u32x4 v0) (u16x4 v1) (u16x4 v2))
          (u32x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (uint32x4
               v1)
              (uint32x4
               v2)))))]
        [((u32x8 v0) (u16x8 v1) (u16x8 v2))
          (u32x8
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (uint32x8
               v1)
              (uint32x8
               v2)))))]
        [((u64x2 v0) (u32x2 v1) (u32x2 v2))
          (u64x2
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (uint64x2
               v1)
              (uint64x2
               v2)))))]
        [((u64x4 v0) (u32x4 v1) (u32x4 v2))
          (u64x4
           (halide:interpret
            (vec-add
             v0
             (vec-mul
              (uint64x4
               v1)
              (uint64x4
               v2)))))]
        [(_ _ _) (assert #f "infeasible")])]

    [(umull Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x8 v0) (u8x8 v1))
          (u16x8
           (halide:interpret
            (vec-mul
             (uint16x8
              v0)
             (uint16x8
              v1))))]
        [((u16x4 v0) (u16x4 v1))
          (u32x4
           (halide:interpret
            (vec-mul
             (uint32x4
              v0)
             (uint32x4
              v1))))]
        [((u32x2 v0) (u32x2 v1))
          (u64x2
           (halide:interpret
            (vec-mul
             (uint64x2
              v0)
             (uint64x2
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(uqadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (u8x16 v1))
          (u8x16
           (halide:interpret
            (vec-add
             (vec-min
              (vec-sub
               (x16 (uint8_t (bv 255 8)))
               v1)
              v0)
             v1)))]
        [((u16x8 v0) (u16x8 v1))
          (u16x8
           (halide:interpret
            (vec-add
             (vec-min
              (vec-sub
               (x8 (uint16_t (bv 65535 16)))
               v1)
              v0)
             v1)))]
        [((u32x4 v0) (u32x4 v1))
          (u32x4
           (halide:interpret
            (vec-add
             (vec-min
              (vec-sub
               (x4 (uint32_t (bv 4294967295 32)))
               v1)
              v0)
             v1)))]
        [(_ _) (assert #f "infeasible")])]

    [(uqrshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (i8x16 v1))
          (u8x16
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
        [((u16x8 v0) (i16x8 v1))
          (u16x8
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
        [((u32x4 v0) (i32x4 v1))
          (u32x4
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
        [((u64x2 v0) (i64x2 v1))
          (u64x2
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
        [(_ _) (assert #f "infeasible")])]

    [(uqrshrn Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u16x8 v0) (uint32_t v1))
          (u8x8
           (halide:interpret
            (uint8x8
             (vec-min
              (vec-add
               (vec-shr
                (uint32x8
                 v0)
                (x8 v1))
               (vec-bwand
                (uint32x8
                 (vec-if
                  (x8 (sca-lt (uint32_t (bv 0 32)) v1))
                  (x8 (uint16_t (bv 1 16)))
                  (x8 (uint16_t (bv 0 16)))))
                (vec-shr
                 (uint32x8
                  v0)
                 (x8 (sca-sub v1 (uint32_t (bv 1 32)))))))
              (x8 (uint32_t (bv 255 32)))))))]
        [((u32x4 v0) (uint32_t v1))
          (u16x4
           (halide:interpret
            (uint16x4
             (vec-min
              (vec-add
               (vec-shr
                v0
                (x4 v1))
               (vec-bwand
                (vec-if
                 (x4 (sca-lt (uint32_t (bv 0 32)) v1))
                 (x4 (uint32_t (bv 1 32)))
                 (x4 (uint32_t (bv 0 32))))
                (vec-shr
                 v0
                 (x4 (sca-sub v1 (uint32_t (bv 1 32)))))))
              (x4 (uint32_t (bv 65535 32)))))))]
        [((u64x2 v0) (uint32_t v1))
          (u32x2
           (halide:interpret
            (uint32x2
             (vec-min
              (vec-add
               (vec-shr
                v0
                (x2 (uint64x1 v1)))
               (vec-bwand
                (vec-if
                 (x2 (sca-lt (uint32_t (bv 0 32)) v1))
                 (x2 (uint64_t (bv 1 64)))
                 (x2 (uint64_t (bv 0 64))))
                (vec-shr
                 v0
                 (x2 (uint64x1 (sca-sub v1 (uint32_t (bv 1 32))))))))
              (x2 (uint64_t (bv 4294967295 64)))))))]
        [(_ _) (assert #f "infeasible")])]

    [(uqshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (i8x16 v1))
          (u8x16
           (halide:interpret
            (uint8x16
             (vec-min
              (vec-shl
               (uint16x16
                v0)
               (int16x16
                v1))
              (x16 (uint16_t (bv 255 16)))))))]
        [((u8x16 v0) (u8x16 v1))
          (u8x16
           (halide:interpret
            (uint8x16
             (vec-min
              (vec-shl
               (uint16x16
                v0)
               (uint16x16
                v1))
              (x16 (uint16_t (bv 255 16)))))))]
        [((u16x8 v0) (i16x8 v1))
          (u16x8
           (halide:interpret
            (uint16x8
             (vec-min
              (vec-shl
               (uint32x8
                v0)
               (int32x8
                v1))
              (x8 (uint32_t (bv 65535 32)))))))]
        [((u16x8 v0) (u16x8 v1))
          (u16x8
           (halide:interpret
            (uint16x8
             (vec-min
              (vec-shl
               (uint32x8
                v0)
               (uint32x8
                v1))
              (x8 (uint32_t (bv 65535 32)))))))]
        [((u32x4 v0) (i32x4 v1))
          (u32x4
           (halide:interpret
            (uint32x4
             (vec-min
              (vec-shl
               (uint64x4
                v0)
               (int64x4
                v1))
              (x4 (uint64_t (bv 4294967295 64)))))))]
        [((u32x4 v0) (u32x4 v1))
          (u32x4
           (halide:interpret
            (uint32x4
             (vec-min
              (vec-shl
               (uint64x4
                v0)
               (uint64x4
                v1))
              (x4 (uint64_t (bv 4294967295 64)))))))]
        [((u64x2 v0) (i64x2 v1))
          (u64x2
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
        [((u64x2 v0) (u64x2 v1))
          (u64x2
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
        [(_ _) (assert #f "infeasible")])]

    [(uqshrn Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u16x8 v0) (uint32_t v1))
          (u8x8
           (halide:interpret
            (uint8x8
             (vec-min
              (vec-shr
               (uint32x8
                v0)
               (x8 v1))
              (x8 (uint32_t (bv 255 32)))))))]
        [((u32x4 v0) (uint32_t v1))
          (u16x4
           (halide:interpret
            (uint16x4
             (vec-min
              (vec-shr
               v0
               (x4 v1))
              (x4 (uint32_t (bv 65535 32)))))))]
        [((u64x2 v0) (uint32_t v1))
          (u32x2
           (halide:interpret
            (uint32x2
             (vec-min
              (vec-shr
               v0
               (x2 (uint64x1 v1)))
              (x2 (uint64_t (bv 4294967295 64)))))))]
        [(_ _) (assert #f "infeasible")])]

    [(uqsub Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (u8x16 v1))
          (u8x16
           (halide:interpret
            (vec-sub
             (vec-max
              v0
              v1)
             v1)))]
        [((u16x8 v0) (u16x8 v1))
          (u16x8
           (halide:interpret
            (vec-sub
             (vec-max
              v0
              v1)
             v1)))]
        [((u32x4 v0) (u32x4 v1))
          (u32x4
           (halide:interpret
            (vec-sub
             (vec-max
              v0
              v1)
             v1)))]
        [(_ _) (assert #f "infeasible")])]

    [(uqxtn Vn)
      (destruct* ((interpret Vn))
        [((u16x8 v0))
          (u8x8
           (halide:interpret
            (uint8x8
             (vec-min
              v0
              (x8 (uint16_t (bv 255 16)))))))]
        [((u32x4 v0))
          (u16x4
           (halide:interpret
            (uint16x4
             (vec-min
              v0
              (x4 (uint32_t (bv 65535 32)))))))]
        [((u64x2 v0))
          (u32x2
           (halide:interpret
            (uint32x2
             (vec-min
              v0
              (x2 (uint64_t (bv 4294967295 64)))))))]
        [(_) (assert #f "infeasible")])]

    [(urhadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (u8x16 v1))
          (u8x16
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
        [((u16x8 v0) (u16x8 v1))
          (u16x8
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
        [((u32x4 v0) (u32x4 v1))
          (u32x4
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
        [(_ _) (assert #f "infeasible")])]

    [(urhsub Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (u8x16 v1))
          (u8x16
           (halide:interpret
            (vec-add
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
                 v0
                 (x16 (uint8_t (bv 1 8))))
                (vec-bwand
                 v1
                 (x16 (uint8_t (bv 1 8)))))
               (x16 (uint8_t (bv 1 8))))
              (x16 (uint8_t (bv 1 8)))))))]
        [((u16x8 v0) (u16x8 v1))
          (u16x8
           (halide:interpret
            (vec-add
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
                 v0
                 (x8 (uint16_t (bv 1 16))))
                (vec-bwand
                 v1
                 (x8 (uint16_t (bv 1 16)))))
               (x8 (uint16_t (bv 1 16))))
              (x8 (uint16_t (bv 1 16)))))))]
        [((u32x4 v0) (u32x4 v1))
          (u32x4
           (halide:interpret
            (vec-add
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
                 v0
                 (x4 (uint32_t (bv 1 32))))
                (vec-bwand
                 v1
                 (x4 (uint32_t (bv 1 32)))))
               (x4 (uint32_t (bv 1 32))))
              (x4 (uint32_t (bv 1 32)))))))]
        [(_ _) (assert #f "infeasible")])]

    [(urshl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (i8x16 v1))
          (u8x16
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
        [((u16x8 v0) (i16x8 v1))
          (u16x8
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
        [((u32x4 v0) (i32x4 v1))
          (u32x4
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
        [((u64x2 v0) (i64x2 v1))
          (u64x2
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
        [(_ _) (assert #f "infeasible")])]

    [(ushl Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x16 v0) (i8x16 v1))
          (u8x16
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((u16x8 v0) (i16x8 v1))
          (u16x8
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((u32x4 v0) (i32x4 v1))
          (u32x4
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [((u64x2 v0) (i64x2 v1))
          (u64x2
           (halide:interpret
            (vec-shl
             v0
             v1)))]
        [(_ _) (assert #f "infeasible")])]

    [(ushll Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x8 v0) (uint8_t v1))
          (u16x8
           (halide:interpret
            (uint16x8
             (vec-shl
              v0
              (x8 v1)))))]
        [((u8x16 v0) (uint8_t v1))
          (u16x16
           (halide:interpret
            (uint16x16
             (vec-shl
              v0
              (x16 v1)))))]
        [((u16x4 v0) (uint16_t v1))
          (u32x4
           (halide:interpret
            (uint32x4
             (vec-shl
              v0
              (x4 v1)))))]
        [((u16x8 v0) (uint16_t v1))
          (u32x8
           (halide:interpret
            (uint32x8
             (vec-shl
              v0
              (x8 v1)))))]
        [((u32x2 v0) (uint32_t v1))
          (u64x2
           (halide:interpret
            (uint64x2
             (vec-shl
              v0
              (x2 v1)))))]
        [((u32x4 v0) (uint32_t v1))
          (u64x4
           (halide:interpret
            (uint64x4
             (vec-shl
              v0
              (x4 v1)))))]
        [(_ _) (assert #f "infeasible")])]

    [(usqadd Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x8 v0) (i8x8 v1))
          (u8x8
           (halide:interpret
            (uint8x8
             (vec-add
              (int16x8
               v0)
              (int16x8
               v1)))))]
        [((u8x16 v0) (i8x16 v1))
          (u8x16
           (halide:interpret
            (uint8x16
             (vec-add
              (int16x16
               v0)
              (int16x16
               v1)))))]
        [((u16x4 v0) (i16x4 v1))
          (u16x4
           (halide:interpret
            (uint16x4
             (vec-add
              (int32x4
               v0)
              (int32x4
               v1)))))]
        [((u16x8 v0) (i16x8 v1))
          (u16x8
           (halide:interpret
            (uint16x8
             (vec-add
              (int32x8
               v0)
              (int32x8
               v1)))))]
        [((u32x2 v0) (i32x2 v1))
          (u32x2
           (halide:interpret
            (uint32x2
             (vec-add
              (int64x2
               v0)
              (int64x2
               v1)))))]
        [((u32x4 v0) (i32x4 v1))
          (u32x4
           (halide:interpret
            (uint32x4
             (vec-add
              (int64x4
               v0)
              (int64x4
               v1)))))]
        [(_ _) (assert #f "infeasible")])]

    [(vabdl_i16x4 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i16x4 v0) (i16x4 v1))
          (i32x4
           (halide:interpret
            (int32x4
             (vec-absd
              v0
              v1))))]
        [((i16x4 v0) (i16x4 v1))
          (u32x4
           (halide:interpret
            (uint32x4
             (vec-absd
              v0
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(vabdl_i32x2 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i32x2 v0) (i32x2 v1))
          (i64x2
           (halide:interpret
            (int64x2
             (vec-absd
              v0
              v1))))]
        [((i32x2 v0) (i32x2 v1))
          (u64x2
           (halide:interpret
            (uint64x2
             (vec-absd
              v0
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(vabdl_i8x8 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((i8x8 v0) (i8x8 v1))
          (i16x8
           (halide:interpret
            (int16x8
             (vec-absd
              v0
              v1))))]
        [((i8x8 v0) (i8x8 v1))
          (u16x8
           (halide:interpret
            (uint16x8
             (vec-absd
              v0
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(vabdl_u16x4 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u16x4 v0) (u16x4 v1))
          (u32x4
           (halide:interpret
            (uint32x4
             (vec-absd
              v0
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(vabdl_u32x2 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u32x2 v0) (u32x2 v1))
          (u64x2
           (halide:interpret
            (uint64x2
             (vec-absd
              v0
              v1))))]
        [(_ _) (assert #f "infeasible")])]

    [(vabdl_u8x8 Vn Vm)
      (destruct* ((interpret Vn) (interpret Vm))
        [((u8x8 v0) (u8x8 v1))
          (u16x8
           (halide:interpret
            (uint16x8
             (vec-absd
              v0
              v1))))]
        [(_ _) (assert #f "infeasible")])]


    [_ (error "No interpreter for ~a" p)]))
