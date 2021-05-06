#lang rosette/safe

(require rake)

(define-symbolic-buffer rows int16_t)
(define-symbolic output.s0.x.x integer?)

(define axioms 
  (list ))

(define t265 (load rows (ramp (* output.s0.x.x 256) 1 64) (aligned 256 0)))
(define t266 (load rows (ramp (+ (* output.s0.x.x 256) 64) 1 64) (aligned 256 64)))
(define t267 (concat_vectors
  t265
  t266))
(define t268 (load rows (ramp (+ (* output.s0.x.x 256) 128) 1 64) (aligned 256 128)))
(define t269 (concat_vectors
  t266
  t268))
(define t270 (load rows (ramp (+ (* output.s0.x.x 256) 192) 1 64) (aligned 256 192)))
(define t271 (concat_vectors
  t268
  t270))
(define t272.s (load rows (ramp (+ (* output.s0.x.x 256) 256) 1 64) (aligned 256 0)))

(define halide-expr
 (uint8x256
  (vec-div
   (vec-add
    (vec-mul
     (concat_vectors
      (concat_vectors
       (slice_vectors
        t267 1 1 64)
       (slice_vectors
        t269 1 1 64))
      (concat_vectors
       (slice_vectors
        t271 1 1 64)
       (slice_vectors
        (concat_vectors
         t270
         t272.s) 1 1 64)))
     (x256 (int16_t (bv 4 16))))
    (vec-add
     (concat_vectors
      (concat_vectors
       t265
       t266)
      (concat_vectors
       t268
       t270))
     (vec-add
      (vec-mul
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t267 2 1 64)
         (slice_vectors
          t269 2 1 64))
        (concat_vectors
         (slice_vectors
          t271 2 1 64)
         (slice_vectors
          (concat_vectors
           t270
           t272.s) 2 1 64)))
       (x256 (int16_t (bv 6 16))))
      (vec-add
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t267 4 1 64)
         (slice_vectors
          t269 4 1 64))
        (concat_vectors
         (slice_vectors
          t271 4 1 64)
         (slice_vectors
          (concat_vectors
           t270
           t272.s) 4 1 64)))
       (vec-mul
        (concat_vectors
         (concat_vectors
          (slice_vectors
           t267 3 1 64)
          (slice_vectors
           t269 3 1 64))
         (concat_vectors
          (slice_vectors
           t271 3 1 64)
          (slice_vectors
           (concat_vectors
            t270
            t272.s) 3 1 64)))
        (x256 (int16_t (bv 4 16))))))))
   (x256 (int16_t (bv 256 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_8.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)