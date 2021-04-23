#lang rosette/safe

(require rake)

(define-symbolic-buffer rows int16_t)
(define-symbolic output.s0.x.x integer?)

(define axioms 
  (list 
   (values-range-from rows (int16_t (bv 0 16)) (int16_t (bv 4080 16)))))

(define t230 (load rows (ramp (*  output.s0.x.x  256) 1 64) (aligned 256 0)))
(define t231 (load rows (ramp (+  (*   output.s0.x.x   256)  64) 1 64) (aligned 256 64)))
(define t232 (concat_vectors
  t230
  t231))
(define t233 (load rows (ramp (+  (*   output.s0.x.x   256)  128) 1 64) (aligned 256 128)))
(define t234 (concat_vectors
  t231
  t233))
(define t235 (load rows (ramp (+  (*   output.s0.x.x   256)  192) 1 64) (aligned 256 192)))
(define t236 (concat_vectors
  t233
  t235))
(define t237.s (load rows (ramp (+  (*   output.s0.x.x   256)  256) 1 64) (aligned 256 0)))

(define halide-expr
 (uint8x256
  (vec-div
   (vec-add
    (vec-mul
     (concat_vectors
      (concat_vectors
       (slice_vectors
        t232 1 1 64)
       (slice_vectors
        t234 1 1 64))
      (concat_vectors
       (slice_vectors
        t236 1 1 64)
       (slice_vectors
        (concat_vectors
         t235
         t237.s) 1 1 64)))
     (x256 (int16_t (bv 4 16))))
    (vec-add
     (concat_vectors
      (concat_vectors
       t230
       t231)
      (concat_vectors
       t233
       t235))
     (vec-add
      (vec-mul
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t232 2 1 64)
         (slice_vectors
          t234 2 1 64))
        (concat_vectors
         (slice_vectors
          t236 2 1 64)
         (slice_vectors
          (concat_vectors
           t235
           t237.s) 2 1 64)))
       (x256 (int16_t (bv 6 16))))
      (vec-add
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t232 4 1 64)
         (slice_vectors
          t234 4 1 64))
        (concat_vectors
         (slice_vectors
          t236 4 1 64)
         (slice_vectors
          (concat_vectors
           t235
           t237.s) 4 1 64)))
       (vec-mul
        (concat_vectors
         (concat_vectors
          (slice_vectors
           t232 3 1 64)
          (slice_vectors
           t234 3 1 64))
         (concat_vectors
          (slice_vectors
           t236 3 1 64)
          (slice_vectors
           (concat_vectors
            t235
            t237.s) 3 1 64)))
        (x256 (int16_t (bv 4 16))))))))
   (x256 (int16_t (bv 256 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_4.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)