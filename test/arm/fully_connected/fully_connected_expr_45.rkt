#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_45.runtimes")

(define-symbolic-buffer bias int32_t)
(define-symbolic output.s0.c.co integer?)
(define-symbolic-var t921 int32_t)
(define-symbolic t744 integer?)
(define-symbolic t745 integer?)
(define-symbolic-var t922 int32_t)
(define-symbolic t726 integer?)
(define-symbolic-var t695 int32_t)

(define axioms 
  (list ))

(define bias.min.0 (var-lookup 'bias.min.0 t726))
(define output.min.0 (var-lookup 'output.min.0 t744))
(define output.extent.0 (var-lookup 'output.extent.0 t745))
(define output.s0.c.c.base.s (var-lookup 'output.s0.c.c.base.s (sca-min  (sca-mul  output.s0.c.co  8)  (sca-add  output.extent.0  -8))))
(define t694 (var-lookup 't694 (sca-sub  output.min.0  bias.min.0)))
(define t707 (var-lookup 't707 (sca-add  output.s0.c.c.base.s  t694)))

(define halide-expr
 (vec-add
  (load bias (ramp t707 1 8) (aligned 1 0))
  (x8 (sca-sub t695 (sca-mul t921 t922)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "fully_connected_sexp_45.out")