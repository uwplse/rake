#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f7 int16_t)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t4288 integer?)
(define-symbolic t4283 integer?)
(define-symbolic t4290 integer?)

(define axioms 
  (list 
   (values-range-from deinterleaved (int16_t (bv 0 16)) (int16_t (bv 32767 16)))
   (values-range-from f7 (int16_t (bv 0 16)) (int16_t (bv 32767 16)))))

(define t3911 t4283)
(define t3952.s t4288)
(define t3946.s t4290)
(define t3703.s (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3911)  64) 1 128) (aligned 64 0)))
(define t4070 (load f7 (ramp (*  (+   f28.s0.v0.v0   t3952.s)  64) 1 128) (aligned 64 0)))

(define halide-expr
 (interleave
  (slice_vectors
   t3703.s 1 1 64)
  (vec-add
   (int16x64
    (vec-div
     (vec-add
      (vec-add
       (int32x64
        (slice_vectors
         t3703.s 1 1 64))
       (int32x64
        (slice_vectors
         (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3911)  64) 1 128) (aligned 64 0)) 2 1 64)))
      (x64 (int32_t (bv 1 32))))
     (x64 (int32_t (bv 2 32)))))
   (vec-sub
    (slice_vectors
     (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3946.s)  64) 1 128) (aligned 64 0)) 2 1 64)
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (slice_vectors
          t4070 2 1 64))
        (int32x64
         (slice_vectors
          t4070 1 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_13.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)