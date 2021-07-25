#lang rosette/safe

(require rake)
(init-logging "expr_105.runtimes")

(define-symbolic-buffer offset_c int32_t)
(define-symbolic-buffer sum_input int32_t)
(define-symbolic output.s0.c.co integer?)
(define-symbolic-var t1757 int32_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-sub
  (load offset_c (ramp (sca-mul output.s0.c.co 32) 1 32) (aligned 32 0))
  (x32 (sca-mul (load-sca sum_input 5) t1757))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_105.out")