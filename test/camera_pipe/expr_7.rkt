#lang rosette/safe

(require rake)
(init-logging "expr_7.runtimes")

(define-symbolic-buffer f1 int16_t)
(define-symbolic t3102 integer?)
(define-symbolic deinterleaved.s0.v0.v0 integer?)
(define-symbolic t3103 integer?)

(define axioms 
  (list ))

(define t3016 (var-lookup 't3016 (sca-add  (sca-mul  deinterleaved.s0.v0.v0  256)  (sca-sub  (sca-mul  t3103  64)  (sca-min  (sca-mul  t3102  128)  120)))))

(define halide-expr
 (slice_vectors
  (load f1 (ramp (sca-add t3016 121) 1 256) (aligned 8 1)) 0 2 128))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_7.out")