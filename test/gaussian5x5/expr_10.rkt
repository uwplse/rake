#lang rosette/safe

(require rake)

(define-symbolic-buffer rows int16_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t316 integer?)
(define-symbolic t315 integer?)

(define axioms 
  (list ))

(define t167 (max  (*  t316  256)  (+  (*  t315  256)  132)))
(define t281 (load rows (ramp (* (+ (quotient (+ t167 255) 128) output.s0.x.x) 256) 1 64) (aligned 256 0)))
(define t282 (load rows (ramp (+ (* (+ (quotient (+ t167 255) 128) output.s0.x.x) 256) 64) 1 64) (aligned 256 64)))
(define t283 (concat_vectors
  t281
  t282))
(define t284 (load rows (ramp (+ (* (+ (quotient (+ t167 255) 128) output.s0.x.x) 256) 128) 1 64) (aligned 256 128)))
(define t285 (concat_vectors
  t282
  t284))
(define t286 (load rows (ramp (+ (* (+ (quotient (+ t167 255) 128) output.s0.x.x) 256) 192) 1 64) (aligned 256 192)))
(define t287 (concat_vectors
  t284
  t286))
(define t288.s (load rows (ramp (+ (* (+ (quotient (+ t167 255) 128) output.s0.x.x) 256) 256) 1 64) (aligned 256 0)))

(define halide-expr
 (uint8x256
  (vec-div
   (vec-add
    (vec-mul
     (concat_vectors
      (concat_vectors
       (slice_vectors
        t283 1 1 64)
       (slice_vectors
        t285 1 1 64))
      (concat_vectors
       (slice_vectors
        t287 1 1 64)
       (slice_vectors
        (concat_vectors
         t286
         t288.s) 1 1 64)))
     (x256 (int16_t (bv 4 16))))
    (vec-add
     (concat_vectors
      (concat_vectors
       t281
       t282)
      (concat_vectors
       t284
       t286))
     (vec-add
      (vec-mul
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t283 2 1 64)
         (slice_vectors
          t285 2 1 64))
        (concat_vectors
         (slice_vectors
          t287 2 1 64)
         (slice_vectors
          (concat_vectors
           t286
           t288.s) 2 1 64)))
       (x256 (int16_t (bv 6 16))))
      (vec-add
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t283 4 1 64)
         (slice_vectors
          t285 4 1 64))
        (concat_vectors
         (slice_vectors
          t287 4 1 64)
         (slice_vectors
          (concat_vectors
           t286
           t288.s) 4 1 64)))
       (vec-mul
        (concat_vectors
         (concat_vectors
          (slice_vectors
           t283 3 1 64)
          (slice_vectors
           t285 3 1 64))
         (concat_vectors
          (slice_vectors
           t287 3 1 64)
          (slice_vectors
           (concat_vectors
            t286
            t288.s) 3 1 64)))
        (x256 (int16_t (bv 4 16))))))))
   (x256 (int16_t (bv 256 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_10.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)