#lang rosette/safe

(require (only-in racket/struct make-constructor-style-printer))

;; min / max should include pairwise possibilities. shifting, data movement, averaging, absd, saturate, widen, narrow

;; some of this is copied from hvx/instructions.rkt...

(provide (all-defined-out))

(struct ir-node (id))

(struct abstr-ir-expr (orig-expr abstr-vals))

(struct load-data (live-data gather-tbl) #:super struct:ir-node)
(struct broadcast (value) #:super struct:ir-node #:transparent)
(struct build-vec (base stride len) #:super struct:ir-node #:transparent)

(struct cast (sub-expr type saturating?) #:super struct:ir-node #:transparent)
;; instructions: uqxtn, sqxtn, sqxtun

;; TODO: figure out which instructions are helpful with these
(struct vs-mpy-add (sub-expr weight-matrix output-type widening? saturating? rounding? narrowing? halving?) #:super struct:ir-node #:transparent)
;; useful: dot product,
;;         uqadd, sqadd, uhadd, shadd, urhadd, srhadd, raddhn, addp, uaddlp, saddlp
;;         uqsub, sqsub, uhsub, shsub, urhsub, srhsub, rsubhn, sqneg
(struct vs-mpy-add-acc (acc-expr sub-expr weight-matrix output-type saturate?) #:super struct:ir-node #:transparent)
(struct vv-mpy-add (sub-expr width output-type saturate?) #:super struct:ir-node #:transparent)
(struct vv-mpy-add-acc (acc-expr sub-expr width output-type saturate?) #:super struct:ir-node #:transparent)


;; these are not copied:

(struct abs (expr) #:super struct:ir-node #:transparent)
;; instructions: abs
(struct absd (expr0 expr1 widening?) #:super struct:ir-node #:transparent)
;; instructions: uabd, sabd, vabdl_i8x8, vabdl_u8x8, vabdl_i16x4, vabdl_u16x4, vabdl_i32x2, vabdl_u32x2

(struct vv-mul (expr0 expr1 widening? saturating? rounding? narrowing?)  #:super struct:ir-node #:transparent)
;; instructions: umull, smull, uqrshl, sqrshl, uqshl, sqshlu, sqshl, urshl, srshl, ushl, sshl, 
(struct vs-mul (expr0 expr1 widening? saturating? rounding? narrowing?)  #:super struct:ir-node #:transparent)
;; instructions:
;; unsupported: SSHLL

(struct vv-div (expr0 expr1 widening? saturating? rounding? narrowing?)  #:super struct:ir-node #:transparent)
;; instructions: 
(struct vs-div (expr0 expr1 widening? saturating? rounding? narrowing?)  #:super struct:ir-node #:transparent)
;; instructions: rshrn, uqrshrn, sqrshrn, sqrshrun, uqshrn, sqshrn, sqshrun
;; unsupported: SRSHR

(struct minimum (expr0 expr1 pairwise?) #:super struct:ir-node #:transparent)
;; instructions: umin, smin, umino, sminp
(struct maximum (expr0 expr1 pairwise?) #:super struct:ir-node #:transparent)
;; instructions: umax, smax, umaxp, smaxp

;; these seem to be special
(struct sat-double-mul (expr0 expr1 rounding?) #:super struct:ir-node #:transparent)
;; instructions: sqdmulh, sqrdmulh

