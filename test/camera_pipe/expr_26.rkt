#lang rosette/safe

(require rake)

(define-symbolic-buffer f28 uint8_t)
(define-symbolic-buffer sharpen_strength_x32 uint8_t)
(define-symbolic processed.s0.v0.v0 integer?)
(define-symbolic t4141 integer?)
(define-symbolic t4473 integer?)
(define-symbolic t4443 integer?)
(define-symbolic t4472 integer?)

(define axioms 
  (list 
   (values-range-from f28 (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from sharpen_strength_x32 (uint8x1  (sca-max
  (sca-min
   (sca-mul
    sharpen_strength
    32.000000)
   255.000000)
  0.000000)) (uint8x1  (sca-max
  (sca-min
   (sca-mul
    sharpen_strength
    32.000000)
   255.000000)
  0.000000)))))

(define f28.stride.2 t4141)
(define t3965 t4443)
(define t3744.s (load f28 (ramp (+  (+   (*    processed.s0.v0.v0    128)   t3965)  f28.stride.2) 1 256) (aligned 128 0)))
(define t3746 (+   (+    (*     t4472     -128)    f28.stride.2)   (+    (*     processed.s0.v0.v0     128)    t3965)))
(define t3747 (+   (+    (*     t4473     128)    f28.stride.2)   (+    (*     processed.s0.v0.v0     128)    t3965)))
(define t4075 (load f28 (ramp (+  t3747  128) 1 128) (aligned 128 0)))
(define t4076 (load f28 (ramp (+  (+   (*    processed.s0.v0.v0    128)   t3965)  f28.stride.2) 1 128) (aligned 128 0)))
(define t4077.s (load f28 (ramp (+  t3747  256) 1 128) (aligned 128 0)))

(define halide-expr
 (uint8x128
  (vec-max
   (vec-min
    (vec-add
     (vec-div
      (vec-mul
       (vec-sub
        (int16x128
         (slice_vectors
          t3744.s 1 1 128))
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
                             (load f28 (ramp (+  t3746  -128) 1 128) (aligned 1 0)))
                            (uint16x128
                             t4075))
                           (x128 (uint16_t (bv 1 16))))
                          (x128 (uint16_t (bv 2 16))))))
                       (uint16x128
                        t4076))
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
                             (load f28 (ramp (+  t3746  -126) 1 128) (aligned 1 0)))
                            (uint16x128
                             (slice_vectors
                              (concat_vectors
                               t4075
                               t4077.s) 2 1 128)))
                           (x128 (uint16_t (bv 1 16))))
                          (x128 (uint16_t (bv 2 16))))))
                       (uint16x128
                        (slice_vectors
                         (concat_vectors
                          t4076
                          (load f28 (ramp (+  (+   (+    (*     processed.s0.v0.v0     128)    t3965)   f28.stride.2)  128) 1 128) (aligned 128 0))) 2 1 128)))
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
                        (load f28 (ramp (+  t3746  -127) 1 128) (aligned 1 0)))
                       (uint16x128
                        (slice_vectors
                         (concat_vectors
                          t4075
                          t4077.s) 1 1 128)))
                      (x128 (uint16_t (bv 1 16))))
                     (x128 (uint16_t (bv 2 16))))))
                  (uint16x128
                   (slice_vectors
                    t3744.s 1 1 128)))
                 (x128 (uint16_t (bv 1 16))))
                (x128 (uint16_t (bv 2 16)))))))
            (x128 (uint16_t (bv 1 16))))
           (x128 (uint16_t (bv 2 16)))))))
       (x128 (int16x1 (load-sca sharpen_strength_x32 0))))
      (x128 (int16_t (bv 32 16))))
     (int16x128
      (slice_vectors
       t3744.s 1 1 128)))
    (x128 (int16_t (bv 255 16))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_26.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)