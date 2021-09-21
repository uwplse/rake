#lang rosette/safe

(require rake)
(init-logging "expr_53.runtimes")

(define-symbolic-var output.s0.c.c.base int32_t)
(define-symbolic-var t2375 int32_t)
(define-symbolic-var stride_x int32_t)
(define-symbolic-var t2339 int32_t)
(define-symbolic-var output.min.1 int32_t)
(define-symbolic-var depth_multiplier int32_t)
(define-symbolic-var input.stride.1 int32_t)
(define-symbolic-var resampled_input.s0.x.rebased int32_t)
(define-symbolic-var t2340.s int32_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-add
  (vec-div
   (ramp output.s0.c.c.base (int32_t (bv 1 32)) 128)
   (x128 depth_multiplier))
  (x128 (sca-add (sca-mul (sca-add (sca-add (sca-mul (sca-add output.min.1 t2340.s) stride_x) t2339) resampled_input.s0.x.rebased) input.stride.1) t2375))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_53.out")