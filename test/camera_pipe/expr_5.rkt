#lang rosette/safe

(require rake)
(init-logging "expr_5.runtimes")

(define-symbolic-buffer f1 int16_t)
(define-symbolic t3099 integer?)
(define-symbolic t3100 integer?)
(define-symbolic deinterleaved.s0.v0.v0 integer?)

(define axioms 
  (list ))

(define t2986 (var-lookup 't2986 (sca-add  (sca-mul  deinterleaved.s0.v0.v0  256)  (sca-sub  (sca-mul  t3100  128)  (sca-min  (sca-mul  t3099  128)  120)))))

(define halide-expr
 (slice_vectors
  (load f1 (ramp (sca-add t2986 121) 1 256) (aligned 8 1)) 0 2 128))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_5.out")