#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer bias_im_global_wrapper$0 int32_t)
(define-symbolic-buffer offset_c int32_t)
(define-symbolic-var t843.s int32_t)
(define-symbolic offset_c.s2.c.c integer?)

(define axioms 
  (list ))


(define halide-expr
 (vec-sub
  (vec-add
   (load bias_im_global_wrapper$0 (ramp (sca-mul offset_c.s2.c.c 32) 1 32) (aligned 32 0))
   (x32 (sca-mul t843.s (int32_t (bv 4 32)))))
  (load offset_c (ramp (sca-mul offset_c.s2.c.c 32) 1 32) (aligned 32 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")