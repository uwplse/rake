#lang rosette/safe

(require rake)

(define-symbolic-buffer rows int16_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t383 integer?)

(define axioms 
  (list ))

(define t127 (+  t383  (*  output.s0.x.x  2)))
(define t273 (load rows (ramp (* t127 128) 1 64) (aligned 128 0)))
(define t274 (load rows (ramp (+ (* t127 128) 64) 1 64) (aligned 128 64)))
(define t275 (concat_vectors
  t273
  t274))
(define t276 (load rows (ramp (+ (* t127 128) 128) 1 64) (aligned 128 0)))
(define t277 (concat_vectors
  t274
  t276))
(define t278 (load rows (ramp (+ (* t127 128) 192) 1 64) (aligned 128 64)))
(define t279 (concat_vectors
  t276
  t278))
(define t280.s (load rows (ramp (+ (* t127 128) 256) 1 64) (aligned 128 0)))

(define halide-expr
 (uint8x256
  (vec-div
   (vec-add
    (vec-mul
     (concat_vectors
      (concat_vectors
       (slice_vectors
        t275 1 1 64)
       (slice_vectors
        t277 1 1 64))
      (concat_vectors
       (slice_vectors
        t279 1 1 64)
       (slice_vectors
        (concat_vectors
         t278
         t280.s) 1 1 64)))
     (x256 (int16_t (bv 4 16))))
    (vec-add
     (concat_vectors
      (concat_vectors
       t273
       t274)
      (concat_vectors
       t276
       t278))
     (vec-add
      (vec-mul
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t275 2 1 64)
         (slice_vectors
          t277 2 1 64))
        (concat_vectors
         (slice_vectors
          t279 2 1 64)
         (slice_vectors
          (concat_vectors
           t278
           t280.s) 2 1 64)))
       (x256 (int16_t (bv 6 16))))
      (vec-add
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t275 4 1 64)
         (slice_vectors
          t277 4 1 64))
        (concat_vectors
         (slice_vectors
          t279 4 1 64)
         (slice_vectors
          (concat_vectors
           t278
           t280.s) 4 1 64)))
       (vec-mul
        (concat_vectors
         (concat_vectors
          (slice_vectors
           t275 3 1 64)
          (slice_vectors
           t277 3 1 64))
         (concat_vectors
          (slice_vectors
           t279 3 1 64)
          (slice_vectors
           (concat_vectors
            t278
            t280.s) 3 1 64)))
        (x256 (int16_t (bv 4 16))))))))
   (x256 (int16_t (bv 256 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_9.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)