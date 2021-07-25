#lang rosette/safe

(require rake)
(init-logging "expr_21.runtimes")

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f13 int16_t)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t3117 integer?)
(define-symbolic t3119 integer?)

(define axioms 
  (list ))

(define t2853.s t3117)
(define t2847.s t3119)

(define halide-expr
 (interleave
  (slice_vectors
   (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2847.s) 64) 1 128) (aligned 64 0)) 1 1 64)
  (slice_vectors
   (load f13 (ramp (* (+ f28.s0.v0.v0 t2853.s) 64) 1 128) (aligned 64 0)) 1 1 64)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_21.out")