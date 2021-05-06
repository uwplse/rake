#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f13 int16_t)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t3139 integer?)
(define-symbolic t3136 integer?)
(define-symbolic t3137 integer?)

(define axioms 
  (list ))

(define t2826 t3136)
(define t2828 t3137)
(define t2858.s t3139)
(define t2654.s (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2828) 64) 1 128) (aligned 64 0)))
(define t2969 (load f13 (ramp (* (+ f28.s0.v0.v0 t2858.s) 64) 1 64) (aligned 64 0)))

(define halide-expr
 (interleave
  (vec-add
   (int16x64
    (vec-div
     (vec-add
      (vec-add
       (int32x64
        (slice_vectors
         (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2828) 64) 1 128) (aligned 64 0)) 1 1 64))
       (int32x64
        (slice_vectors
         t2654.s 2 1 64)))
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
         t2969)
        (int32x64
         (slice_vectors
          (concat_vectors
           t2969
           (load f13 (ramp (+ (* (+ f28.s0.v0.v0 t2858.s) 64) 64) 1 64) (aligned 64 0))) 1 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))))
  (slice_vectors
   t2654.s 2 1 64)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_12.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)