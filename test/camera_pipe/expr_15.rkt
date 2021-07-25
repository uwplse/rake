#lang rosette/safe

(require rake)
(init-logging "expr_15.runtimes")

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic t3071 integer?)
(define-symbolic f7.s0.v0.fused.v0 integer?)

(define axioms 
  (list ))

(define t2812 t3071)

(define halide-expr
 (let ([t3105  (+  (*  f7.s0.v0.fused.v0  2)  t2812)])
  (let ([t3106   (load deinterleaved (ramp (+ (* t3105 64) 64) 1 64) (aligned 64 0))])
   (concat_vectors
    (slice_vectors
     (concat_vectors
      (load deinterleaved (ramp (* t3105 64) 1 64) (aligned 64 0))
      t3106) 1 1 64)
    (slice_vectors
     (concat_vectors
      t3106
      (load deinterleaved (ramp (+ (* t3105 64) 128) 1 64) (aligned 64 0))) 1 1 64)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_15.out")