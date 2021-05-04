#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer maximum uint8_t)
(define-symbolic maximum.s1.r8$x integer?)
(define-symbolic output.s0.c.c integer?)
(define-symbolic stride_x integer?)
(define-symbolic output.s0.x integer?)
(define-symbolic t150 integer?)
(define-symbolic t149 integer?)
(define-symbolic t152 integer?)
(define-symbolic t155 integer?)
(define-symbolic t91 integer?)
(define-symbolic t94 integer?)
(define-symbolic t100 integer?)
(define-symbolic t99 integer?)
(define-symbolic t148 integer?)

(define axioms 
  (list 
   (values-range-from maximum (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define input.min.0 t91)
(define input.stride.1 t94)
(define output.min.0 t99)
(define output.extent.0 t100)
(define t69.s (-   (-    (-     output.min.0     t150)    t149)   t148))
(define t71 (+   t152   (-    t69.s    input.min.0)))
(define output.s0.c.v4.base.s (min   (*    output.s0.c.c    128)   (+    output.extent.0    -128)))
(define t78 (+   t155   (+    output.s0.c.v4.base.s    t71)))

(define halide-expr
 (vec-max
  (load maximum (ramp 0 1 128) (aligned 0 0))
  (load input (ramp (+  (*   (+    (*     output.s0.x     stride_x)    maximum.s1.r8$x)   input.stride.1)  t78) 1 128) (aligned 1 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_7.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)