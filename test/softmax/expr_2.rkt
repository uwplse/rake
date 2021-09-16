#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer t27.widened.sum_exp_row.s1.r6$x.r24-buf int16_t)
(define t27.widened.sum_exp_row.s1.r6$x.r24 (load t27.widened.sum_exp_row.s1.r6$x.r24-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t27.widened.sum_exp_row.s1.r6$x.r24-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (int16x128
  (vec-max
   (vec-min
    (vec-shl
     (int32x128
      (x128 (int16_t (bv 1 16))))
     (int32x128
      (vec-add
       t27.widened.sum_exp_row.s1.r6$x.r24
       (x128 (int16_t (bv 15 16))))))
    (x128 (int32_t (bv 32767 32))))
   (x128 (int32_t (bv -32768 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")