#lang rosette/safe

(require rake)
(init-logging "expr_72.runtimes")

(define-symbolic-buffer offset_c int32_t)
(define-symbolic-buffer sum_input int32_t)
(define-symbolic output.s0.c.co integer?)
(define-symbolic-var t1577 int32_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-sub
  (load offset_c (ramp (sca-add (sca-mul output.s0.c.co 64) 32) 1 32) (aligned 64 32))
  (x32 (sca-mul (load-sca sum_input 6) t1577))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_72.out")