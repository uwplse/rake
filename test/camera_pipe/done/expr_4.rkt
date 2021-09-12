#lang rosette/safe

(require rake)
(init-logging "expr_4.runtimes")

(define-symbolic-buffer f1 int16_t)
(define-symbolic deinterleaved.s0.v0.v0 integer?)
(define-symbolic t3060 integer?)
(define-symbolic t3059 integer?)

(define axioms 
  (list ))

(define t2950 (+  (*  deinterleaved.s0.v0.v0  256)  (-  (*  t3060  128)  (min  (*  t3059  128)  120))))

(define halide-expr
 (slice_vectors
  (load f1 (ramp (+ t2950 120) 1 256) (aligned 8 0)) 0 2 128))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_4.out")