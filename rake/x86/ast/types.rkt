#lang rosette/safe

(require
  (only-in racket/base error)
  (only-in racket/struct make-constructor-style-printer)
  rosette/lib/destruct
  rake/cpp/types
)

(provide (prefix-out x86: (all-defined-out)))

;; x86 AVX/AVX2 vector types
(struct i8x16 (value) #:transparent)
(struct i16x8 (value) #:transparent)
(struct i32x4 (value) #:transparent)
(struct i64x2 (value) #:transparent)
(struct i8x32 (value) #:transparent)
(struct i16x16 (value) #:transparent)
(struct i32x8 (value) #:transparent)
(struct i64x4 (value) #:transparent)
(struct u8x16 (value) #:transparent)
(struct u16x8 (value) #:transparent)
(struct u32x4 (value) #:transparent)
(struct u64x2 (value) #:transparent)
(struct u8x32 (value) #:transparent)
(struct u16x16 (value) #:transparent)
(struct u32x8 (value) #:transparent)
(struct u64x4 (value) #:transparent)

(struct resize (a) #:transparent)                           ;; _mm256_castsi128_si256 | resize
(struct vbroadcasti128 (a) #:transparent)                   ;; _mm_broadcastsi128_si256 | duplicate
(struct vpabsb (a) #:transparent)                           ;; _mm256_abs_epi8 | abs
(struct vpabsd (a) #:transparent)                           ;; _mm256_abs_epi32 | abs
(struct vpabsw (a) #:transparent)                           ;; _mm256_abs_epi16 | abs
(struct vpackssdw (a b) #:transparent)                      ;; _mm256_packs_epi32 | saturating_narrow
(struct vpacksswb (a b) #:transparent)                      ;; _mm256_packs_epi16 | saturating_narrow
(struct vpackusdw (a b) #:transparent)                      ;; _mm256_packus_epi32 | saturating_narrow
(struct vpackuswb (a b) #:transparent)                      ;; _mm256_packus_epi16 | saturating_narrow
(struct vpaddb (a b) #:transparent)                         ;; _mm256_add_epi8 | add
(struct vpaddd (a b) #:transparent)                         ;; _mm256_add_epi32 | add
(struct vpaddq (a b) #:transparent)                         ;; _mm256_add_epi64 | add
(struct vpaddsb (a b) #:transparent)                        ;; _mm256_adds_epi8 | saturating_add
(struct vpaddsw (a b) #:transparent)                        ;; _mm256_adds_epi16 | saturating_add
(struct vpaddusb (a b) #:transparent)                       ;; _mm256_adds_epu8 | saturating_add
(struct vpaddusw (a b) #:transparent)                       ;; _mm256_adds_epu16 | saturating_add
(struct vpaddw (a b) #:transparent)                         ;; _mm256_add_epi16 | add
(struct vpalignr (a b imm8) #:transparent)                  ;; _mm256_alignr_epi8 | vpalignr
(struct vpand (a b) #:transparent)                          ;; _mm256_and_si256 | bitwise_and
(struct vpandn (a) #:transparent)                           ;; _mm256_andnot_si256 | bitwise_not
(struct vpavgb (a b) #:transparent)                         ;; _mm256_avg_epu8 | rounding_halving_add
(struct vpavgw (a b) #:transparent)                         ;; _mm256_avg_epu16 | rounding_halving_add
(struct vpblendd (a b imm8) #:transparent)                  ;; _mm256_blend_epi32 | select_vpblendd
(struct vpblendd_128 (a b imm8) #:transparent)              ;; _mm_blend_epi32 | select_vpblendd
(struct vpblendvb (a b c) #:transparent)                    ;; _mm256_blendv_epi8 | select_vpblendvb
(struct vpblendw (a b imm8) #:transparent)                  ;; _mm256_blend_epi16 | select_vpblendw
(struct vpbroadcastb (imm8) #:transparent)                  ;; _mm256_broadcastb_epi8 | broadcast
(struct vpbroadcastb_128 (imm8) #:transparent)              ;; _mm_broadcastb_epi8 | broadcast
(struct vpbroadcastd (imm32) #:transparent)                 ;; _mm256_broadcastd_epi32 | broadcast
(struct vpbroadcastd_128 (imm32) #:transparent)             ;; _mm_broadcastd_epi32 | broadcast
(struct vpbroadcastq (imm64) #:transparent)                 ;; _mm256_broadcastq_epi64 | broadcast
(struct vpbroadcastq_128 (imm64) #:transparent)             ;; _mm_broadcastq_epi64 | broadcast
(struct vpbroadcastw (imm16) #:transparent)                 ;; _mm256_broadcastw_epi16 | broadcast
(struct vpbroadcastw_128 (imm16) #:transparent)             ;; _mm_broadcastw_epi16 | broadcast
(struct vpcmpeqb (a b) #:transparent)                       ;; _mm256_cmpeq_epi8 | equality
(struct vpcmpeqd (a b) #:transparent)                       ;; _mm256_cmpeq_epi32 | equality
(struct vpcmpeqq (a b) #:transparent)                       ;; _mm256_cmpeq_epi64 | equality
(struct vpcmpeqw (a b) #:transparent)                       ;; _mm256_cmpeq_epi16 | equality
(struct vpcmpgtb (a b) #:transparent)                       ;; _mm256_cmpgt_epi8 | greater_than
(struct vpcmpgtd (a b) #:transparent)                       ;; _mm256_cmpgt_epi32 | greater_than
(struct vpcmpgtq (a b) #:transparent)                       ;; _mm256_cmpgt_epi64 | greater_than
(struct vpcmpgtw (a b) #:transparent)                       ;; _mm256_cmpgt_epi16 | greater_than
(struct vperm2f128 (a b imm8) #:transparent)                ;; _mm256_permute2f128_si256 | vperm128
(struct vperm2i128 (a b imm8) #:transparent)                ;; _mm256_permute2x128_si256 | vperm128
(struct vpermd (a b) #:transparent)                         ;; _mm256_permutevar8x32_epi32 | vpermd
(struct vpermq (a imm8) #:transparent)                      ;; _mm256_permute4x64_epi64 | vpermq
(struct vphaddd (a b) #:transparent)                        ;; _mm256_hadd_epi32 | horizontal_add
(struct vphaddsw (a b) #:transparent)                       ;; _mm256_hadds_epi16 | saturating_horizontal_add
(struct vphaddw (a b) #:transparent)                        ;; _mm256_hadd_epi16 | horizontal_add
(struct vphsubd (a b) #:transparent)                        ;; _mm256_hsub_epi32 | horizontal_sub
(struct vphsubsw (a b) #:transparent)                       ;; _mm256_hsubs_epi16 | saturating_horizontal_sub
(struct vphsubw (a b) #:transparent)                        ;; _mm256_hsub_epi16 | horizontal_sub
(struct vpmaddubsw (a b) #:transparent)                     ;; _mm256_maddubs_epi16 | saturating_dot_product
(struct vpmaddwd (a b) #:transparent)                       ;; _mm256_madd_epi16 | dot_product
(struct vpmaxsb (a b) #:transparent)                        ;; _mm256_max_epi8 | max
(struct vpmaxsd (a b) #:transparent)                        ;; _mm256_max_epi32 | max
(struct vpmaxsw (a b) #:transparent)                        ;; _mm256_max_epi16 | max
(struct vpmaxub (a b) #:transparent)                        ;; _mm256_max_epu8 | max
(struct vpmaxud (a b) #:transparent)                        ;; _mm256_max_epu32 | max
(struct vpmaxuw (a b) #:transparent)                        ;; _mm256_max_epu16 | max
(struct vpminsb (a b) #:transparent)                        ;; _mm256_min_epi8 | min
(struct vpminsd (a b) #:transparent)                        ;; _mm256_min_epi32 | min
(struct vpminsw (a b) #:transparent)                        ;; _mm256_min_epi16 | min
(struct vpminub (a b) #:transparent)                        ;; _mm256_min_epu8 | min
(struct vpminud (a b) #:transparent)                        ;; _mm256_min_epu32 | min
(struct vpminuw (a b) #:transparent)                        ;; _mm256_min_epu16 | min
(struct vpmovsxbd (a) #:transparent)                        ;; _mm256_cvtepi8_epi32 | double_widen
(struct vpmovsxbq (a) #:transparent)                        ;; _mm256_cvtepi8_epi64 | triple_widen
(struct vpmovsxbw (a) #:transparent)                        ;; _mm256_cvtepi8_epi16 | widen
(struct vpmovsxdq (a) #:transparent)                        ;; _mm256_cvtepi32_epi64 | widen
(struct vpmovsxwd (a) #:transparent)                        ;; _mm256_cvtepi16_epi32 | widen
(struct vpmovsxwq (a) #:transparent)                        ;; _mm256_cvtepi16_epi64 | double_widen
(struct vpmovzxbd (a) #:transparent)                        ;; _mm256_cvtepu8_epi32 | double_widen
(struct vpmovzxbq (a) #:transparent)                        ;; _mm256_cvtepu8_epi64 | triple_widen
(struct vpmovzxbw (a) #:transparent)                        ;; _mm256_cvtepu8_epi16 | widen
(struct vpmovzxdq (a) #:transparent)                        ;; _mm256_cvtepu32_epi64 | widen
(struct vpmovzxwd (a) #:transparent)                        ;; _mm256_cvtepu16_epi32 | widen
(struct vpmovzxwq (a) #:transparent)                        ;; _mm256_cvtepu16_epi64 | double_widen
(struct vpmuldq (a b) #:transparent)                        ;; _mm256_mul_epi32 | multiply_evens
(struct vpmulhrsw (a b) #:transparent)                      ;; _mm256_mulhrs_epi16 | multiply_keep_high_half_rounding
(struct vpmulhuw (a b) #:transparent)                       ;; _mm256_mulhi_epu16 | multiply_keep_high_half
(struct vpmulhw (a b) #:transparent)                        ;; _mm256_mulhi_epi16 | multiply_keep_high_half
(struct vpmulld (a b) #:transparent)                        ;; _mm256_mullo_epi32 | multiply_keep_low_half
(struct vpmullw (a b) #:transparent)                        ;; _mm256_mullo_epi16 | multiply_keep_low_half
(struct vpmuludq (a b) #:transparent)                       ;; _mm256_mul_epu32 | multiply_evens
(struct vpor (a b) #:transparent)                           ;; _mm256_or_si256 | bitwise_or
(struct vpsadbw (a b) #:transparent)                        ;; _mm256_sad_epu8 | unsigned_absd_sum
(struct vpshufb (a b) #:transparent)                        ;; _mm256_shuffle_epi8 | shuffle_vpshufb
(struct vpshufd (a imm8) #:transparent)                     ;; _mm256_shuffle_epi32 | shuffle_vpshufd
(struct vpshufhw (a imm8) #:transparent)                    ;; _mm256_shufflehi_epi16 | shuffle_vpshufhw
(struct vpshuflw (a imm8) #:transparent)                    ;; _mm256_shufflelo_epi16 | shuffle_vpshuflw
(struct vpsignb (a b) #:transparent)                        ;; _mm256_sign_epi8 | sign
(struct vpsignd (a b) #:transparent)                        ;; _mm256_sign_epi32 | sign
(struct vpsignw (a b) #:transparent)                        ;; _mm256_sign_epi16 | sign
(struct vpslld (a imm8) #:transparent)                      ;; _mm256_slli_epi32 | shift_left
(struct vpslldq (a imm8) #:transparent)                     ;; _mm256_bslli_epi128 | half_shift_left
(struct vpsllq (a imm8) #:transparent)                      ;; _mm256_slli_epi64 | shift_left
(struct vpsllvd (a b) #:transparent)                        ;; _mm_sllv_epi32 | shift_left
(struct vpsllvq (a b) #:transparent)                        ;; _mm_sllv_epi64 | shift_left
(struct vpsllw (a imm8) #:transparent)                      ;; _mm256_slli_epi16 | shift_left
(struct vpsrad (a imm8) #:transparent)                      ;; _mm256_srai_epi32 | shift_right
(struct vpsravd (a b) #:transparent)                        ;; _mm_srav_epi32 | shift_right
(struct vpsraw (a imm8) #:transparent)                      ;; _mm256_srai_epi16 | shift_right
(struct vpsrld (a imm8) #:transparent)                      ;; _mm256_srli_epi32 | shift_right
(struct vpsrldq (a imm8) #:transparent)                     ;; _mm256_bsrli_epi128 | half_shift_right
(struct vpsrlq (a imm8) #:transparent)                      ;; _mm256_srli_epi64 | shift_right
(struct vpsrlvd (a b) #:transparent)                        ;; _mm_srlv_epi32 | shift_right
(struct vpsrlvq (a b) #:transparent)                        ;; _mm_srlv_epi64 | shift_right
(struct vpsrlw (a imm8) #:transparent)                      ;; _mm256_srli_epi16 | shift_right
(struct vpsubb (a b) #:transparent)                         ;; _mm256_sub_epi8 | sub
(struct vpsubd (a b) #:transparent)                         ;; _mm256_sub_epi32 | sub
(struct vpsubq (a b) #:transparent)                         ;; _mm256_sub_epi64 | sub
(struct vpsubsb (a b) #:transparent)                        ;; _mm256_subs_epi8 | saturating_sub
(struct vpsubsw (a b) #:transparent)                        ;; _mm256_subs_epi16 | saturating_sub
(struct vpsubusb (a b) #:transparent)                       ;; _mm256_subs_epu8 | saturating_sub
(struct vpsubusw (a b) #:transparent)                       ;; _mm256_subs_epu16 | saturating_sub
(struct vpsubw (a b) #:transparent)                         ;; _mm256_sub_epi16 | sub
(struct vpunpckhbw (a b) #:transparent)                     ;; _mm256_unpackhi_epi8 | unpackhi
(struct vpunpckhdq (a b) #:transparent)                     ;; _mm256_unpackhi_epi32 | unpackhi
(struct vpunpckhqdq (a b) #:transparent)                    ;; _mm256_unpackhi_epi64 | unpackhi
(struct vpunpckhwd (a b) #:transparent)                     ;; _mm256_unpackhi_epi16 | unpackhi
(struct vpunpcklbw (a b) #:transparent)                     ;; _mm256_unpacklo_epi8 | unpacklo
(struct vpunpckldq (a b) #:transparent)                     ;; _mm256_unpacklo_epi32 | unpacklo
(struct vpunpcklqdq (a b) #:transparent)                    ;; _mm256_unpacklo_epi64 | unpacklo
(struct vpunpcklwd (a b) #:transparent)                     ;; _mm256_unpacklo_epi16 | unpacklo
(struct vpxor (a b) #:transparent)                          ;; _mm256_xor_si256 | bitwise_xor
(struct reinterpret (a) #:transparent)
;; x86 instructions for vector creation
(struct ld (buf loc align output-type) #:transparent)

;; TODO: these are not currently auto-generated
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

(struct ??abstr-load (id live-data buffer)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `??abstr-load)
      (lambda (obj) (list (??abstr-load-buffer obj)))))])

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

(struct instr-sig (ret-val args) #:transparent)

(define (instr-forms instr)
  (cond
    [(eq? resize instr) (list
                         (instr-sig 'u8x32 (list 'u8x16))
                         (instr-sig 'u16x16 (list 'u16x8))
                         (instr-sig 'u32x8 (list 'u32x4))
                         (instr-sig 'u64x4 (list 'u64x2))
                         (instr-sig 'i8x32 (list 'i8x16))
                         (instr-sig 'i16x16 (list 'i16x8))
                         (instr-sig 'i32x8 (list 'i32x4))
                         (instr-sig 'i64x4 (list 'i64x2))
                         (instr-sig 'u8x16 (list 'u8x32))
                         (instr-sig 'u16x8 (list 'u16x16))
                         (instr-sig 'u32x4 (list 'u32x8))
                         (instr-sig 'u64x2 (list 'u64x4))
                         (instr-sig 'i8x16 (list 'i8x32))
                         (instr-sig 'i16x8 (list 'i16x16))
                         (instr-sig 'i32x4 (list 'i32x8))
                         (instr-sig 'i64x2 (list 'i64x4))
                        )]

    [(eq? vbroadcasti128 instr) (list
                         (instr-sig 'i8x32 (list 'i8x16))
                         (instr-sig 'i16x16 (list 'i16x8))
                         (instr-sig 'i32x8 (list 'i32x4))
                         (instr-sig 'i64x4 (list 'i64x2))
                         (instr-sig 'u8x32 (list 'u8x16))
                         (instr-sig 'u16x16 (list 'u16x8))
                         (instr-sig 'u32x8 (list 'u32x4))
                         (instr-sig 'u64x4 (list 'u64x2))

                        )]

    [(eq? vpabsb instr) (list
                         (instr-sig 'u8x32 (list 'i8x32))
                        )]

    [(eq? vpabsd instr) (list
                         (instr-sig 'u32x8 (list 'i32x8))
                        )]

    [(eq? vpabsw instr) (list
                         (instr-sig 'u16x16 (list 'i16x16))
                        )]

    [(eq? vpackssdw instr) (list
                         (instr-sig 'i16x16 (list 'i32x8 'i32x8))
                        )]

    [(eq? vpacksswb instr) (list
                         (instr-sig 'i8x32 (list 'i16x16 'i16x16))
                        )]

    [(eq? vpackusdw instr) (list
                         (instr-sig 'u16x16 (list 'i32x8 'i32x8))
                        )]

    [(eq? vpackuswb instr) (list
                         (instr-sig 'u8x32 (list 'i16x16 'i16x16))
                        )]

    [(eq? vpaddb instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))

                        )]

    [(eq? vpaddd instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8))

                        )]

    [(eq? vpaddq instr) (list
                         (instr-sig 'i64x4 (list 'i64x4 'i64x4))
                         (instr-sig 'u64x4 (list 'u64x4 'u64x4))

                        )]

    [(eq? vpaddsb instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                        )]

    [(eq? vpaddsw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                        )]

    [(eq? vpaddusb instr) (list
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))
                        )]

    [(eq? vpaddusw instr) (list
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))
                        )]

    [(eq? vpaddw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))

                        )]

    [(eq? vpalignr instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32 'uint8_t))
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32 'uint8_t))

                         (instr-sig 'i16x16 (list 'i16x16 'i16x16 'uint8_t))
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16 'uint8_t))

                         (instr-sig 'i32x8 (list 'i32x8 'i32x8 'uint8_t))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8 'uint8_t))

                         (instr-sig 'i64x4 (list 'i64x4 'i64x4 'uint8_t))
                         (instr-sig 'u64x4 (list 'u64x4 'u64x4 'uint8_t))

                        )]

    [(eq? vpand instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                         (instr-sig 'i64x4 (list 'i64x4 'i64x4))
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8))
                         (instr-sig 'u64x4 (list 'u64x4 'u64x4))

                        )]

    [(eq? vpandn instr) (list
                         (instr-sig 'i8x32 (list 'i8x32))
                         (instr-sig 'i16x16 (list 'i16x16))
                         (instr-sig 'i32x8 (list 'i32x8))
                         (instr-sig 'i64x4 (list 'i64x4))
                         (instr-sig 'u8x32 (list 'u8x32))
                         (instr-sig 'u16x16 (list 'u16x16))
                         (instr-sig 'u32x8 (list 'u32x8))
                         (instr-sig 'u64x4 (list 'u64x4))

                        )]

    [(eq? vpavgb instr) (list
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))
                        )]

    [(eq? vpavgw instr) (list
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))
                        )]

    [(eq? vpblendd instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8 'uint8_t))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8 'uint8_t))

                        )]

    [(eq? vpblendd_128 instr) (list
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4 'uint8_t))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4 'uint8_t))

                        )]

    [(eq? vpblendvb instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32 'u8x32))
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32 'u8x32))

                        )]

    [(eq? vpblendw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16 'uint8_t))
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16 'uint8_t))

                        )]

    [(eq? vpbroadcastb instr) (list
                         (instr-sig 'i8x32 (list 'int8))
                         (instr-sig 'u8x32 (list 'uint8))

                        )]

    [(eq? vpbroadcastb_128 instr) (list
                         (instr-sig 'i8x16 (list 'int8))
                         (instr-sig 'u8x16 (list 'uint8))

                        )]

    [(eq? vpbroadcastd instr) (list
                         (instr-sig 'i32x8 (list 'int32))
                         (instr-sig 'u32x8 (list 'uint32))

                        )]

    [(eq? vpbroadcastd_128 instr) (list
                         (instr-sig 'i32x4 (list 'int32))
                         (instr-sig 'u32x4 (list 'uint32))

                        )]

    [(eq? vpbroadcastq instr) (list
                         (instr-sig 'i64x4 (list 'int64))
                         (instr-sig 'u64x4 (list 'uint64))

                        )]

    [(eq? vpbroadcastq_128 instr) (list
                         (instr-sig 'i64x2 (list 'int64))
                         (instr-sig 'u64x2 (list 'uint64))

                        )]

    [(eq? vpbroadcastw instr) (list
                         (instr-sig 'i16x16 (list 'int16))
                         (instr-sig 'u16x16 (list 'uint16))

                        )]

    [(eq? vpbroadcastw_128 instr) (list
                         (instr-sig 'i16x8 (list 'int16))
                         (instr-sig 'u16x8 (list 'uint16))

                        )]

    [(eq? vpcmpeqb instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))

                        )]

    [(eq? vpcmpeqd instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8))

                        )]

    [(eq? vpcmpeqq instr) (list
                         (instr-sig 'i64x4 (list 'i64x4 'i64x4))
                         (instr-sig 'u64x4 (list 'u64x4 'u64x4))

                        )]

    [(eq? vpcmpeqw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))

                        )]

    [(eq? vpcmpgtb instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                        )]

    [(eq? vpcmpgtd instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                        )]

    [(eq? vpcmpgtq instr) (list
                         (instr-sig 'i64x4 (list 'i64x4 'i64x4))
                        )]

    [(eq? vpcmpgtw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                        )]

    [(eq? vperm2f128 instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32 'uint8_t))
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16 'uint8_t))
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8 'uint8_t))
                         (instr-sig 'i64x4 (list 'i64x4 'i64x4 'uint8_t))
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32 'uint8_t))
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16 'uint8_t))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8 'uint8_t))
                         (instr-sig 'u64x4 (list 'u64x4 'u64x4 'uint8_t))

                        )]

    [(eq? vperm2i128 instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32 'uint8_t))
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16 'uint8_t))
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8 'uint8_t))
                         (instr-sig 'i64x4 (list 'i64x4 'i64x4 'uint8_t))
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32 'uint8_t))
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16 'uint8_t))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8 'uint8_t))
                         (instr-sig 'u64x4 (list 'u64x4 'u64x4 'uint8_t))

                        )]

    [(eq? vpermd instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'u32x8))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8))

                        )]

    [(eq? vpermq instr) (list
                         (instr-sig 'i64x4 (list 'i64x4 'uint8_t))
                         (instr-sig 'u64x4 (list 'u64x4 'uint8_t))

                        )]

    [(eq? vphaddd instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                        )]

    [(eq? vphaddsw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                        )]

    [(eq? vphaddw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                        )]

    [(eq? vphsubd instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                        )]

    [(eq? vphsubsw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                        )]

    [(eq? vphsubw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                        )]

    [(eq? vpmaddubsw instr) (list
                         (instr-sig 'i16x16 (list 'u8x32 'i8x32))
                        )]

    [(eq? vpmaddwd instr) (list
                         (instr-sig 'i32x8 (list 'i16x16 'i16x16))
                        )]

    [(eq? vpmaxsb instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                        )]

    [(eq? vpmaxsd instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                        )]

    [(eq? vpmaxsw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                        )]

    [(eq? vpmaxub instr) (list
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))
                        )]

    [(eq? vpmaxud instr) (list
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8))
                        )]

    [(eq? vpmaxuw instr) (list
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))
                        )]

    [(eq? vpminsb instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                        )]

    [(eq? vpminsd instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                        )]

    [(eq? vpminsw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                        )]

    [(eq? vpminub instr) (list
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))
                        )]

    [(eq? vpminud instr) (list
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8))
                        )]

    [(eq? vpminuw instr) (list
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))
                        )]

    [(eq? vpmovsxbd instr) (list
                         (instr-sig 'i32x8 (list 'i8x16))
                        )]

    [(eq? vpmovsxbq instr) (list
                         (instr-sig 'i64x4 (list 'i8x16))
                        )]

    [(eq? vpmovsxbw instr) (list
                         (instr-sig 'i16x16 (list 'i8x16))
                        )]

    [(eq? vpmovsxdq instr) (list
                         (instr-sig 'i64x4 (list 'i32x4))
                        )]

    [(eq? vpmovsxwd instr) (list
                         (instr-sig 'i32x8 (list 'i16x8))
                        )]

    [(eq? vpmovsxwq instr) (list
                         (instr-sig 'i64x4 (list 'i16x8))
                        )]

    [(eq? vpmovzxbd instr) (list
                         (instr-sig 'u32x8 (list 'u8x16))
                        )]

    [(eq? vpmovzxbq instr) (list
                         (instr-sig 'u64x4 (list 'u8x16))
                        )]

    [(eq? vpmovzxbw instr) (list
                         (instr-sig 'u16x16 (list 'u8x16))
                        )]

    [(eq? vpmovzxdq instr) (list
                         (instr-sig 'u64x4 (list 'u32x4))
                        )]

    [(eq? vpmovzxwd instr) (list
                         (instr-sig 'u32x8 (list 'u16x8))
                        )]

    [(eq? vpmovzxwq instr) (list
                         (instr-sig 'u64x4 (list 'u16x8))
                        )]

    [(eq? vpmuldq instr) (list
                         (instr-sig 'i64x4 (list 'i32x8 'i32x8))
                        )]

    [(eq? vpmulhrsw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                        )]

    [(eq? vpmulhuw instr) (list
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))
                        )]

    [(eq? vpmulhw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                        )]

    [(eq? vpmulld instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                        )]

    [(eq? vpmullw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                        )]

    [(eq? vpmuludq instr) (list
                         (instr-sig 'u64x4 (list 'u32x8 'u32x8))
                        )]

    [(eq? vpor instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                         (instr-sig 'i64x4 (list 'i64x4 'i64x4))
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8))
                         (instr-sig 'u64x4 (list 'u64x4 'u64x4))

                        )]

    [(eq? vpsadbw instr) (list
                         (instr-sig 'u64x4 (list 'u8x32 'u8x32))
                        )]

    [(eq? vpshufb instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'u8x32))
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))

                        )]

    [(eq? vpshufd instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'uint8_t))
                         (instr-sig 'u32x8 (list 'u32x8 'uint8_t))

                        )]

    [(eq? vpshufhw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'uint8_t))
                         (instr-sig 'u16x16 (list 'u16x16 'uint8_t))

                        )]

    [(eq? vpshuflw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'uint8_t))
                         (instr-sig 'u16x16 (list 'u16x16 'uint8_t))

                        )]

    [(eq? vpsignb instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                        )]

    [(eq? vpsignd instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                        )]

    [(eq? vpsignw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                        )]

    [(eq? vpslld instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'uint8_t))
                         (instr-sig 'u32x8 (list 'u32x8 'uint8_t))

                        )]

    [(eq? vpslldq instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'uint8_t))
                         (instr-sig 'u8x32 (list 'u8x32 'uint8_t))

                         (instr-sig 'i16x16 (list 'i16x16 'uint8_t))
                         (instr-sig 'u16x16 (list 'u16x16 'uint8_t))

                         (instr-sig 'i32x8 (list 'i32x8 'uint8_t))
                         (instr-sig 'u32x8 (list 'u32x8 'uint8_t))

                         (instr-sig 'i64x4 (list 'i64x4 'uint8_t))
                         (instr-sig 'u64x4 (list 'u64x4 'uint8_t))

                        )]

    [(eq? vpsllq instr) (list
                         (instr-sig 'i64x4 (list 'i64x4 'uint8_t))
                         (instr-sig 'u64x4 (list 'u64x4 'uint8_t))

                        )]

    [(eq? vpsllvd instr) (list
                         (instr-sig 'i32x4 (list 'i32x4 'i32x4))
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))

                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8))

                        )]

    [(eq? vpsllvq instr) (list
                         (instr-sig 'i64x2 (list 'i64x2 'i64x2))
                         (instr-sig 'u64x2 (list 'u64x2 'u64x2))

                         (instr-sig 'i64x4 (list 'i64x4 'i64x4))
                         (instr-sig 'u64x4 (list 'u64x4 'u64x4))

                        )]

    [(eq? vpsllw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'uint8_t))
                         (instr-sig 'u16x16 (list 'u16x16 'uint8_t))

                        )]

    [(eq? vpsrad instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'uint8_t))
                        )]

    [(eq? vpsravd instr) (list
                         (instr-sig 'i32x4 (list 'i32x4 'u32x4))
                         (instr-sig 'i32x8 (list 'i32x8 'u32x8))
                        )]

    [(eq? vpsraw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'uint8_t))
                        )]

    [(eq? vpsrld instr) (list
                         (instr-sig 'u32x8 (list 'u32x8 'uint8_t))
                        )]

    [(eq? vpsrldq instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'uint8_t))
                         (instr-sig 'u8x32 (list 'u8x32 'uint8_t))

                         (instr-sig 'i16x16 (list 'i16x16 'uint8_t))
                         (instr-sig 'u16x16 (list 'u16x16 'uint8_t))

                         (instr-sig 'i32x8 (list 'i32x8 'uint8_t))
                         (instr-sig 'u32x8 (list 'u32x8 'uint8_t))

                         (instr-sig 'i64x4 (list 'i64x4 'uint8_t))
                         (instr-sig 'u64x4 (list 'u64x4 'uint8_t))

                        )]

    [(eq? vpsrlq instr) (list
                         (instr-sig 'u64x4 (list 'u64x4 'uint8_t))
                        )]

    [(eq? vpsrlvd instr) (list
                         (instr-sig 'u32x4 (list 'u32x4 'u32x4))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8))
                        )]

    [(eq? vpsrlvq instr) (list
                         (instr-sig 'u64x2 (list 'u64x2 'u64x2))
                         (instr-sig 'u64x4 (list 'u64x4 'u64x4))
                        )]

    [(eq? vpsrlw instr) (list
                         (instr-sig 'u16x16 (list 'u16x16 'uint8_t))
                        )]

    [(eq? vpsubb instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))

                        )]

    [(eq? vpsubd instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8))

                        )]

    [(eq? vpsubq instr) (list
                         (instr-sig 'i64x4 (list 'i64x4 'i64x4))
                         (instr-sig 'u64x4 (list 'u64x4 'u64x4))

                        )]

    [(eq? vpsubsb instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                        )]

    [(eq? vpsubsw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                        )]

    [(eq? vpsubusb instr) (list
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))
                        )]

    [(eq? vpsubusw instr) (list
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))
                        )]

    [(eq? vpsubw instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))

                        )]

    [(eq? vpunpckhbw instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))

                        )]

    [(eq? vpunpckhdq instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8))

                        )]

    [(eq? vpunpckhqdq instr) (list
                         (instr-sig 'i64x4 (list 'i64x4 'i64x4))
                         (instr-sig 'u64x4 (list 'u64x4 'u64x4))

                        )]

    [(eq? vpunpckhwd instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))

                        )]

    [(eq? vpunpcklbw instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))

                        )]

    [(eq? vpunpckldq instr) (list
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8))

                        )]

    [(eq? vpunpcklqdq instr) (list
                         (instr-sig 'i64x4 (list 'i64x4 'i64x4))
                         (instr-sig 'u64x4 (list 'u64x4 'u64x4))

                        )]

    [(eq? vpunpcklwd instr) (list
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))

                        )]

    [(eq? vpxor instr) (list
                         (instr-sig 'i8x32 (list 'i8x32 'i8x32))
                         (instr-sig 'i16x16 (list 'i16x16 'i16x16))
                         (instr-sig 'i32x8 (list 'i32x8 'i32x8))
                         (instr-sig 'i64x4 (list 'i64x4 'i64x4))
                         (instr-sig 'u8x32 (list 'u8x32 'u8x32))
                         (instr-sig 'u16x16 (list 'u16x16 'u16x16))
                         (instr-sig 'u32x8 (list 'u32x8 'u32x8))
                         (instr-sig 'u64x4 (list 'u64x4 'u64x4))

                        )]

    [(eq? reinterpret instr) (list
                         (instr-sig 'i8x16 (list 'u8x16))
                         (instr-sig 'u8x16 (list 'i8x16))
                         (instr-sig 'i16x8 (list 'u16x8))
                         (instr-sig 'u16x8 (list 'i16x8))
                         (instr-sig 'i32x4 (list 'u32x4))
                         (instr-sig 'u32x4 (list 'i32x4))
                         (instr-sig 'i64x2 (list 'u64x2))
                         (instr-sig 'u64x2 (list 'i64x2))
                         (instr-sig 'i8x32 (list 'u8x32))
                         (instr-sig 'u8x32 (list 'i8x32))
                         (instr-sig 'i16x16 (list 'u16x16))
                         (instr-sig 'u16x16 (list 'i16x16))
                         (instr-sig 'i32x8 (list 'u32x8))
                         (instr-sig 'u32x8 (list 'i32x8))
                         (instr-sig 'i64x4 (list 'u64x4))
                         (instr-sig 'u64x4 (list 'i64x4))
                         )]

    [else (error "Unknown instruction:" instr)]))

;; TODO: need to auto-generate these...
(define (elem-type expr)
  (cond
    [(eq? i8x16 expr) 'int8]
    [(eq? i8x32 expr) 'int8]
    [(eq? i16x8 expr) 'int16]
    [(eq? i16x16 expr) 'int16]
    [(eq? i32x4 expr) 'int32]
    [(eq? i32x8 expr) 'int32]
    [(eq? i64x2 expr) 'int64]
    [(eq? i64x4 expr) 'int64]

    [(eq? u8x16 expr) 'uint8]
    [(eq? u8x32 expr) 'uint8]
    [(eq? u16x8 expr) 'uint16]
    [(eq? u16x16 expr) 'uint16]
    [(eq? u32x4 expr) 'uint32]
    [(eq? u32x8 expr) 'uint32]
    [(eq? u64x2 expr) 'uint64]
    [(eq? u64x4 expr) 'uint64]

    [(i8x16? expr) 'int8]
    [(i8x32? expr) 'int8]
    [(i16x8? expr) 'int16]
    [(i16x16? expr) 'int16]
    [(i32x4? expr) 'int32]
    [(i32x8? expr) 'int32]
    [(i64x2? expr) 'int64]
    [(i64x4? expr) 'int64]

    [(u8x16? expr) 'uint8]
    [(u8x32? expr) 'uint8]
    [(u16x8? expr) 'uint16]
    [(u16x16? expr) 'uint16]
    [(u32x4? expr) 'uint32]
    [(u32x8? expr) 'uint32]
    [(u64x2? expr) 'uint64]
    [(u64x4? expr) 'uint64]

    [(eq? 'i8x16 expr) 'int8]
    [(eq? 'i8x32 expr) 'int8]
    [(eq? 'i16x8 expr) 'int16]
    [(eq? 'i16x16 expr) 'int16]
    [(eq? 'i32x4 expr) 'int32]
    [(eq? 'i32x8 expr) 'int32]
    [(eq? 'i64x2 expr) 'int64]
    [(eq? 'i64x4 expr) 'int64]

    [(eq? 'u8x16 expr) 'uint8]
    [(eq? 'u8x32 expr) 'uint8]
    [(eq? 'u16x8 expr) 'uint16]
    [(eq? 'u16x16 expr) 'uint16]
    [(eq? 'u32x4 expr) 'uint32]
    [(eq? 'u32x8 expr) 'uint32]
    [(eq? 'u64x2 expr) 'uint64]
    [(eq? 'u64x4 expr) 'uint64]))

(define (type expr)
  (destruct expr
    [(i8x16 data) 'i8x16]
    [(i8x32 data) 'i8x32]
    [(i16x8 data) 'i16x8]
    [(i16x16 data) 'i16x16]
    [(i32x4 data) 'i32x4]
    [(i32x8 data) 'i32x8]
    [(i64x2 data) 'i64x2]
    [(i64x4 data) 'i64x4]

    [(u8x16 data) 'u8x16]
    [(u8x32 data) 'u8x32]
    [(u16x8 data) 'u16x8]
    [(u16x16 data) 'u16x16]
    [(u32x4 data) 'u32x4]
    [(u32x8 data) 'u32x8]
    [(u64x2 data) 'u64x2]
    [(u64x4 data) 'u64x4]))