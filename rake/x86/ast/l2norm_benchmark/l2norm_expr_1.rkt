#lang rosette/safe

(require rake)
(init-logging "l2norm_expr_1.runtimes")

(define-symbolic-buffer t14.s.widened.sum_input_sq.s1.rx$x.r16-buf int16_t)
(define t14.s.widened.sum_input_sq.s1.rx$x.r16 (load t14.s.widened.sum_input_sq.s1.rx$x.r16-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t14.s.widened.sum_input_sq.s1.rx$x.r16-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (vec-mul
  (int32x16
   t14.s.widened.sum_input_sq.s1.rx$x.r16)
  (int32x16
   t14.s.widened.sum_input_sq.s1.rx$x.r16)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "l2norm_sexp_1.out")