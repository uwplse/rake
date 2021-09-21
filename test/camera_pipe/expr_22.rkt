#lang rosette/safe

(require rake)
(init-logging "expr_22.runtimes")

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f13 int16_t)
(define-symbolic-buffer t2656.s-buf int16_t)
(define-symbolic-buffer t2999-buf int16_t)
(define-symbolic t3154 integer?)
(define-symbolic t3152 integer?)
(define t2656.s (load t2656.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t2999 (load t2999-buf (ramp 0 1 64) (aligned 0 0)))
(define-symbolic t3151 integer?)
(define-symbolic f28.s0.v0.v0 integer?)

(define axioms 
  (list 
   (values-range-from t2656.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2999-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))

(define t2821 (var-lookup 't2821 t3151))
(define t2823 (var-lookup 't2823 t3152))
(define t2853.s (var-lookup 't2853.s t3154))

(define halide-expr
 (let ([t3181  (slice_vectors
  t2656.s 2 1 64)])
  (interleave
   (vec-add
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         (slice_vectors
          (load deinterleaved (ramp (sca-mul (sca-add f28.s0.v0.v0 t2823) 64) 1 128) (aligned 64 0)) 1 1 64))
        (int32x64
         t3181))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))
    (vec-sub
     (slice_vectors
      (load deinterleaved (ramp (sca-mul (sca-add f28.s0.v0.v0 t2821) 64) 1 128) (aligned 64 0)) 1 1 64)
     (int16x64
      (vec-div
       (vec-add
        (vec-add
         (int32x64
          t2999)
         (int32x64
          (slice_vectors
           (concat_vectors
            t2999
            (load f13 (ramp (sca-add (sca-mul (sca-add f28.s0.v0.v0 t2853.s) 64) 64) 1 64) (aligned 64 0))) 1 1 64)))
        (x64 (int32_t (bv 1 32))))
       (x64 (int32_t (bv 2 32)))))))
   t3181)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_22.out")