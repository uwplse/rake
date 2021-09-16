#lang rosette/safe

(require rake)
(init-logging "expr_11.runtimes")

(define-symbolic-buffer inv_sum_exp_row int16_t)
(define-symbolic-buffer t212-buf int16_t)
(define-symbolic-buffer t213-buf int16_t)
(define-symbolic-buffer t211-buf int16_t)
(define-symbolic-var t515 int16_t)
(define t212 (load t212-buf (ramp 0 1 128) (aligned 0 0)))
(define t213 (load t213-buf (ramp 0 1 128) (aligned 0 0)))
(define t211 (load t211-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var output_multiplier int16_t)
(define-symbolic-var output_shift uint16_t)

(define axioms 
  (list 
   (values-range-from t212-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t213-buf (int16x1  (int32_t (bv -32767 32))) (int16x1  (int32_t (bv 32767 32))))
   (values-range-from t211-buf (int16x1  (int32_t (bv 0 32))) (int16x1  (int32_t (bv 32767 32))))))


(define halide-expr
 (let ([t516  (vec-mul
  (int32x128
   t213)
  (int32x128
   t212))])
  (let ([t517   (int32x128
   (int16x128
    (vec-max
     (vec-min
      (vec-add
       (vec-bwand
        (x128 (int32_t (bv 1 32)))
        (vec-div
         t516
         (x128 (int32_t (bv 16384 32)))))
       (vec-div
        t516
        (x128 (int32_t (bv 32768 32)))))
      (x128 (int32_t (bv 32767 32))))
     (x128 (int32_t (bv -32768 32))))))])
   (let ([t518    (vec-mul
    (int32x128
     t211)
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
              t213))
            (x128 (int32_t (bv 16384 32)))))
          (vec-div
           (vec-mul
            (int32x128
             (x128 (int16_t (bv 7363 16))))
            (int32x128
             t213))
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
               t212))
             (x128 (int32_t (bv 16384 32)))))
           (vec-div
            (vec-mul
             (int32x128
              (x128 (int16_t (bv 22812 16))))
             (int32x128
              t212))
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
              t517)
             (x128 (int32_t (bv 16384 32)))))
           (vec-div
            (vec-mul
             (int32x128
              (x128 (int16_t (bv 2592 16))))
             t517)
            (x128 (int32_t (bv 32768 32)))))
          (x128 (int32_t (bv 32767 32))))
         (x128 (int32_t (bv -32768 32)))))))))])
    (let ([t519     (vec-mul
     (int32x128
      (int16x128
       (vec-max
        (vec-min
         (vec-add
          (int32x128
           t211)
          (int32x128
           (int16x128
            (vec-max
             (vec-min
              (vec-add
               (vec-bwand
                (x128 (int32_t (bv 1 32)))
                (vec-div
                 t518
                 (x128 (int32_t (bv 16384 32)))))
               (vec-div
                t518
                (x128 (int32_t (bv 32768 32)))))
              (x128 (int32_t (bv 32767 32))))
             (x128 (int32_t (bv -32768 32)))))))
         (x128 (int32_t (bv 32767 32))))
        (x128 (int32_t (bv -32768 32))))))
     (int32x128
      (x128 (load-sca inv_sum_exp_row 0))))])
     (let ([t520      (vec-mul
      (int32x128
       (int16x128
        (vec-max
         (vec-min
          (vec-add
           (vec-bwand
            (x128 (int32_t (bv 1 32)))
            (vec-div
             t519
             (x128 (int32_t (bv 16384 32)))))
           (vec-div
            t519
            (x128 (int32_t (bv 32768 32)))))
          (x128 (int32_t (bv 32767 32))))
         (x128 (int32_t (bv -32768 32))))))
      (int32x128
       (x128 output_multiplier)))])
      (let ([t521       (int16x128
       (vec-max
        (vec-min
         (vec-add
          (vec-bwand
           (x128 (int32_t (bv 1 32)))
           (vec-div
            t520
            (x128 (int32_t (bv 16384 32)))))
          (vec-div
           t520
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
                 t521
                 (x128 output_shift))
                (vec-bwand
                 (vec-if
                  (x128 (sca-lt (uint16_t (bv 0 16)) output_shift))
                  (x128 (int16_t (bv 1 16)))
                  (x128 (int16_t (bv 0 16))))
                 (vec-shr
                  t521
                  (x128 (sca-sub output_shift (uint16_t (bv 1 16))))))))
              (int32x128
               (x128 t515)))
             (x128 (int32_t (bv 32767 32))))
            (x128 (int32_t (bv -32768 32)))))
          (x128 (int16_t (bv 255 16))))
         (x128 (int16_t (bv 0 16))))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_11.out")