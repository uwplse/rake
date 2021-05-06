#lang rosette/safe

(require rake)

(define-symbolic-buffer f28 uint8_t)
(define-symbolic-buffer sharpen_strength_x32 uint8_t)
(define-symbolic processed.s0.v0.v0 integer?)
(define-symbolic t3250 integer?)
(define-symbolic t3304 integer?)
(define-symbolic t3302 integer?)
(define-symbolic t3305 integer?)
(define-symbolic t3251 integer?)
(define-symbolic t3249 integer?)

(define axioms 
  (list ))

(define t2878 t3249)
(define t2879 t3250)
(define t2880 t3251)
(define t2701 (+  (*  processed.s0.v0.v0  128)  (+  (*  t3302  1024)  t2878)))
(define t2702.s (load f28 (ramp (+ t2701 1024) 1 256) (aligned 128 0)))
(define t2704 (+  (*  processed.s0.v0.v0  128)  (+  (*  t3304  1024)  t2880)))
(define t2705 (+  (*  processed.s0.v0.v0  128)  (+  (*  t3305  1024)  t2879)))
(define t2981 (load f28 (ramp (+ t2704 1024) 1 128) (aligned 128 0)))
(define t2982 (load f28 (ramp (+ t2705 1024) 1 128) (aligned 128 0)))
(define t2983 (load f28 (ramp (+ t2701 1024) 1 128) (aligned 128 0)))
(define t2984.s (load f28 (ramp (+ t2704 1152) 1 128) (aligned 128 0)))
(define t2985.s (load f28 (ramp (+ t2705 1152) 1 128) (aligned 128 0)))

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
          t2702.s 1 1 128))
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
                             t2981)
                            (uint16x128
                             t2982))
                           (x128 (uint16_t (bv 1 16))))
                          (x128 (uint16_t (bv 2 16))))))
                       (uint16x128
                        t2983))
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
                               t2981
                               t2984.s) 2 1 128))
                            (uint16x128
                             (slice_vectors
                              (concat_vectors
                               t2982
                               t2985.s) 2 1 128)))
                           (x128 (uint16_t (bv 1 16))))
                          (x128 (uint16_t (bv 2 16))))))
                       (uint16x128
                        (slice_vectors
                         (concat_vectors
                          t2983
                          (load f28 (ramp (+ t2701 1152) 1 128) (aligned 128 0))) 2 1 128)))
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
                          t2981
                          t2984.s) 1 1 128))
                       (uint16x128
                        (slice_vectors
                         (concat_vectors
                          t2982
                          t2985.s) 1 1 128)))
                      (x128 (uint16_t (bv 1 16))))
                     (x128 (uint16_t (bv 2 16))))))
                  (uint16x128
                   (slice_vectors
                    t2702.s 1 1 128)))
                 (x128 (uint16_t (bv 1 16))))
                (x128 (uint16_t (bv 2 16)))))))
            (x128 (uint16_t (bv 1 16))))
           (x128 (uint16_t (bv 2 16)))))))
       (x128 (int16x1 (load-sca sharpen_strength_x32 0))))
      (x128 (int16_t (bv 32 16))))
     (int16x128
      (slice_vectors
       t2702.s 1 1 128)))
    (x128 (int16_t (bv 255 16))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_27.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)