#lang rosette/safe

(provide (prefix-out arm-ir: (all-defined-out)))

(require (only-in racket/struct make-constructor-style-printer))

(struct ast-node (id))
(struct abstr-expr (orig-expr abstr-vals))

(struct combine (sub-expr0 sub-expr1 read-tbl)
  #:super struct:ast-node
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `combine)
      (lambda (obj) (list (combine-sub-expr0 obj) (combine-sub-expr1 obj)))))])

;; Constructors
(struct load-data (live-data gather-tbl) #:super struct:ast-node)                            ;; Load vector from memory
(struct broadcast (value) #:super struct:ast-node #:transparent)                             ;; Broadcast scalar to vector
(struct build-vec (base stride len) #:super struct:ast-node #:transparent)                   ;; Equivalent to Halide ramp

;; Base instructions
(struct cast (expr type saturate?) #:super struct:ast-node #:transparent)                    ;; Instructions: xtn, uxtl, sxtl, uqxtn, sqxtn, sqxtun
(struct abs (expr saturate? output-type) #:super struct:ast-node #:transparent)              ;; Instructions: abs, sqabs
(struct minimum (expr0 expr1) #:super struct:ast-node #:transparent)                         ;; Instructions: umin, smin, uminp, sminp, conditional
(struct maximum (expr0 expr1) #:super struct:ast-node #:transparent)                         ;; Instructions: umax, smax, umaxp, smaxp, conditional

;; Fused instructions
(struct add-high-narrow (expr round?) #:super struct:ast-node #:transparent)                 ;; Instructions: addhn, raddhn
(struct sub-high-narrow (expr round?) #:super struct:ast-node #:transparent)                 ;; Instructions: subhn, rsubhn
(struct halving-add (expr0 expr1 round?) #:super struct:ast-node #:transparent)              ;; Instructions: shadd, srhadd, uhadd
(struct halving-sub (expr0 expr1 round?) #:super struct:ast-node #:transparent)              ;; Instructions: shsub, urhadd, uhsub

; TODO: halving-add and halving-sub should be merged

(struct reduce (expr reduce-op widening?) #:super struct:ast-node #:transparent)             ;; Instructions: addv, saddlv, smaxv, sminv, uaddlv, uminv, umaxv

(struct vv-mpy-add (expr weights outT) #:super struct:ast-node #:transparent)                ;; Instructions: add, addp, mla, mls, mul, smlal, umlal
(struct vs-mpy-add (expr weights outT) #:super struct:ast-node #:transparent)                ;; Instructions: add, addp, mla, mls, mul, shl, neg

(struct vv-mpy-add-w (expr weights outT) #:super struct:ast-node #:transparent)              ;; Instructions: saddl, smull, saddw, saddlp, sadalp, smlal, smlsl, sdot, ssubl, sub, uadalp, uaddl, uaddlp, uaddw, umlal, umlsl, umull, usubl, usubw
(struct vs-mpy-add-w (expr weights outT) #:super struct:ast-node #:transparent)              ;; Instructions: saddl, smull, saddw, saddlp, sadalp, smlal, smlsl, sdot, shll, ssubl, sub, uadalp, uaddl, uaddlp, uaddw, umlal, umlsl, umull, usubl, usubw

(struct vv-dmpy-add-sat (expr weights) #:super struct:ast-node #:transparent)                ;; Instructions: sqdmull, sqdmlal, sqdmlsl
(struct vs-dmpy-add-sat (expr weights) #:super struct:ast-node #:transparent)                ;; Instructions: sqdmull, sqdmlal, sqdmlsl

(struct vv-dmpy-add-hh-sat (expr weights round?) #:super struct:ast-node #:transparent)      ;; Instructions: sqdmulh, sqdmulh, sqrdmulh, sqrdmlah, sqrdmlsh
(struct vs-dmpy-add-hh-sat (expr weights round?) #:super struct:ast-node #:transparent)      ;; Instructions: sqdmulh, sqdmulh, sqrdmulh, sqrdmlah, sqrdmlsh

(struct neg-sat (expr0) #:super struct:ast-node #:transparent)                               ;; Instructions: sqneg
(struct add-sat (expr0 expr1) #:super struct:ast-node #:transparent)                         ;; Instructions: sqadd, suqadd, usqadd, uqadd
(struct sub-sat (expr0 expr1) #:super struct:ast-node #:transparent)                         ;; Instructions: sqsub, uqsub

(struct shift-left (expr shift round? saturate? signed?) #:super struct:ast-node #:transparent)  ;; Instructions: sqrshl, sqshl, sqshlu, srshl, uqrshl, uqshl, urshl, sshl, sshll, ushl,sshl, sshll, ushl, ushll
(struct shift-right (expr shift round? saturate? signed? outputT) #:super struct:ast-node #:transparent) ;; Instructions: shrn, rshrn, sqrshrn, sqrshrun, sqshrn, sqshrun, srshr, sshr, ssra, uqrshrn, uqshrn, urshr, ursra, ushr, usra

(struct abs-diff (expr0 expr1 widening? outT) #:super struct:ast-node #:transparent)         ;; Instructions: sabd, sabdl, uabd, uabdl
(struct abs-diff-acc (acc expr0 expr1 widening?) #:super struct:ast-node #:transparent)      ;; Instructions: saba, sabal, uaba, uabal
