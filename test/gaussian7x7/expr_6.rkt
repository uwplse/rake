#lang rosette/safe

(require rake)

(define-symbolic-buffer rows int32_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t107 integer?)
(define-symbolic t106 integer?)

(define axioms 
  (list ))

(define t17 (max  (*  t107  128)  (+  (*  t106  128)  6)))
(define t80 (load rows (ramp (* (+ (* (quotient (+ t17 255) 128) 2) output.s0.x.x) 128) 1 32) (aligned 128 0)))
(define t81 (load rows (ramp (+ (* (+ (* (quotient (+ t17 255) 128) 2) output.s0.x.x) 128) 32) 1 32) (aligned 128 32)))
(define t82 (concat_vectors
  t80
  t81))
(define t83 (load rows (ramp (+ (* (+ (* (quotient (+ t17 255) 128) 2) output.s0.x.x) 128) 64) 1 32) (aligned 128 64)))
(define t84 (concat_vectors
  t81
  t83))
(define t85 (load rows (ramp (+ (* (+ (* (quotient (+ t17 255) 128) 2) output.s0.x.x) 128) 96) 1 32) (aligned 128 96)))
(define t86 (concat_vectors
  t83
  t85))
(define t87.s (load rows (ramp (+ (* (+ (* (quotient (+ t17 255) 128) 2) output.s0.x.x) 128) 128) 1 32) (aligned 128 0)))

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
          t82 1 1 32)
         (slice_vectors
          t84 1 1 32))
        (concat_vectors
         (slice_vectors
          t86 1 1 32)
         (slice_vectors
          (concat_vectors
           t85
           t87.s) 1 1 32)))
       (x128 (int32_t (bv 6 32))))
      (vec-add
       (concat_vectors
        (concat_vectors
         t80
         t81)
        (concat_vectors
         t83
         t85))
       (vec-add
        (vec-mul
         (concat_vectors
          (concat_vectors
           (slice_vectors
            t82 2 1 32)
           (slice_vectors
            t84 2 1 32))
          (concat_vectors
           (slice_vectors
            t86 2 1 32)
           (slice_vectors
            (concat_vectors
             t85
             t87.s) 2 1 32)))
         (x128 (int32_t (bv 15 32))))
        (vec-add
         (vec-mul
          (concat_vectors
           (concat_vectors
            (slice_vectors
             t82 3 1 32)
            (slice_vectors
             t84 3 1 32))
           (concat_vectors
            (slice_vectors
             t86 3 1 32)
            (slice_vectors
             (concat_vectors
              t85
              t87.s) 3 1 32)))
          (x128 (int32_t (bv 20 32))))
         (vec-add
          (vec-mul
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t82 4 1 32)
             (slice_vectors
              t84 4 1 32))
            (concat_vectors
             (slice_vectors
              t86 4 1 32)
             (slice_vectors
              (concat_vectors
               t85
               t87.s) 4 1 32)))
           (x128 (int32_t (bv 15 32))))
          (vec-add
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t82 6 1 32)
             (slice_vectors
              t84 6 1 32))
            (concat_vectors
             (slice_vectors
              t86 6 1 32)
             (slice_vectors
              (concat_vectors
               t85
               t87.s) 6 1 32)))
           (vec-mul
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t82 5 1 32)
              (slice_vectors
               t84 5 1 32))
             (concat_vectors
              (slice_vectors
               t86 5 1 32)
              (slice_vectors
               (concat_vectors
                t85
                t87.s) 5 1 32)))
            (x128 (int32_t (bv 6 32))))))))))
     (x128 (int32_t (bv 4096 32))))
    (x128 (int32_t (bv 255 32))))
   (x128 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_6.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)