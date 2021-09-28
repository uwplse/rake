#lang rosette/safe

(require
  rosette/lib/destruct
  rake/cpp
  rake/halide)

;; ARM A64 vector types
(struct i8x8 (Vn) #:transparent)
(struct i16x4 (Vn) #:transparent)
(struct i32x2 (Vn) #:transparent)
(struct i64x1 (Vn) #:transparent)
(struct i8x16 (Vn) #:transparent)
(struct i16x8 (Vn) #:transparent)
(struct i32x4 (Vn) #:transparent)
(struct i64x2 (Vn) #:transparent)
(struct u8x8 (Vn) #:transparent)
(struct u16x4 (Vn) #:transparent)
(struct u32x2 (Vn) #:transparent)
(struct u64x1 (Vn) #:transparent)
(struct u8x16 (Vn) #:transparent)
(struct u16x8 (Vn) #:transparent)
(struct u32x4 (Vn) #:transparent)
(struct u64x2 (Vn) #:transparent)

;; ARM A64 vector intrinsics
(struct abs (Vn) #:transparent)                             ;; abs
(struct uabd (Vn Vm) #:transparent)                         ;; absd
(struct sabd (Vn Vm) #:transparent)                         ;; absd
(struct umull (Vn Vm) #:transparent)                        ;; widening_mul
(struct smull (Vn Vm) #:transparent)                        ;; widening_mul
(struct uqadd (Vn Vm) #:transparent)                        ;; saturating_add
(struct sqadd (Vn Vm) #:transparent)                        ;; saturating_add
(struct uqsub (Vn Vm) #:transparent)                        ;; saturating_sub
(struct sqsub (Vn Vm) #:transparent)                        ;; saturating_sub
(struct uhadd (Vn Vm) #:transparent)                        ;; halving_add
(struct shadd (Vn Vm) #:transparent)                        ;; halving_add
(struct uhsub (Vn Vm) #:transparent)                        ;; halving_sub
(struct shsub (Vn Vm) #:transparent)                        ;; halving_sub
(struct urhadd (Vn Vm) #:transparent)                       ;; rounding_halving_add
(struct srhadd (Vn Vm) #:transparent)                       ;; rounding_halving_add
(struct urhsub (Vn Vm) #:transparent)                       ;; rounding_halving_sub
(struct srhsub (Vn Vm) #:transparent)                       ;; rounding_halving_sub
(struct umin (Vn Vm) #:transparent)                         ;; min
(struct smin (Vn Vm) #:transparent)                         ;; min
(struct umax (Vn Vm) #:transparent)                         ;; max
(struct smax (Vn Vm) #:transparent)                         ;; max
(struct sqneg (Vn) #:transparent)                           ;; saturating_negate
(struct uqxtn (Vn) #:transparent)                           ;; saturating_narrow
(struct sqxtn (Vn) #:transparent)                           ;; saturating_narrow
(struct sqxtun (Vn) #:transparent)                          ;; saturating_narrow
(struct rshrn (Vn Vm) #:transparent)                        ;; rounding_shift_right_narrow
(struct uqrshl (Vn Vm) #:transparent)                       ;; saturating_rounding_shift_left
(struct sqrshl (Vn Vm) #:transparent)                       ;; saturating_rounding_shift_left
(struct uqrshrn (Vn Vm) #:transparent)                      ;; saturating_rounding_shift_right_narrow
(struct sqrshrn (Vn Vm) #:transparent)                      ;; saturating_rounding_shift_right_narrow
(struct sqrshrun (Vn Vm) #:transparent)                     ;; saturating_rounding_shift_right_narrow
(struct uqshl (Vn Vm) #:transparent)                        ;; saturating_shift_left
(struct sqshlu (Vn Vm) #:transparent)                       ;; saturating_shift_left
(struct sqshl (Vn Vm) #:transparent)                        ;; saturating_shift_left
(struct uqshrn (Vn Vm) #:transparent)                       ;; saturating_shift_right_narrow
(struct sqshrn (Vn Vm) #:transparent)                       ;; saturating_shift_right_narrow
(struct sqshrun (Vn Vm) #:transparent)                      ;; saturating_shift_right_narrow
(struct urshl (Vn Vm) #:transparent)                        ;; rounding_shift_left
(struct srshl (Vn Vm) #:transparent)                        ;; rounding_shift_left
(struct ushl (Vn Vm) #:transparent)                         ;; shift_left
(struct sshl (Vn Vm) #:transparent)                         ;; shift_left
(struct raddhn (Vn Vm) #:transparent)                       ;; rounding_add_narrow
(struct rsubhn (Vn Vm) #:transparent)                       ;; rounding_sub_narrow
(struct sqdmulh (Vn Vm) #:transparent)                      ;; qdmulh
(struct sqrdmulh (Vn Vm) #:transparent)                     ;; qrdmulh
(struct addp (Vn Vm) #:transparent)                         ;; pairwise_add
(struct uaddlp (Vn) #:transparent)                          ;; pairwise_widening_add
(struct saddlp (Vn) #:transparent)                          ;; pairwise_widening_add
(struct umaxp (Vn Vm) #:transparent)                        ;; pairwise_max
(struct smaxp (Vn Vm) #:transparent)                        ;; pairwise_max
(struct uminp (Vn Vm) #:transparent)                        ;; pairwise_min
(struct sminp (Vn Vm) #:transparent)                        ;; pairwise_min
(struct sdot.v2i32.v8i8 (Vd Vn Vm) #:transparent)           ;; dot_product
(struct udot.v2i32.v8i8 (Vd Vn Vm) #:transparent)           ;; dot_product
(struct sdot.v4i32.v16i8 (Vd Vn Vm) #:transparent)          ;; dot_product
(struct udot.v4i32.v16i8 (Vd Vn Vm) #:transparent)          ;; dot_product
(struct vabdl_i8x8 (Vn Vm) #:transparent)                   ;; widening_absd
(struct vabdl_u8x8 (Vn Vm) #:transparent)                   ;; widening_absd
(struct vabdl_i16x4 (Vn Vm) #:transparent)                  ;; widening_absd
(struct vabdl_u16x4 (Vn Vm) #:transparent)                  ;; widening_absd
(struct vabdl_i32x2 (Vn Vm) #:transparent)                  ;; widening_absd
(struct vabdl_u32x2 (Vn Vm) #:transparent)                  ;; widening_absd

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
              (vec-shr
               (vec-if
                (vec-lt
                 v1
                 (x16 (int8_t (bv 0 8))))
                (x16 (int8_t (bv 126 8)))
                (x16 (int8_t (bv 127 8))))
               v1)
              v0)
             (x16 (int8_t (bv 127 8)))
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
                 (x16 (int8_t (bv 1 8))))))))))]
        [((i16x8 v0) (i16x8 v1))
          (i16x8
           (halide:interpret
            (vec-if
             (vec-lt
              (vec-shr
               (vec-if
                (vec-lt
                 v1
                 (x8 (int16_t (bv 0 16))))
                (x8 (int16_t (bv 32766 16)))
                (x8 (int16_t (bv 32767 16))))
               v1)
              v0)
             (x8 (int16_t (bv 32767 16)))
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
                 (x8 (int16_t (bv 1 16))))))))))]
        [((i32x4 v0) (i32x4 v1))
          (i32x4
           (halide:interpret
            (vec-if
             (vec-lt
              (vec-shr
               (vec-if
                (vec-lt
                 v1
                 (x4 (int32_t (bv 0 32))))
                (x4 (int32_t (bv 2147483646 32)))
                (x4 (int32_t (bv 2147483647 32))))
               v1)
              v0)
             (x4 (int32_t (bv 2147483647 32)))
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
                 (x4 (int32_t (bv 1 32))))))))))]
        [((i64x2 v0) (i64x2 v1))
          (i64x2
           (halide:interpret
            (vec-if
             (vec-lt
              (vec-shr
               (vec-if
                (vec-lt
                 v1
                 (x2 (int64_t (bv 0 64))))
                (x2 (int64_t (bv 9223372036854775806 64)))
                (x2 (int64_t (bv 9223372036854775807 64))))
               v1)
              v0)
             (x2 (int64_t (bv 9223372036854775807 64)))
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
                 (x2 (int64_t (bv 1 64))))))))))]
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
             (int64x2
              (vec-shl
               v0
               v1)))))]
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
             (uint64x2
              (vec-shl
               v0
               v1)))))]
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
              (vec-shr
               (vec-if
                (vec-lt
                 v1
                 (x16 (int8_t (bv 0 8))))
                (x16 (uint8_t (bv 254 8)))
                (x16 (uint8_t (bv 255 8))))
               v1)
              v0)
             (x16 (uint8_t (bv 255 8)))
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
                 (x16 (int8_t (bv 1 8))))))))))]
        [((u16x8 v0) (i16x8 v1))
          (u16x8
           (halide:interpret
            (vec-if
             (vec-lt
              (vec-shr
               (vec-if
                (vec-lt
                 v1
                 (x8 (int16_t (bv 0 16))))
                (x8 (uint16_t (bv 65534 16)))
                (x8 (uint16_t (bv 65535 16))))
               v1)
              v0)
             (x8 (uint16_t (bv 65535 16)))
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
                 (x8 (int16_t (bv 1 16))))))))))]
        [((u32x4 v0) (i32x4 v1))
          (u32x4
           (halide:interpret
            (vec-if
             (vec-lt
              (vec-shr
               (vec-if
                (vec-lt
                 v1
                 (x4 (int32_t (bv 0 32))))
                (x4 (uint32_t (bv 4294967294 32)))
                (x4 (uint32_t (bv 4294967295 32))))
               v1)
              v0)
             (x4 (uint32_t (bv 4294967295 32)))
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
                 (x4 (int32_t (bv 1 32))))))))))]
        [((u64x2 v0) (i64x2 v1))
          (u64x2
           (halide:interpret
            (vec-if
             (vec-lt
              (vec-shr
               (vec-if
                (vec-lt
                 v1
                 (x2 (int64_t (bv 0 64))))
                (x2 (uint64_t (bv 18446744073709551614 64)))
                (x2 (uint64_t (bv 18446744073709551615 64))))
               v1)
              v0)
             (x2 (uint64_t (bv 18446744073709551615 64)))
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
                 (x2 (int64_t (bv 1 64))))))))))]
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
             (uint64x2
              (vec-shl
               v0
               v1)))))]
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

    [_ p]))