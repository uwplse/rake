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
(define t84 (load rows (ramp (*  (+   (*    (quotient     (+      t17      255)     128)    2)   output.s0.x.x)  128) 1 32) (aligned 128 0)))
(define t85 (load rows (ramp (+  (*   (+    (*     (quotient      (+       t17       255)      128)     2)    output.s0.x.x)   128)  32) 1 32) (aligned 128 32)))
(define t86 (concat_vectors
  t84
  t85))
(define t87 (load rows (ramp (+  (*   (+    (*     (quotient      (+       t17       255)      128)     2)    output.s0.x.x)   128)  64) 1 32) (aligned 128 64)))
(define t88 (concat_vectors
  t85
  t87))
(define t89 (load rows (ramp (+  (*   (+    (*     (quotient      (+       t17       255)      128)     2)    output.s0.x.x)   128)  96) 1 32) (aligned 128 96)))
(define t90 (concat_vectors
  t87
  t89))
(define t91.s (load rows (ramp (+  (*   (+    (*     (quotient      (+       t17       255)      128)     2)    output.s0.x.x)   128)  128) 1 32) (aligned 128 0)))

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
          t86 1 1 32)
         (slice_vectors
          t88 1 1 32))
        (concat_vectors
         (slice_vectors
          t90 1 1 32)
         (slice_vectors
          (concat_vectors
           t89
           t91.s) 1 1 32)))
       (x128 (int32_t (bv 6 32))))
      (vec-add
       (concat_vectors
        (concat_vectors
         t84
         t85)
        (concat_vectors
         t87
         t89))
       (vec-add
        (vec-mul
         (concat_vectors
          (concat_vectors
           (slice_vectors
            t86 2 1 32)
           (slice_vectors
            t88 2 1 32))
          (concat_vectors
           (slice_vectors
            t90 2 1 32)
           (slice_vectors
            (concat_vectors
             t89
             t91.s) 2 1 32)))
         (x128 (int32_t (bv 15 32))))
        (vec-add
         (vec-mul
          (concat_vectors
           (concat_vectors
            (slice_vectors
             t86 3 1 32)
            (slice_vectors
             t88 3 1 32))
           (concat_vectors
            (slice_vectors
             t90 3 1 32)
            (slice_vectors
             (concat_vectors
              t89
              t91.s) 3 1 32)))
          (x128 (int32_t (bv 20 32))))
         (vec-add
          (vec-mul
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t86 4 1 32)
             (slice_vectors
              t88 4 1 32))
            (concat_vectors
             (slice_vectors
              t90 4 1 32)
             (slice_vectors
              (concat_vectors
               t89
               t91.s) 4 1 32)))
           (x128 (int32_t (bv 15 32))))
          (vec-add
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t86 6 1 32)
             (slice_vectors
              t88 6 1 32))
            (concat_vectors
             (slice_vectors
              t90 6 1 32)
             (slice_vectors
              (concat_vectors
               t89
               t91.s) 6 1 32)))
           (vec-mul
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t86 5 1 32)
              (slice_vectors
               t88 5 1 32))
             (concat_vectors
              (slice_vectors
               t90 5 1 32)
              (slice_vectors
               (concat_vectors
                t89
                t91.s) 5 1 32)))
            (x128 (int32_t (bv 6 32))))))))))
     (x128 (int32_t (bv 4096 32))))
    (x128 (int32_t (bv 255 32))))
   (x128 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_6.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)