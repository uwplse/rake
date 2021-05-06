#lang rosette/safe

(require rake)

(define-symbolic-buffer rows int32_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t107 integer?)
(define-symbolic t106 integer?)

(define axioms 
  (list ))

(define t17 (max  (*  t107  128)  (+  (*  t106  128)  6)))
(define t88 (load rows (ramp (* (+ (* (quotient (+ t17 255) 128) 3) output.s0.x.x) 128) 1 32) (aligned 128 0)))
(define t89 (load rows (ramp (+ (* (+ (* (quotient (+ t17 255) 128) 3) output.s0.x.x) 128) 32) 1 32) (aligned 128 32)))
(define t90 (concat_vectors
  t88
  t89))
(define t91 (load rows (ramp (+ (* (+ (* (quotient (+ t17 255) 128) 3) output.s0.x.x) 128) 64) 1 32) (aligned 128 64)))
(define t92 (concat_vectors
  t89
  t91))
(define t93 (load rows (ramp (+ (* (+ (* (quotient (+ t17 255) 128) 3) output.s0.x.x) 128) 96) 1 32) (aligned 128 96)))
(define t94 (concat_vectors
  t91
  t93))
(define t95.s (load rows (ramp (+ (* (+ (* (quotient (+ t17 255) 128) 3) output.s0.x.x) 128) 128) 1 32) (aligned 128 0)))

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
          t90 1 1 32)
         (slice_vectors
          t92 1 1 32))
        (concat_vectors
         (slice_vectors
          t94 1 1 32)
         (slice_vectors
          (concat_vectors
           t93
           t95.s) 1 1 32)))
       (x128 (int32_t (bv 6 32))))
      (vec-add
       (concat_vectors
        (concat_vectors
         t88
         t89)
        (concat_vectors
         t91
         t93))
       (vec-add
        (vec-mul
         (concat_vectors
          (concat_vectors
           (slice_vectors
            t90 2 1 32)
           (slice_vectors
            t92 2 1 32))
          (concat_vectors
           (slice_vectors
            t94 2 1 32)
           (slice_vectors
            (concat_vectors
             t93
             t95.s) 2 1 32)))
         (x128 (int32_t (bv 15 32))))
        (vec-add
         (vec-mul
          (concat_vectors
           (concat_vectors
            (slice_vectors
             t90 3 1 32)
            (slice_vectors
             t92 3 1 32))
           (concat_vectors
            (slice_vectors
             t94 3 1 32)
            (slice_vectors
             (concat_vectors
              t93
              t95.s) 3 1 32)))
          (x128 (int32_t (bv 20 32))))
         (vec-add
          (vec-mul
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t90 4 1 32)
             (slice_vectors
              t92 4 1 32))
            (concat_vectors
             (slice_vectors
              t94 4 1 32)
             (slice_vectors
              (concat_vectors
               t93
               t95.s) 4 1 32)))
           (x128 (int32_t (bv 15 32))))
          (vec-add
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t90 6 1 32)
             (slice_vectors
              t92 6 1 32))
            (concat_vectors
             (slice_vectors
              t94 6 1 32)
             (slice_vectors
              (concat_vectors
               t93
               t95.s) 6 1 32)))
           (vec-mul
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t90 5 1 32)
              (slice_vectors
               t92 5 1 32))
             (concat_vectors
              (slice_vectors
               t94 5 1 32)
              (slice_vectors
               (concat_vectors
                t93
                t95.s) 5 1 32)))
            (x128 (int32_t (bv 6 32))))))))))
     (x128 (int32_t (bv 4096 32))))
    (x128 (int32_t (bv 255 32))))
   (x128 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_7.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)