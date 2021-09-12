#lang rosette/safe

(require rake)
(init-logging "expr_41.runtimes")

(define-symbolic-buffer f28 uint8_t)
(define-symbolic-buffer sharpen_strength_x32 uint8_t)
(define-symbolic-buffer t2969.s-buf uint8_t)
(define-symbolic-buffer t2970.s-buf uint8_t)
(define-symbolic-buffer t2692.s-buf uint8_t)
(define-symbolic-buffer t2966-buf uint8_t)
(define-symbolic-buffer t2967-buf uint8_t)
(define-symbolic-buffer t2968-buf uint8_t)
(define t2969.s (load t2969.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t2970.s (load t2970.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t2692.s (load t2692.s-buf (ramp 0 1 256) (aligned 0 0)))
(define t2966 (load t2966-buf (ramp 0 1 128) (aligned 0 0)))
(define t2967 (load t2967-buf (ramp 0 1 128) (aligned 0 0)))
(define t2968 (load t2968-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t3201 integer?)
(define-symbolic processed.s0.v0.v0 integer?)

(define axioms 
  (list 
   (values-range-from t2969.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2970.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2692.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2966-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2967-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2968-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t2873 t3201)

(define halide-expr
 (let ([t3213  (slice_vectors
  t2692.s 1 1 128)])
  (let ([t3214   (int16x128
   t3213)])
   (let ([t3215    (concat_vectors
    t2966
    t2969.s)])
    (let ([t3216     (concat_vectors
     t2967
     t2970.s)])
     (uint8x128
      (vec-max
       (vec-min
        (vec-add
         (vec-div
          (vec-mul
           (vec-sub
            t3214
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
                                 t2966)
                                (uint16x128
                                 t2967))
                               (x128 (uint16_t (bv 1 16))))
                              (x128 (uint16_t (bv 2 16))))))
                           (uint16x128
                            t2968))
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
                                  t3215 2 1 128))
                                (uint16x128
                                 (slice_vectors
                                  t3216 2 1 128)))
                               (x128 (uint16_t (bv 1 16))))
                              (x128 (uint16_t (bv 2 16))))))
                           (uint16x128
                            (slice_vectors
                             (concat_vectors
                              t2968
                              (load f28 (ramp (+ (+ (* processed.s0.v0.v0 128) t2873) 128) 1 128) (aligned 128 0))) 2 1 128)))
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
                             t3215 1 1 128))
                           (uint16x128
                            (slice_vectors
                             t3216 1 1 128)))
                          (x128 (uint16_t (bv 1 16))))
                         (x128 (uint16_t (bv 2 16))))))
                      (uint16x128
                       t3213))
                     (x128 (uint16_t (bv 1 16))))
                    (x128 (uint16_t (bv 2 16)))))))
                (x128 (uint16_t (bv 1 16))))
               (x128 (uint16_t (bv 2 16)))))))
           (x128 (int16x1 (load-sca sharpen_strength_x32 0))))
          (x128 (int16_t (bv 32 16))))
         t3214)
        (x128 (int16_t (bv 255 16))))
       (x128 (int16_t (bv 0 16))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_41.out")