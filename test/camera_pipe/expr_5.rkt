#lang rosette/safe

(require rake)
(init-logging "expr_5.runtimes")

(define-symbolic-buffer f1 int16_t)
(define-symbolic t3063 integer?)
(define-symbolic deinterleaved.s0.v0.v0 integer?)
(define-symbolic t3062 integer?)

(define axioms 
  (list ))

(define t2951 (+  (*  deinterleaved.s0.v0.v0  256)  (-  (*  t3063  128)  (min  (*  t3062  128)  120))))

(define halide-expr
 (slice_vectors
  (load f1 (ramp (+ t2951 121) 1 256) (aligned 8 1)) 0 2 128))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_5.out")