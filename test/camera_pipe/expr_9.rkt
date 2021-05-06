#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic f7.s0.v0.fused.v0 integer?)
(define-symbolic t3079 integer?)
(define-symbolic t3015 integer?)
(define-symbolic t3016 integer?)
(define-symbolic t3081 integer?)

(define axioms 
  (list ))

(define t2738 (max  (*  t3016  64)  (+  (*  t3015  128)  62)))
(define t2813 t3079)
(define t2817 t3081)
(define t2630 (let ([t2963  (+  (*  (quotient  (+  t2738  130)  64)  12)  (+  (*  f7.s0.v0.fused.v0  2)  t2817))])
  (load deinterleaved (ramp (* t2963 64) 1 128) (aligned 64 0))))
(define t2631 (let ([t2964  (+  (*  (quotient  (+  t2738  130)  64)  12)  (+  (*  f7.s0.v0.fused.v0  2)  t2817))])
  (let ([t2965   (load deinterleaved (ramp (+ (* t2964 64) 64) 1 64) (aligned 64 0))])
   (concat_vectors
    (slice_vectors
     (concat_vectors
      (load deinterleaved (ramp (* t2964 64) 1 64) (aligned 64 0))
      t2965) 1 1 64)
    (slice_vectors
     (concat_vectors
      t2965
      (load deinterleaved (ramp (+ (* t2964 64) 128) 1 64) (aligned 64 0))) 1 1 64)))))
(define t2632 (let ([t2967  (load deinterleaved (ramp (+ (* (+ (* f7.s0.v0.fused.v0 2) t2813) 64) 64) 1 64) (aligned 64 0))])
  (concat_vectors
   (slice_vectors
    (concat_vectors
     (load deinterleaved (ramp (* (+ (* f7.s0.v0.fused.v0 2) t2813) 64) 1 64) (aligned 64 0))
     t2967) 1 1 64)
   (slice_vectors
    (concat_vectors
     t2967
     (load deinterleaved (ramp (+ (* (+ (* f7.s0.v0.fused.v0 2) t2813) 64) 128) 1 64) (aligned 64 0))) 1 1 64))))
(define t2633 (let ([t2968  (load deinterleaved (ramp (+ (* (+ (* f7.s0.v0.fused.v0 2) t2817) 64) 64) 1 64) (aligned 64 0))])
  (concat_vectors
   (slice_vectors
    (concat_vectors
     (load deinterleaved (ramp (* (+ (* f7.s0.v0.fused.v0 2) t2817) 64) 1 64) (aligned 64 0))
     t2968) 1 1 64)
   (slice_vectors
    (concat_vectors
     t2968
     (load deinterleaved (ramp (+ (* (+ (* f7.s0.v0.fused.v0 2) t2817) 64) 128) 1 64) (aligned 64 0))) 1 1 64))))

(define halide-expr
 (vec-if
  (vec-lt
   (vec-absd
    t2630
    t2631)
   (vec-absd
    t2632
    t2633))
  (int16x128
   (vec-div
    (vec-add
     (vec-add
      (int32x128
       t2630)
      (int32x128
       t2631))
     (x128 (int32_t (bv 1 32))))
    (x128 (int32_t (bv 2 32)))))
  (int16x128
   (vec-div
    (vec-add
     (vec-add
      (int32x128
       t2632)
      (int32x128
       t2633))
     (x128 (int32_t (bv 1 32))))
    (x128 (int32_t (bv 2 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_9.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)