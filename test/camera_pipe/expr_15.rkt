#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f13 int16_t)
(define-symbolic-buffer f7 int16_t)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t3139 integer?)
(define-symbolic t3142 integer?)
(define-symbolic t3134 integer?)
(define-symbolic t3140 integer?)
(define-symbolic t3137 integer?)

(define axioms 
  (list ))

(define t2831 t3134)
(define t2828 t3137)
(define t2858.s t3139)
(define t2859.s t3140)
(define t2856.s t3142)
(define t2663.s (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2831) 64) 1 128) (aligned 64 0)))
(define t2666.s (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2828) 64) 1 128) (aligned 64 0)))
(define t2667.s (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2831) 64) 1 128) (aligned 64 0)))
(define t2668.s (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2828) 64) 1 128) (aligned 64 0)))
(define t2670.s (load f7 (ramp (* (+ f28.s0.v0.v0 t2859.s) 64) 1 128) (aligned 64 0)))
(define t2672.s.s (load f13 (ramp (* (+ f28.s0.v0.v0 t2858.s) 64) 1 128) (aligned 64 0)))
(define t2674.s.s (load f13 (ramp (* (+ f28.s0.v0.v0 t2859.s) 64) 1 128) (aligned 64 0)))

(define halide-expr
 (interleave
  (vec-if
   (vec-lt
    (vec-absd
     (slice_vectors
      t2663.s 1 1 64)
     (slice_vectors
      t2666.s 2 1 64))
    (vec-absd
     (slice_vectors
      t2667.s 2 1 64)
     (slice_vectors
      t2668.s 1 1 64)))
   (vec-add
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (slice_vectors
          t2663.s 1 1 64))
        (int32x64
         (slice_vectors
          t2666.s 2 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))
    (vec-sub
     (slice_vectors
      t2670.s 1 1 64)
     (int16x64
      (vec-div
       (vec-add
        (vec-add
         (int32x64
          (load f13 (ramp (* (+ f28.s0.v0.v0 t2859.s) 64) 1 64) (aligned 64 0)))
         (int32x64
          (slice_vectors
           t2672.s.s 1 1 64)))
        (x64 (int32_t (bv 1 32))))
       (x64 (int32_t (bv 2 32)))))))
   (vec-add
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (slice_vectors
          t2667.s 2 1 64))
        (int32x64
         (slice_vectors
          t2668.s 1 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))
    (vec-sub
     (slice_vectors
      t2670.s 1 1 64)
     (int16x64
      (vec-div
       (vec-add
        (vec-add
         (int32x64
          (slice_vectors
           t2674.s.s 1 1 64))
         (int32x64
          (load f13 (ramp (* (+ f28.s0.v0.v0 t2858.s) 64) 1 64) (aligned 64 0))))
        (x64 (int32_t (bv 1 32))))
       (x64 (int32_t (bv 2 32))))))))
  (vec-add
   (int16x64
    (vec-div
     (vec-add
      (vec-add
       (int32x64
        (slice_vectors
         t2667.s 2 1 64))
       (int32x64
        (slice_vectors
         t2666.s 2 1 64)))
      (x64 (int32_t (bv 1 32))))
     (x64 (int32_t (bv 2 32)))))
   (vec-sub
    (slice_vectors
     (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2856.s) 64) 1 128) (aligned 64 0)) 2 1 64)
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (slice_vectors
          t2674.s.s 1 1 64))
        (int32x64
         (slice_vectors
          t2672.s.s 1 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_15.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)