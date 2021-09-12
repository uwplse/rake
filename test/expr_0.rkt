#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer t245.s-buf uint8_t)
(define-symbolic-buffer t244-buf uint8_t)
(define-symbolic-buffer t246-buf uint8_t)
(define-symbolic-buffer t248-buf uint8_t)
(define-symbolic-buffer t249.s-buf uint8_t)
(define-symbolic-buffer t247.s-buf uint8_t)
(define t245.s (load t245.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t244 (load t244-buf (ramp 0 1 128) (aligned 0 0)))
(define t246 (load t246-buf (ramp 0 1 128) (aligned 0 0)))
(define t248 (load t248-buf (ramp 0 1 128) (aligned 0 0)))
(define t249.s (load t249.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t247.s (load t247.s-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t245.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t244-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t246-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t248-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t249.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t247.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t298  (concat_vectors
  t244
  t245.s)])
  (let ([t299   (concat_vectors
   t246
   t247.s)])
   (let ([t300    (concat_vectors
    t248
    t249.s)])
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
                   t244)
                  (x128 (int16_t (bv 4 16)))))
                (int32x128
                 (vec-mul
                  (int16x128
                   (uint16x128
                    (slice_vectors
                     t298 1 1 128)))
                  (int16x128
                   (x128 (int8_t (bv 7 8)))))))
               (int32x128
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t298 2 1 128)))
                 (int16x128
                  (x128 (int8_t (bv 10 8)))))))
              (int32x128
               (vec-mul
                (int16x128
                 (uint16x128
                  t246))
                (int16x128
                 (x128 (int8_t (bv 5 8)))))))
             (int32x128
              (vec-mul
               (int16x128
                (slice_vectors
                 t299 1 1 128))
               (x128 (int16_t (bv 8 16))))))
            (int32x128
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 t299 2 1 128)))
              (int16x128
               (x128 (int8_t (bv 11 8)))))))
           (int32x128
            (vec-mul
             (int16x128
              (uint16x128
               t248))
             (int16x128
              (x128 (int8_t (bv 6 8)))))))
          (int32x128
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               t300 1 1 128)))
            (int16x128
             (x128 (int8_t (bv 9 8)))))))
         (int32x128
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              t300 2 1 128)))
           (int16x128
            (x128 (int8_t (bv 12 8)))))))
        (x128 (int32_t (bv 16 32))))
       (x128 (int32_t (bv 255 32))))
      (x128 (int32_t (bv 0 32)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")