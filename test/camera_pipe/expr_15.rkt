#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f13 int16_t)
(define-symbolic-buffer f7 int16_t)
(define-symbolic t4290 integer?)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t4279 integer?)
(define-symbolic t4288 integer?)
(define-symbolic t4282 integer?)
(define-symbolic t4281 integer?)

(define axioms 
  (list 
   (values-range-from deinterleaved (int16_t (bv 0 16)) (int16_t (bv 32767 16)))
   (values-range-from f13 (int16_t (bv 0 16)) (int16_t (bv 32767 16)))
   (values-range-from f7 (int16_t (bv 0 16)) (int16_t (bv 32767 16)))))

(define t3917 t4279)
(define t3916 t4281)
(define t3915 t4282)
(define t3952.s t4288)
(define t3946.s t4290)
(define t3708.s (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3915)  64) 1 128) (aligned 64 0)))
(define t3711.s (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3916)  64) 1 128) (aligned 64 0)))
(define t3712.s (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3915)  64) 1 128) (aligned 64 0)))
(define t3713.s (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3916)  64) 1 128) (aligned 64 0)))
(define t3715.s (load f7 (ramp (*  (+   f28.s0.v0.v0   t3952.s)  64) 1 128) (aligned 64 0)))
(define t3717.s.s (load f13 (ramp (*  (+   f28.s0.v0.v0   t3917)  64) 1 128) (aligned 64 0)))
(define t3719.s.s (load f13 (ramp (*  (+   f28.s0.v0.v0   t3952.s)  64) 1 128) (aligned 64 0)))

(define halide-expr
 (interleave
  (vec-if   (vec-lt   (vec-absd
   (slice_vectors
    t3708.s 1 1 64)
   (slice_vectors
    t3711.s 2 1 64))   (vec-absd
   (slice_vectors
    t3712.s 2 1 64)
   (slice_vectors
    t3713.s 1 1 64)))   (vec-add
   (int16x64
    (vec-div
     (vec-add
      (vec-add
       (int32x64
        (slice_vectors
         t3708.s 1 1 64))
       (int32x64
        (slice_vectors
         t3711.s 2 1 64)))
      (x64 (int32_t (bv 1 32))))
     (x64 (int32_t (bv 2 32)))))
   (vec-sub
    (slice_vectors
     t3715.s 1 1 64)
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (load f13 (ramp (*  (+   f28.s0.v0.v0   t3952.s)  64) 1 64) (aligned 64 0)))
        (int32x64
         (slice_vectors
          t3717.s.s 1 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))))   (vec-add
   (int16x64
    (vec-div
     (vec-add
      (vec-add
       (int32x64
        (slice_vectors
         t3712.s 2 1 64))
       (int32x64
        (slice_vectors
         t3713.s 1 1 64)))
      (x64 (int32_t (bv 1 32))))
     (x64 (int32_t (bv 2 32)))))
   (vec-sub
    (slice_vectors
     t3715.s 1 1 64)
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (slice_vectors
          t3719.s.s 1 1 64))
        (int32x64
         (load f13 (ramp (*  (+   f28.s0.v0.v0   t3917)  64) 1 64) (aligned 64 0))))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32))))))))
  (vec-if   (vec-lt   (vec-absd
   (slice_vectors
    t3708.s 1 1 64)
   (slice_vectors
    t3711.s 2 1 64))   (vec-absd
   (slice_vectors
    t3712.s 2 1 64)
   (slice_vectors
    t3713.s 1 1 64)))   (vec-add
   (int16x64
    (vec-div
     (vec-add
      (vec-add
       (int32x64
        (slice_vectors
         t3708.s 1 1 64))
       (int32x64
        (slice_vectors
         t3711.s 2 1 64)))
      (x64 (int32_t (bv 1 32))))
     (x64 (int32_t (bv 2 32)))))
   (vec-sub
    (slice_vectors
     t3715.s 1 1 64)
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (load f13 (ramp (*  (+   f28.s0.v0.v0   t3952.s)  64) 1 64) (aligned 64 0)))
        (int32x64
         (slice_vectors
          t3717.s.s 1 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))))   (vec-add
   (int16x64
    (vec-div
     (vec-add
      (vec-add
       (int32x64
        (slice_vectors
         t3712.s 2 1 64))
       (int32x64
        (slice_vectors
         t3713.s 1 1 64)))
      (x64 (int32_t (bv 1 32))))
     (x64 (int32_t (bv 2 32)))))
   (vec-sub
    (slice_vectors
     t3715.s 1 1 64)
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (slice_vectors
          t3719.s.s 1 1 64))
        (int32x64
         (load f13 (ramp (*  (+   f28.s0.v0.v0   t3917)  64) 1 64) (aligned 64 0))))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_15.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)