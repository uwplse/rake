#lang rosette/safe

(require rake)
(init-logging "expr_42.runtimes")

(define-symbolic-buffer f28 uint8_t)
(define-symbolic-buffer sharpen_strength_x32 uint8_t)
(define-symbolic-buffer t2975.s-buf uint8_t)
(define-symbolic-buffer t2698.s-buf uint8_t)
(define-symbolic-buffer t2974.s-buf uint8_t)
(define-symbolic-buffer t2971-buf uint8_t)
(define-symbolic-buffer t2972-buf uint8_t)
(define-symbolic-buffer t2973-buf uint8_t)
(define t2975.s (load t2975.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t2698.s (load t2698.s-buf (ramp 0 1 256) (aligned 0 0)))
(define t2974.s (load t2974.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t3218 integer?)
(define-symbolic t3201 integer?)
(define t2971 (load t2971-buf (ramp 0 1 128) (aligned 0 0)))
(define t2972 (load t2972-buf (ramp 0 1 128) (aligned 0 0)))
(define t2973 (load t2973-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic processed.s0.v0.v0 integer?)

(define axioms 
  (list 
   (values-range-from t2975.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2698.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2974.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2971-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2972-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2973-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t2873 t3201)
(define t2697 (+  (*  processed.s0.v0.v0  128)  (+  (*  t3218  512)  t2873)))

(define halide-expr
 (let ([t3227  (slice_vectors
  t2698.s 1 1 128)])
  (let ([t3228   (int16x128
   t3227)])
   (let ([t3229    (concat_vectors
    t2971
    t2974.s)])
    (let ([t3230     (concat_vectors
     t2972
     t2975.s)])
     (uint8x128
      (vec-max
       (vec-min
        (vec-add
         (vec-div
          (vec-mul
           (vec-sub
            t3228
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
                                 t2971)
                                (uint16x128
                                 t2972))
                               (x128 (uint16_t (bv 1 16))))
                              (x128 (uint16_t (bv 2 16))))))
                           (uint16x128
                            t2973))
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
                                  t3229 2 1 128))
                                (uint16x128
                                 (slice_vectors
                                  t3230 2 1 128)))
                               (x128 (uint16_t (bv 1 16))))
                              (x128 (uint16_t (bv 2 16))))))
                           (uint16x128
                            (slice_vectors
                             (concat_vectors
                              t2973
                              (load f28 (ramp (+ t2697 640) 1 128) (aligned 128 0))) 2 1 128)))
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
                             t3229 1 1 128))
                           (uint16x128
                            (slice_vectors
                             t3230 1 1 128)))
                          (x128 (uint16_t (bv 1 16))))
                         (x128 (uint16_t (bv 2 16))))))
                      (uint16x128
                       t3227))
                     (x128 (uint16_t (bv 1 16))))
                    (x128 (uint16_t (bv 2 16)))))))
                (x128 (uint16_t (bv 1 16))))
               (x128 (uint16_t (bv 2 16)))))))
           (x128 (int16x1 (load-sca sharpen_strength_x32 0))))
          (x128 (int16_t (bv 32 16))))
         t3228)
        (x128 (int16_t (bv 255 16))))
       (x128 (int16_t (bv 0 16))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_42.out")