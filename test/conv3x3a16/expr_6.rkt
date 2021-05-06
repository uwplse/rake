#lang rosette/safe

(require rake)

(define-symbolic-buffer input_bounded uint8_t)
(define-symbolic-buffer mask int8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t302 integer?)
(define-symbolic t301 integer?)

(define axioms 
  (list ))

(define t175 (max  (*  t302  128)  (+  (*  t301  128)  2)))
(define t270 (load input_bounded (ramp (* (+ (* (quotient (+ t175 255) 128) 2) output.s0.x.x) 128) 1 128) (aligned 128 0)))
(define t271.s (load input_bounded (ramp (+ (* (+ (* (quotient (+ t175 255) 128) 2) output.s0.x.x) 128) 128) 1 128) (aligned 128 0)))
(define t272 (load input_bounded (ramp (* (+ (* (quotient (+ t175 255) 128) 3) output.s0.x.x) 128) 1 128) (aligned 128 0)))
(define t273.s (load input_bounded (ramp (+ (* (+ (* (quotient (+ t175 255) 128) 3) output.s0.x.x) 128) 128) 1 128) (aligned 128 0)))
(define t274 (load input_bounded (ramp (* (+ (* (quotient (+ t175 255) 128) 4) output.s0.x.x) 128) 1 128) (aligned 128 0)))
(define t275.s (load input_bounded (ramp (+ (* (+ (* (quotient (+ t175 255) 128) 4) output.s0.x.x) 128) 128) 1 128) (aligned 128 0)))

(define halide-expr
 (uint8x128
  (vec-max
   (vec-min
    (vec-div
     (vec-add
      (vec-mul
       (int16x128
        (uint16x128
         (slice_vectors
          (concat_vectors
           t270
           t271.s) 1 1 128)))
       (int16x128
        (x128 (load-sca mask 1))))
      (vec-add
       (vec-mul
        (int16x128
         (uint16x128
          t270))
        (int16x128
         (x128 (load-sca mask 0))))
       (vec-add
        (vec-mul
         (int16x128
          (uint16x128
           (slice_vectors
            (concat_vectors
             t270
             t271.s) 2 1 128)))
         (int16x128
          (x128 (load-sca mask 2))))
        (vec-add
         (vec-mul
          (int16x128
           (uint16x128
            t272))
          (int16x128
           (x128 (load-sca mask 3))))
         (vec-add
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              (concat_vectors
               t272
               t273.s) 1 1 128)))
           (int16x128
            (x128 (load-sca mask 4))))
          (vec-add
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               (concat_vectors
                t272
                t273.s) 2 1 128)))
            (int16x128
             (x128 (load-sca mask 5))))
           (vec-add
            (vec-mul
             (int16x128
              (uint16x128
               t274))
             (int16x128
              (x128 (load-sca mask 6))))
            (vec-add
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 (concat_vectors
                  t274
                  t275.s) 2 1 128)))
              (int16x128
               (x128 (load-sca mask 8))))
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 (concat_vectors
                  t274
                  t275.s) 1 1 128)))
              (int16x128
               (x128 (load-sca mask 7))))))))))))
     (x128 (int16_t (bv 16 16))))
    (x128 (int16_t (bv 255 16))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_6.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)