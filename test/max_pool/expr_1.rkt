#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer maximum uint8_t)
(define-symbolic output.s0.x integer?)
(define-symbolic maximum.s1.r8$x integer?)
(define-symbolic stride_x integer?)
(define-symbolic output.s0.c.c integer?)
(define-symbolic t121 integer?)
(define-symbolic t91 integer?)
(define-symbolic t94 integer?)
(define-symbolic t100 integer?)
(define-symbolic t114 integer?)
(define-symbolic t115 integer?)
(define-symbolic t116 integer?)
(define-symbolic t99 integer?)
(define-symbolic t118 integer?)

(define axioms 
  (list 
   (values-range-from maximum (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define input.min.0 t91)
(define input.stride.1 t94)
(define output.min.0 t99)
(define output.extent.0 t100)
(define t47.s (-   (-    (-     output.min.0     t116)    t115)   t114))
(define t49 (+   t118   (-    t47.s    input.min.0)))
(define output.s0.c.v2.base.s (min   (*    output.s0.c.c    512)   (+    output.extent.0    -512)))
(define t56 (+   t121   (+    output.s0.c.v2.base.s    t49)))

(define halide-expr
 (vec-max
  (load maximum (ramp 0 1 512) (aligned 0 0))
  (load input (ramp (+  (*   (+    (*     output.s0.x     stride_x)    maximum.s1.r8$x)   input.stride.1)  t56) 1 512) (aligned 1 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_1.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)