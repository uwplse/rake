#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer t14.s.widened.sum_input_sq.s1.r8$x.r21-buf int16_t)
(define t14.s.widened.sum_input_sq.s1.r8$x.r21 (load t14.s.widened.sum_input_sq.s1.r8$x.r21-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t14.s.widened.sum_input_sq.s1.r8$x.r21-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (vec-mul
  (int32x128
   t14.s.widened.sum_input_sq.s1.r8$x.r21)
  (int32x128
   t14.s.widened.sum_input_sq.s1.r8$x.r21)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")