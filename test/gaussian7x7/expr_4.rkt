#lang rosette/safe

(require rake)

(define-symbolic-buffer rows int32_t)
(define-symbolic output.s0.x.x integer?)

(define axioms 
  (list ))

(define t64 (load rows (ramp (* output.s0.x.x 128) 1 32) (aligned 128 0)))
(define t65 (load rows (ramp (+ (* output.s0.x.x 128) 32) 1 32) (aligned 128 32)))
(define t66 (concat_vectors
  t64
  t65))
(define t67 (load rows (ramp (+ (* output.s0.x.x 128) 64) 1 32) (aligned 128 64)))
(define t68 (concat_vectors
  t65
  t67))
(define t69 (load rows (ramp (+ (* output.s0.x.x 128) 96) 1 32) (aligned 128 96)))
(define t70 (concat_vectors
  t67
  t69))
(define t71.s (load rows (ramp (+ (* output.s0.x.x 128) 128) 1 32) (aligned 128 0)))

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
          t66 1 1 32)
         (slice_vectors
          t68 1 1 32))
        (concat_vectors
         (slice_vectors
          t70 1 1 32)
         (slice_vectors
          (concat_vectors
           t69
           t71.s) 1 1 32)))
       (x128 (int32_t (bv 6 32))))
      (vec-add
       (concat_vectors
        (concat_vectors
         t64
         t65)
        (concat_vectors
         t67
         t69))
       (vec-add
        (vec-mul
         (concat_vectors
          (concat_vectors
           (slice_vectors
            t66 2 1 32)
           (slice_vectors
            t68 2 1 32))
          (concat_vectors
           (slice_vectors
            t70 2 1 32)
           (slice_vectors
            (concat_vectors
             t69
             t71.s) 2 1 32)))
         (x128 (int32_t (bv 15 32))))
        (vec-add
         (vec-mul
          (concat_vectors
           (concat_vectors
            (slice_vectors
             t66 3 1 32)
            (slice_vectors
             t68 3 1 32))
           (concat_vectors
            (slice_vectors
             t70 3 1 32)
            (slice_vectors
             (concat_vectors
              t69
              t71.s) 3 1 32)))
          (x128 (int32_t (bv 20 32))))
         (vec-add
          (vec-mul
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t66 4 1 32)
             (slice_vectors
              t68 4 1 32))
            (concat_vectors
             (slice_vectors
              t70 4 1 32)
             (slice_vectors
              (concat_vectors
               t69
               t71.s) 4 1 32)))
           (x128 (int32_t (bv 15 32))))
          (vec-add
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t66 6 1 32)
             (slice_vectors
              t68 6 1 32))
            (concat_vectors
             (slice_vectors
              t70 6 1 32)
             (slice_vectors
              (concat_vectors
               t69
               t71.s) 6 1 32)))
           (vec-mul
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t66 5 1 32)
              (slice_vectors
               t68 5 1 32))
             (concat_vectors
              (slice_vectors
               t70 5 1 32)
              (slice_vectors
               (concat_vectors
                t69
                t71.s) 5 1 32)))
            (x128 (int32_t (bv 6 32))))))))))
     (x128 (int32_t (bv 4096 32))))
    (x128 (int32_t (bv 255 32))))
   (x128 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_4.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)