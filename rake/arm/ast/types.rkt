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
(struct smlal (Vd Vn Vm) #:transparent)                     ;; signed_multiply_add_long
(struct smlsl (Vd Vn Vm) #:transparent)                     ;; signed_multiply_sub_long
(struct sqabs (Vn) #:transparent)                           ;; signed_saturating_abs
(struct sqdmull (Vn Vm) #:transparent)                      ;; signed_saturating_doubling_mul_long
(struct sshll (Vn Vm) #:transparent)                        ;; signed_shift_left_long
(struct ssubl (Vn Vm) #:transparent)                        ;; signed_sub_long
(struct ssubw (Vn Vm) #:transparent)                        ;; signed_sub_wide
(struct sub (Vn Vm) #:transparent)                          ;; sub_vector
(struct subhn (Vn Vm) #:transparent)                        ;; sub_high_narrow
(struct suqadd (Vn Vm) #:transparent)                       ;; signed_saturating_acc_unsigned
(struct uadalp (Vn Vm) #:transparent)                       ;; unsigned_add_acc_long_pairwise
(struct uaddl (Vn Vm) #:transparent)                        ;; unsigned_add_long
(struct uaddlv (Vn) #:transparent)                          ;; unsigned_add_long_across_vector
(struct uaddw (Vn Vm) #:transparent)                        ;; unsigned_add_wide
(struct umaxv (Vn) #:transparent)                           ;; unsigned_maximum_across_vector
(struct uminv (Vn) #:transparent)                           ;; unsigned_minimum_across_vector
(struct umlal (Vd Vn Vm) #:transparent)                     ;; unsigned_multiply_add_long
(struct umlsl (Vd Vn Vm) #:transparent)                     ;; unsigned_multiply_sub_long
(struct ushll (Vn Vm) #:transparent)                        ;; unsigned_shift_left_long
(struct usqadd (Vn Vm) #:transparent)                       ;; unsigned_saturating_acc_signed
(struct usubl (Vn Vm) #:transparent)                        ;; unsigned_sub_long
(struct usubw (Vn Vm) #:transparent)                        ;; unsigned_sub_wide

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

(struct ??swizzle (id live-data exprs gather-tbl)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `??swizzle)
      (lambda (obj) (list (??swizzle-id obj) (length (??swizzle-exprs obj))))))]
  #:methods gen:equal+hash
  [(define (equal-proc a b equal?-recur)
     (and
      (equal?-recur (??swizzle-id a) (??swizzle-id b))
      (equal?-recur (??swizzle-live-data a) (??swizzle-live-data b))
      (equal?-recur (??swizzle-exprs a) (??swizzle-exprs b))))
   (define (hash-proc a hash-recur) (??swizzle-id a))
   (define (hash2-proc a hash2-recur) (??swizzle-id a))])

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
    [(eq? abs instr) (list
                         (instr-sig 'u8x8 (list 'i8x16))
                         (instr-sig 'u16x4 (list 'i16x8))
                         (instr-sig 'u32x2 (list 'i32x4))
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
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x8 (list 'u8x16 'u8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'u16x4 (list 'u16x8 'u16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         (instr-sig 'u32x2 (list 'u32x4 'u32x4))
                         )]

    [(eq? addv instr) (list
                         (instr-sig 'u8x8 (list 'u8x8))
                         (instr-sig 'u16x4 (list 'u16x4))
                         (instr-sig 'u8x16 (list 'u8x16))
                         (instr-sig 'u16x8 (list 'u16x8))
                         (instr-sig 'u32x4 (list 'u32x2))
                         (instr-sig 'i8x8 (list 'i8x8))
                         (instr-sig 'i16x4 (list 'i16x4))
                         (instr-sig 'i8x16 (list 'i8x16))
                         (instr-sig 'i16x8 (list 'i16x8))
                         (instr-sig 'i32x4 (list 'i32x2))
                         )]

    [(eq? mla instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8 'uint8_t))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16 'uint8_t))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4 'uint16_t))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8 'uint16_t))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2 'uint32_t))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4 'uint32_t))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4 'u32x4))
                         )]

    [(eq? mls instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8 'uint8_t))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16 'uint8_t))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4 'uint16_t))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8 'uint16_t))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2 'uint32_t))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4 'uint32_t))
                         (instr-sig 'u8x8 (list 'u8x8 'u8x8 'u8x8))
                         (instr-sig 'u8x16 (list 'u8x16 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x4 'u16x4 'u16x4))
                         (instr-sig 'u16x8 (list 'u16x8 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u32x2 'u32x2))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4 'u32x4))
                         )]

    [(eq? mul instr) (list
                         (instr-sig 'u8x8 (list 'u8x8 'uint8_t))
                         (instr-sig 'u8x16 (list 'u8x16 'uint8_t))
                         (instr-sig 'u16x4 (list 'u16x4 'uint16_t))
                         (instr-sig 'u16x8 (list 'u16x8 'uint16_t))
                         (instr-sig 'u32x2 (list 'u32x2 'uint32_t))
                         (instr-sig 'u32x4 (list 'u32x4 'uint32_t))
                         (instr-sig 'i8x8 (list 'i8x8 'int8_t))
                         (instr-sig 'i8x16 (list 'i8x16 'int8_t))
                         (instr-sig 'i16x4 (list 'i16x4 'int16_t))
                         (instr-sig 'i16x8 (list 'i16x8 'int16_t))
                         (instr-sig 'i32x2 (list 'i32x2 'int32_t))
                         (instr-sig 'i32x4 (list 'i32x4 'int32_t))
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
                         (instr-sig 'i8x8 (list 'i16x8 'uint32_t))
                         (instr-sig 'u8x8 (list 'u16x8 'uint32_t))
                         (instr-sig 'i16x4 (list 'i32x4 'uint32_t))
                         (instr-sig 'u16x4 (list 'u32x4 'uint32_t))
                         (instr-sig 'i32x2 (list 'i64x2 'uint32_t))
                         (instr-sig 'u32x2 (list 'u64x2 'uint32_t))
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
                         (instr-sig 'u8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'u16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'u32x2 (list 'i32x4 'i32x4))
                         )]

    [(eq? sadalp instr) (list
                         (instr-sig 'i16x4 (list 'i16x4 'i8x8))
                         (instr-sig 'i16x8 (list 'i16x8 'i8x16))
                         (instr-sig 'i32x2 (list 'i32x2 'i16x4))
                         (instr-sig 'i32x4 (list 'i32x4 'i16x8))
                         (instr-sig 'int64_t (list 'int64_t 'i32x2))
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
                         (instr-sig 'i16x4 (list 'i8x16))
                         (instr-sig 'i32x2 (list 'i16x8))
                         (instr-sig 'int64_t (list 'i32x4))
                         )]

    [(eq? saddlv instr) (list
                         (instr-sig 'int16_t (list 'i8x8))
                         (instr-sig 'int16_t (list 'i8x16))
                         (instr-sig 'int32_t (list 'i16x4))
                         (instr-sig 'int32_t (list 'i16x8))
                         (instr-sig 'int64_t (list 'i32x4))
                         )]

    [(eq? saddw instr) (list
                         (instr-sig 'i16x8 (list 'i16x8 'i8x8))
                         (instr-sig 'i16x16 (list 'i16x16 'i8x16))
                         )]

    [(eq? sdot.v2i32.v8i8 instr) (list
                         (instr-sig 'i32x2 (list 'i32x2 'i8x8 'i8x8))
                         )]

    [(eq? sdot.v4i32.v16i8 instr) (list
                         (instr-sig 'i32x4 (list 'i32x4 'i8x16 'i8x16))
                         )]

    [(eq? shadd instr) (list
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
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
                         (instr-sig 'i8x8 (list 'i16x8 'uint16_t))
                         (instr-sig 'u8x8 (list 'u16x8 'uint16_t))
                         (instr-sig 'i16x4 (list 'i32x4 'uint32_t))
                         (instr-sig 'u16x4 (list 'u32x4 'uint32_t))
                         (instr-sig 'u32x2 (list 'u64x2 'uint64_t))
                         (instr-sig 'i32x2 (list 'i64x2 'uint64_t))
                         )]

    [(eq? shsub instr) (list
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         )]

    [(eq? smax instr) (list
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         )]

    [(eq? smaxp instr) (list
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         )]

    [(eq? smaxv instr) (list
                         (instr-sig 'int8_t (list 'i8x8))
                         (instr-sig 'int8_t (list 'i8x16))
                         (instr-sig 'int16_t (list 'i16x4))
                         (instr-sig 'int16_t (list 'i16x8))
                         (instr-sig 'int32_t (list 'i32x4))
                         )]

    [(eq? smin instr) (list
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         )]

    [(eq? sminp instr) (list
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         )]

    [(eq? sminv instr) (list
                         (instr-sig 'int8_t (list 'i8x8))
                         (instr-sig 'int8_t (list 'i8x16))
                         (instr-sig 'int16_t (list 'i16x4))
                         (instr-sig 'int16_t (list 'i16x8))
                         (instr-sig 'int32_t (list 'i32x4))
                         )]

    [(eq? smlal instr) (list
                         (instr-sig 'i32x4 (list 'i32x4 'i16x4 'int16_t))
                         (instr-sig 'i32x8 (list 'i32x8 'i16x8 'int16_t))
                         (instr-sig 'i64x2 (list 'i64x2 'i32x2 'int32_t))
                         (instr-sig 'i64x4 (list 'i64x4 'i32x4 'int32_t))
                         (instr-sig 'i16x8 (list 'i16x8 'i8x8 'i8x8))
                         (instr-sig 'i16x16 (list 'i16x16 'i8x16 'i8x16))
                         (instr-sig 'i32x4 (list 'i32x4 'i16x4 'i16x4))
                         (instr-sig 'i32x8 (list 'i32x8 'i16x8 'i16x8))
                         (instr-sig 'i64x2 (list 'i64x2 'i32x2 'i32x2))
                         (instr-sig 'i64x4 (list 'i64x4 'i32x4 'i32x4))
                         )]

    [(eq? smlsl instr) (list
                         (instr-sig 'i32x4 (list 'i32x4 'i16x4 'int16_t))
                         (instr-sig 'i32x8 (list 'i32x8 'i16x8 'int16_t))
                         (instr-sig 'i64x2 (list 'i64x2 'i32x2 'int32_t))
                         (instr-sig 'i64x4 (list 'i64x4 'i32x4 'int32_t))
                         (instr-sig 'i16x8 (list 'i16x8 'i8x8 'int8_t))
                         (instr-sig 'i16x16 (list 'i16x16 'i8x16 'int8_t))
                         (instr-sig 'i32x4 (list 'i32x4 'i16x4 'int16_t))
                         (instr-sig 'i32x8 (list 'i32x8 'i16x8 'int16_t))
                         (instr-sig 'i64x2 (list 'i64x2 'i32x2 'int32_t))
                         (instr-sig 'i64x4 (list 'i64x4 'i32x4 'int32_t))
                         )]

    [(eq? smull instr) (list
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
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         )]

    [(eq? sqdmulh instr) (list
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         )]

    [(eq? sqdmull instr) (list
                         (instr-sig 'i32x4 (list 'i16x4 'int16_t))
                         (instr-sig 'i32x8 (list 'i16x8 'int16_t))
                         (instr-sig 'i64x2 (list 'i32x2 'int32_t))
                         (instr-sig 'i64x4 (list 'i32x4 'int32_t))
                         (instr-sig 'i32x4 (list 'i16x4 'i16x4))
                         (instr-sig 'i32x8 (list 'i16x8 'i16x8))
                         (instr-sig 'i64x2 (list 'i32x2 'i32x2))
                         (instr-sig 'i64x4 (list 'i32x4 'i32x4))
                         )]

    [(eq? sqneg instr) (list
                         (instr-sig 'i8x8 (list 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2))
                         )]

    [(eq? sqrdmulh instr) (list
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         )]

    [(eq? sqrshl instr) (list
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         )]

    [(eq? sqrshrn instr) (list
                         (instr-sig 'i8x8 (list 'i16x8 'uint32_t))
                         (instr-sig 'i16x4 (list 'i32x4 'uint32_t))
                         (instr-sig 'i32x2 (list 'i64x2 'uint32_t))
                         )]

    [(eq? sqrshrun instr) (list
                         (instr-sig 'u8x8 (list 'i16x8 'uint32_t))
                         (instr-sig 'u16x4 (list 'i32x4 'uint32_t))
                         (instr-sig 'u32x2 (list 'i64x2 'uint32_t))
                         )]

    [(eq? sqshl instr) (list
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i8x8 (list 'i8x16 'u8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i16x4 (list 'i16x8 'u16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         (instr-sig 'i32x2 (list 'i32x4 'u32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         (instr-sig 'i64x2 (list 'i64x2 'u64x2))
                         )]

    [(eq? sqshlu instr) (list
                         (instr-sig 'u8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'u8x8 (list 'i8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'u16x4 (list 'i16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'i32x4 'i32x4))
                         (instr-sig 'u32x2 (list 'i32x4 'u32x4))
                         (instr-sig 'u64x2 (list 'i64x2 'i64x2))
                         (instr-sig 'u64x2 (list 'i64x2 'u64x2))
                         )]

    [(eq? sqshrn instr) (list
                         (instr-sig 'i8x8 (list 'i16x8 'uint32_t))
                         (instr-sig 'i16x4 (list 'i32x4 'uint32_t))
                         (instr-sig 'i32x2 (list 'i64x2 'uint32_t))
                         )]

    [(eq? sqshrun instr) (list
                         (instr-sig 'u8x8 (list 'i16x8 'uint32_t))
                         (instr-sig 'u16x4 (list 'i32x4 'uint32_t))
                         (instr-sig 'u32x2 (list 'i64x2 'uint32_t))
                         )]

    [(eq? sqsub instr) (list
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
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
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         )]

    [(eq? srhsub instr) (list
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         )]

    [(eq? srshl instr) (list
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         )]

    [(eq? sshl instr) (list
                         (instr-sig 'i8x8 (list 'i8x16 'i8x16))
                         (instr-sig 'i16x4 (list 'i16x8 'i16x8))
                         (instr-sig 'i32x2 (list 'i32x4 'i32x4))
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         )]

    [(eq? sshll instr) (list
                         (instr-sig 'i16x8 (list 'i8x8 'uint8_t))
                         (instr-sig 'i16x16 (list 'i8x16 'uint8_t))
                         (instr-sig 'i32x4 (list 'i16x4 'uint16_t))
                         (instr-sig 'i32x8 (list 'i16x8 'uint16_t))
                         (instr-sig 'i64x2 (list 'i32x2 'uint32_t))
                         (instr-sig 'i64x4 (list 'i32x4 'uint32_t))
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

    [(eq? uabd instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'u32x4))
                         )]

    [(eq? uadalp instr) (list
                         (instr-sig 'i16x4 (list 'u16x4 'u8x8))
                         (instr-sig 'i16x8 (list 'u16x8 'u8x16))
                         (instr-sig 'i32x2 (list 'u32x2 'u16x4))
                         (instr-sig 'i32x4 (list 'u32x4 'u16x8))
                         (instr-sig 'int64_t (list 'uint64_t 'u32x2))
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
                         (instr-sig 'u16x4 (list 'u8x16))
                         (instr-sig 'i16x4 (list 'u8x16))
                         (instr-sig 'u32x2 (list 'u16x8))
                         (instr-sig 'i32x2 (list 'u16x8))
                         (instr-sig 'uint64_t (list 'u32x4))
                         (instr-sig 'int64_t (list 'u32x4))
                         )]

    [(eq? uaddlv instr) (list
                         (instr-sig 'uint16_t (list 'u8x8))
                         (instr-sig 'uint16_t (list 'u8x16))
                         (instr-sig 'uint32_t (list 'u16x4))
                         (instr-sig 'uint32_t (list 'u16x8))
                         (instr-sig 'uint64_t (list 'u32x4))
                         )]

    [(eq? uaddw instr) (list
                         (instr-sig 'u16x8 (list 'u16x8 'u8x8))
                         (instr-sig 'u16x16 (list 'u16x16 'u8x16))
                         )]

    [(eq? udot.v2i32.v8i8 instr) (list
                         (instr-sig 'i32x2 (list 'i32x2 'u8x8 'u8x8))
                         (instr-sig 'u32x2 (list 'u32x2 'u8x8 'u8x8))
                         )]

    [(eq? udot.v4i32.v16i8 instr) (list
                         (instr-sig 'i32x4 (list 'i32x4 'u8x16 'u8x16))
                         (instr-sig 'u32x4 (list 'u32x4 'u8x16 'u8x16))
                         )]

    [(eq? uhadd instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'u32x4))
                         )]

    [(eq? uhsub instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'u32x4))
                         )]

    [(eq? umax instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'u32x4))
                         )]

    [(eq? umaxp instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'u32x4))
                         )]

    [(eq? umaxv instr) (list
                         (instr-sig 'uint8_t (list 'u8x8))
                         (instr-sig 'uint8_t (list 'u8x16))
                         (instr-sig 'uint16_t (list 'u16x4))
                         (instr-sig 'uint16_t (list 'u16x8))
                         (instr-sig 'uint32_t (list 'u32x4))
                         )]

    [(eq? umin instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'u32x4))
                         )]

    [(eq? uminp instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'u32x4))
                         )]

    [(eq? uminv instr) (list
                         (instr-sig 'uint8_t (list 'u8x8))
                         (instr-sig 'uint8_t (list 'u8x16))
                         (instr-sig 'uint16_t (list 'u16x4))
                         (instr-sig 'uint16_t (list 'u16x8))
                         (instr-sig 'uint32_t (list 'u32x4))
                         )]

    [(eq? umlal instr) (list
                         (instr-sig 'u32x4 (list 'u32x4 'u16x4 'uint16_t))
                         (instr-sig 'u32x8 (list 'u32x8 'u16x8 'uint16_t))
                         (instr-sig 'u64x2 (list 'u64x2 'u32x2 'uint32_t))
                         (instr-sig 'u64x4 (list 'u64x4 'u32x4 'uint32_t))
                         (instr-sig 'u16x8 (list 'u16x8 'u8x8 'u8x8))
                         (instr-sig 'u16x16 (list 'u16x16 'u8x16 'u8x16))
                         (instr-sig 'u32x4 (list 'u32x4 'u16x4 'u16x4))
                         (instr-sig 'u32x8 (list 'u32x8 'u16x8 'u16x8))
                         (instr-sig 'u64x2 (list 'u64x2 'u32x2 'u32x2))
                         (instr-sig 'u64x4 (list 'u64x4 'u32x4 'u32x4))
                         )]

    [(eq? umlsl instr) (list
                         (instr-sig 'u32x4 (list 'u32x4 'u16x4 'uint16_t))
                         (instr-sig 'u32x8 (list 'u32x8 'u16x8 'uint16_t))
                         (instr-sig 'u64x2 (list 'u64x2 'u32x2 'uint32_t))
                         (instr-sig 'u64x4 (list 'u64x4 'u32x4 'uint32_t))
                         (instr-sig 'u16x8 (list 'u16x8 'u8x8 'u8x8))
                         (instr-sig 'u16x16 (list 'u16x16 'u8x16 'u8x16))
                         (instr-sig 'u32x4 (list 'u32x4 'u16x4 'u16x4))
                         (instr-sig 'u32x8 (list 'u32x8 'u16x8 'u16x8))
                         (instr-sig 'u64x2 (list 'u64x2 'u32x2 'u32x2))
                         (instr-sig 'u64x4 (list 'u64x4 'u32x4 'u32x4))
                         )]

    [(eq? umull instr) (list
                         (instr-sig 'u16x8 (list 'u8x8 'u8x8))
                         (instr-sig 'u32x4 (list 'u16x4 'u16x4))
                         (instr-sig 'u64x2 (list 'u32x2 'u32x2))
                         )]

    [(eq? uqadd instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'u32x4))
                         )]

    [(eq? uqrshl instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'i8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'i16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'i32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'i64x2))
                         )]

    [(eq? uqrshrn instr) (list
                         (instr-sig 'u8x8 (list 'u16x8 'uint32_t))
                         (instr-sig 'u16x4 (list 'u32x4 'uint32_t))
                         (instr-sig 'u32x2 (list 'u64x2 'uint32_t))
                         )]

    [(eq? uqshl instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'i8x16))
                         (instr-sig 'u8x8 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'i16x8))
                         (instr-sig 'u16x4 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'i32x4))
                         (instr-sig 'u32x2 (list 'u32x4 'u32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'i64x2))
                         (instr-sig 'u64x2 (list 'u64x2 'u64x2))
                         )]

    [(eq? uqshrn instr) (list
                         (instr-sig 'u8x8 (list 'u16x8 'uint32_t))
                         (instr-sig 'u16x4 (list 'u32x4 'uint32_t))
                         (instr-sig 'u32x2 (list 'u64x2 'uint32_t))
                         )]

    [(eq? uqsub instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'u32x4))
                         )]

    [(eq? uqxtn instr) (list
                         (instr-sig 'u8x8 (list 'u16x8))
                         (instr-sig 'u16x4 (list 'u32x4))
                         (instr-sig 'u32x2 (list 'u64x2))
                         )]

    [(eq? urhadd instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'u32x4))
                         )]

    [(eq? urhsub instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'u8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'u16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'u32x4))
                         )]

    [(eq? urshl instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'i8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'i16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'i32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'i64x2))
                         )]

    [(eq? ushl instr) (list
                         (instr-sig 'u8x8 (list 'u8x16 'i8x16))
                         (instr-sig 'u16x4 (list 'u16x8 'i16x8))
                         (instr-sig 'u32x2 (list 'u32x4 'i32x4))
                         (instr-sig 'u64x2 (list 'u64x2 'i64x2))
                         )]

    [(eq? ushll instr) (list
                         (instr-sig 'u16x8 (list 'u8x8 'uint8_t))
                         (instr-sig 'u16x16 (list 'u8x16 'uint8_t))
                         (instr-sig 'u32x4 (list 'u16x4 'uint16_t))
                         (instr-sig 'u32x8 (list 'u16x8 'uint16_t))
                         (instr-sig 'u64x2 (list 'u32x2 'uint32_t))
                         (instr-sig 'u64x4 (list 'u32x4 'uint32_t))
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

(define (make-shuffles-list loads type)
  (map (lambda (t) (??shuffle 0 loads t)) (get-vector-types type)))

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
