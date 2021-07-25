#lang rosette/safe

(require rake)
(init-logging "expr_23.runtimes")

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer t2659.s-buf int16_t)
(define-symbolic-buffer t2965-buf int16_t)
(define t2659.s (load t2659.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t3113 integer?)
(define t2965 (load t2965-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t3120 integer?)

(define axioms 
  (list 
   (values-range-from t2659.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2965-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))

(define t2820 t3113)
(define t2851.s t3120)

(define halide-expr
 (let ([t3150  (slice_vectors
  t2659.s 1 1 64)])
  (interleave
   t3150
   (vec-add
    (int16x64
     (vec-div
      (vec-add
       (vec-add
        (int32x64
         t3150)
        (int32x64
         (slice_vectors
          (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2820) 64) 1 128) (aligned 64 0)) 2 1 64)))
       (x64 (int32_t (bv 1 32))))
      (x64 (int32_t (bv 2 32)))))
    (vec-sub
     (slice_vectors
      (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2851.s) 64) 1 128) (aligned 64 0)) 2 1 64)
     (int16x64
      (vec-div
       (vec-add
        (vec-add
         (int32x64
          (slice_vectors
           t2965 2 1 64))
         (int32x64
          (slice_vectors
           t2965 1 1 64)))
        (x64 (int32_t (bv 1 32))))
       (x64 (int32_t (bv 2 32))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_23.out")