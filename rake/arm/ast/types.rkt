#lang rosette/safe

(require
  (only-in racket/base error)
  (only-in racket/struct make-constructor-style-printer)
  rosette/lib/destruct
  rake/cpp/types)

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
(struct i8x4 (Vn) #:transparent)
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
(struct u8x4 (Vn) #:transparent)

;; ARM A64 vector intrinsics
(struct abs (Vn) #:transparent)                             ;; abs
(struct uabd (Vn Vm) #:transparent)                         ;; absd
(struct sabd (Vn Vm) #:transparent)                         ;; absd
(struct umull-vv (Vn Vm) #:transparent)                     ;; widening_mul
(struct smull-vv (Vn Vm) #:transparent)                     ;; widening_mul
(struct umull-vs (Vn Vm) #:transparent)                     ;; widening_mul
(struct smull-vs (Vn Vm) #:transparent)                     ;; widening_mul
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
(struct sdot.v2i32.v8i4 (Vd Vn Vm) #:transparent)           ;; sca_dot_product
(struct udot.v2i32.v8i4 (Vd Vn Vm) #:transparent)           ;; sca_dot_product
(struct sdot.v4i32.v16i4 (Vd Vn Vm) #:transparent)          ;; sca_dot_product
(struct udot.v4i32.v16i4 (Vd Vn Vm) #:transparent)          ;; sca_dot_product
(struct vabdl_i8x8 (Vn Vm) #:transparent)                   ;; widening_absd
(struct vabdl_u8x8 (Vn Vm) #:transparent)                   ;; widening_absd
(struct vabdl_i16x4 (Vn Vm) #:transparent)                  ;; widening_absd
(struct vabdl_u16x4 (Vn Vm) #:transparent)                  ;; widening_absd
(struct vabdl_i32x2 (Vn Vm) #:transparent)                  ;; widening_absd
(struct vabdl_u32x2 (Vn Vm) #:transparent)                  ;; widening_absd
(struct add (Vn Vm) #:transparent)                          ;; add_vector
(struct addhn (Vn Vm) #:transparent)                        ;; add_high_narrow
(struct addv (Vn) #:transparent)                            ;; add_across_vector
(struct mla-vs (Vd Vn Vm) #:transparent)                    ;; multiply_add_acc_scalar
(struct mla-vv (Vd Vn Vm) #:transparent)                    ;; multiply_add_acc_vector
(struct mls-vs (Vd Vn Vm) #:transparent)                    ;; multiply_sub_acc_scalar
(struct mls-vv (Vd Vn Vm) #:transparent)                    ;; multiply_sub_acc_vector
(struct mul-vs (Vn Vm) #:transparent)                       ;; multiply_vector_scalar
(struct mul-vv (Vn Vm) #:transparent)                       ;; multiply_vector_vector
(struct neg (Vn) #:transparent)                             ;; negate_vector
(struct saba (Vd Vn Vm) #:transparent)                      ;; signed_absd_acc
(struct sabal (Vd Vn Vm) #:transparent)                     ;; signed_absd_acc_long
(struct sadalp (Vn Vm) #:transparent)                       ;; signed_add_acc_long_pairwise
(struct saddl (Vn Vm) #:transparent)                        ;; signed_add_long
(struct saddlv (Vn) #:transparent)                          ;; signed_add_long_across_vector
(struct saddw (Vn Vm) #:transparent)                        ;; signed_add_wide
(struct shl (Vn) #:transparent)                             ;; shift_left
(struct shll (Vn) #:transparent)                            ;; shift_left_long
(struct shrn (Vn Vm) #:transparent)                         ;; shift_right_narrow
(struct smaxv (Vn) #:transparent)                           ;; signed_maximum_across_vector
(struct sminv (Vn) #:transparent)                           ;; signed_minimum_across_vector
(struct smlal-vs (Vd Vn Vm) #:transparent)                  ;; signed_multiply_add_long_scalar
(struct smlal-vv (Vd Vn Vm) #:transparent)                  ;; signed_multiply_add_long_vector
(struct smlsl-vs (Vd Vn Vm) #:transparent)                  ;; signed_multiply_sub_long_scalar
(struct smlsl-vv (Vd Vn Vm) #:transparent)                  ;; signed_multiply_sub_long_vector
(struct sqabs (Vn) #:transparent)                           ;; signed_saturating_abs
(struct sqdmull-vs (Vn Vm) #:transparent)                   ;; signed_saturating_doubling_mul_long_scalar
(struct sqdmull-vv (Vn Vm) #:transparent)                   ;; signed_saturating_doubling_mul_long_vector
(struct sshll (Vn Vm) #:transparent)                        ;; signed_shift_left_long
(struct ssubl (Vn Vm) #:transparent)                        ;; signed_sub_long
(struct ssubw (Vn Vm) #:transparent)                        ;; signed_sub_wide
(struct sub (Vn Vm) #:transparent)                          ;; sub_vector
(struct subhn (Vn Vm) #:transparent)                        ;; sub_high_narrow
(struct suqadd (Vn Vm) #:transparent)                       ;; signed_saturating_acc_unsigned
(struct sxtl (Vn) #:transparent)                            ;; signed_extend_long
(struct uadalp (Vn Vm) #:transparent)                       ;; unsigned_add_acc_long_pairwise
(struct uaddl (Vn Vm) #:transparent)                        ;; unsigned_add_long
(struct uaddlv (Vn) #:transparent)                          ;; unsigned_add_long_across_vector
(struct uaddw (Vn Vm) #:transparent)                        ;; unsigned_add_wide
(struct umaxv (Vn) #:transparent)                           ;; unsigned_maximum_across_vector
(struct uminv (Vn) #:transparent)                           ;; unsigned_minimum_across_vector
(struct umlal-vs (Vd Vn Vm) #:transparent)                  ;; unsigned_multiply_add_long_scalar
(struct umlal-vv (Vd Vn Vm) #:transparent)                  ;; unsigned_multiply_add_long_vector
(struct umlsl-vs (Vd Vn Vm) #:transparent)                  ;; unsigned_multiply_sub_long_scalar
(struct umlsl-vv (Vd Vn Vm) #:transparent)                  ;; unsigned_multiply_sub_long_scalar
(struct ushll (Vn Vm) #:transparent)                        ;; unsigned_shift_left_long
(struct usqadd (Vn Vm) #:transparent)                       ;; unsigned_saturating_acc_signed
(struct usubl (Vn Vm) #:transparent)                        ;; unsigned_sub_long
(struct usubw (Vn Vm) #:transparent)                        ;; unsigned_sub_wide
(struct uxtl (Vn) #:transparent)                            ;; unsigned_extend_long
(struct xtn (Vn) #:transparent)                             ;; extract_narrow
(struct zip (Vn Vm) #:transparent)                          ;; zip_vectors
(struct uzip1 (Vn Vm) #:transparent)                        ;; unzip_even_vectors
(struct uzip2 (Vn Vm) #:transparent)                        ;; unzip_odd_vectors
(struct dup (Vn) #:transparent)                             ;; duplicate_value
(struct dupw (Vn) #:transparent)                            ;; duplicate_value_wide
(struct dupn (Vn) #:transparent)                            ;; duplicate_value_narrow
(struct trn1 (Vn Vm) #:transparent)                         ;; transpose_vectors_even
(struct trn2 (Vn Vm) #:transparent)                         ;; transpose_vectors_odd
(struct ext8i1 (Vn Vm) #:transparent)                       ;; extract_vectors_8i1
(struct ext8i2 (Vn Vm) #:transparent)                       ;; extract_vectors_8i2
(struct ext8i3 (Vn Vm) #:transparent)                       ;; extract_vectors_8i3
(struct ext8i4 (Vn Vm) #:transparent)                       ;; extract_vectors_8i4
(struct ext8i5 (Vn Vm) #:transparent)                       ;; extract_vectors_8i5
(struct ext8i6 (Vn Vm) #:transparent)                       ;; extract_vectors_8i6
(struct ext8i7 (Vn Vm) #:transparent)                       ;; extract_vectors_8i7
(struct ext16i1 (Vn Vm) #:transparent)                      ;; extract_vectors_16i1
(struct ext16i2 (Vn Vm) #:transparent)                      ;; extract_vectors_16i2
(struct ext16i3 (Vn Vm) #:transparent)                      ;; extract_vectors_16i3
(struct ext16i4 (Vn Vm) #:transparent)                      ;; extract_vectors_16i4
(struct ext16i5 (Vn Vm) #:transparent)                      ;; extract_vectors_16i5
(struct ext16i6 (Vn Vm) #:transparent)                      ;; extract_vectors_16i6
(struct ext16i7 (Vn Vm) #:transparent)                      ;; extract_vectors_16i7
(struct ext16i8 (Vn Vm) #:transparent)                      ;; extract_vectors_16i8
(struct ext16i9 (Vn Vm) #:transparent)                      ;; extract_vectors_16i9
(struct ext16i10 (Vn Vm) #:transparent)                     ;; extract_vectors_16i10
(struct ext16i11 (Vn Vm) #:transparent)                     ;; extract_vectors_16i11
(struct ext16i12 (Vn Vm) #:transparent)                     ;; extract_vectors_16i12
(struct ext16i13 (Vn Vm) #:transparent)                     ;; extract_vectors_16i13
(struct ext16i14 (Vn Vm) #:transparent)                     ;; extract_vectors_16i14
(struct ext16i15 (Vn Vm) #:transparent)                     ;; extract_vectors_16i15

;; ARM instructions for vector creation
(struct ld (buf loc align output-type) #:transparent)
;; TODO: add the rest of the options

;; Special added instructions
(struct reinterpret (Vd) #:transparent)
(struct ??shuffle (id lds output-type) #:transparent)

(struct ??load (id live-data buffer gather-tbl output-type)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `??load)
      (lambda (obj) (list (??load-id obj) (??load-buffer obj) (??load-output-type obj)))))] ; (filter concrete? (??load-gather-tbl obj))
  #:methods gen:equal+hash
  [(define (equal-proc a b equal?-recur)
     (and
      (equal?-recur (??load-id a) (??load-id b))
      (equal?-recur (??load-buffer a) (??load-buffer b))
      (equal?-recur (??load-output-type a) (??load-output-type b))))
   (define (hash-proc a hash-recur) (??load-id a))
   (define (hash2-proc a hash2-recur) (??load-id a))])

(struct ??abstr-load (id live-data buffer)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `??abstr-load)
      (lambda (obj) (list (??abstr-load-buffer obj)))))])

(struct ??swizzle (id live-data exprs gather-tbl output-type)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `??swizzle)
      (lambda (obj) (list (??swizzle-id obj) (length (??swizzle-exprs obj)) (??swizzle-output-type obj)))))]
  #:methods gen:equal+hash
  [(define (equal-proc a b equal?-recur)
     (and
      (equal?-recur (??swizzle-output-type a) (??swizzle-output-type b))
      (equal?-recur (??swizzle-id a) (??swizzle-id b))
      (equal?-recur (??swizzle-live-data a) (??swizzle-live-data b))
      (equal?-recur (??swizzle-exprs a) (??swizzle-exprs b))))
   (define (hash-proc a hash-recur) (??swizzle-id a))
   (define (hash2-proc a hash2-recur) (??swizzle-id a))])

;; New types to represent abstract computation (these types should never appear in output code)
(struct abstr-expr (orig-expr abstr-vals offset)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `arm:abstr-expr)
      (lambda (obj) (list ))))])

(struct ??sub-expr (exprs c)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `??sub-expr)
      (lambda (obj) (if (concrete? (??sub-expr-c obj))
                        (list (list-ref (??sub-expr-exprs obj) (??sub-expr-c obj)))
                        (list (length (??sub-expr-exprs obj)) (??sub-expr-c obj))))))])

;; Concat vectors (not an intrinsic but a useful construct)
(struct concat-tiles (vecs) #:transparent)

(define (elem-type expr)
  (cond
    [(eq? i8x8 expr) 'int8]
    [(eq? i8x16 expr) 'int8]
    [(eq? i8x32 expr) 'int8]
    [(eq? i16x4 expr) 'int16]
    [(eq? i16x8 expr) 'int16]
    [(eq? i16x16 expr) 'int16]
    [(eq? i32x2 expr) 'int32]
    [(eq? i32x4 expr) 'int32]
    [(eq? i32x8 expr) 'int32]
    [(eq? i64x1 expr) 'int64]
    [(eq? i64x2 expr) 'int64]
    [(eq? i64x4 expr) 'int64]

    [(eq? u8x8 expr) 'uint8]
    [(eq? u8x16 expr) 'uint8]
    [(eq? u8x32 expr) 'uint8]
    [(eq? u16x4 expr) 'uint16]
    [(eq? u16x8 expr) 'uint16]
    [(eq? u16x16 expr) 'uint16]
    [(eq? u32x2 expr) 'uint32]
    [(eq? u32x4 expr) 'uint32]
    [(eq? u32x8 expr) 'uint32]
    [(eq? u64x1 expr) 'uint64]
    [(eq? u64x2 expr) 'uint64]
    [(eq? u64x4 expr) 'uint64]


    [(i8x8? expr) 'int8]
    [(i8x16? expr) 'int8]
    [(i8x32? expr) 'int8]
    [(i16x4? expr) 'int16]
    [(i16x8? expr) 'int16]
    [(i16x16? expr) 'int16]
    [(i32x2? expr) 'int32]
    [(i32x4? expr) 'int32]
    [(i32x8? expr) 'int32]
    [(i64x1? expr) 'int64]
    [(i64x2? expr) 'int64]
    [(i64x4? expr) 'int64]

    [(u8x8? expr) 'uint8]
    [(u8x16? expr) 'uint8]
    [(u8x32? expr) 'uint8]
    [(u16x4? expr) 'uint16]
    [(u16x8? expr) 'uint16]
    [(u16x16? expr) 'uint16]
    [(u32x2? expr) 'uint32]
    [(u32x4? expr) 'uint32]
    [(u32x8? expr) 'uint32]
    [(u64x1? expr) 'uint64]
    [(u64x2? expr) 'uint64]
    [(u64x4? expr) 'uint64]


    [(eq? 'i8x8 expr) 'int8]
    [(eq? 'i8x16 expr) 'int8]
    [(eq? 'i8x32 expr) 'int8]
    [(eq? 'i16x4 expr) 'int16]
    [(eq? 'i16x8 expr) 'int16]
    [(eq? 'i16x16 expr) 'int16]
    [(eq? 'i32x2 expr) 'int32]
    [(eq? 'i32x4 expr) 'int32]
    [(eq? 'i32x8 expr) 'int32]
    [(eq? 'i64x1 expr) 'int64]
    [(eq? 'i64x2 expr) 'int64]
    [(eq? 'i64x4 expr) 'int64]

    [(eq? 'u8x8 expr) 'uint8]
    [(eq? 'u8x16 expr) 'uint8]
    [(eq? 'u8x32 expr) 'uint8]
    [(eq? 'u16x4 expr) 'uint16]
    [(eq? 'u16x8 expr) 'uint16]
    [(eq? 'u16x16 expr) 'uint16]
    [(eq? 'u32x2 expr) 'uint32]
    [(eq? 'u32x4 expr) 'uint32]
    [(eq? 'u32x8 expr) 'uint32]
    [(eq? 'u64x1 expr) 'uint64]
    [(eq? 'u64x2 expr) 'uint64]
    [(eq? 'u64x4 expr) 'uint64]))

(define (type expr)
  (destruct expr
    [(i8x8 data) 'i8x8]
    [(i8x16 data) 'i8x16]
    [(i8x32 data) 'i8x32]
    [(i16x4 data) 'i16x4]
    [(i16x8 data) 'i16x8]
    [(i16x16 data) 'i16x16]
    [(i32x2 data) 'i32x2]
    [(i32x4 data) 'i32x4]
    [(i32x8 data) 'i32x8]
    [(i64x1 data) 'i64x1]
    [(i64x2 data) 'i64x2]
    [(i64x4 data) 'i64x4]

    [(u8x8 data) 'u8x8]
    [(u8x16 data) 'u8x16]
    [(u8x32 data) 'u8x32]
    [(u16x4 data) 'u16x4]
    [(u16x8 data) 'u16x8]
    [(u16x16 data) 'u16x16]
    [(u32x2 data) 'u32x2]
    [(u32x4 data) 'u32x4]
    [(u32x8 data) 'u32x8]
    [(u64x1 data) 'u64x1]
    [(u64x2 data) 'u64x2]
    [(u64x4 data) 'u64x4]))

(struct instr-sig (ret-val args) #:transparent)

(define (instr-forms instr)
  (cond
    [(eq? ld instr) (list
                         (instr-sig 'u8x8 (list 'bufu8))
                         )]

    [(eq? abs instr) (list
                         (instr-sig 'u8x8 (list 'i8x8))
                         (instr-sig 'u8x16 (list 'i8x16))
                         (instr-sig 'u16x4 (list 'i16x4))
                         (instr-sig 'u16x8 (list 'i16x8))
                         (instr-sig 'u32x2 (list 'i32x2))
                         (instr-sig 'u32x4 (list 'i32x4))
                         )]

    [(eq? add instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'u64x2))
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         )]

    [(eq? addhn instr) (list
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? addp instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? addv instr) (list
                         (instr-sig 'uint8 (list 'u8x8))
                         (instr-sig 'uint16 (list 'u16x4))
                         (instr-sig 'uint8 (list 'u8x16))
                         (instr-sig 'uint16 (list 'u16x8))
                         (instr-sig 'uint32 (list 'u32x2))
                         (instr-sig 'int8 (list 'i8x8))
                         (instr-sig 'int16 (list 'i16x4))
                         (instr-sig 'int8 (list 'i8x16))
                         (instr-sig 'int16 (list 'i16x8))
                         (instr-sig 'int32 (list 'i32x2))
                         )]

    [(eq? dup instr) (list
                         (instr-sig 'i8x8 (list 'int8))
                         (instr-sig 'i16x4 (list 'int16))
                         (instr-sig 'i32x2 (list 'int32))
                         (instr-sig 'i64x2 (list 'int64))
                         (instr-sig 'u8x8 (list 'uint8))
                         (instr-sig 'u16x4 (list 'uint16))
                         (instr-sig 'u32x2 (list 'uint32))
                         (instr-sig 'u64x2 (list 'uint64))
                         )]

    [(eq? dupn instr) (list
                         (instr-sig 'i8x4 (list 'int8))
                         (instr-sig 'u8x4 (list 'uint8))
                         )]

    [(eq? dupw instr) (list
                         (instr-sig 'i8x16 (list 'int8))
                         (instr-sig 'i16x8 (list 'int16))
                         (instr-sig 'i32x4 (list 'int32))
                         (instr-sig 'u8x16 (list 'uint8))
                         (instr-sig 'u16x8 (list 'uint16))
                         (instr-sig 'u32x4 (list 'uint32))
                         )]

    [(eq? ext16i1 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i10 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i11 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i12 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i13 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i14 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i15 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i2 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i3 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i4 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i5 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i6 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i7 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i8 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext16i9 instr) (list
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         )]

    [(eq? ext8i1 instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         )]

    [(eq? ext8i2 instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         )]

    [(eq? ext8i3 instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         )]

    [(eq? ext8i4 instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         )]

    [(eq? ext8i5 instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         )]

    [(eq? ext8i6 instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         )]

    [(eq? ext8i7 instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         )]

    [(eq? mla-vs instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8 'uint8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16 'uint8))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4 'uint16))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8 'uint16))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2 'uint32))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4 'uint32))
                         )]

    [(eq? mla-vv instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4 'u32x4))
                         )]

    [(eq? mls-vs instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8 'uint8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16 'uint8))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4 'uint16))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8 'uint16))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2 'uint32))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4 'uint32))
                         )]

    [(eq? mls-vv instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4 'u32x4))
                         )]

    [(eq? mul-vs instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'uint8))
                         (instr-sig 'u8x16 (list 'u8x16 'uint8))
                         (instr-sig 'u16x4 (list 'u16x4 'uint16))
                         (instr-sig 'u16x8 (list 'u16x8 'uint16))
                         (instr-sig 'u32x2 (list 'u32x2 'uint32))
                         (instr-sig 'u32x4 (list 'u32x4 'uint32))
                         (instr-sig 'i8x8 (list 'i8x8 'int8))
                         (instr-sig 'i8x16 (list 'i8x16 'int8))
                         (instr-sig 'i16x4 (list 'i16x4 'int16))
                         (instr-sig 'i16x8 (list 'i16x8 'int16))
                         (instr-sig 'i32x2 (list 'i32x2 'int32))
                         (instr-sig 'i32x4 (list 'i32x4 'int32))
                         )]

    [(eq? mul-vv instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? neg instr) (list
                         (instr-sig 'i8x8 (list 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2))
                         )]

    [(eq? raddhn instr) (list
                         (instr-sig 'i8x8 (list 'i16x8 'i16x8))
                         (instr-sig 'u8x8 (list 'u16x8 'u16x8))
                         (instr-sig 'i16x4 (list 'i32x4 'i32x4))
                         (instr-sig 'u16x4 (list 'u32x4 'u32x4))
                         (instr-sig 'i32x2 (list 'i64x2 'i64x2))
                         (instr-sig 'u32x2 (list 'u64x2 'u64x2))
                         )]

    [(eq? rshrn instr) (list
                         (instr-sig 'i8x8 (list 'i16x8 'uint32))
                         (instr-sig 'u8x8 (list 'u16x8 'uint32))
                         (instr-sig 'i16x4 (list 'i32x4 'uint32))
                         (instr-sig 'u16x4 (list 'u32x4 'uint32))
                         (instr-sig 'i32x2 (list 'i64x2 'uint32))
                         (instr-sig 'u32x2 (list 'u64x2 'uint32))
                         )]

    [(eq? rsubhn instr) (list
                         (instr-sig 'i8x8 (list 'i16x8 'i16x8))
                         (instr-sig 'u8x8 (list 'u16x8 'u16x8))
                         (instr-sig 'i16x4 (list 'i32x4 'i32x4))
                         (instr-sig 'u16x4 (list 'u32x4 'u32x4))
                         (instr-sig 'i32x2 (list 'i64x2 'i64x2))
                         (instr-sig 'u32x2 (list 'u64x2 'u64x2))
                         )]

    [(eq? saba instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4 'i32x4))
                         )]

    [(eq? sabal instr) (list
                         (instr-sig 'i16x8 (list 'i16x8 'i8x8 'i8x8))
                         (instr-sig 'i16x16 (list 'i16x16 'i8x16 'i8x16))
                         (instr-sig 'i32x4 (list 'i32x4 'i16x4 'i16x4))
                         (instr-sig 'i32x8 (list 'i32x8 'i16x8 'i16x8))
                         (instr-sig 'i64x2 (list 'i64x2 'i32x2 'i32x2))
                         (instr-sig 'i64x4 (list 'i64x4 'i32x4 'i32x4))
                         )]

    [(eq? sabd instr) (list
                         (instr-sig 'u8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'u8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'u16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'u32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'u32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? sadalp instr) (list
                         (instr-sig 'i16x4 (list 'i16x4 'i8x8))
                         (instr-sig 'i16x8 (list 'i16x8 'i8x16))
                         (instr-sig 'i32x2 (list 'i32x2 'i16x4))
                         (instr-sig 'i32x4 (list 'i32x4 'i16x8))
                         (instr-sig 'int64 (list 'int64 'i32x2))
                         (instr-sig 'i64x2 (list 'i64x2 'i32x4))
                         )]

    [(eq? saddl instr) (list
                         (instr-sig 'i16x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i16x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i32x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i32x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i64x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i64x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? saddlp instr) (list
                         (instr-sig 'i16x4 (list 'i8x8))
                         (instr-sig 'i16x8 (list 'i8x16))
                         (instr-sig 'i32x2 (list 'i16x4))
                         (instr-sig 'i32x4 (list 'i16x8))
                         (instr-sig 'int64 (list 'i32x2))
                         (instr-sig 'i64x2 (list 'i32x4))
                         )]

    [(eq? saddlv instr) (list
                         (instr-sig 'int16 (list 'i8x8))
                         (instr-sig 'int16 (list 'i8x16))
                         (instr-sig 'int32 (list 'i16x4))
                         (instr-sig 'int32 (list 'i16x8))
                         (instr-sig 'int64 (list 'i32x4))
                         )]

    [(eq? saddw instr) (list
                         (instr-sig 'i16x8 (list 'i16x8 'i8x8))
                         (instr-sig 'i16x16 (list 'i16x16 'i8x16))
                         )]

    [(eq? sdot.v2i32.v8i4 instr) (list
                         (instr-sig 'i32x2 (list 'i32x2 'i8x8 'i8x4))
                         )]

    [(eq? sdot.v2i32.v8i8 instr) (list
                         (instr-sig 'i32x2 (list 'i32x2 'i8x8 'i8x8))
                         )]

    [(eq? sdot.v4i32.v16i4 instr) (list
                         (instr-sig 'i32x4 (list 'i32x4 'i8x16 'i8x4))
                         )]

    [(eq? sdot.v4i32.v16i8 instr) (list
                         (instr-sig 'i32x4 (list 'i32x4 'i8x16 'i8x16))
                         )]

    [(eq? shadd instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? shl instr) (list
                         (instr-sig 'i8x8 (list 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2))
                         (instr-sig 'u8x8 (list 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4))
                         (instr-sig 'u64x2 (list 'u64x2))
                         )]

    [(eq? shll instr) (list
                         (instr-sig 'i16x8 (list 'i8x8))
                         (instr-sig 'i16x16 (list 'i8x16))
                         (instr-sig 'i32x4 (list 'i16x4))
                         (instr-sig 'i32x8 (list 'i16x8))
                         (instr-sig 'i64x2 (list 'i32x2))
                         (instr-sig 'i64x4 (list 'i32x4))
                         )]

    [(eq? shrn instr) (list
                         (instr-sig 'i8x8 (list 'i16x8 'uint16))
                         (instr-sig 'u8x8 (list 'u16x8 'uint16))
                         (instr-sig 'i16x4 (list 'i32x4 'uint32))
                         (instr-sig 'u16x4 (list 'u32x4 'uint32))
                         (instr-sig 'u32x2 (list 'u64x2 'uint64))
                         (instr-sig 'i32x2 (list 'i64x2 'uint64))
                         )]

    [(eq? shsub instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? smax instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? smaxp instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? smaxv instr) (list
                         (instr-sig 'int8 (list 'i8x8))
                         (instr-sig 'int8 (list 'i8x16))
                         (instr-sig 'int16 (list 'i16x4))
                         (instr-sig 'int16 (list 'i16x8))
                         (instr-sig 'int32 (list 'i32x4))
                         )]

    [(eq? smin instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? sminp instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? sminv instr) (list
                         (instr-sig 'int8 (list 'i8x8))
                         (instr-sig 'int8 (list 'i8x16))
                         (instr-sig 'int16 (list 'i16x4))
                         (instr-sig 'int16 (list 'i16x8))
                         (instr-sig 'int32 (list 'i32x4))
                         )]

    [(eq? smlal-vs instr) (list
                         (instr-sig 'i32x4 (list 'i32x4 'i16x4 'int16))
                         (instr-sig 'i32x8 (list 'i32x8 'i16x8 'int16))
                         (instr-sig 'i64x2 (list 'i64x2 'i32x2 'int32))
                         (instr-sig 'i64x4 (list 'i64x4 'i32x4 'int32))
                         )]

    [(eq? smlal-vv instr) (list
                         (instr-sig 'i16x8 (list 'i16x8 'i8x8 'i8x8))
                         (instr-sig 'i16x16 (list 'i16x16 'i8x16 'i8x16))
                         (instr-sig 'i32x4 (list 'i32x4 'i16x4 'i16x4))
                         (instr-sig 'i32x8 (list 'i32x8 'i16x8 'i16x8))
                         (instr-sig 'i64x2 (list 'i64x2 'i32x2 'i32x2))
                         (instr-sig 'i64x4 (list 'i64x4 'i32x4 'i32x4))
                         )]

    [(eq? smlsl-vs instr) (list
                         (instr-sig 'i32x4 (list 'i32x4 'i16x4 'int16))
                         (instr-sig 'i32x8 (list 'i32x8 'i16x8 'int16))
                         (instr-sig 'i64x2 (list 'i64x2 'i32x2 'int32))
                         (instr-sig 'i64x4 (list 'i64x4 'i32x4 'int32))
                         )]

    [(eq? smlsl-vv instr) (list
                         (instr-sig 'i16x8 (list 'i16x8 'i8x8 'i8x8))
                         (instr-sig 'i16x16 (list 'i16x16 'i8x16 'i8x16))
                         (instr-sig 'i32x4 (list 'i32x4 'i16x4 'i16x4))
                         (instr-sig 'i32x8 (list 'i32x8 'i16x8 'i16x8))
                         (instr-sig 'i64x2 (list 'i64x2 'i32x2 'i32x2))
                         (instr-sig 'i64x4 (list 'i64x4 'i32x4 'i32x4))
                         )]

    [(eq? smull-vs instr) (list
                         (instr-sig 'i16x8 (list 'i8x8 'int8))
                         (instr-sig 'i32x4 (list 'i16x4 'int16))
                         (instr-sig 'i64x2 (list 'i32x2 'int32))
                         )]

    [(eq? smull-vv instr) (list
                         (instr-sig 'i16x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i32x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i64x2 (list 'i32x2 'i32x2))
                         )]

    [(eq? sqabs instr) (list
                         (instr-sig 'i8x8 (list 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2))
                         )]

    [(eq? sqadd instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? sqdmulh instr) (list
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? sqdmull-vs instr) (list
                         (instr-sig 'i32x4 (list 'i16x4 'int16))
                         (instr-sig 'i32x8 (list 'i16x8 'int16))
                         (instr-sig 'i64x2 (list 'i32x2 'int32))
                         (instr-sig 'i64x4 (list 'i32x4 'int32))
                         )]

    [(eq? sqdmull-vv instr) (list
                         (instr-sig 'i32x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i32x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i64x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i64x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? sqneg instr) (list
                         (instr-sig 'i8x8 (list 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2))
                         )]

    [(eq? sqrdmulh instr) (list
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? sqrshl instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         )]

    [(eq? sqrshrn instr) (list
                         (instr-sig 'i8x8 (list 'i16x8 'uint32))
                         (instr-sig 'i16x4 (list 'i32x4 'uint32))
                         (instr-sig 'i32x2 (list 'i64x2 'uint32))
                         )]

    [(eq? sqrshrun instr) (list
                         (instr-sig 'u8x8 (list 'i16x8 'uint32))
                         (instr-sig 'u16x4 (list 'i32x4 'uint32))
                         (instr-sig 'u32x2 (list 'i64x2 'uint32))
                         )]

    [(eq? sqshl instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x8 (list 'i8x8 'u8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i8x16 (list 'i8x16 'u8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x4 (list 'i16x4 'u16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i16x8 (list 'i16x8 'u16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x2 (list 'i32x2 'u32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         (instr-sig 'i32x4 (list 'i32x4 'u32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         (instr-sig 'i64x2 (list 'i64x2 'u64x2))
                         )]

    [(eq? sqshlu instr) (list
                         (instr-sig 'u8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'u8x8 (list 'i8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'i8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'u16x4 (list 'i16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'u16x8 (list 'i16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'u32x2 (list 'i32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'i32x4 'i32x4))
                         (instr-sig 'u32x4 (list 'i32x4 'u32x4))
                         (instr-sig 'u64x2 (list 'i64x2 'i64x2))
                         (instr-sig 'u64x2 (list 'i64x2 'u64x2))
                         )]

    [(eq? sqshrn instr) (list
                         (instr-sig 'i8x8 (list 'i16x8 'uint32))
                         (instr-sig 'i16x4 (list 'i32x4 'uint32))
                         (instr-sig 'i32x2 (list 'i64x2 'uint32))
                         )]

    [(eq? sqshrun instr) (list
                         (instr-sig 'u8x8 (list 'i16x8 'uint32))
                         (instr-sig 'u16x4 (list 'i32x4 'uint32))
                         (instr-sig 'u32x2 (list 'i64x2 'uint32))
                         )]

    [(eq? sqsub instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? sqxtn instr) (list
                         (instr-sig 'i8x8 (list 'i16x8))
                         (instr-sig 'i16x4 (list 'i32x4))
                         (instr-sig 'i32x2 (list 'i64x2))
                         )]

    [(eq? sqxtun instr) (list
                         (instr-sig 'u8x8 (list 'i16x8))
                         (instr-sig 'u16x4 (list 'i32x4))
                         (instr-sig 'u32x2 (list 'i64x2))
                         )]

    [(eq? srhadd instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? srhsub instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? srshl instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         )]

    [(eq? sshl instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         )]

    [(eq? sshll instr) (list
                         (instr-sig 'i16x8 (list 'i8x8 'uint8))
                         (instr-sig 'i16x16 (list 'i8x16 'uint8))
                         (instr-sig 'i32x4 (list 'i16x4 'uint16))
                         (instr-sig 'i32x8 (list 'i16x8 'uint16))
                         (instr-sig 'i64x2 (list 'i32x2 'uint32))
                         (instr-sig 'i64x4 (list 'i32x4 'uint32))
                         )]

    [(eq? ssubl instr) (list
                         (instr-sig 'i16x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i16x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i32x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i32x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i64x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i64x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? ssubw instr) (list
                         (instr-sig 'i16x8 (list 'i16x8 'i8x8))
                         (instr-sig 'i16x16 (list 'i16x16 'i8x16))
                         )]

    [(eq? sub instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'u64x2))
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         )]

    [(eq? subhn instr) (list
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? suqadd instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'u8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'u8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'u16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'u16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'u32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'u32x4))
                         )]

    [(eq? sxtl instr) (list
                         (instr-sig 'i16x8 (list 'i8x8))
                         (instr-sig 'i16x16 (list 'i8x16))
                         (instr-sig 'i32x4 (list 'i16x4))
                         (instr-sig 'i32x8 (list 'i16x8))
                         (instr-sig 'i64x2 (list 'i32x2))
                         (instr-sig 'i64x4 (list 'i32x4))
                         )]

    [(eq? trn1 instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'u64x2))
                         )]

    [(eq? trn2 instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'u64x2))
                         )]

    [(eq? uabd instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? uadalp instr) (list
                         (instr-sig 'i16x4 (list 'u16x4 'u8x8))
                         (instr-sig 'i16x8 (list 'u16x8 'u8x16))
                         (instr-sig 'i32x2 (list 'u32x2 'u16x4))
                         (instr-sig 'i32x4 (list 'u32x4 'u16x8))
                         (instr-sig 'int64 (list 'uint64 'u32x2))
                         (instr-sig 'i64x2 (list 'u64x2 'u32x4))
                         )]

    [(eq? uaddl instr) (list
                         (instr-sig 'u16x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u16x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u32x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u32x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u64x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u64x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? uaddlp instr) (list
                         (instr-sig 'u16x4 (list 'u8x8))
                         (instr-sig 'u16x8 (list 'u8x16))
                         (instr-sig 'i16x4 (list 'u8x8))
                         (instr-sig 'i16x8 (list 'u8x16))
                         (instr-sig 'u32x2 (list 'u16x4))
                         (instr-sig 'u32x4 (list 'u16x8))
                         (instr-sig 'i32x2 (list 'u16x4))
                         (instr-sig 'i32x4 (list 'u16x8))
                         (instr-sig 'uint64 (list 'u32x2))
                         (instr-sig 'u64x2 (list 'u32x4))
                         (instr-sig 'int64 (list 'u32x2))
                         (instr-sig 'i64x2 (list 'u32x4))
                         )]

    [(eq? uaddlv instr) (list
                         (instr-sig 'uint16 (list 'u8x8))
                         (instr-sig 'uint16 (list 'u8x16))
                         (instr-sig 'uint32 (list 'u16x4))
                         (instr-sig 'uint32 (list 'u16x8))
                         (instr-sig 'uint64 (list 'u32x4))
                         )]

    [(eq? uaddw instr) (list
                         (instr-sig 'u16x8 (list 'u16x8 'u8x8))
                         (instr-sig 'u16x16 (list 'u16x16 'u8x16))
                         )]

    [(eq? udot.v2i32.v8i4 instr) (list
                         (instr-sig 'i32x2 (list 'i32x2 'u8x8 'u8x4))
                         (instr-sig 'u32x2 (list 'u32x2 'u8x8 'u8x4))
                         )]

    [(eq? udot.v2i32.v8i8 instr) (list
                         (instr-sig 'i32x2 (list 'i32x2 'u8x8 'u8x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u8x8 'u8x8))
                         )]

    [(eq? udot.v4i32.v16i4 instr) (list
                         (instr-sig 'i32x4 (list 'i32x4 'u8x16 'u8x4))
                         (instr-sig 'u32x4 (list 'u32x4 'u8x16 'u8x4))
                         )]

    [(eq? udot.v4i32.v16i8 instr) (list
                         (instr-sig 'i32x4 (list 'i32x4 'u8x16 'u8x16))
                         (instr-sig 'u32x4 (list 'u32x4 'u8x16 'u8x16))
                         )]

    [(eq? uhadd instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? uhsub instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? umax instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? umaxp instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? umaxv instr) (list
                         (instr-sig 'uint8 (list 'u8x8))
                         (instr-sig 'uint8 (list 'u8x16))
                         (instr-sig 'uint16 (list 'u16x4))
                         (instr-sig 'uint16 (list 'u16x8))
                         (instr-sig 'uint32 (list 'u32x4))
                         )]

    [(eq? umin instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? uminp instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? uminv instr) (list
                         (instr-sig 'uint8 (list 'u8x8))
                         (instr-sig 'uint8 (list 'u8x16))
                         (instr-sig 'uint16 (list 'u16x4))
                         (instr-sig 'uint16 (list 'u16x8))
                         (instr-sig 'uint32 (list 'u32x4))
                         )]

    [(eq? umlal-vs instr) (list
                         (instr-sig 'u16x8 (list 'u16x8 'u8x8 'uint8))
                         (instr-sig 'u16x16 (list 'u16x16 'u8x16 'uint8))
                         (instr-sig 'u32x4 (list 'u32x4 'u16x4 'uint16))
                         (instr-sig 'u32x8 (list 'u32x8 'u16x8 'uint16))
                         (instr-sig 'u64x2 (list 'u64x2 'u32x2 'uint32))
                         (instr-sig 'u64x4 (list 'u64x4 'u32x4 'uint32))
                         )]

    [(eq? umlal-vv instr) (list
                         (instr-sig 'u16x8 (list 'u16x8 'u8x8 'u8x8))
                         (instr-sig 'u16x16 (list 'u16x16 'u8x16 'u8x16))
                         (instr-sig 'u32x4 (list 'u32x4 'u16x4 'u16x4))
                         (instr-sig 'u32x8 (list 'u32x8 'u16x8 'u16x8))
                         (instr-sig 'u64x2 (list 'u64x2 'u32x2 'u32x2))
                         (instr-sig 'u64x4 (list 'u64x4 'u32x4 'u32x4))
                         )]

    [(eq? umlsl-vs instr) (list
                         (instr-sig 'u32x4 (list 'u32x4 'u16x4 'uint16))
                         (instr-sig 'u32x8 (list 'u32x8 'u16x8 'uint16))
                         (instr-sig 'u64x2 (list 'u64x2 'u32x2 'uint32))
                         (instr-sig 'u64x4 (list 'u64x4 'u32x4 'uint32))
                         )]

    [(eq? umlsl-vv instr) (list
                         (instr-sig 'u16x8 (list 'u16x8 'u8x8 'u8x8))
                         (instr-sig 'u16x16 (list 'u16x16 'u8x16 'u8x16))
                         (instr-sig 'u32x4 (list 'u32x4 'u16x4 'u16x4))
                         (instr-sig 'u32x8 (list 'u32x8 'u16x8 'u16x8))
                         (instr-sig 'u64x2 (list 'u64x2 'u32x2 'u32x2))
                         (instr-sig 'u64x4 (list 'u64x4 'u32x4 'u32x4))
                         )]

    [(eq? umull-vs instr) (list
                         (instr-sig 'u16x8 (list 'u8x8 'uint8))
                         (instr-sig 'u32x4 (list 'u16x4 'uint16))
                         (instr-sig 'u64x2 (list 'u32x2 'uint32))
                         )]

    [(eq? umull-vv instr) (list
                         (instr-sig 'u16x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u32x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u64x2 (list 'u32x2 'u32x2))
                         )]

    [(eq? uqadd instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? uqrshl instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'i8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'i8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'i16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'i16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'i32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'i32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'i64x2))
                         )]

    [(eq? uqrshrn instr) (list
                         (instr-sig 'u8x8 (list 'u16x8 'uint32))
                         (instr-sig 'u16x4 (list 'u32x4 'uint32))
                         (instr-sig 'u32x2 (list 'u64x2 'uint32))
                         )]

    [(eq? uqshl instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'i8x8))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'i8x16))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'i16x4))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'i16x8))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'i32x2))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'i32x4))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'i64x2))
                         (instr-sig 'u64x2 (list 'u64x2 'u64x2))
                         )]

    [(eq? uqshrn instr) (list
                         (instr-sig 'u8x8 (list 'u16x8 'uint32))
                         (instr-sig 'u16x4 (list 'u32x4 'uint32))
                         (instr-sig 'u32x2 (list 'u64x2 'uint32))
                         )]

    [(eq? uqsub instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? uqxtn instr) (list
                         (instr-sig 'u8x8 (list 'u16x8))
                         (instr-sig 'u16x4 (list 'u32x4))
                         (instr-sig 'u32x2 (list 'u64x2))
                         )]

    [(eq? urhadd instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? urhsub instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? urshl instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'i8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'i8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'i16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'i16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'i32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'i32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'i64x2))
                         )]

    [(eq? ushl instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'i8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'i8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'i16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'i16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'i32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'i32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'i64x2))
                         )]

    [(eq? ushll instr) (list
                         (instr-sig 'u16x8 (list 'u8x8 'uint8))
                         (instr-sig 'u16x16 (list 'u8x16 'uint8))
                         (instr-sig 'u32x4 (list 'u16x4 'uint16))
                         (instr-sig 'u32x8 (list 'u16x8 'uint16))
                         (instr-sig 'u64x2 (list 'u32x2 'uint32))
                         (instr-sig 'u64x4 (list 'u32x4 'uint32))
                         )]

    [(eq? usqadd instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'i8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'i8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'i16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'i16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'i32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'i32x4))
                         )]

    [(eq? usubl instr) (list
                         (instr-sig 'u16x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u16x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u32x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u32x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u64x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u64x4 (list 'u32x4 'u32x4))
                         )]

    [(eq? usubw instr) (list
                         (instr-sig 'u16x8 (list 'u16x8 'u8x8))
                         (instr-sig 'u16x16 (list 'u16x16 'u8x16))
                         )]

    [(eq? uxtl instr) (list
                         (instr-sig 'u16x8 (list 'u8x8))
                         (instr-sig 'u16x16 (list 'u8x16))
                         (instr-sig 'u32x4 (list 'u16x4))
                         (instr-sig 'u32x8 (list 'u16x8))
                         (instr-sig 'u64x2 (list 'u32x2))
                         (instr-sig 'u64x4 (list 'u32x4))
                         )]

    [(eq? uzip1 instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'u64x2))
                         )]

    [(eq? uzip2 instr) (list
                         (instr-sig 'i8x8 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x16 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'u64x2))
                         )]

    [(eq? vabdl_i16x4 instr) (list
                         (instr-sig 'i32x4 (list 'i16x4 'i16x4))
                         (instr-sig 'u32x4 (list 'i16x4 'i16x4))
                         )]

    [(eq? vabdl_i32x2 instr) (list
                         (instr-sig 'i64x2 (list 'i32x2 'i32x2))
                         (instr-sig 'u64x2 (list 'i32x2 'i32x2))
                         )]

    [(eq? vabdl_i8x8 instr) (list
                         (instr-sig 'i16x8 (list 'i8x8 'i8x8))
                         (instr-sig 'u16x8 (list 'i8x8 'i8x8))
                         )]

    [(eq? vabdl_u16x4 instr) (list
                         (instr-sig 'u32x4 (list 'u16x4 'u16x4))
                         )]

    [(eq? vabdl_u32x2 instr) (list
                         (instr-sig 'u64x2 (list 'u32x2 'u32x2))
                         )]

    [(eq? vabdl_u8x8 instr) (list
                         (instr-sig 'u16x8 (list 'u8x8 'u8x8))
                         )]

    [(eq? xtn instr) (list
                         (instr-sig 'u8x8 (list 'u16x8))
                         (instr-sig 'u16x4 (list 'u32x4))
                         (instr-sig 'u32x2 (list 'u64x2))
                         (instr-sig 'i8x8 (list 'i16x8))
                         (instr-sig 'i16x4 (list 'i32x4))
                         (instr-sig 'i32x2 (list 'i64x2))
                         )]

    [(eq? zip instr) (list
                         (instr-sig 'i8x16 (list 'i8x8 'i8x8))
                         (instr-sig 'i8x32 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x8 (list 'i16x4 'i16x4))
                         (instr-sig 'i16x16 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x4 (list 'i32x2 'i32x2))
                         (instr-sig 'i32x8 (list 'i32x4 'i32x4))
                         (instr-sig 'i64x4 (list 'i64x2 'i64x2))
                         (instr-sig 'u8x16 (list 'u8x8 'u8x8))
                         (instr-sig 'u8x32 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x8 (list 'u16x4 'u16x4))
                         (instr-sig 'u16x16 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x4 (list 'u32x2 'u32x2))
                         (instr-sig 'u32x8 (list 'u32x4 'u32x4))
                         (instr-sig 'u64x4 (list 'u64x2 'u64x2))
                         )]

    [(eq? reinterpret instr) (list
                         (instr-sig 'i8x8 (list 'u8x8))
                         (instr-sig 'i16x4 (list 'u16x4))
                         (instr-sig 'i32x2 (list 'u32x2))
                         (instr-sig 'i64x1 (list 'u64x1))
                         (instr-sig 'i8x16 (list 'u8x16))
                         (instr-sig 'i16x8 (list 'u16x8))
                         (instr-sig 'i32x4 (list 'u32x4))
                         (instr-sig 'i64x2 (list 'u64x2))
                         (instr-sig 'i8x32 (list 'u8x32))
                         (instr-sig 'i16x16 (list 'u16x16))
                         (instr-sig 'i32x8 (list 'u32x8))
                         (instr-sig 'i64x4 (list 'u64x4))
                         (instr-sig 'u8x8 (list 'i8x8))
                         (instr-sig 'u16x4 (list 'i16x4))
                         (instr-sig 'u32x2 (list 'i32x2))
                         (instr-sig 'u64x1 (list 'i64x1))
                         (instr-sig 'u8x16 (list 'i8x16))
                         (instr-sig 'u16x8 (list 'i16x8))
                         (instr-sig 'u32x4 (list 'i32x4))
                         (instr-sig 'u64x2 (list 'i64x2))
                         (instr-sig 'u8x32 (list 'i8x32))
                         (instr-sig 'u16x16 (list 'i16x16))
                         (instr-sig 'u32x8 (list 'i32x8))
                         (instr-sig 'u64x4 (list 'i64x4))
                         )]

    [else (error "Unknown instruction:" instr)]))


(define (get-vector-types type)
  (cond
    [(eq? type 'int8) (list 'i8x8 'i8x16 'i8x32)]
    [(eq? type 'int16) (list 'i16x4 'i16x8 'i16x16)]
    [(eq? type 'int32) (list 'i32x2 'i32x4 'i32x8)]
    [(eq? type 'int64) (list 'i64x1 'i64x2 'i64x4)]
    [(eq? type 'uint8) (list 'u8x8 'u8x16 'u8x32)]
    [(eq? type 'uint16) (list 'u16x4 'u16x8 'u16x16)]
    [(eq? type 'uint32) (list 'u32x2 'u32x4 'u32x8)]
    [(eq? type 'uint64) (list 'u64x1 'u64x2 'u64x4)]
    [else (error "Unrecognized type (get-vector-types) ~a" type)]))

(define (simplify-shuffle shuffle)
  (let ([type (??shuffle-output-type shuffle)]
        [loads (??shuffle-lds shuffle)]
        [id (??shuffle-id shuffle)])
    (define (bad-load load)
      (not (and (??load? load) (not (eq? (??load-output-type load) type)))))
    (define filtered-loads (filter bad-load loads))
    (cond
      [(eq? 0 (length filtered-loads)) (error "simplify-shuffle removed all loads ~a" shuffle)]
      ; Just make a load if not actually shuffling anything
      [(eq? 1 (length filtered-loads)) (list-ref loads 0)]
      ; We didn't filter anything
      [(eq? (length loads) (length filtered-loads)) shuffle]
      ; We filtered some stuff
      [else (??shuffle id filtered-loads type)])))

(define (make-shuffles-list loads type)
  (map (lambda (t) (simplify-shuffle (??shuffle 0 loads t))) (get-vector-types type)))

(define (get-type-struct type)
  (cond
    [(eq? type 'i8x8) i8x8]
    [(eq? type 'i8x16) i8x16]
    [(eq? type 'i8x32) i8x32]
    [(eq? type 'u8x8) u8x8]
    [(eq? type 'u8x16) u8x16]
    [(eq? type 'u8x32) u8x32]

    [(eq? type 'i16x4) i16x4]
    [(eq? type 'i16x8) i16x8]
    [(eq? type 'i16x16) i16x16]
    [(eq? type 'u16x4) u16x4]
    [(eq? type 'u16x8) u16x8]
    [(eq? type 'u16x16) u16x16]

    [(eq? type 'i32x2) i32x2]
    [(eq? type 'i32x4) i32x4]
    [(eq? type 'i32x8) i32x8]
    [(eq? type 'u32x2) u32x2]
    [(eq? type 'u32x4) u32x4]
    [(eq? type 'u32x8) u32x8]

    [(eq? type 'i64x1) i64x1]
    [(eq? type 'i64x2) i64x2]
    [(eq? type 'i64x4) i64x4]
    [else (error "Unrecognized type (get-type-struct) ~a" type)]))

(define (get-element expr index)
  (destruct expr
    [(i8x8 data) (data index)]
    [(i8x16 data) (data index)]
    [(i8x32 data) (data index)]
    [(i16x4 data) (data index)]
    [(i16x8 data) (data index)]
    [(i16x16 data) (data index)]
    [(i32x2 data) (data index)]
    [(i32x4 data) (data index)]
    [(i32x8 data) (data index)]
    [(i64x1 data) (data index)]
    [(i64x2 data) (data index)]
    [(i64x4 data) (data index)]

    [(u8x8 data) (data index)]
    [(u8x16 data) (data index)]
    [(u8x32 data) (data index)]
    [(u16x4 data) (data index)]
    [(u16x8 data) (data index)]
    [(u16x16 data) (data index)]
    [(u32x2 data) (data index)]
    [(u32x4 data) (data index)]
    [(u32x8 data) (data index)]
    [(u64x1 data) (data index)]
    [(u64x2 data) (data index)]
    [(u64x4 data) (data index)]
    [_ (error "Unrecognized type (get-element) ~a at index ~a" expr index)]))

(define (num-elems expr)
  (destruct expr
    [(i8x8 data) 9]
    [(i8x16 data) 16]
    [(i8x32 data) 32]
    [(i16x4 data) 4]
    [(i16x8 data) 8]
    [(i16x16 data) 16]
    [(i32x2 data) 2]
    [(i32x4 data) 4]
    [(i32x8 data) 8]
    [(i64x1 data) 1]
    [(i64x2 data) 2]
    [(i64x4 data) 4]

    [(u8x8 data) 8]
    [(u8x16 data) 16]
    [(u8x32 data) 32]
    [(u16x4 data) 4]
    [(u16x8 data) 8]
    [(u16x16 data) 16]
    [(u32x2 data) 2]
    [(u32x4 data) 4]
    [(u32x8 data) 8]
    [(u64x1 data) 1]
    [(u64x2 data) 2]
    [(u64x4 data) 4]
    [_ (error "Unrecognized type ~a" expr)]))

(define (half-width? expr)
  (destruct expr
    [(i8x8 data) #t]
    [(i16x4 data) #t]
    [(i32x2 data) #t]
    [(i64x1 data) #t]
    [(u8x8 data) #t]
    [(u16x4 data) #t]
    [(u32x2 data) #t]
    [(u64x1 data) #t]
    [(i8x16 data) #f]
    [(i16x8 data) #f]
    [(i32x4 data) #f]
    [(i64x2 data) #f]
    [(u8x16 data) #f]
    [(u16x8 data) #f]
    [(u32x4 data) #f]
    [(u64x2 data) #f]
    [_ (error "Unrecognized type ~" expr)]))

(define (vec-length expr)
  (destruct expr
    [(i8x8 data) 64]
    [(i16x4 data) 64]
    [(i32x2 data) 64]
    [(i64x1 data) 64]
    [(u8x8 data) 64]
    [(u16x4 data) 64]
    [(u32x2 data) 64]
    [(u64x1 data) 64]
    [(i8x16 data) 128]
    [(i16x8 data) 128]
    [(i32x4 data) 128]
    [(i64x2 data) 128]
    [(u8x16 data) 128]
    [(u16x8 data) 128]
    [(u32x4 data) 128]
    [(u64x2 data) 128]
    [_ (error "Unrecognized type ~" expr)]))