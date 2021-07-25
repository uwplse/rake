#lang rosette/safe

(require rake)
(init-logging "expr_7.runtimes")

(define-symbolic-buffer mask int8_t)
(define-symbolic-buffer t249-buf uint8_t)
(define-symbolic-buffer t250.s-buf uint8_t)
(define-symbolic-buffer t245-buf uint8_t)
(define-symbolic-buffer t247-buf uint8_t)
(define-symbolic-buffer t246.s-buf uint8_t)
(define-symbolic-buffer t248.s-buf uint8_t)
(define t249 (load t249-buf (ramp 0 1 128) (aligned 0 0)))
(define t250.s (load t250.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t245 (load t245-buf (ramp 0 1 128) (aligned 0 0)))
(define t247 (load t247-buf (ramp 0 1 128) (aligned 0 0)))
(define t246.s (load t246.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t248.s (load t248.s-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t249-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t250.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t245-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t247-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t246.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t248.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t312  (concat_vectors
  t245
  t246.s)])
  (let ([t313   (concat_vectors
   t247
   t248.s)])
   (let ([t314    (concat_vectors
    t249
    t250.s)])
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
                   (uint16x128
                    t245))
                  (int16x128
                   (x128 (load-sca mask 0)))))
                (int32x128
                 (vec-mul
                  (int16x128
                   (uint16x128
                    (slice_vectors
                     t312 1 1 128)))
                  (int16x128
                   (x128 (load-sca mask 1))))))
               (int32x128
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t312 2 1 128)))
                 (int16x128
                  (x128 (load-sca mask 2))))))
              (int32x128
               (vec-mul
                (int16x128
                 (uint16x128
                  t247))
                (int16x128
                 (x128 (load-sca mask 3))))))
             (int32x128
              (vec-mul
               (int16x128
                (uint16x128
                 (slice_vectors
                  t313 1 1 128)))
               (int16x128
                (x128 (load-sca mask 4))))))
            (int32x128
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 t313 2 1 128)))
              (int16x128
               (x128 (load-sca mask 5))))))
           (int32x128
            (vec-mul
             (int16x128
              (uint16x128
               t249))
             (int16x128
              (x128 (load-sca mask 6))))))
          (int32x128
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               t314 1 1 128)))
            (int16x128
             (x128 (load-sca mask 7))))))
         (int32x128
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              t314 2 1 128)))
           (int16x128
            (x128 (load-sca mask 8))))))
        (x128 (int32_t (bv 16 32))))
       (x128 (int32_t (bv 255 32))))
      (x128 (int32_t (bv 0 32)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_7.out")