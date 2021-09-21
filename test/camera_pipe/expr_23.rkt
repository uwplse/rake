#lang rosette/safe

(require rake)
(init-logging "expr_23.runtimes")

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer t2659.s-buf int16_t)
(define-symbolic-buffer t3000-buf int16_t)
(define t2659.s (load t2659.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t3157 integer?)
(define t3000 (load t3000-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t3150 integer?)
(define-symbolic f28.s0.v0.v0 integer?)

(define axioms 
  (list 
   (values-range-from t2659.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t3000-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))

(define t2820 (var-lookup 't2820 t3150))
(define t2851.s (var-lookup 't2851.s t3157))

(define halide-expr
 (let ([t3187  (slice_vectors
  t2659.s 1 1 64)])
  (interleave
   t3187
   (vec-add
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         t3187)
        (int32x64
         (slice_vectors
          (load deinterleaved (ramp (sca-mul (sca-add f28.s0.v0.v0 t2820) 64) 1 128) (aligned 64 0)) 2 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))
    (vec-sub
     (slice_vectors
      (load deinterleaved (ramp (sca-mul (sca-add f28.s0.v0.v0 t2851.s) 64) 1 128) (aligned 64 0)) 2 1 64)
     (int16x64
      (vec-div
       (vec-add
        (vec-add
         (int32x64
          (slice_vectors
           t3000 2 1 64))
         (int32x64
          (slice_vectors
           t3000 1 1 64)))
        (x64 (int32_t (bv 1 32))))
       (x64 (int32_t (bv 2 32))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_23.out")