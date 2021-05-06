#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f7 int16_t)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t3142 integer?)
(define-symbolic t3135 integer?)
(define-symbolic t3140 integer?)

(define axioms 
  (list ))

(define t2825 t3135)
(define t2859.s t3140)
(define t2856.s t3142)
(define t2657.s (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2825) 64) 1 128) (aligned 64 0)))
(define t2970 (load f7 (ramp (* (+ f28.s0.v0.v0 t2859.s) 64) 1 128) (aligned 64 0)))

(define halide-expr
 (interleave
  (slice_vectors
   t2657.s 1 1 64)
  (vec-add
   (int16x64
    (vec-div
     (vec-add
      (vec-add
       (int32x64
        (slice_vectors
         t2657.s 1 1 64))
       (int32x64
        (slice_vectors
         (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2825) 64) 1 128) (aligned 64 0)) 2 1 64)))
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
          t2970 2 1 64))
        (int32x64
         (slice_vectors
          t2970 1 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_13.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)