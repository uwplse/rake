#lang rosette/safe

(require rake)
(init-logging "expr_15.runtimes")

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic t3108 integer?)
(define-symbolic f7.s0.v0.fused.v0 integer?)

(define axioms 
  (list ))

(define t2812 (var-lookup 't2812 t3108))

(define halide-expr
 (let ([t3142  (sca-add  (sca-mul  f7.s0.v0.fused.v0  2)  t2812)])
  (let ([t3143   (load deinterleaved (ramp (sca-add (sca-mul t3142 64) 64) 1 64) (aligned 64 0))])
   (concat_vectors
    (slice_vectors
     (concat_vectors
      (load deinterleaved (ramp (sca-mul t3142 64) 1 64) (aligned 64 0))
      t3143) 1 1 64)
    (slice_vectors
     (concat_vectors
      t3143
      (load deinterleaved (ramp (sca-add (sca-mul t3142 64) 128) 1 64) (aligned 64 0))) 1 1 64)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_15.out")