#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer bias int32_t)
(define-symbolic-buffer sum_filter int32_t)
(define-symbolic-var t2598 int32_t)
(define-symbolic output.s0.c.co integer?)
(define-symbolic t2545 integer?)

(define axioms 
  (list ))

(define filter.extent.0 (var-lookup 'filter.extent.0 t2545))
(define output.s0.c.c.base (var-lookup 'output.s0.c.c.base (sca-min  (sca-mul  output.s0.c.co  128)  (sca-add  filter.extent.0  -128))))

(define halide-expr
 (vec-sub
  (load bias (ramp output.s0.c.c.base 1 128) (aligned 1 0))
  (vec-mul
   (load sum_filter (ramp 0 1 128) (aligned 0 0))
   (x128 t2598))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")