#lang rosette

(require rosette/lib/match)
(require rake/cpp/types)

(struct ast-node (id))

;; ARM vector types
(struct i8x16 (Vu) #:super struct:ast-node #:transparent)
(struct u8x16 (Vu) #:super struct:ast-node #:transparent)
(struct i16x8 (Vu) #:super struct:ast-node #:transparent)
(struct u16x8 (Vu) #:super struct:ast-node #:transparent)
(struct i32x4 (Vu) #:super struct:ast-node #:transparent)
(struct u32x4 (Vu) #:super struct:ast-node #:transparent)
(struct i64x2 (Vu) #:super struct:ast-node #:transparent)
(struct u64x2 (Vu) #:super struct:ast-node #:transparent)

;; ARM instructions for vector creation
(struct read (buf loc align) #:super struct:ast-node #:transparent)
(struct dup (val) #:super struct:ast-node #:transparent) ;; OR ld1r??

;; ARM instructions for type-promotion
(struct sxtl (Vn low?) #:super struct:ast-node #:transparent)
(struct uxtl (Vn low?) #:super struct:ast-node #:transparent)

;; ARM instructions for type-demotion
(struct xtn (Vn Vm signed?) #:super struct:ast-node #:transparent)
(struct sqxtn (Vn Vm) #:super struct:ast-node #:transparent)
(struct uqxtn (Vn Vm signed?) #:super struct:ast-node #:transparent)
(struct sqxtun (Vn Vm) #:super struct:ast-node #:transparent)

;; Basic arithmetic instructions
(struct add (Vn Vm) #:super struct:ast-node #:transparent)
(struct addp (Vn Vm) #:super struct:ast-node #:transparent)
(struct addv (Vn) #:super struct:ast-node #:transparent)

(struct mul (Vn Vm) #:super struct:ast-node #:transparent)
(struct shl (Vn shift) #:super struct:ast-node #:transparent)

(struct sshr (Vn shift) #:super struct:ast-node #:transparent)
(struct ssra (Vd Vn shift) #:super struct:ast-node #:transparent)
(struct srshr (Vn shift) #:super struct:ast-node #:transparent)
(struct srsra (Vd Vn shift) #:super struct:ast-node #:transparent)
(struct ushr (Vn shift) #:super struct:ast-node #:transparent)
(struct usra (Vd Vn shift) #:super struct:ast-node #:transparent)
(struct urshr (Vn shift) #:super struct:ast-node #:transparent)
(struct ursha (Vd Vn shift) #:super struct:ast-node #:transparent)

(struct abs (Vn) #:super struct:ast-node #:transparent)
(struct neg (Vn) #:super struct:ast-node #:transparent)

;; Basic arithmetic instructions narrowing
(struct addhn (Vn Vm) #:super struct:ast-node #:transparent)
(struct addhn2 (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct raddhn (Vn Vm) #:super struct:ast-node #:transparent)
(struct raddhn2 (Vd Vn Vm) #:super struct:ast-node #:transparent)

(struct shrn (Vn shift) #:super struct:ast-node #:transparent)
(struct shrn2 (Vd Vn shift) #:super struct:ast-node #:transparent)
(struct rshrn (Vn shift) #:super struct:ast-node #:transparent)
(struct rshrn2 (Vd Vn shift) #:super struct:ast-node #:transparent)

;; Basic arithmetic instructions saturating
(struct sqadd (Vn Vm) #:super struct:ast-node #:transparent)
(struct suqadd (Vn Vm) #:super struct:ast-node #:transparent)
(struct uqadd (Vn Vm) #:super struct:ast-node #:transparent)
(struct usqadd (Vn Vm) #:super struct:ast-node #:transparent)
(struct sqabs (Vn Vm) #:super struct:ast-node #:transparent)
(struct sqneg (Vn) #:super struct:ast-node #:transparent)
(struct sqshl (Vn shift) #:super struct:ast-node #:transparent)
(struct sqrshl (Vn shift) #:super struct:ast-node #:transparent)
(struct sqshlu (Vn shift) #:super struct:ast-node #:transparent)

(struct uqshl (Vn shift) #:super struct:ast-node #:transparent)
(struct uqrshl (Vn shift) #:super struct:ast-node #:transparent)

(struct sqshrn (Vn shift) #:super struct:ast-node #:transparent)
(struct sqshrn2 (Vd Vn shift) #:super struct:ast-node #:transparent)
(struct sqshrun (Vn shift) #:super struct:ast-node #:transparent)
(struct sqshrun2 (Vd Vn shift) #:super struct:ast-node #:transparent)
(struct sqrshrn (Vn shift) #:super struct:ast-node #:transparent)
(struct sqrshrn2 (Vd Vn shift) #:super struct:ast-node #:transparent)
(struct sqrshrun (Vn shift) #:super struct:ast-node #:transparent)
(struct sqrshrun2 (Vd Vn shift) #:super struct:ast-node #:transparent)

(struct uqshrn (Vn shift) #:super struct:ast-node #:transparent)
(struct uqshrn2 (Vd Vn shift) #:super struct:ast-node #:transparent)
(struct uqrshrn (Vn shift) #:super struct:ast-node #:transparent)
(struct uqrshrn2 (Vd Vn shift) #:super struct:ast-node #:transparent)

;; Basic arithmetic instructions widening
(struct saddl (Vn Vm) #:super struct:ast-node #:transparent)
(struct saddl2 (Vn Vm) #:super struct:ast-node #:transparent)
(struct saddlp (Vn) #:super struct:ast-node #:transparent)
(struct sadalp (Vn Vm) #:super struct:ast-node #:transparent)
(struct saddlv (Vn) #:super struct:ast-node #:transparent)
(struct saddw (Vn Vm) #:super struct:ast-node #:transparent)
(struct saddw2 (Vn Vm) #:super struct:ast-node #:transparent)
(struct uadalp (Vd Vn) #:super struct:ast-node #:transparent)
(struct uaddl (Vn Vm) #:super struct:ast-node #:transparent)
(struct uaddlp (Vn) #:super struct:ast-node #:transparent)
(struct uaddlv (Vn) #:super struct:ast-node #:transparent)
(struct uaddw (Vn Vm) #:super struct:ast-node #:transparent)
(struct uaddw2 (Vn Vm) #:super struct:ast-node #:transparent)

(struct smull (Vn Vm) #:super struct:ast-node #:transparent)
(struct smull2 (Vn Vm) #:super struct:ast-node #:transparent)
(struct umull (Vn Vm) #:super struct:ast-node #:transparent)
(struct umull2 (Vn Vm) #:super struct:ast-node #:transparent)

(struct sshll (Vn shift) #:super struct:ast-node #:transparent)
(struct sshll2 (Vd Vn shift) #:super struct:ast-node #:transparent)
(struct shll (Vn shift) #:super struct:ast-node #:transparent)
(struct shll2 (Vd Vn shift) #:super struct:ast-node #:transparent)
(struct ushll (Vn shift) #:super struct:ast-node #:transparent)
(struct ushll2 (Vd Vn shift) #:super struct:ast-node #:transparent)

;; Fused multiply-adds
(struct mla (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct smlal (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct smlal2 (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct sqdmlal (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct sqdmlal2 (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct sqdmulh (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct sqdmull (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct sqdmull2 (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct sqrdmlah (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct sqrdmulh (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct umlal (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct umlal2 (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct usdot (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct sdot (Vd Vn Vm) #:super struct:ast-node #:transparent)

;; Averaging instructions
(struct shadd (Vn Vm) #:super struct:ast-node #:transparent)
(struct srhadd (Vn Vm) #:super struct:ast-node #:transparent)
(struct uhadd (Vn Vm) #:super struct:ast-node #:transparent)
(struct urhadd (Vn Vm) #:super struct:ast-node #:transparent)

;; Instructions for swizzling
(struct ext (Vn Vm index) #:super struct:ast-node #:transparent)
(struct rev16 (Vn) #:super struct:ast-node #:transparent)
(struct rev32 (Vn) #:super struct:ast-node #:transparent)
(struct rev64 (Vn) #:super struct:ast-node #:transparent)
(struct sli (Vd Vn shift) #:super struct:ast-node #:transparent)
(struct sri (Vd Vn shift) #:super struct:ast-node #:transparent)

;; Not handled yet
; pmul
; recip
; recipsqrt

;; New instructions types we introduce to abstract away data-movement.
;; These instr types should never exist in output code.
(struct gather* (buff-reads))
;(struct gather-vec (buff-reads) #:super struct:hvx-ast-node)
;(struct gather-vecp (buff-reads) #:super struct:hvx-ast-node)
;(struct swizzle* (vec) #:transparent)
;(struct swizzle (vec) #:transparent #:super struct:hvx-ast-node)
;(struct serve-vec (vec type opts sols))
;(struct serve-vec-pair (v0 v1 type opts sols))
;(struct ??vread (buf-opts load-idxs) #:transparent)
;(struct ??vreadp (buf-opts load-idxs) #:transparent)

;; Type signatures
(struct instr-sig (ret-val args) #:transparent)

(define (instr-forms instr)
  (cond
    ;; HVX instructions for data swizzling
    [(eq? sqadd instr) (list
                        (instr-sig 'i8x128 (list 'i8x128x2))
                        (instr-sig 'i16x64 (list 'i16x64x2))
                        (instr-sig 'i32x32 (list 'i32x32x2))
                        (instr-sig 'u8x128 (list 'u8x128x2))
                        (instr-sig 'u16x64 (list 'u16x64x2))
                        (instr-sig 'u32x32 (list 'u32x32x2)))]))

(provide (all-defined-out))