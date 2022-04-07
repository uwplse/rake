#lang rosette/safe

(provide (prefix-out x86-ir: (all-defined-out)))

(require (only-in racket/struct make-constructor-style-printer))

(struct ast-node (id))
(struct abstr-expr (orig-expr abstr-vals))

(struct combine (expr0 expr1 read-tbl)
  #:super struct:ast-node
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `combine)
      (lambda (obj) (list (combine-expr0 obj) (combine-expr1 obj)))))])

;; Constructors
(struct load-data (live-data gather-tbl) #:super struct:ast-node)                            ;; Load vector from memory
;; Broadcast (scalar to vector): vpbroadcastb_128, vpbroadcastb, vpbroadcastd_128,
;;           vpbroadcastd, vpbroadcastq_128, vpbroadcastq, vpbroadcastw_128, vpbroadcastw
(struct broadcast (value) #:super struct:ast-node #:transparent)
(struct build-vec (base stride len) #:super struct:ast-node #:transparent)                   ;; Equivalent to Halide ramp

;; Base instructions
;; Instructions: vpmovsxwd, vpmovsxwq, vpmovsxdq, vpmovsxbw, vpmovsxbd, vpmovsxbq,
;;               vpmovzxwd, vpmovzxwq, vpmovzxdq, vpmovzxbw, vpmovzxbd, vpmovzxbq,
;;               vpacksswb, vpackssdw, vpackuswb, vpackusdw
(struct cast (expr type saturate?) #:super struct:ast-node #:transparent)
;; Instructions: vpabsw, vpabsd, vpabsb, vpsignw, vpsignd, vpsignb
;; TODO: are there more? x86 has no saturating abs?
(struct abs (expr saturate? output-type) #:super struct:ast-node #:transparent)
;; Instructions: vpminsw, vpminsd, vpminsb, vpminuw, vpminud, vpminub
;; TODO: add conditional?
(struct minimum (expr0 expr1) #:super struct:ast-node #:transparent)
;; Instructions: vpmaxsw, vpmaxsd, vpmaxsb, vpmaxuw, vpmaxud, vpmaxub
;; TODO: add conditional?
(struct maximum (expr0 expr1) #:super struct:ast-node #:transparent)

;; Instructions: vpaddw, vpaddd, vpaddq, vpaddb
;;               vpaddsw, vpaddsb, vpaddusw, vpaddusb
;;               vpavgw, vpavgb
;;               vphaddw, vphaddd, vphaddsw,
;;               vphsubw, vphsubd, vphsubsw,
;;               TODO: should these be here...? vpmaddwd, vpmaddubsw,
;;               vpsubw, vpsubd, vpsubq, vpsubb,
;;               vpsubsw, vpsubsb, vpsubusw, vpsubusb
(struct vs-mpy-add (expr weights saturating? rounding? halving? outT) #:super struct:ast-node #:transparent)


;; Instructions: vpmaddwd, vpmaddubsw,
;;               vpmuldq, vpmuludq,
;;               vpmullw, vpmulld
(struct vv-mpy-add (expr weights saturating? rounding? halving? outT) #:super struct:ast-node #:transparent)

;; Instructions: vpmulhw, vpmulhuw, vpmulhrsw
;; TODO: should this be merged with something else?
(struct mul-hh (expr0 expr1 rounding?) #:super struct:ast-node #:transparent)

;; TODO: does x86 have reduction nodes other than dot products?
#|=
Acceptable values of reduce-op:
add, sadd, mul, min, max, and, or
|#
; (struct reduce (expr width reduce-op outT) #:super struct:ast-node #:transparent)

;; Instructions: vpsllw, vpslld, vpsllq
(struct vs-shift-left (expr shift round? saturate? signed?) #:super struct:ast-node #:transparent)
;; Instructions: vpsllvd, vpsllvq
(struct vv-shift-left (expr0 expr1 round? saturate? signed?) #:super struct:ast-node #:transparent)
;; Instructions: vpsraw, vpsrad, vpsrlw, vpsrld, vpsrlq
(struct vs-shift-right (expr shift round? saturate? signed?) #:super struct:ast-node #:transparent)
;; Instructions: vpsravd, vpsrlvd, vpsrlvd, vpsrlvq
(struct vv-shift-right (expr0 expr1 round? saturate? signed?) #:super struct:ast-node #:transparent)

;; Bitwise: vpand, vpandn, vpor, vpxor,
#|=
Acceptable values of op:
and, andn, or, xor
|#
(struct bitwise-op (op expr0 expr1) #:super struct:ast-node #:transparent)


;; Unused instructions:
;; Swizzles: vpalignr, vpblendw, vpblendd_128, vpblendd, vpblendvb, vbroadcasti128, vpslldq,
;;           vpsrldq, vperm2f128, vperm2i128, vpermq, vpermd, vpshufd, vpshufb, vpshufhw, vpshuflw,
;;           vpunpckhwd, vpunpckhdq, vpunpckhqdq, vpunpckhbw, vpunpcklwd, vpunpckldq, vpunpcklqdq,
;;           vpunpcklbw
;; Others: resize, vpsadbw, (used in abs, could be elsewhere?): vpsignw, vpsignd, vpsignb    

;; =======================

;; Instructions: (???) vpshufb, vpermd, vperm128
(struct select (expr0 expr1 expr2) #:super struct:ast-node #:transparent)
;; Instructions: vpcmpeqw, vpcmpeqd, vpcmpeqq, vpcmpeqb
(struct is-equal (expr0 expr1) #:super struct:ast-node #:transparent)
;; Instructions: vpcmpgtw, vpcmpgtd, vpcmpgtq, vpcmpgtb
(struct less-than (expr0 expr1) #:super struct:ast-node #:transparent)
(struct less-than-eq (expr0 expr1) #:super struct:ast-node #:transparent)


(struct vs-divide (expr divisor) #:super struct:ast-node #:transparent)
