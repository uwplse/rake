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

;; ARM instructions for vector creation
(struct read (buf loc align) #:transparent)
(struct dup (val) #:transparent)

;; ARM instructions for type-promotion
(struct sxtl (Vn) #:super struct:ast-node #:transparent)
(struct sxtl2 (Vn) #:super struct:ast-node #:transparent)
(struct usxtl (Vn) #:super struct:ast-node #:transparent)
(struct uxtl2 (Vn) #:super struct:ast-node #:transparent)

;; ARM instructions for type-demotion
(struct xtn (Vn) #:super struct:ast-node #:transparent)
(struct xtl2 (Vn) #:super struct:ast-node #:transparent)
(struct sqxtn (Vn) #:super struct:ast-node #:transparent)
(struct sqxtn2 (Vn) #:super struct:ast-node #:transparent)
(struct uqxtn (Vn) #:super struct:ast-node #:transparent)
(struct uqxtn2 (Vn) #:super struct:ast-node #:transparent)
(struct sqxtun (Vn) #:super struct:ast-node #:transparent)
(struct sqxtun2 (Vn) #:super struct:ast-node #:transparent)

;; Basic arithmetic instructions
(struct add (Vn Vm) #:super struct:ast-node #:transparent)
(struct addp (Vn Vm) #:super struct:ast-node #:transparent)
(struct addv (Vn) #:super struct:ast-node #:transparent)
(struct mul (Vn Vm) #:super struct:ast-node #:transparent)

;; Basic arithmetic instructions narrowing
(struct addhn (Vn Vm) #:super struct:ast-node #:transparent)
(struct addhn2 (Vd Vn Vm) #:super struct:ast-node #:transparent)
(struct raddhn (Vn Vm) #:super struct:ast-node #:transparent)
(struct raddhn2 (Vd Vn Vm) #:super struct:ast-node #:transparent)

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

;; Basic arithmetic instructions saturating
(struct sqadd (Vn Vm) #:super struct:ast-node #:transparent)
(struct suqadd (Vn Vm) #:super struct:ast-node #:transparent)
(struct uqadd (Vn Vm) #:super struct:ast-node #:transparent)
(struct usqadd (Vn Vm) #:super struct:ast-node #:transparent)

;; Fused multiply-adds

;mla
;mls
;-------
;pmul
;URHADD
;srhadd
;shadd (a+b / 2)
;SRHADD
;sqdmlal
;smlal
;mlavv
;mlave
;UHADD
;UMLAL

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

(provide (all-defined-out))