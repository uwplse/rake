#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer maximum uint8_t)
(define-symbolic output.s0.c.c integer?)
(define-symbolic output.s0.x integer?)
(define-symbolic maximum.s1.r8$x integer?)
(define-symbolic stride_x integer?)
(define-symbolic t135 integer?)
(define-symbolic t138 integer?)
(define-symbolic t131 integer?)
(define-symbolic t133 integer?)
(define-symbolic t91 integer?)
(define-symbolic t94 integer?)
(define-symbolic t100 integer?)
(define-symbolic t99 integer?)
(define-symbolic t132 integer?)

(define axioms 
  (list 
   (values-range-from maximum (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define input.min.0 t91)
(define input.stride.1 t94)
(define output.min.0 t99)
(define output.extent.0 t100)
(define t58.s (-   (-    (-     output.min.0     t133)    t132)   t131))
(define t60 (+   t135   (-    t58.s    input.min.0)))
(define output.s0.c.v3.base.s (min   (*    output.s0.c.c    256)   (+    output.extent.0    -256)))
(define t67 (+   t138   (+    output.s0.c.v3.base.s    t60)))

(define halide-expr
 (vec-max
  (load maximum (ramp 0 1 256) (aligned 0 0))
  (load input (ramp (+  (*   (+    (*     output.s0.x     stride_x)    maximum.s1.r8$x)   input.stride.1)  t67) 1 256) (aligned 1 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_4.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)