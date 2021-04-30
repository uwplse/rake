#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f13 int16_t)
(define-symbolic-buffer f7 int16_t)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t4280 integer?)
(define-symbolic t4284 integer?)
(define-symbolic t4286 integer?)
(define-symbolic t4287 integer?)
(define-symbolic t4278 integer?)

(define axioms 
  (list 
   (values-range-from deinterleaved (int16_t (bv 0 16)) (int16_t (bv 32767 16)))
   (values-range-from f13 (int16_t (bv 0 16)) (int16_t (bv 32767 16)))
   (values-range-from f7 (int16_t (bv 0 16)) (int16_t (bv 32767 16)))))

(define t3905 t4278)
(define t3907 t4280)
(define t3908 t4284)
(define t3906 t4286)
(define t3951.s t4287)
(define t3683.s.s (load f7 (ramp (*  (+   f28.s0.v0.v0   t3951.s)  64) 1 128) (aligned 64 0)))
(define t3686.s.s (load f7 (ramp (*  (+   f28.s0.v0.v0   t3905)  64) 1 128) (aligned 64 0)))
(define t3688.s (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3906)  64) 1 128) (aligned 64 0)))
(define t3691.s (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3907)  64) 1 128) (aligned 64 0)))
(define t3693.s (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3906)  64) 1 128) (aligned 64 0)))
(define t3694.s (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3907)  64) 1 128) (aligned 64 0)))
(define t3695.s (load f13 (ramp (*  (+   f28.s0.v0.v0   t3951.s)  64) 1 128) (aligned 64 0)))

(define halide-expr
 (interleave
  (vec-add
   (int16x64
    (vec-div
     (vec-add
      (vec-add
       (int32x64
        (slice_vectors
         t3688.s 1 1 64))
       (int32x64
        (slice_vectors
         t3691.s 1 1 64)))
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
         (slice_vectors
          t3683.s.s 1 1 64))
        (int32x64
         (slice_vectors
          t3686.s.s 1 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))))
  (vec-if
   (vec-lt
    (vec-absd
     (slice_vectors
      t3693.s 2 1 64)
     (slice_vectors
      t3691.s 1 1 64))
    (vec-absd
     (slice_vectors
      t3688.s 1 1 64)
     (slice_vectors
      t3694.s 2 1 64)))
   (vec-add
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (slice_vectors
          t3693.s 2 1 64))
        (int32x64
         (slice_vectors
          t3691.s 1 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))
    (vec-sub
     (slice_vectors
      t3695.s 1 1 64)
     (int16x64
      (vec-div
       (vec-add
        (vec-add
         (int32x64
          (slice_vectors
           (load f7 (ramp (*  (+   f28.s0.v0.v0   t3951.s)  64) 1 128) (aligned 64 0)) 2 1 64))
         (int32x64
          (slice_vectors
           t3686.s.s 1 1 64)))
        (x64 (int32_t (bv 1 32))))
       (x64 (int32_t (bv 2 32)))))))
   (vec-add
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (slice_vectors
          t3688.s 1 1 64))
        (int32x64
         (slice_vectors
          t3694.s 2 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))
    (vec-sub
     (slice_vectors
      t3695.s 1 1 64)
     (int16x64
      (vec-div
       (vec-add
        (vec-add
         (int32x64
          (slice_vectors
           t3683.s.s 1 1 64))
         (int32x64
          (slice_vectors
           (load f7 (ramp (*  (+   f28.s0.v0.v0   t3905)  64) 1 128) (aligned 64 0)) 2 1 64)))
        (x64 (int32_t (bv 1 32))))
       (x64 (int32_t (bv 2 32))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_10.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)