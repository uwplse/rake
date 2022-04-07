#lang rosette/safe

(require rake)
(init-logging "matmul_expr_0.runtimes")

(define-symbolic-buffer mat_b uint8_t)
(define-symbolic-buffer sum$1 uint32_t)
(define-symbolic sum$1.s1.fk$x integer?)
(define-symbolic column_sums_b.s0.x.x integer?)
(define-symbolic t6148 integer?)
(define-symbolic t6169 integer?)

(define axioms 
  (list ))

(define mat_b.stride.1 (var-lookup 'mat_b.stride.1 t6148))
(define t5837 (var-lookup 't5837 t6169))
(define column_sums_b.s0.x.v10.base.s (var-lookup 'column_sums_b.s0.x.v10.base.s (sca-min  (sca-add  t5837  -1)  column_sums_b.s0.x.x)))
(define t5838 (var-lookup 't5838 (sca-mul  column_sums_b.s0.x.v10.base.s  16)))

(define halide-expr
 (vec-add
  (load sum$1 (ramp 0 1 16) (aligned 0 0))
  (uint32x16
   (load mat_b (ramp (sca-add (sca-mul mat_b.stride.1 sum$1.s1.fk$x) t5838) 1 16) (aligned 1 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "matmul_sexp_0.out")