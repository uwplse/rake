#lang rosette/safe

(require
  (only-in racket/struct make-constructor-style-printer)
  rosette/lib/destruct
  rake/cpp
  rake/halide)

(provide (prefix-out arm: (all-defined-out)))

;; ARM A64 vector types
(struct i8x8 (Vn) #:transparent)
(struct i16x4 (Vn) #:transparent)
(struct i32x2 (Vn) #:transparent)
(struct i64x1 (Vn) #:transparent)
(struct i8x16 (Vn) #:transparent)
(struct i16x8 (Vn) #:transparent)
(struct i32x4 (Vn) #:transparent)
(struct i64x2 (Vn) #:transparent)
(struct i8x32 (Vn) #:transparent)
(struct i16x16 (Vn) #:transparent)
(struct i32x8 (Vn) #:transparent)
(struct i64x4 (Vn) #:transparent)
(struct u8x8 (Vn) #:transparent)
(struct u16x4 (Vn) #:transparent)
(struct u32x2 (Vn) #:transparent)
(struct u64x1 (Vn) #:transparent)
(struct u8x16 (Vn) #:transparent)
(struct u16x8 (Vn) #:transparent)
(struct u32x4 (Vn) #:transparent)
(struct u64x2 (Vn) #:transparent)
(struct u8x32 (Vn) #:transparent)
(struct u16x16 (Vn) #:transparent)
(struct u32x8 (Vn) #:transparent)
(struct u64x4 (Vn) #:transparent)

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
(struct add (Vn Vm) #:transparent)                          ;; add_vector
(struct addhn (Vn Vm) #:transparent)                        ;; add_high_narrow
(struct addv (Vn) #:transparent)                            ;; add_across_vector
(struct mla (Vd Vn Vm) #:transparent)                       ;; multiply_add_acc
(struct mls (Vd Vn Vm) #:transparent)                       ;; multiply_sub_acc
(struct mul (Vn Vm) #:transparent)                          ;; multiply_vector
(struct neg (Vn) #:transparent)                             ;; negate_vector
(struct saba (Vd Vn Vm) #:transparent)                      ;; signed_absd_acc
(struct saddlv (Vn) #:transparent)                          ;; signed_add_long_across_vector
(struct shll (Vn) #:transparent)                            ;; shift_left_long
(struct shrn (Vn Vm) #:transparent)                         ;; shift_right_narrow
(struct smaxv (Vn) #:transparent)                           ;; signed_maximum_across_vector
(struct sminv (Vn) #:transparent)                           ;; signed_minimum_across_vector
(struct sqabs (Vn) #:transparent)                           ;; signed_saturating_abs
(struct sqdmull (Vn Vm) #:transparent)                      ;; signed_saturating_doubling_mul_long
(struct sshll (Vn Vm) #:transparent)                        ;; signed_shift_left_long
(struct sub (Vn Vm) #:transparent)                          ;; sub_vector
(struct subhn (Vn Vm) #:transparent)                        ;; sub_high_narrow
(struct suqadd (Vn Vm) #:transparent)                       ;; signed_saturating_acc_unsigned
(struct uaddlv (Vn) #:transparent)                          ;; unsigned_add_long_across_vector
(struct umaxv (Vn) #:transparent)                           ;; unsigned_maximum_across_vector
(struct uminv (Vn) #:transparent)                           ;; unsigned_minimum_across_vector
(struct ushll (Vn Vm) #:transparent)                        ;; unsigned_shift_left_long
(struct usqadd (Vn Vm) #:transparent)                       ;; unsigned_saturating_acc_signed

(struct ??shuffle (id lds) #:transparent)
(struct ??load (id live-data buffer gather-tbl)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `??load)
      (lambda (obj) (list (??load-id obj) (??load-buffer obj)))))] ; (filter concrete? (??load-gather-tbl obj))
  #:methods gen:equal+hash
  [(define (equal-proc a b equal?-recur)
     (and
      (equal?-recur (??load-id a) (??load-id b))
      (equal?-recur (??load-buffer a) (??load-buffer b))))
   (define (hash-proc a hash-recur) (??load-id a))
   (define (hash2-proc a hash2-recur) (??load-id a))])