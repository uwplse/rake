#lang rosette/safe

(require rake)
(init-logging "matmul_expr_65.runtimes")

(define-symbolic-buffer mat_a uint8_t)
(define-symbolic-buffer sum uint32_t)
(define-symbolic sum.s1.fk$x integer?)
(define-symbolic t6141 integer?)
(define-symbolic t6626 integer?)

(define axioms 
  (list ))

(define mat_a.stride.1 (var-lookup 'mat_a.stride.1 t6141))
(define t6106 (var-lookup 't6106 t6626))

(define halide-expr
 (vec-add
  (load sum (ramp 0 1 16) (aligned 0 0))
  (uint32x16
   (load mat_a (ramp (sca-add sum.s1.fk$x t6106) mat_a.stride.1 16) (aligned 1 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "matmul_sexp_65.out")