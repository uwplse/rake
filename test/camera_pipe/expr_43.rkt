#lang rosette/safe

(require rake)
(init-logging "expr_43.runtimes")

(define-symbolic-buffer f28 uint8_t)
(define-symbolic-buffer sharpen_strength_x32 uint8_t)
(define-symbolic-buffer t2704.s-buf uint8_t)
(define-symbolic-buffer t2979.s-buf uint8_t)
(define-symbolic-buffer t2976-buf uint8_t)
(define-symbolic-buffer t2977-buf uint8_t)
(define-symbolic-buffer t2978-buf uint8_t)
(define-symbolic-buffer t2980.s-buf uint8_t)
(define t2704.s (load t2704.s-buf (ramp 0 1 256) (aligned 0 0)))
(define t2979.s (load t2979.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t2976 (load t2976-buf (ramp 0 1 128) (aligned 0 0)))
(define t2977 (load t2977-buf (ramp 0 1 128) (aligned 0 0)))
(define t2978 (load t2978-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t3201 integer?)
(define-symbolic t3232 integer?)
(define t2980.s (load t2980.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic processed.s0.v0.v0 integer?)

(define axioms 
  (list 
   (values-range-from t2704.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2979.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2976-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2977-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2978-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2980.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t2873 t3201)
(define t2703 (+  (*  processed.s0.v0.v0  128)  (+  (*  t3232  1024)  t2873)))

(define halide-expr
 (let ([t3241  (slice_vectors
  t2704.s 1 1 128)])
  (let ([t3242   (int16x128
   t3241)])
   (let ([t3243    (concat_vectors
    t2976
    t2979.s)])
    (let ([t3244     (concat_vectors
     t2977
     t2980.s)])
     (uint8x128
      (vec-max
       (vec-min
        (vec-add
         (vec-div
          (vec-mul
           (vec-sub
            t3242
            (int16x128
             (uint8x128
              (vec-div
               (vec-add
                (vec-add
                 (uint16x128
                  (uint8x128
                   (vec-div
                    (vec-add
                     (vec-add
                      (uint16x128
                       (uint8x128
                        (vec-div
                         (vec-add
                          (vec-add
                           (uint16x128
                            (uint8x128
                             (vec-div
                              (vec-add
                               (vec-add
                                (uint16x128
                                 t2976)
                                (uint16x128
                                 t2977))
                               (x128 (uint16_t (bv 1 16))))
                              (x128 (uint16_t (bv 2 16))))))
                           (uint16x128
                            t2978))
                          (x128 (uint16_t (bv 1 16))))
                         (x128 (uint16_t (bv 2 16))))))
                      (uint16x128
                       (uint8x128
                        (vec-div
                         (vec-add
                          (vec-add
                           (uint16x128
                            (uint8x128
                             (vec-div
                              (vec-add
                               (vec-add
                                (uint16x128
                                 (slice_vectors
                                  t3243 2 1 128))
                                (uint16x128
                                 (slice_vectors
                                  t3244 2 1 128)))
                               (x128 (uint16_t (bv 1 16))))
                              (x128 (uint16_t (bv 2 16))))))
                           (uint16x128
                            (slice_vectors
                             (concat_vectors
                              t2978
                              (load f28 (ramp (+ t2703 1152) 1 128) (aligned 128 0))) 2 1 128)))
                          (x128 (uint16_t (bv 1 16))))
                         (x128 (uint16_t (bv 2 16)))))))
                     (x128 (uint16_t (bv 1 16))))
                    (x128 (uint16_t (bv 2 16))))))
                 (uint16x128
                  (uint8x128
                   (vec-div
                    (vec-add
                     (vec-add
                      (uint16x128
                       (uint8x128
                        (vec-div
                         (vec-add
                          (vec-add
                           (uint16x128
                            (slice_vectors
                             t3243 1 1 128))
                           (uint16x128
                            (slice_vectors
                             t3244 1 1 128)))
                          (x128 (uint16_t (bv 1 16))))
                         (x128 (uint16_t (bv 2 16))))))
                      (uint16x128
                       t3241))
                     (x128 (uint16_t (bv 1 16))))
                    (x128 (uint16_t (bv 2 16)))))))
                (x128 (uint16_t (bv 1 16))))
               (x128 (uint16_t (bv 2 16)))))))
           (x128 (int16x1 (load-sca sharpen_strength_x32 0))))
          (x128 (int16_t (bv 32 16))))
         t3242)
        (x128 (int16_t (bv 255 16))))
       (x128 (int16_t (bv 0 16))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_43.out")