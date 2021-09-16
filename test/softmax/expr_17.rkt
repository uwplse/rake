#lang rosette/safe

(require rake)
(init-logging "expr_17.runtimes")

(define-symbolic-buffer inv_sum_exp_row int16_t)
(define-symbolic-buffer t218-buf int16_t)
(define-symbolic-buffer t217-buf int16_t)
(define-symbolic-buffer t219-buf int16_t)
(define t218 (load t218-buf (ramp 0 1 128) (aligned 0 0)))
(define t217 (load t217-buf (ramp 0 1 128) (aligned 0 0)))
(define t219 (load t219-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var t579 int16_t)
(define-symbolic-var output_multiplier int16_t)
(define-symbolic-var output_shift uint16_t)

(define axioms 
  (list 
   (values-range-from t218-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t217-buf (int16x1  (int32_t (bv 0 32))) (int16x1  (int32_t (bv 32767 32))))
   (values-range-from t219-buf (int16x1  (int32_t (bv -32767 32))) (int16x1  (int32_t (bv 32767 32))))))


(define halide-expr
 (let ([t580  (vec-mul
  (int32x128
   t219)
  (int32x128
   t218))])
  (let ([t581   (int32x128
   (int16x128
    (vec-max
     (vec-min
      (vec-add
       (vec-bwand
        (x128 (int32_t (bv 1 32)))
        (vec-div
         t580
         (x128 (int32_t (bv 16384 32)))))
       (vec-div
        t580
        (x128 (int32_t (bv 32768 32)))))
      (x128 (int32_t (bv 32767 32))))
     (x128 (int32_t (bv -32768 32))))))])
   (let ([t582    (vec-mul
    (int32x128
     t217)
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
              t219))
            (x128 (int32_t (bv 16384 32)))))
          (vec-div
           (vec-mul
            (int32x128
             (x128 (int16_t (bv 7363 16))))
            (int32x128
             t219))
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
               t218))
             (x128 (int32_t (bv 16384 32)))))
           (vec-div
            (vec-mul
             (int32x128
              (x128 (int16_t (bv 22812 16))))
             (int32x128
              t218))
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
              t581)
             (x128 (int32_t (bv 16384 32)))))
           (vec-div
            (vec-mul
             (int32x128
              (x128 (int16_t (bv 2592 16))))
             t581)
            (x128 (int32_t (bv 32768 32)))))
          (x128 (int32_t (bv 32767 32))))
         (x128 (int32_t (bv -32768 32)))))))))])
    (let ([t583     (vec-mul
     (int32x128
      (int16x128
       (vec-max
        (vec-min
         (vec-add
          (int32x128
           t217)
          (int32x128
           (int16x128
            (vec-max
             (vec-min
              (vec-add
               (vec-bwand
                (x128 (int32_t (bv 1 32)))
                (vec-div
                 t582
                 (x128 (int32_t (bv 16384 32)))))
               (vec-div
                t582
                (x128 (int32_t (bv 32768 32)))))
              (x128 (int32_t (bv 32767 32))))
             (x128 (int32_t (bv -32768 32)))))))
         (x128 (int32_t (bv 32767 32))))
        (x128 (int32_t (bv -32768 32))))))
     (int32x128
      (x128 (load-sca inv_sum_exp_row 0))))])
     (let ([t584      (vec-mul
      (int32x128
       (int16x128
        (vec-max
         (vec-min
          (vec-add
           (vec-bwand
            (x128 (int32_t (bv 1 32)))
            (vec-div
             t583
             (x128 (int32_t (bv 16384 32)))))
           (vec-div
            t583
            (x128 (int32_t (bv 32768 32)))))
          (x128 (int32_t (bv 32767 32))))
         (x128 (int32_t (bv -32768 32))))))
      (int32x128
       (x128 output_multiplier)))])
      (let ([t585       (int16x128
       (vec-max
        (vec-min
         (vec-add
          (vec-bwand
           (x128 (int32_t (bv 1 32)))
           (vec-div
            t584
            (x128 (int32_t (bv 16384 32)))))
          (vec-div
           t584
           (x128 (int32_t (bv 32768 32)))))
         (x128 (int32_t (bv 32767 32))))
        (x128 (int32_t (bv -32768 32)))))])
       (uint8x128
        (vec-max
         (vec-min
          (int16x128
           (vec-max
            (vec-min
             (vec-add
              (int32x128
               (vec-add
                (vec-shr
                 t585
                 (x128 output_shift))
                (vec-bwand
                 (vec-if
                  (x128 (sca-lt (uint16_t (bv 0 16)) output_shift))
                  (x128 (int16_t (bv 1 16)))
                  (x128 (int16_t (bv 0 16))))
                 (vec-shr
                  t585
                  (x128 (sca-sub output_shift (uint16_t (bv 1 16))))))))
              (int32x128
               (x128 t579)))
             (x128 (int32_t (bv 32767 32))))
            (x128 (int32_t (bv -32768 32)))))
          (x128 (int16_t (bv 255 16))))
         (x128 (int16_t (bv 0 16))))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_17.out")