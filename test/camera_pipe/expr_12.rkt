#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f13 int16_t)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t4287 integer?)
(define-symbolic t4284 integer?)
(define-symbolic t4285 integer?)

(define axioms 
  (list 
   (values-range-from deinterleaved (int16_t (bv 0 16)) (int16_t (bv 32767 16)))
   (values-range-from f13 (int16_t (bv 0 16)) (int16_t (bv 32767 16)))))

(define t3908 t4284)
(define t3910 t4285)
(define t3951.s t4287)
(define t3700.s (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3910)  64) 1 128) (aligned 64 0)))
(define t4069 (load f13 (ramp (*  (+   f28.s0.v0.v0   t3951.s)  64) 1 64) (aligned 64 0)))

(define halide-expr
 (interleave
  (vec-add
   (int16x64
    (vec-div
     (vec-add
      (vec-add
       (int32x64
        (slice_vectors
         (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3910)  64) 1 128) (aligned 64 0)) 1 1 64))
       (int32x64
        (slice_vectors
         t3700.s 2 1 64)))
      (x64 (int32_t (bv 1 32))))
     (x64 (int32_t (bv 2 32)))))
   (vec-sub
    (slice_vectors
     (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3908)  64) 1 128) (aligned 64 0)) 1 1 64)
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         t4069)
        (int32x64
         (slice_vectors
          (concat_vectors
           t4069
           (load f13 (ramp (+  (*   (+    f28.s0.v0.v0    t3951.s)   64)  64) 1 64) (aligned 64 0))) 1 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))))
  (vec-add
   (int16x64
    (vec-div
     (vec-add
      (vec-add
       (int32x64
        (slice_vectors
         (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3910)  64) 1 128) (aligned 64 0)) 1 1 64))
       (int32x64
        (slice_vectors
         t3700.s 2 1 64)))
      (x64 (int32_t (bv 1 32))))
     (x64 (int32_t (bv 2 32)))))
   (vec-sub
    (slice_vectors
     (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3908)  64) 1 128) (aligned 64 0)) 1 1 64)
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         t4069)
        (int32x64
         (slice_vectors
          (concat_vectors
           t4069
           (load f13 (ramp (+  (*   (+    f28.s0.v0.v0    t3951.s)   64)  64) 1 64) (aligned 64 0))) 1 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_12.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)