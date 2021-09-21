#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer t255.s-buf uint8_t)
(define-symbolic-buffer t250-buf uint8_t)
(define-symbolic-buffer t252-buf uint8_t)
(define-symbolic-buffer t254-buf uint8_t)
(define-symbolic-buffer t251.s-buf uint8_t)
(define-symbolic-buffer t253.s-buf uint8_t)
(define t255.s (load t255.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t250 (load t250-buf (ramp 0 1 128) (aligned 0 0)))
(define t252 (load t252-buf (ramp 0 1 128) (aligned 0 0)))
(define t254 (load t254-buf (ramp 0 1 128) (aligned 0 0)))
(define t251.s (load t251.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t253.s (load t253.s-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t255.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t250-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t252-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t254-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t251.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t253.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t307  (concat_vectors
  t250
  t251.s)])
  (let ([t308   (concat_vectors
   t252
   t253.s)])
   (let ([t309    (concat_vectors
    t254
    t255.s)])
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
                   t250)
                  (x128 (int16_t (bv 4 16)))))
                (int32x128
                 (vec-mul
                  (int16x128
                   (uint16x128
                    (slice_vectors
                     t307 1 1 128)))
                  (int16x128
                   (x128 (int8_t (bv 7 8)))))))
               (int32x128
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t307 2 1 128)))
                 (int16x128
                  (x128 (int8_t (bv 10 8)))))))
              (int32x128
               (vec-mul
                (int16x128
                 (uint16x128
                  t252))
                (int16x128
                 (x128 (int8_t (bv 5 8)))))))
             (int32x128
              (vec-mul
               (int16x128
                (slice_vectors
                 t308 1 1 128))
               (x128 (int16_t (bv 8 16))))))
            (int32x128
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 t308 2 1 128)))
              (int16x128
               (x128 (int8_t (bv 11 8)))))))
           (int32x128
            (vec-mul
             (int16x128
              (uint16x128
               t254))
             (int16x128
              (x128 (int8_t (bv 6 8)))))))
          (int32x128
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               t309 1 1 128)))
            (int16x128
             (x128 (int8_t (bv 9 8)))))))
         (int32x128
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              t309 2 1 128)))
           (int16x128
            (x128 (int8_t (bv 12 8)))))))
        (x128 (int32_t (bv 16 32))))
       (x128 (int32_t (bv 255 32))))
      (x128 (int32_t (bv 0 32)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")