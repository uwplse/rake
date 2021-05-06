#lang rosette/safe

(require rake)

(define-symbolic-buffer rows int16_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t466 integer?)

(define axioms 
  (list ))

(define t129 (+  (*  t466  384)  (*  output.s0.x.x  256)))
(define t289 (load rows (ramp t129 1 64) (aligned 128 0)))
(define t290 (load rows (ramp (+ t129 64) 1 64) (aligned 128 64)))
(define t291 (concat_vectors
  t289
  t290))
(define t292 (load rows (ramp (+ t129 128) 1 64) (aligned 128 0)))
(define t293 (concat_vectors
  t290
  t292))
(define t294 (load rows (ramp (+ t129 192) 1 64) (aligned 128 64)))
(define t295 (concat_vectors
  t292
  t294))
(define t296.s (load rows (ramp (+ t129 256) 1 64) (aligned 128 0)))

(define halide-expr
 (uint8x256
  (vec-div
   (vec-add
    (vec-mul
     (concat_vectors
      (concat_vectors
       (slice_vectors
        t291 1 1 64)
       (slice_vectors
        t293 1 1 64))
      (concat_vectors
       (slice_vectors
        t295 1 1 64)
       (slice_vectors
        (concat_vectors
         t294
         t296.s) 1 1 64)))
     (x256 (int16_t (bv 4 16))))
    (vec-add
     (concat_vectors
      (concat_vectors
       t289
       t290)
      (concat_vectors
       t292
       t294))
     (vec-add
      (vec-mul
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t291 2 1 64)
         (slice_vectors
          t293 2 1 64))
        (concat_vectors
         (slice_vectors
          t295 2 1 64)
         (slice_vectors
          (concat_vectors
           t294
           t296.s) 2 1 64)))
       (x256 (int16_t (bv 6 16))))
      (vec-add
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t291 4 1 64)
         (slice_vectors
          t293 4 1 64))
        (concat_vectors
         (slice_vectors
          t295 4 1 64)
         (slice_vectors
          (concat_vectors
           t294
           t296.s) 4 1 64)))
       (vec-mul
        (concat_vectors
         (concat_vectors
          (slice_vectors
           t291 3 1 64)
          (slice_vectors
           t293 3 1 64))
         (concat_vectors
          (slice_vectors
           t295 3 1 64)
          (slice_vectors
           (concat_vectors
            t294
            t296.s) 3 1 64)))
        (x256 (int16_t (bv 4 16))))))))
   (x256 (int16_t (bv 256 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_11.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)