#lang rosette/safe

(require rake)
(init-logging "expr_36.runtimes")

(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer sum_filter_intm uint32_t)
(define-symbolic t721 integer?)
(define-symbolic t715 integer?)
(define-symbolic output.s0.c.co integer?)
(define-symbolic t720 integer?)
(define-symbolic t714 integer?)
(define-symbolic multiplied_intm.s1.r9$x.r9$x.r58 integer?)

(define axioms 
  (list ))

(define filter.min.1 (var-lookup 'filter.min.1 t714))
(define filter.stride.1 (var-lookup 'filter.stride.1 t715))
(define output.min.0 (var-lookup 'output.min.0 t720))
(define output.extent.0 (var-lookup 'output.extent.0 t721))
(define output.s0.c.c.base.s (var-lookup 'output.s0.c.c.base.s (sca-min  (sca-mul  output.s0.c.co  8)  (sca-add  output.extent.0  -8))))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (uint32x128
    (load filter (ramp (sca-add (sca-mul multiplied_intm.s1.r9$x.r9$x.r58 128) (sca-mul (sca-add (sca-add (sca-sub output.min.0 filter.min.1) output.s0.c.c.base.s) 7) filter.stride.1)) 1 128) (aligned 1 0))))
  (load sum_filter_intm (ramp 224 1 32) (aligned 0 224))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_36.out")