#lang rosette/safe

(require rake)

(define-symbolic-buffer f28 uint8_t)
(define-symbolic-buffer sharpen_strength_x32 uint8_t)
(define-symbolic processed.s0.v0.v0 integer?)
(define-symbolic t4448 integer?)
(define-symbolic t4449 integer?)
(define-symbolic t4443 integer?)

(define axioms 
  (list 
   (values-range-from f28 (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from sharpen_strength_x32 (uint8x1
  (sca-max
   (sca-min
    (sca-mul
     sharpen_strength
     32.000000)
    255.000000)
   0.000000)) (uint8x1
  (sca-max
   (sca-min
    (sca-mul
     sharpen_strength
     32.000000)
    255.000000)
   0.000000)))))

(define t3965 t4443)
(define t3738.s (load f28 (ramp (+  (*   processed.s0.v0.v0   128)  t3965) 1 256) (aligned 128 0)))
(define t3767 (+   (*    t4448    -128)   (+    (*     processed.s0.v0.v0     128)    t3965)))
(define t3768 (+   (*    t4449    128)   (+    (*     processed.s0.v0.v0     128)    t3965)))
(define t4071 (load f28 (ramp (+  t3768  128) 1 128) (aligned 128 0)))
(define t4072 (load f28 (ramp (+  (*   processed.s0.v0.v0   128)  t3965) 1 128) (aligned 128 0)))
(define t4073.s (load f28 (ramp (+  t3768  256) 1 128) (aligned 128 0)))

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
          t3738.s 1 1 128))
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
                             (load f28 (ramp (+  t3767  -128) 1 128) (aligned 1 0)))
                            (uint16x128
                             t4071))
                           (x128 (uint16_t (bv 1 16))))
                          (x128 (uint16_t (bv 2 16))))))
                       (uint16x128
                        t4072))
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
                             (load f28 (ramp (+  t3767  -126) 1 128) (aligned 1 0)))
                            (uint16x128
                             (slice_vectors
                              (concat_vectors
                               t4071
                               t4073.s) 2 1 128)))
                           (x128 (uint16_t (bv 1 16))))
                          (x128 (uint16_t (bv 2 16))))))
                       (uint16x128
                        (slice_vectors
                         (concat_vectors
                          t4072
                          (load f28 (ramp (+  (+   (*    processed.s0.v0.v0    128)   t3965)  128) 1 128) (aligned 128 0))) 2 1 128)))
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
                        (load f28 (ramp (+  t3767  -127) 1 128) (aligned 1 0)))
                       (uint16x128
                        (slice_vectors
                         (concat_vectors
                          t4071
                          t4073.s) 1 1 128)))
                      (x128 (uint16_t (bv 1 16))))
                     (x128 (uint16_t (bv 2 16))))))
                  (uint16x128
                   (slice_vectors
                    t3738.s 1 1 128)))
                 (x128 (uint16_t (bv 1 16))))
                (x128 (uint16_t (bv 2 16)))))))
            (x128 (uint16_t (bv 1 16))))
           (x128 (uint16_t (bv 2 16)))))))
       (x128 (int16x1
 (halide-buffer-ref sharpen_strength_x32 0))))
      (x128 (int16_t (bv 32 16))))
     (int16x128
      (slice_vectors
       t3738.s 1 1 128)))
    (x128 (int16_t (bv 255 16))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_25.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)