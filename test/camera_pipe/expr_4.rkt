#lang rosette/safe

(require rake)
(init-logging "expr_4.runtimes")

(define-symbolic-buffer f1 int16_t)
(define-symbolic t3096 integer?)
(define-symbolic t3097 integer?)
(define-symbolic deinterleaved.s0.v0.v0 integer?)

(define axioms 
  (list ))

(define t2985 (var-lookup 't2985 (sca-add  (sca-mul  deinterleaved.s0.v0.v0  256)  (sca-sub  (sca-mul  t3097  128)  (sca-min  (sca-mul  t3096  128)  120)))))

(define halide-expr
 (slice_vectors
  (load f1 (ramp (sca-add t2985 120) 1 256) (aligned 8 0)) 0 2 128))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_4.out")