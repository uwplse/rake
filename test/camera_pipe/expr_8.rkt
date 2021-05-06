#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic f7.s0.v0.fused.v0 integer?)
(define-symbolic t3083 integer?)
(define-symbolic t3079 integer?)
(define-symbolic t3015 integer?)
(define-symbolic t3016 integer?)

(define axioms 
  (list ))

(define t2738 (max  (*  t3016  64)  (+  (*  t3015  128)  62)))
(define t2813 t3079)
(define t2814 t3083)
(define t2622 (let ([t2960  (load deinterleaved (ramp (+ (* (+ (* f7.s0.v0.fused.v0 2) t2813) 64) 64) 1 64) (aligned 64 0))])
  (concat_vectors
   (slice_vectors
    (concat_vectors
     (load deinterleaved (ramp (* (+ (* f7.s0.v0.fused.v0 2) t2813) 64) 1 64) (aligned 64 0))
     t2960) 1 1 64)
   (slice_vectors
    (concat_vectors
     t2960
     (load deinterleaved (ramp (+ (* (+ (* f7.s0.v0.fused.v0 2) t2813) 64) 128) 1 64) (aligned 64 0))) 1 1 64))))
(define t2623 (load deinterleaved (ramp (* (+ (* f7.s0.v0.fused.v0 2) t2813) 64) 1 128) (aligned 64 0)))
(define t2624 (load deinterleaved (ramp (* (+ (* f7.s0.v0.fused.v0 2) t2814) 64) 1 128) (aligned 64 0)))
(define t2625 (let ([t2962  (+  (*  (quotient  (+  t2738  130)  64)  12)  (+  (*  f7.s0.v0.fused.v0  2)  t2813))])
  (load deinterleaved (ramp (* t2962 64) 1 128) (aligned 64 0))))

(define halide-expr
 (vec-if
  (vec-lt
   (vec-absd
    t2622
    t2623)
   (vec-absd
    t2624
    t2625))
  (int16x128
   (vec-div
    (vec-add
     (vec-add
      (int32x128
       t2622)
      (int32x128
       t2623))
     (x128 (int32_t (bv 1 32))))
    (x128 (int32_t (bv 2 32)))))
  (int16x128
   (vec-div
    (vec-add
     (vec-add
      (int32x128
       t2624)
      (int32x128
       t2625))
     (x128 (int32_t (bv 1 32))))
    (x128 (int32_t (bv 2 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_8.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)