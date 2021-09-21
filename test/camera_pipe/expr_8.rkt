#lang rosette/safe

(require rake)
(init-logging "expr_8.runtimes")

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic f7.s0.v0.fused.v0 integer?)
(define-symbolic t3106 integer?)

(define axioms 
  (list ))

(define t2808 (var-lookup 't2808 t3106))

(define halide-expr
 (let ([t3114  (sca-add  (sca-mul  f7.s0.v0.fused.v0  2)  t2808)])
  (let ([t3115   (load deinterleaved (ramp (sca-add (sca-mul t3114 64) 64) 1 64) (aligned 64 0))])
   (concat_vectors
    (slice_vectors
     (concat_vectors
      (load deinterleaved (ramp (sca-mul t3114 64) 1 64) (aligned 64 0))
      t3115) 1 1 64)
    (slice_vectors
     (concat_vectors
      t3115
      (load deinterleaved (ramp (sca-add (sca-mul t3114 64) 128) 1 64) (aligned 64 0))) 1 1 64)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_8.out")