#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer maximum uint8_t)
(define-symbolic t394 integer?)
(define-symbolic maximum.s1.r12$x.rebased integer?)
(define-symbolic output.s0.c.c integer?)
(define-symbolic t360 integer?)
(define-symbolic t356 integer?)
(define-symbolic t395 integer?)
(define-symbolic t382 integer?)
(define-symbolic t383 integer?)
(define-symbolic t384 integer?)
(define-symbolic t386 integer?)
(define-symbolic t390 integer?)
(define-symbolic filter_width integer?)
(define-symbolic t355 integer?)
(define-symbolic t358 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t355))
(define input.extent.0 (var-lookup 'input.extent.0 t356))
(define input.min.1 (var-lookup 'input.min.1 t358))
(define input.stride.1 (var-lookup 'input.stride.1 t360))
(define t229.s (var-lookup 't229.s (sca-sub  (sca-sub  (sca-sub  input.min.0  t384)  t383)  t382)))
(define t231 (var-lookup 't231 (sca-add  t386  (sca-sub  t229.s  input.min.0))))
(define t242 (var-lookup 't242 (sca-min  (sca-sub  input.min.1  t390)  filter_width)))
(define output.s0.c.v2.base.s (var-lookup 'output.s0.c.v2.base.s (sca-min  (sca-mul  output.s0.c.c  512)  (sca-add  input.extent.0  -512))))
(define t254 (var-lookup 't254 (sca-add  (sca-max  t242  0)  t394)))
(define t257 (var-lookup 't257 (sca-add  t395  (sca-add  output.s0.c.v2.base.s  t231))))

(define halide-expr
 (vec-max
  (load maximum (ramp 0 1 512) (aligned 0 0))
  (load input (ramp (sca-add (sca-mul (sca-add maximum.s1.r12$x.rebased t254) input.stride.1) t257) 1 512) (aligned 1 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")