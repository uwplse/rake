#lang rosette/safe

(require rake)
(init-logging "expr_133.runtimes")

(define-symbolic-buffer offset_c int32_t)
(define-symbolic-buffer sum_input int32_t)
(define-symbolic-var t1901 int32_t)
(define-symbolic output.s0.c.co integer?)

(define axioms 
  (list ))


(define halide-expr
 (vec-sub
  (load offset_c (ramp (sca-mul output.s0.c.co 32) 1 32) (aligned 32 0))
  (x32 (sca-mul (load-sca sum_input 0) t1901))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_133.out")