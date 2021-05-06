#lang rosette/safe

(require rake)

(define-symbolic-buffer f28 uint8_t)
(define-symbolic-buffer sharpen_strength_x32 uint8_t)
(define-symbolic processed.s0.v0.v0 integer?)
(define-symbolic t3280 integer?)
(define-symbolic t3250 integer?)
(define-symbolic t3279 integer?)
(define-symbolic t3251 integer?)
(define-symbolic t3249 integer?)
(define-symbolic t3277 integer?)

(define axioms 
  (list ))

(define t2878 t3249)
(define t2879 t3250)
(define t2880 t3251)
(define t2695 (+  (*  processed.s0.v0.v0  128)  (+  (*  t3277  512)  t2878)))
(define t2696.s (load f28 (ramp (+ t2695 512) 1 256) (aligned 128 0)))
(define t2698 (+  (*  processed.s0.v0.v0  128)  (+  (*  t3279  512)  t2880)))
(define t2699 (+  (*  processed.s0.v0.v0  128)  (+  (*  t3280  512)  t2879)))
(define t2976 (load f28 (ramp (+ t2698 512) 1 128) (aligned 128 0)))
(define t2977 (load f28 (ramp (+ t2699 512) 1 128) (aligned 128 0)))
(define t2978 (load f28 (ramp (+ t2695 512) 1 128) (aligned 128 0)))
(define t2979.s (load f28 (ramp (+ t2698 640) 1 128) (aligned 128 0)))
(define t2980.s (load f28 (ramp (+ t2699 640) 1 128) (aligned 128 0)))

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
          t2696.s 1 1 128))
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
                              (concat_vectors
                               t2976
                               t2979.s) 2 1 128))
                            (uint16x128
                             (slice_vectors
                              (concat_vectors
                               t2977
                               t2980.s) 2 1 128)))
                           (x128 (uint16_t (bv 1 16))))
                          (x128 (uint16_t (bv 2 16))))))
                       (uint16x128
                        (slice_vectors
                         (concat_vectors
                          t2978
                          (load f28 (ramp (+ t2695 640) 1 128) (aligned 128 0))) 2 1 128)))
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
                         (concat_vectors
                          t2976
                          t2979.s) 1 1 128))
                       (uint16x128
                        (slice_vectors
                         (concat_vectors
                          t2977
                          t2980.s) 1 1 128)))
                      (x128 (uint16_t (bv 1 16))))
                     (x128 (uint16_t (bv 2 16))))))
                  (uint16x128
                   (slice_vectors
                    t2696.s 1 1 128)))
                 (x128 (uint16_t (bv 1 16))))
                (x128 (uint16_t (bv 2 16)))))))
            (x128 (uint16_t (bv 1 16))))
           (x128 (uint16_t (bv 2 16)))))))
       (x128 (int16x1 (load-sca sharpen_strength_x32 0))))
      (x128 (int16_t (bv 32 16))))
     (int16x128
      (slice_vectors
       t2696.s 1 1 128)))
    (x128 (int16_t (bv 255 16))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_26.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)