#lang rosette/safe

(require rake)
(init-logging "expr_6.runtimes")

(define-symbolic-buffer mask int8_t)
(define-symbolic-buffer t242.s-buf uint8_t)
(define-symbolic-buffer t244.s-buf uint8_t)
(define-symbolic-buffer t243-buf uint8_t)
(define-symbolic-buffer t239-buf uint8_t)
(define-symbolic-buffer t241-buf uint8_t)
(define-symbolic-buffer t240.s-buf uint8_t)
(define t242.s (load t242.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t244.s (load t244.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t243 (load t243-buf (ramp 0 1 128) (aligned 0 0)))
(define t239 (load t239-buf (ramp 0 1 128) (aligned 0 0)))
(define t241 (load t241-buf (ramp 0 1 128) (aligned 0 0)))
(define t240.s (load t240.s-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t242.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t244.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t243-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t239-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t241-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t240.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t303  (concat_vectors
  t239
  t240.s)])
  (let ([t304   (concat_vectors
   t241
   t242.s)])
   (let ([t305    (concat_vectors
    t243
    t244.s)])
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
                    t239))
                  (int16x128
                   (x128 (load-sca mask 0)))))
                (int32x128
                 (vec-mul
                  (int16x128
                   (uint16x128
                    (slice_vectors
                     t303 1 1 128)))
                  (int16x128
                   (x128 (load-sca mask 1))))))
               (int32x128
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t303 2 1 128)))
                 (int16x128
                  (x128 (load-sca mask 2))))))
              (int32x128
               (vec-mul
                (int16x128
                 (uint16x128
                  t241))
                (int16x128
                 (x128 (load-sca mask 3))))))
             (int32x128
              (vec-mul
               (int16x128
                (uint16x128
                 (slice_vectors
                  t304 1 1 128)))
               (int16x128
                (x128 (load-sca mask 4))))))
            (int32x128
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 t304 2 1 128)))
              (int16x128
               (x128 (load-sca mask 5))))))
           (int32x128
            (vec-mul
             (int16x128
              (uint16x128
               t243))
             (int16x128
              (x128 (load-sca mask 6))))))
          (int32x128
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               t305 1 1 128)))
            (int16x128
             (x128 (load-sca mask 7))))))
         (int32x128
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              t305 2 1 128)))
           (int16x128
            (x128 (load-sca mask 8))))))
        (x128 (int32_t (bv 16 32))))
       (x128 (int32_t (bv 255 32))))
      (x128 (int32_t (bv 0 32)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_6.out")