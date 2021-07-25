#lang rosette/safe

(require rake)
(init-logging "expr_11.runtimes")

(define-symbolic-buffer offset_c int32_t)
(define-symbolic-buffer sum_input int32_t)
(define-symbolic output.s0.c.co integer?)
(define-symbolic-var t1337 int32_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-sub
  (load offset_c (ramp (sca-add (sca-mul output.s0.c.co 128) 32) 1 32) (aligned 128 32))
  (x32 (sca-mul (load-sca sum_input 3) t1337))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_11.out")