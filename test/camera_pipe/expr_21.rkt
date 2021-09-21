#lang rosette/safe

(require rake)
(init-logging "expr_21.runtimes")

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f13 int16_t)
(define-symbolic t3154 integer?)
(define-symbolic t3156 integer?)
(define-symbolic f28.s0.v0.v0 integer?)

(define axioms 
  (list ))

(define t2853.s (var-lookup 't2853.s t3154))
(define t2847.s (var-lookup 't2847.s t3156))

(define halide-expr
 (interleave
  (slice_vectors
   (load deinterleaved (ramp (sca-mul (sca-add f28.s0.v0.v0 t2847.s) 64) 1 128) (aligned 64 0)) 1 1 64)
  (slice_vectors
   (load f13 (ramp (sca-mul (sca-add f28.s0.v0.v0 t2853.s) 64) 1 128) (aligned 64 0)) 1 1 64)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_21.out")