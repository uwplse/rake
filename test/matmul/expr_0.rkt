#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer mat_b uint8_t)
(define-symbolic-buffer sum$1 uint32_t)
(define-symbolic column_sums_b.s0.x.x integer?)
(define-symbolic t134 integer?)
(define-symbolic sum$1.s1.fk$x integer?)

(define axioms 
  (list ))

(define mat_b.stride.1 (var-lookup 'mat_b.stride.1 t134))

(define halide-expr
 (vec-add
  (load sum$1 (ramp 0 1 128) (aligned 0 0))
  (uint32x128
   (load mat_b (ramp (sca-add (sca-mul mat_b.stride.1 sum$1.s1.fk$x) (sca-mul column_sums_b.s0.x.x 128)) 1 128) (aligned 1 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")