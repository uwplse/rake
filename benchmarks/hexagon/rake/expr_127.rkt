#lang rosette/safe

(require rake)
(init-logging "expr_127.runtimes")

(define-symbolic-buffer offset_c int32_t)
(define-symbolic-buffer sum_input int32_t)
(define-symbolic-var t1853 int32_t)
(define-symbolic output.s0.c.co integer?)

(define axioms 
  (list ))


(define halide-expr
 (vec-sub
  (load offset_c (ramp (sca-add (sca-mul output.s0.c.co 128) 96) 1 32) (aligned 128 96))
  (x32 (sca-mul (load-sca sum_input 0) t1853))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_127.out")