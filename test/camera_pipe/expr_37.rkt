#lang rosette/safe

(require rake)
(init-logging "expr_37.runtimes")

(define-symbolic-buffer f28 uint8_t)
(define-symbolic-buffer t3015.s-buf uint8_t)
(define-symbolic-buffer t3013-buf uint8_t)
(define-symbolic-buffer t3011-buf uint8_t)
(define-symbolic-buffer t3012-buf uint8_t)
(define-symbolic-buffer t2704.s-buf uint8_t)
(define-symbolic-buffer t3014.s-buf uint8_t)
(define t3015.s (load t3015.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t3013 (load t3013-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var t3283 int16_t)
(define-symbolic t3241 integer?)
(define t3011 (load t3011-buf (ramp 0 1 128) (aligned 0 0)))
(define t3012 (load t3012-buf (ramp 0 1 128) (aligned 0 0)))
(define t2704.s (load t2704.s-buf (ramp 0 1 256) (aligned 0 0)))
(define-symbolic processed.s0.v0.v0 integer?)
(define-symbolic t3274 integer?)
(define t3014.s (load t3014.s-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t3015.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3013-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3011-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3012-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2704.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3014.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t2873 (var-lookup 't2873 t3241))
(define t2703 (var-lookup 't2703 (sca-add  (sca-mul  processed.s0.v0.v0  128)  (sca-add  (sca-mul  t3274  1024)  t2873))))

(define halide-expr
 (let ([t3284  (slice_vectors
  t2704.s 1 1 128)])
  (let ([t3285   (int16x128
   t3284)])
   (let ([t3286    (concat_vectors
    t3011
    t3014.s)])
    (let ([t3287     (concat_vectors
     t3012
     t3015.s)])
     (uint8x128
      (vec-max
       (vec-min
        (vec-add
         (vec-div
          (vec-mul
           (vec-sub
            t3285
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
                                 t3011)
                                (uint16x128
                                 t3012))
                               (x128 (uint16_t (bv 1 16))))
                              (x128 (uint16_t (bv 2 16))))))
                           (uint16x128
                            t3013))
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
                                  t3286 2 1 128))
                                (uint16x128
                                 (slice_vectors
                                  t3287 2 1 128)))
                               (x128 (uint16_t (bv 1 16))))
                              (x128 (uint16_t (bv 2 16))))))
                           (uint16x128
                            (slice_vectors
                             (concat_vectors
                              t3013
                              (load f28 (ramp (sca-add t2703 1152) 1 128) (aligned 128 0))) 2 1 128)))
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
                             t3286 1 1 128))
                           (uint16x128
                            (slice_vectors
                             t3287 1 1 128)))
                          (x128 (uint16_t (bv 1 16))))
                         (x128 (uint16_t (bv 2 16))))))
                      (uint16x128
                       t3284))
                     (x128 (uint16_t (bv 1 16))))
                    (x128 (uint16_t (bv 2 16)))))))
                (x128 (uint16_t (bv 1 16))))
               (x128 (uint16_t (bv 2 16)))))))
           (x128 t3283))
          (x128 (int16_t (bv 32 16))))
         t3285)
        (x128 (int16_t (bv 255 16))))
       (x128 (int16_t (bv 0 16))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_37.out")