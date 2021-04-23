#lang rosette/safe

(require rake)

(define-symbolic-buffer rows int32_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t111 integer?)
(define-symbolic t110 integer?)

(define axioms 
  (list 
   (values-range-from rows (int32_t (bv 0 32)) (int32_t (bv 16320 32)))))

(define t17 (max   (*    t111    128)   (+    (*     t110     128)    6)))
(define t92 (load rows (ramp (*  (+   (*    (quotient     (+      t17      255)     128)    3)   output.s0.x.x)  128) 1 32) (aligned 128 0)))
(define t93 (load rows (ramp (+  (*   (+    (*     (quotient      (+       t17       255)      128)     3)    output.s0.x.x)   128)  32) 1 32) (aligned 128 32)))
(define t94 (concat_vectors
  t92
  t93))
(define t95 (load rows (ramp (+  (*   (+    (*     (quotient      (+       t17       255)      128)     3)    output.s0.x.x)   128)  64) 1 32) (aligned 128 64)))
(define t96 (concat_vectors
  t93
  t95))
(define t97 (load rows (ramp (+  (*   (+    (*     (quotient      (+       t17       255)      128)     3)    output.s0.x.x)   128)  96) 1 32) (aligned 128 96)))
(define t98 (concat_vectors
  t95
  t97))
(define t99.s (load rows (ramp (+  (*   (+    (*     (quotient      (+       t17       255)      128)     3)    output.s0.x.x)   128)  128) 1 32) (aligned 128 0)))

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
          t94 1 1 32)
         (slice_vectors
          t96 1 1 32))
        (concat_vectors
         (slice_vectors
          t98 1 1 32)
         (slice_vectors
          (concat_vectors
           t97
           t99.s) 1 1 32)))
       (x128 (int32_t (bv 6 32))))
      (vec-add
       (concat_vectors
        (concat_vectors
         t92
         t93)
        (concat_vectors
         t95
         t97))
       (vec-add
        (vec-mul
         (concat_vectors
          (concat_vectors
           (slice_vectors
            t94 2 1 32)
           (slice_vectors
            t96 2 1 32))
          (concat_vectors
           (slice_vectors
            t98 2 1 32)
           (slice_vectors
            (concat_vectors
             t97
             t99.s) 2 1 32)))
         (x128 (int32_t (bv 15 32))))
        (vec-add
         (vec-mul
          (concat_vectors
           (concat_vectors
            (slice_vectors
             t94 3 1 32)
            (slice_vectors
             t96 3 1 32))
           (concat_vectors
            (slice_vectors
             t98 3 1 32)
            (slice_vectors
             (concat_vectors
              t97
              t99.s) 3 1 32)))
          (x128 (int32_t (bv 20 32))))
         (vec-add
          (vec-mul
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t94 4 1 32)
             (slice_vectors
              t96 4 1 32))
            (concat_vectors
             (slice_vectors
              t98 4 1 32)
             (slice_vectors
              (concat_vectors
               t97
               t99.s) 4 1 32)))
           (x128 (int32_t (bv 15 32))))
          (vec-add
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t94 6 1 32)
             (slice_vectors
              t96 6 1 32))
            (concat_vectors
             (slice_vectors
              t98 6 1 32)
             (slice_vectors
              (concat_vectors
               t97
               t99.s) 6 1 32)))
           (vec-mul
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t94 5 1 32)
              (slice_vectors
               t96 5 1 32))
             (concat_vectors
              (slice_vectors
               t98 5 1 32)
              (slice_vectors
               (concat_vectors
                t97
                t99.s) 5 1 32)))
            (x128 (int32_t (bv 6 32))))))))))
     (x128 (int32_t (bv 4096 32))))
    (x128 (int32_t (bv 255 32))))
   (x128 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_7.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)