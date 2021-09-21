#lang rosette/safe

(require rake)
(init-logging "expr_35.runtimes")

(define-symbolic-buffer f28 uint8_t)
(define-symbolic-buffer t2692.s-buf uint8_t)
(define-symbolic-buffer t3001-buf uint8_t)
(define-symbolic-buffer t3002-buf uint8_t)
(define-symbolic-buffer t3003-buf uint8_t)
(define-symbolic-buffer t3005.s-buf uint8_t)
(define-symbolic-buffer t3004.s-buf uint8_t)
(define t2692.s (load t2692.s-buf (ramp 0 1 256) (aligned 0 0)))
(define t3001 (load t3001-buf (ramp 0 1 128) (aligned 0 0)))
(define t3002 (load t3002-buf (ramp 0 1 128) (aligned 0 0)))
(define t3003 (load t3003-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t3241 integer?)
(define t3005.s (load t3005.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t3004.s (load t3004.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic processed.s0.v0.v0 integer?)
(define-symbolic-var t3253 int16_t)

(define axioms 
  (list 
   (values-range-from t2692.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3001-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3002-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3003-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3005.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3004.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t2873 (var-lookup 't2873 t3241))

(define halide-expr
 (let ([t3254  (slice_vectors
  t2692.s 1 1 128)])
  (let ([t3255   (int16x128
   t3254)])
   (let ([t3256    (concat_vectors
    t3001
    t3004.s)])
    (let ([t3257     (concat_vectors
     t3002
     t3005.s)])
     (uint8x128
      (vec-max
       (vec-min
        (vec-add
         (vec-div
          (vec-mul
           (vec-sub
            t3255
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
                                 t3001)
                                (uint16x128
                                 t3002))
                               (x128 (uint16_t (bv 1 16))))
                              (x128 (uint16_t (bv 2 16))))))
                           (uint16x128
                            t3003))
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
                                  t3256 2 1 128))
                                (uint16x128
                                 (slice_vectors
                                  t3257 2 1 128)))
                               (x128 (uint16_t (bv 1 16))))
                              (x128 (uint16_t (bv 2 16))))))
                           (uint16x128
                            (slice_vectors
                             (concat_vectors
                              t3003
                              (load f28 (ramp (sca-add (sca-add (sca-mul processed.s0.v0.v0 128) t2873) 128) 1 128) (aligned 128 0))) 2 1 128)))
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
                             t3256 1 1 128))
                           (uint16x128
                            (slice_vectors
                             t3257 1 1 128)))
                          (x128 (uint16_t (bv 1 16))))
                         (x128 (uint16_t (bv 2 16))))))
                      (uint16x128
                       t3254))
                     (x128 (uint16_t (bv 1 16))))
                    (x128 (uint16_t (bv 2 16)))))))
                (x128 (uint16_t (bv 1 16))))
               (x128 (uint16_t (bv 2 16)))))))
           (x128 t3253))
          (x128 (int16_t (bv 32 16))))
         t3255)
        (x128 (int16_t (bv 255 16))))
       (x128 (int16_t (bv 0 16))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_35.out")