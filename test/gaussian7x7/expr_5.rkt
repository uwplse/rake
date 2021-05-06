#lang rosette/safe

(require rake)

(define-symbolic-buffer rows int32_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t107 integer?)
(define-symbolic t106 integer?)

(define axioms 
  (list ))

(define t17 (max  (*  t107  128)  (+  (*  t106  128)  6)))
(define t72 (load rows (ramp (* (+ (quotient (+ t17 255) 128) output.s0.x.x) 128) 1 32) (aligned 128 0)))
(define t73 (load rows (ramp (+ (* (+ (quotient (+ t17 255) 128) output.s0.x.x) 128) 32) 1 32) (aligned 128 32)))
(define t74 (concat_vectors
  t72
  t73))
(define t75 (load rows (ramp (+ (* (+ (quotient (+ t17 255) 128) output.s0.x.x) 128) 64) 1 32) (aligned 128 64)))
(define t76 (concat_vectors
  t73
  t75))
(define t77 (load rows (ramp (+ (* (+ (quotient (+ t17 255) 128) output.s0.x.x) 128) 96) 1 32) (aligned 128 96)))
(define t78 (concat_vectors
  t75
  t77))
(define t79.s (load rows (ramp (+ (* (+ (quotient (+ t17 255) 128) output.s0.x.x) 128) 128) 1 32) (aligned 128 0)))

(define halide-expr
 (uint8x128
  (vec-max
   (vec-min
    (vec-div
     (vec-add
      (vec-mul
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t74 1 1 32)
         (slice_vectors
          t76 1 1 32))
        (concat_vectors
         (slice_vectors
          t78 1 1 32)
         (slice_vectors
          (concat_vectors
           t77
           t79.s) 1 1 32)))
       (x128 (int32_t (bv 6 32))))
      (vec-add
       (concat_vectors
        (concat_vectors
         t72
         t73)
        (concat_vectors
         t75
         t77))
       (vec-add
        (vec-mul
         (concat_vectors
          (concat_vectors
           (slice_vectors
            t74 2 1 32)
           (slice_vectors
            t76 2 1 32))
          (concat_vectors
           (slice_vectors
            t78 2 1 32)
           (slice_vectors
            (concat_vectors
             t77
             t79.s) 2 1 32)))
         (x128 (int32_t (bv 15 32))))
        (vec-add
         (vec-mul
          (concat_vectors
           (concat_vectors
            (slice_vectors
             t74 3 1 32)
            (slice_vectors
             t76 3 1 32))
           (concat_vectors
            (slice_vectors
             t78 3 1 32)
            (slice_vectors
             (concat_vectors
              t77
              t79.s) 3 1 32)))
          (x128 (int32_t (bv 20 32))))
         (vec-add
          (vec-mul
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t74 4 1 32)
             (slice_vectors
              t76 4 1 32))
            (concat_vectors
             (slice_vectors
              t78 4 1 32)
             (slice_vectors
              (concat_vectors
               t77
               t79.s) 4 1 32)))
           (x128 (int32_t (bv 15 32))))
          (vec-add
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t74 6 1 32)
             (slice_vectors
              t76 6 1 32))
            (concat_vectors
             (slice_vectors
              t78 6 1 32)
             (slice_vectors
              (concat_vectors
               t77
               t79.s) 6 1 32)))
           (vec-mul
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t74 5 1 32)
              (slice_vectors
               t76 5 1 32))
             (concat_vectors
              (slice_vectors
               t78 5 1 32)
              (slice_vectors
               (concat_vectors
                t77
                t79.s) 5 1 32)))
            (x128 (int32_t (bv 6 32))))))))))
     (x128 (int32_t (bv 4096 32))))
    (x128 (int32_t (bv 255 32))))
   (x128 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_5.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)