#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer t261.s-buf uint8_t)
(define-symbolic-buffer t259.s-buf uint8_t)
(define-symbolic-buffer t258-buf uint8_t)
(define-symbolic-buffer t260-buf uint8_t)
(define-symbolic-buffer t257.s-buf uint8_t)
(define-symbolic-buffer t256-buf uint8_t)
(define t261.s (load t261.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t259.s (load t259.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t258 (load t258-buf (ramp 0 1 128) (aligned 0 0)))
(define t260 (load t260-buf (ramp 0 1 128) (aligned 0 0)))
(define t257.s (load t257.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t256 (load t256-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t261.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t259.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t258-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t260-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t257.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t256-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t316  (concat_vectors
  t256
  t257.s)])
  (let ([t317   (concat_vectors
   t258
   t259.s)])
   (let ([t318    (concat_vectors
    t260
    t261.s)])
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
                   t256)
                  (x128 (int16_t (bv 4 16)))))
                (int32x128
                 (vec-mul
                  (int16x128
                   (uint16x128
                    (slice_vectors
                     t316 1 1 128)))
                  (int16x128
                   (x128 (int8_t (bv 7 8)))))))
               (int32x128
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t316 2 1 128)))
                 (int16x128
                  (x128 (int8_t (bv 10 8)))))))
              (int32x128
               (vec-mul
                (int16x128
                 (uint16x128
                  t258))
                (int16x128
                 (x128 (int8_t (bv 5 8)))))))
             (int32x128
              (vec-mul
               (int16x128
                (slice_vectors
                 t317 1 1 128))
               (x128 (int16_t (bv 8 16))))))
            (int32x128
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 t317 2 1 128)))
              (int16x128
               (x128 (int8_t (bv 11 8)))))))
           (int32x128
            (vec-mul
             (int16x128
              (uint16x128
               t260))
             (int16x128
              (x128 (int8_t (bv 6 8)))))))
          (int32x128
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               t318 1 1 128)))
            (int16x128
             (x128 (int8_t (bv 9 8)))))))
         (int32x128
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              t318 2 1 128)))
           (int16x128
            (x128 (int8_t (bv 12 8)))))))
        (x128 (int32_t (bv 16 32))))
       (x128 (int32_t (bv 255 32))))
      (x128 (int32_t (bv 0 32)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")