#lang rosette/safe

(require rake)

(define-symbolic-buffer rows int16_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t387 integer?)

(define axioms 
  (list 
   (values-range-from rows (int16_t (bv 0 16)) (int16_t (bv 4080 16)))))

(define t106 (+   t387   (*    output.s0.x.x    2)))
(define t238 (load rows (ramp (*  t106  128) 1 64) (aligned 128 0)))
(define t239 (load rows (ramp (+  (*   t106   128)  64) 1 64) (aligned 128 64)))
(define t240 (concat_vectors
  t238
  t239))
(define t241 (load rows (ramp (+  (*   t106   128)  128) 1 64) (aligned 128 0)))
(define t242 (concat_vectors
  t239
  t241))
(define t243 (load rows (ramp (+  (*   t106   128)  192) 1 64) (aligned 128 64)))
(define t244 (concat_vectors
  t241
  t243))
(define t245.s (load rows (ramp (+  (*   t106   128)  256) 1 64) (aligned 128 0)))

(define halide-expr
 (uint8x256
  (vec-div
   (vec-add
    (vec-mul
     (concat_vectors
      (concat_vectors
       (slice_vectors
        t240 1 1 64)
       (slice_vectors
        t242 1 1 64))
      (concat_vectors
       (slice_vectors
        t244 1 1 64)
       (slice_vectors
        (concat_vectors
         t243
         t245.s) 1 1 64)))
     (x256 (int16_t (bv 4 16))))
    (vec-add
     (concat_vectors
      (concat_vectors
       t238
       t239)
      (concat_vectors
       t241
       t243))
     (vec-add
      (vec-mul
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t240 2 1 64)
         (slice_vectors
          t242 2 1 64))
        (concat_vectors
         (slice_vectors
          t244 2 1 64)
         (slice_vectors
          (concat_vectors
           t243
           t245.s) 2 1 64)))
       (x256 (int16_t (bv 6 16))))
      (vec-add
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t240 4 1 64)
         (slice_vectors
          t242 4 1 64))
        (concat_vectors
         (slice_vectors
          t244 4 1 64)
         (slice_vectors
          (concat_vectors
           t243
           t245.s) 4 1 64)))
       (vec-mul
        (concat_vectors
         (concat_vectors
          (slice_vectors
           t240 3 1 64)
          (slice_vectors
           t242 3 1 64))
         (concat_vectors
          (slice_vectors
           t244 3 1 64)
          (slice_vectors
           (concat_vectors
            t243
            t245.s) 3 1 64)))
        (x256 (int16_t (bv 4 16))))))))
   (x256 (int16_t (bv 256 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_5.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)