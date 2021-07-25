#lang rosette/safe

(require rake)
(init-logging "expr_136.runtimes")

(define-symbolic-buffer offset_c int32_t)
(define-symbolic-buffer sum_input int32_t)
(define-symbolic-var t1915 int32_t)
(define-symbolic output.s0.c.co.rebased integer?)
(define-symbolic t1217 integer?)

(define axioms 
  (list ))

(define bias.extent.0 (var-lookup 'bias.extent.0 t1217))

(define halide-expr
 (vec-sub
  (load offset_c (ramp (sca-mul (sca-add (sca-div bias.extent.0 32) output.s0.c.co.rebased) 32) 1 32) (aligned 32 0))
  (x32 (sca-mul (load-sca sum_input 0) t1915))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_136.out")