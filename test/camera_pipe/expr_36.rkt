#lang rosette/safe

(require rake)
(init-logging "expr_36.runtimes")

(define-symbolic-buffer f28 uint8_t)
(define-symbolic-buffer t3010.s-buf uint8_t)
(define-symbolic-buffer t3009.s-buf uint8_t)
(define-symbolic-buffer t3006-buf uint8_t)
(define-symbolic-buffer t3007-buf uint8_t)
(define-symbolic-buffer t3008-buf uint8_t)
(define-symbolic-buffer t2698.s-buf uint8_t)
(define-symbolic t3241 integer?)
(define t3010.s (load t3010.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t3259 integer?)
(define t3009.s (load t3009.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var t3268 int16_t)
(define-symbolic processed.s0.v0.v0 integer?)
(define t3006 (load t3006-buf (ramp 0 1 128) (aligned 0 0)))
(define t3007 (load t3007-buf (ramp 0 1 128) (aligned 0 0)))
(define t3008 (load t3008-buf (ramp 0 1 128) (aligned 0 0)))
(define t2698.s (load t2698.s-buf (ramp 0 1 256) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t3010.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3009.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3006-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3007-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3008-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2698.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t2873 (var-lookup 't2873 t3241))
(define t2697 (var-lookup 't2697 (sca-add  (sca-mul  processed.s0.v0.v0  128)  (sca-add  (sca-mul  t3259  512)  t2873))))

(define halide-expr
 (let ([t3269  (slice_vectors
  t2698.s 1 1 128)])
  (let ([t3270   (int16x128
   t3269)])
   (let ([t3271    (concat_vectors
    t3006
    t3009.s)])
    (let ([t3272     (concat_vectors
     t3007
     t3010.s)])
     (uint8x128
      (vec-max
       (vec-min
        (vec-add
         (vec-div
          (vec-mul
           (vec-sub
            t3270
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
                                 t3006)
                                (uint16x128
                                 t3007))
                               (x128 (uint16_t (bv 1 16))))
                              (x128 (uint16_t (bv 2 16))))))
                           (uint16x128
                            t3008))
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
                                  t3271 2 1 128))
                                (uint16x128
                                 (slice_vectors
                                  t3272 2 1 128)))
                               (x128 (uint16_t (bv 1 16))))
                              (x128 (uint16_t (bv 2 16))))))
                           (uint16x128
                            (slice_vectors
                             (concat_vectors
                              t3008
                              (load f28 (ramp (sca-add t2697 640) 1 128) (aligned 128 0))) 2 1 128)))
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
                             t3271 1 1 128))
                           (uint16x128
                            (slice_vectors
                             t3272 1 1 128)))
                          (x128 (uint16_t (bv 1 16))))
                         (x128 (uint16_t (bv 2 16))))))
                      (uint16x128
                       t3269))
                     (x128 (uint16_t (bv 1 16))))
                    (x128 (uint16_t (bv 2 16)))))))
                (x128 (uint16_t (bv 1 16))))
               (x128 (uint16_t (bv 2 16)))))))
           (x128 t3268))
          (x128 (int16_t (bv 32 16))))
         t3270)
        (x128 (int16_t (bv 255 16))))
       (x128 (int16_t (bv 0 16))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_36.out")