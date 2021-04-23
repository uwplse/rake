#lang rosette/safe

(require rake)

(define-symbolic-buffer rows int16_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t482 integer?)

(define axioms 
  (list 
   (values-range-from rows (int16_t (bv 0 16)) (int16_t (bv 4080 16)))))

(define t108 (+   (*    t482    384)   (*    output.s0.x.x    256)))
(define t254 (load rows (ramp t108 1 64) (aligned 128 0)))
(define t255 (load rows (ramp (+  t108  64) 1 64) (aligned 128 64)))
(define t256 (concat_vectors
  t254
  t255))
(define t257 (load rows (ramp (+  t108  128) 1 64) (aligned 128 0)))
(define t258 (concat_vectors
  t255
  t257))
(define t259 (load rows (ramp (+  t108  192) 1 64) (aligned 128 64)))
(define t260 (concat_vectors
  t257
  t259))
(define t261.s (load rows (ramp (+  t108  256) 1 64) (aligned 128 0)))

(define halide-expr
 (uint8x256
  (vec-div
   (vec-add
    (vec-mul
     (concat_vectors
      (concat_vectors
       (slice_vectors
        t256 1 1 64)
       (slice_vectors
        t258 1 1 64))
      (concat_vectors
       (slice_vectors
        t260 1 1 64)
       (slice_vectors
        (concat_vectors
         t259
         t261.s) 1 1 64)))
     (x256 (int16_t (bv 4 16))))
    (vec-add
     (concat_vectors
      (concat_vectors
       t254
       t255)
      (concat_vectors
       t257
       t259))
     (vec-add
      (vec-mul
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t256 2 1 64)
         (slice_vectors
          t258 2 1 64))
        (concat_vectors
         (slice_vectors
          t260 2 1 64)
         (slice_vectors
          (concat_vectors
           t259
           t261.s) 2 1 64)))
       (x256 (int16_t (bv 6 16))))
      (vec-add
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t256 4 1 64)
         (slice_vectors
          t258 4 1 64))
        (concat_vectors
         (slice_vectors
          t260 4 1 64)
         (slice_vectors
          (concat_vectors
           t259
           t261.s) 4 1 64)))
       (vec-mul
        (concat_vectors
         (concat_vectors
          (slice_vectors
           t256 3 1 64)
          (slice_vectors
           t258 3 1 64))
         (concat_vectors
          (slice_vectors
           t260 3 1 64)
          (slice_vectors
           (concat_vectors
            t259
            t261.s) 3 1 64)))
        (x256 (int16_t (bv 4 16))))))))
   (x256 (int16_t (bv 256 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_7.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)