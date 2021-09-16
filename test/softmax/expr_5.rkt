#lang rosette/safe

(require rake)
(init-logging "expr_5.runtimes")

(define-symbolic-buffer t29.widened.sum_exp_row.s1.r6$x.r24-buf int16_t)
(define-symbolic-buffer t28.widened.sum_exp_row.s1.r6$x.r24-buf int16_t)
(define-symbolic-buffer t30.widened.sum_exp_row.s1.r6$x.r24-buf int16_t)
(define t29.widened.sum_exp_row.s1.r6$x.r24 (load t29.widened.sum_exp_row.s1.r6$x.r24-buf (ramp 0 1 128) (aligned 0 0)))
(define t28.widened.sum_exp_row.s1.r6$x.r24 (load t28.widened.sum_exp_row.s1.r6$x.r24-buf (ramp 0 1 128) (aligned 0 0)))
(define t30.widened.sum_exp_row.s1.r6$x.r24 (load t30.widened.sum_exp_row.s1.r6$x.r24-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t29.widened.sum_exp_row.s1.r6$x.r24-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t28.widened.sum_exp_row.s1.r6$x.r24-buf (int16x1  (int32_t (bv 0 32))) (int16x1  (int32_t (bv 32767 32))))
   (values-range-from t30.widened.sum_exp_row.s1.r6$x.r24-buf (int16x1  (int32_t (bv -32767 32))) (int16x1  (int32_t (bv 32767 32))))))


(define halide-expr
 (let ([t327  (vec-mul
  (int32x128
   t30.widened.sum_exp_row.s1.r6$x.r24)
  (int32x128
   t29.widened.sum_exp_row.s1.r6$x.r24))])
  (let ([t328   (int32x128
   (int16x128
    (vec-max
     (vec-min
      (vec-add
       (vec-bwand
        (x128 (int32_t (bv 1 32)))
        (vec-div
         t327
         (x128 (int32_t (bv 16384 32)))))
       (vec-div
        t327
        (x128 (int32_t (bv 32768 32)))))
      (x128 (int32_t (bv 32767 32))))
     (x128 (int32_t (bv -32768 32))))))])
   (let ([t329    (vec-mul
    (int32x128
     t28.widened.sum_exp_row.s1.r6$x.r24)
    (int32x128
     (vec-add
      (int16x128
       (vec-max
        (vec-min
         (vec-add
          (vec-bwand
           (x128 (int32_t (bv 1 32)))
           (vec-div
            (vec-mul
             (int32x128
              (x128 (int16_t (bv 7363 16))))
             (int32x128
              t30.widened.sum_exp_row.s1.r6$x.r24))
            (x128 (int32_t (bv 16384 32)))))
          (vec-div
           (vec-mul
            (int32x128
             (x128 (int16_t (bv 7363 16))))
            (int32x128
             t30.widened.sum_exp_row.s1.r6$x.r24))
           (x128 (int32_t (bv 32768 32)))))
         (x128 (int32_t (bv 32767 32))))
        (x128 (int32_t (bv -32768 32)))))
      (vec-add
       (int16x128
        (vec-max
         (vec-min
          (vec-add
           (vec-bwand
            (x128 (int32_t (bv 1 32)))
            (vec-div
             (vec-mul
              (int32x128
               (x128 (int16_t (bv 22812 16))))
              (int32x128
               t29.widened.sum_exp_row.s1.r6$x.r24))
             (x128 (int32_t (bv 16384 32)))))
           (vec-div
            (vec-mul
             (int32x128
              (x128 (int16_t (bv 22812 16))))
             (int32x128
              t29.widened.sum_exp_row.s1.r6$x.r24))
            (x128 (int32_t (bv 32768 32)))))
          (x128 (int32_t (bv 32767 32))))
         (x128 (int32_t (bv -32768 32)))))
       (int16x128
        (vec-max
         (vec-min
          (vec-add
           (vec-bwand
            (x128 (int32_t (bv 1 32)))
            (vec-div
             (vec-mul
              (int32x128
               (x128 (int16_t (bv 2592 16))))
              t328)
             (x128 (int32_t (bv 16384 32)))))
           (vec-div
            (vec-mul
             (int32x128
              (x128 (int16_t (bv 2592 16))))
             t328)
            (x128 (int32_t (bv 32768 32)))))
          (x128 (int32_t (bv 32767 32))))
         (x128 (int32_t (bv -32768 32)))))))))])
    (int32x128
     (int16x128
      (vec-max
       (vec-min
        (vec-add
         (int32x128
          t28.widened.sum_exp_row.s1.r6$x.r24)
         (int32x128
          (int16x128
           (vec-max
            (vec-min
             (vec-add
              (vec-bwand
               (x128 (int32_t (bv 1 32)))
               (vec-div
                t329
                (x128 (int32_t (bv 16384 32)))))
              (vec-div
               t329
               (x128 (int32_t (bv 32768 32)))))
             (x128 (int32_t (bv 32767 32))))
            (x128 (int32_t (bv -32768 32)))))))
        (x128 (int32_t (bv 32767 32))))
       (x128 (int32_t (bv -32768 32))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_5.out")