#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f13 int16_t)
(define-symbolic-buffer f7 int16_t)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t3138 integer?)
(define-symbolic t3139 integer?)
(define-symbolic t3135 integer?)
(define-symbolic t3140 integer?)
(define-symbolic t3136 integer?)

(define axioms 
  (list ))

(define t2825 t3135)
(define t2826 t3136)
(define t2824 t3138)
(define t2858.s t3139)
(define t2859.s t3140)
(define t2637.s.s (load f7 (ramp (* (+ f28.s0.v0.v0 t2858.s) 64) 1 128) (aligned 64 0)))
(define t2640.s.s (load f7 (ramp (* (+ f28.s0.v0.v0 t2859.s) 64) 1 128) (aligned 64 0)))
(define t2642.s (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2824) 64) 1 128) (aligned 64 0)))
(define t2645.s (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2825) 64) 1 128) (aligned 64 0)))
(define t2647.s (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2824) 64) 1 128) (aligned 64 0)))
(define t2648.s (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2825) 64) 1 128) (aligned 64 0)))
(define t2649.s (load f13 (ramp (* (+ f28.s0.v0.v0 t2858.s) 64) 1 128) (aligned 64 0)))

(define halide-expr
 (interleave
  (vec-add
   (int16x64
    (vec-div
     (vec-add
      (vec-add
       (int32x64
        (slice_vectors
         t2642.s 1 1 64))
       (int32x64
        (slice_vectors
         t2645.s 1 1 64)))
      (x64 (int32_t (bv 1 32))))
     (x64 (int32_t (bv 2 32)))))
   (vec-sub
    (slice_vectors
     (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2826) 64) 1 128) (aligned 64 0)) 1 1 64)
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (slice_vectors
          t2637.s.s 1 1 64))
        (int32x64
         (slice_vectors
          t2640.s.s 1 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))))
  (vec-if
   (vec-lt
    (vec-absd
     (slice_vectors
      t2647.s 2 1 64)
     (slice_vectors
      t2645.s 1 1 64))
    (vec-absd
     (slice_vectors
      t2642.s 1 1 64)
     (slice_vectors
      t2648.s 2 1 64)))
   (vec-add
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (slice_vectors
          t2647.s 2 1 64))
        (int32x64
         (slice_vectors
          t2645.s 1 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))
    (vec-sub
     (slice_vectors
      t2649.s 1 1 64)
     (int16x64
      (vec-div
       (vec-add
        (vec-add
         (int32x64
          (slice_vectors
           (load f7 (ramp (* (+ f28.s0.v0.v0 t2858.s) 64) 1 128) (aligned 64 0)) 2 1 64))
         (int32x64
          (slice_vectors
           t2640.s.s 1 1 64)))
        (x64 (int32_t (bv 1 32))))
       (x64 (int32_t (bv 2 32)))))))
   (vec-add
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (slice_vectors
          t2642.s 1 1 64))
        (int32x64
         (slice_vectors
          t2648.s 2 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))
    (vec-sub
     (slice_vectors
      t2649.s 1 1 64)
     (int16x64
      (vec-div
       (vec-add
        (vec-add
         (int32x64
          (slice_vectors
           t2637.s.s 1 1 64))
         (int32x64
          (slice_vectors
           (load f7 (ramp (* (+ f28.s0.v0.v0 t2859.s) 64) 1 128) (aligned 64 0)) 2 1 64)))
        (x64 (int32_t (bv 1 32))))
       (x64 (int32_t (bv 2 32))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_10.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)