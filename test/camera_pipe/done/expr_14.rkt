#lang rosette/safe

(require rake)
(init-logging "expr_14.runtimes")

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic f7.s0.v0.fused.v0 integer?)
(define-symbolic t3069 integer?)

(define axioms 
  (list ))

(define t2808 t3069)

(define halide-expr
 (let ([t3097  (+  (*  f7.s0.v0.fused.v0  2)  t2808)])
  (let ([t3098   (load deinterleaved (ramp (+ (* t3097 64) 64) 1 64) (aligned 64 0))])
   (concat_vectors
    (slice_vectors
     (concat_vectors
      (load deinterleaved (ramp (* t3097 64) 1 64) (aligned 64 0))
      t3098) 1 1 64)
    (slice_vectors
     (concat_vectors
      t3098
      (load deinterleaved (ramp (+ (* t3097 64) 128) 1 64) (aligned 64 0))) 1 1 64)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_14.out")