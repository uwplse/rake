#lang rosette/safe

(require rake)
(init-logging "expr_6.runtimes")

(define-symbolic-buffer f1 int16_t)
(define-symbolic deinterleaved.s0.v0.v0 integer?)
(define-symbolic t3066 integer?)
(define-symbolic t3065 integer?)

(define axioms 
  (list ))

(define t2981 (+  (*  deinterleaved.s0.v0.v0  256)  (-  (*  t3066  64)  (min  (*  t3065  128)  120))))

(define halide-expr
 (slice_vectors
  (load f1 (ramp (+ t2981 120) 1 256) (aligned 8 0)) 0 2 128))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_6.out")