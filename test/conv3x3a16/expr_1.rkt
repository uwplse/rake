#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer mask int8_t)
(define-symbolic-buffer t252.s-buf uint8_t)
(define-symbolic-buffer t254.s-buf uint8_t)
(define-symbolic-buffer t256.s-buf uint8_t)
(define-symbolic-buffer t251-buf uint8_t)
(define-symbolic-buffer t253-buf uint8_t)
(define-symbolic-buffer t255-buf uint8_t)
(define t252.s (load t252.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t254.s (load t254.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t256.s (load t256.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t251 (load t251-buf (ramp 0 1 128) (aligned 0 0)))
(define t253 (load t253-buf (ramp 0 1 128) (aligned 0 0)))
(define t255 (load t255-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t252.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t254.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t256.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t251-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t253-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t255-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t312  (concat_vectors
  t251
  t252.s)])
  (let ([t313   (concat_vectors
   t253
   t254.s)])
   (let ([t314    (concat_vectors
    t255
    t256.s)])
    (uint8x128
     (vec-max
      (vec-min
       (vec-div
        (vec-add
         (vec-mul
          (int16x128
           (uint16x128
            (slice_vectors
             t312 1 1 128)))
          (int16x128
           (x128 (load-sca mask 1))))
         (vec-add
          (vec-mul
           (int16x128
            (uint16x128
             t251))
           (int16x128
            (x128 (load-sca mask 0))))
          (vec-add
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               t312 2 1 128)))
            (int16x128
             (x128 (load-sca mask 2))))
           (vec-add
            (vec-mul
             (int16x128
              (uint16x128
               t253))
             (int16x128
              (x128 (load-sca mask 3))))
            (vec-add
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 t313 1 1 128)))
              (int16x128
               (x128 (load-sca mask 4))))
             (vec-add
              (vec-mul
               (int16x128
                (uint16x128
                 (slice_vectors
                  t313 2 1 128)))
               (int16x128
                (x128 (load-sca mask 5))))
              (vec-add
               (vec-mul
                (int16x128
                 (uint16x128
                  t255))
                (int16x128
                 (x128 (load-sca mask 6))))
               (vec-add
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t314 2 1 128)))
                 (int16x128
                  (x128 (load-sca mask 8))))
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t314 1 1 128)))
                 (int16x128
                  (x128 (load-sca mask 7))))))))))))
        (x128 (int16_t (bv 16 16))))
       (x128 (int16_t (bv 255 16))))
      (x128 (int16_t (bv 0 16)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")