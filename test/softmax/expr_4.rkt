#lang rosette/safe

(require rake)
(init-logging "expr_4.runtimes")

(define-symbolic-buffer t29.widened.sum_exp_row.s1.r6$x.r24-buf int16_t)
(define t29.widened.sum_exp_row.s1.r6$x.r24 (load t29.widened.sum_exp_row.s1.r6$x.r24-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t29.widened.sum_exp_row.s1.r6$x.r24-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (let ([t326  (vec-mul
  (int32x128
   t29.widened.sum_exp_row.s1.r6$x.r24)
  (int32x128
   t29.widened.sum_exp_row.s1.r6$x.r24))])
  (int16x128
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x128 (int32_t (bv 1 32)))
       (vec-div
        t326
        (x128 (int32_t (bv 16384 32)))))
      (vec-div
       t326
       (x128 (int32_t (bv 32768 32)))))
     (x128 (int32_t (bv 32767 32))))
    (x128 (int32_t (bv -32768 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_4.out")