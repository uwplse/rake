#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_21.runtimes")

(define-symbolic-buffer bias int32_t)
(define-symbolic output.s0.c.co integer?)
(define-symbolic t744 integer?)
(define-symbolic t745 integer?)
(define-symbolic-var t669 int32_t)
(define-symbolic t726 integer?)
(define-symbolic-var t838 int32_t)
(define-symbolic-var t837 int32_t)

(define axioms 
  (list ))

(define bias.min.0 (var-lookup 'bias.min.0 t726))
(define output.min.0 (var-lookup 'output.min.0 t744))
(define output.extent.0 (var-lookup 'output.extent.0 t745))
(define t668 (var-lookup 't668 (sca-sub  output.min.0  bias.min.0)))
(define output.s0.c.c.base.s (var-lookup 'output.s0.c.c.base.s (sca-min  (sca-mul  output.s0.c.co  4)  (sca-add  output.extent.0  -4))))
(define t677 (var-lookup 't677 (sca-add  output.s0.c.c.base.s  t668)))

(define halide-expr
 (vec-add
  (load bias (ramp t677 1 4) (aligned 1 0))
  (x4 (sca-sub t669 (sca-mul t837 t838)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "fully_connected_sexp_21.out")