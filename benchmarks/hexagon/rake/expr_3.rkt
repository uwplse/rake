#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer t265.s-buf uint8_t)
(define-symbolic-buffer t266-buf uint8_t)
(define-symbolic-buffer t267.s-buf uint8_t)
(define-symbolic-buffer t262-buf uint8_t)
(define-symbolic-buffer t263.s-buf uint8_t)
(define-symbolic-buffer t264-buf uint8_t)
(define t265.s (load t265.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t266 (load t266-buf (ramp 0 1 128) (aligned 0 0)))
(define t267.s (load t267.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t262 (load t262-buf (ramp 0 1 128) (aligned 0 0)))
(define t263.s (load t263.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t264 (load t264-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t265.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t266-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t267.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t262-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t263.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t264-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t325  (concat_vectors
  t262
  t263.s)])
  (let ([t326   (concat_vectors
   t264
   t265.s)])
   (let ([t327    (concat_vectors
    t266
    t267.s)])
    (uint8x128
     (vec-max
      (vec-min
       (vec-div
        (vec-add
         (vec-add
          (vec-add
           (vec-add
            (vec-add
             (vec-add
              (vec-add
               (vec-add
                (int32x128
                 (vec-mul
                  (int16x128
                   t262)
                  (x128 (int16_t (bv 4 16)))))
                (int32x128
                 (vec-mul
                  (int16x128
                   (uint16x128
                    (slice_vectors
                     t325 1 1 128)))
                  (int16x128
                   (x128 (int8_t (bv 7 8)))))))
               (int32x128
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t325 2 1 128)))
                 (int16x128
                  (x128 (int8_t (bv 10 8)))))))
              (int32x128
               (vec-mul
                (int16x128
                 (uint16x128
                  t264))
                (int16x128
                 (x128 (int8_t (bv 5 8)))))))
             (int32x128
              (vec-mul
               (int16x128
                (slice_vectors
                 t326 1 1 128))
               (x128 (int16_t (bv 8 16))))))
            (int32x128
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 t326 2 1 128)))
              (int16x128
               (x128 (int8_t (bv 11 8)))))))
           (int32x128
            (vec-mul
             (int16x128
              (uint16x128
               t266))
             (int16x128
              (x128 (int8_t (bv 6 8)))))))
          (int32x128
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               t327 1 1 128)))
            (int16x128
             (x128 (int8_t (bv 9 8)))))))
         (int32x128
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              t327 2 1 128)))
           (int16x128
            (x128 (int8_t (bv 12 8)))))))
        (x128 (int32_t (bv 16 32))))
       (x128 (int32_t (bv 255 32))))
      (x128 (int32_t (bv 0 32)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")