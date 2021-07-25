#lang rosette/safe

(require rake)
(init-logging "expr_4.runtimes")

(define-symbolic-buffer mask int8_t)
(define-symbolic-buffer t232.s-buf uint8_t)
(define-symbolic-buffer t228.s-buf uint8_t)
(define-symbolic-buffer t230.s-buf uint8_t)
(define-symbolic-buffer t231-buf uint8_t)
(define-symbolic-buffer t227-buf uint8_t)
(define-symbolic-buffer t229-buf uint8_t)
(define t232.s (load t232.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t228.s (load t228.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t230.s (load t230.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t231 (load t231-buf (ramp 0 1 128) (aligned 0 0)))
(define t227 (load t227-buf (ramp 0 1 128) (aligned 0 0)))
(define t229 (load t229-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t232.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t228.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t230.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t231-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t227-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t229-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t285  (concat_vectors
  t227
  t228.s)])
  (let ([t286   (concat_vectors
   t229
   t230.s)])
   (let ([t287    (concat_vectors
    t231
    t232.s)])
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
                    t227))
                  (int16x128
                   (x128 (load-sca mask 0)))))
                (int32x128
                 (vec-mul
                  (int16x128
                   (uint16x128
                    (slice_vectors
                     t285 1 1 128)))
                  (int16x128
                   (x128 (load-sca mask 1))))))
               (int32x128
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t285 2 1 128)))
                 (int16x128
                  (x128 (load-sca mask 2))))))
              (int32x128
               (vec-mul
                (int16x128
                 (uint16x128
                  t229))
                (int16x128
                 (x128 (load-sca mask 3))))))
             (int32x128
              (vec-mul
               (int16x128
                (uint16x128
                 (slice_vectors
                  t286 1 1 128)))
               (int16x128
                (x128 (load-sca mask 4))))))
            (int32x128
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 t286 2 1 128)))
              (int16x128
               (x128 (load-sca mask 5))))))
           (int32x128
            (vec-mul
             (int16x128
              (uint16x128
               t231))
             (int16x128
              (x128 (load-sca mask 6))))))
          (int32x128
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               t287 1 1 128)))
            (int16x128
             (x128 (load-sca mask 7))))))
         (int32x128
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              t287 2 1 128)))
           (int16x128
            (x128 (load-sca mask 8))))))
        (x128 (int32_t (bv 16 32))))
       (x128 (int32_t (bv 255 32))))
      (x128 (int32_t (bv 0 32)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_4.out")