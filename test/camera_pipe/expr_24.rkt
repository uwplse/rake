#lang rosette/safe

(require rake)
(init-logging "expr_24.runtimes")

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f7 int16_t)
(define-symbolic t3118 integer?)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t3120 integer?)

(define axioms 
  (list ))

(define t2854.s t3118)
(define t2851.s t3120)

(define halide-expr
 (interleave
  (slice_vectors
   (load f7 (ramp (* (+ f28.s0.v0.v0 t2854.s) 64) 1 128) (aligned 64 0)) 1 1 64)
  (slice_vectors
   (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2851.s) 64) 1 128) (aligned 64 0)) 2 1 64)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_24.out")