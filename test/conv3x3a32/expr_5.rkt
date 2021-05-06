#lang rosette/safe

(require rake)

(define-symbolic-buffer input_bounded uint8_t)
(define-symbolic-buffer mask int8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t287 integer?)
(define-symbolic t286 integer?)

(define axioms 
  (list ))

(define t160 (max  (*  t287  128)  (+  (*  t286  128)  2)))
(define t249 (load input_bounded (ramp (* (+ (quotient (+ t160 255) 128) output.s0.x.x) 128) 1 128) (aligned 128 0)))
(define t250.s (load input_bounded (ramp (+ (* (+ (quotient (+ t160 255) 128) output.s0.x.x) 128) 128) 1 128) (aligned 128 0)))
(define t251 (load input_bounded (ramp (* (+ (* (quotient (+ t160 255) 128) 2) output.s0.x.x) 128) 1 128) (aligned 128 0)))
(define t252.s (load input_bounded (ramp (+ (* (+ (* (quotient (+ t160 255) 128) 2) output.s0.x.x) 128) 128) 1 128) (aligned 128 0)))
(define t253 (load input_bounded (ramp (* (+ (* (quotient (+ t160 255) 128) 3) output.s0.x.x) 128) 1 128) (aligned 128 0)))
(define t254.s (load input_bounded (ramp (+ (* (+ (* (quotient (+ t160 255) 128) 3) output.s0.x.x) 128) 128) 1 128) (aligned 128 0)))

(define halide-expr
 (uint8x128
  (vec-max
   (vec-min
    (vec-div
     (vec-add
      (vec-add
       (vec-add
        (vec-add
         (vec-add
          (vec-add
           (vec-add
            (vec-add
             (int32x128
              (vec-mul
               (int16x128
                (uint16x128
                 t249))
               (int16x128
                (x128 (load-sca mask 0)))))
             (int32x128
              (vec-mul
               (int16x128
                (uint16x128
                 (slice_vectors
                  (concat_vectors
                   t249
                   t250.s) 1 1 128)))
               (int16x128
                (x128 (load-sca mask 1))))))
            (int32x128
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 (concat_vectors
                  t249
                  t250.s) 2 1 128)))
              (int16x128
               (x128 (load-sca mask 2))))))
           (int32x128
            (vec-mul
             (int16x128
              (uint16x128
               t251))
             (int16x128
              (x128 (load-sca mask 3))))))
          (int32x128
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               (concat_vectors
                t251
                t252.s) 1 1 128)))
            (int16x128
             (x128 (load-sca mask 4))))))
         (int32x128
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              (concat_vectors
               t251
               t252.s) 2 1 128)))
           (int16x128
            (x128 (load-sca mask 5))))))
        (int32x128
         (vec-mul
          (int16x128
           (uint16x128
            t253))
          (int16x128
           (x128 (load-sca mask 6))))))
       (int32x128
        (vec-mul
         (int16x128
          (uint16x128
           (slice_vectors
            (concat_vectors
             t253
             t254.s) 1 1 128)))
         (int16x128
          (x128 (load-sca mask 7))))))
      (int32x128
       (vec-mul
        (int16x128
         (uint16x128
          (slice_vectors
           (concat_vectors
            t253
            t254.s) 2 1 128)))
        (int16x128
         (x128 (load-sca mask 8))))))
     (x128 (int32_t (bv 16 32))))
    (x128 (int32_t (bv 255 32))))
   (x128 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_5.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)