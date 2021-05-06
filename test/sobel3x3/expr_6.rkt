#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic-buffer c6 uint8_t)
(define-symbolic-buffer c7 uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t441 integer?)
(define-symbolic t440 integer?)

(define axioms 
  (list ))

(define t300 (max  (*  t441  128)  (+  (*  t440  128)  2)))
(define t254.s (load bounded_input (ramp (* (+ (* (quotient (+ t300 255) 128) 2) output.s0.x.x) 128) 1 128) (aligned 128 0)))
(define t255.s.s (load bounded_input (ramp (* (+ (* (quotient (+ t300 255) 128) 2) output.s0.x.x) 128) 1 256) (aligned 128 0)))
(define t257.s (load bounded_input (ramp (* (+ (* (quotient (+ t300 255) 128) 4) output.s0.x.x) 128) 1 128) (aligned 128 0)))
(define t258.s.s (load bounded_input (ramp (* (+ (* (quotient (+ t300 255) 128) 4) output.s0.x.x) 128) 1 256) (aligned 128 0)))
(define t419 (load bounded_input (ramp (* (+ (* (quotient (+ t300 255) 128) 3) output.s0.x.x) 128) 1 128) (aligned 128 0)))

(define halide-expr
 (uint8x128
  (vec-min
   (vec-add
    (vec-absd
     (vec-add
      (vec-add
       (vec-shl
        (uint16x128
         (slice_vectors
          (load c6 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t254.s))
      (uint16x128
       (slice_vectors
        t255.s.s 2 1 128)))
     (vec-add
      (vec-add
       (vec-shl
        (uint16x128
         (slice_vectors
          (load c7 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t257.s))
      (uint16x128
       (slice_vectors
        t258.s.s 2 1 128))))
    (vec-absd
     (vec-add
      (vec-add
       (vec-shl
        (uint16x128
         t419)
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t254.s))
      (uint16x128
       t257.s))
     (vec-add
      (vec-add
       (vec-shl
        (uint16x128
         (slice_vectors
          (concat_vectors
           t419
           (load bounded_input (ramp (+ (* (+ (* (quotient (+ t300 255) 128) 3) output.s0.x.x) 128) 128) 1 128) (aligned 128 0))) 2 1 128))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        (slice_vectors
         t255.s.s 2 1 128)))
      (uint16x128
       (slice_vectors
        t258.s.s 2 1 128)))))
   (x128 (uint16_t (bv 255 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_6.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)