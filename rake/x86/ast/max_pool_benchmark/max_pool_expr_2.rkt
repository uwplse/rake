#lang rosette/safe

(require rake)
(init-logging "max_pool_expr_2.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer maximum uint8_t)
(define-symbolic filter_width integer?)
(define-symbolic output.s0.c.c integer?)
(define-symbolic maximum.s1.r$x.rebased integer?)
(define-symbolic t376 integer?)
(define-symbolic t381 integer?)
(define-symbolic t377 integer?)
(define-symbolic t379 integer?)
(define-symbolic t436 integer?)
(define-symbolic t437 integer?)
(define-symbolic t438 integer?)
(define-symbolic t440 integer?)
(define-symbolic t443 integer?)
(define-symbolic t445 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t376))
(define input.extent.0 (var-lookup 'input.extent.0 t377))
(define input.min.1 (var-lookup 'input.min.1 t379))
(define input.stride.1 (var-lookup 'input.stride.1 t381))
(define t283 (var-lookup 't283 (sca-sub  (sca-sub  (sca-sub  (sca-sub  input.min.0  t436)  t437)  t438)  input.min.0)))
(define t285 (var-lookup 't285 (sca-add  t440  t283)))
(define t303 (var-lookup 't303 t443))
(define t296 (var-lookup 't296 (sca-min  (sca-sub  input.min.1  t303)  filter_width)))
(define output.s0.c.v3.base.s (var-lookup 'output.s0.c.v3.base.s (sca-min  (sca-mul  output.s0.c.c  32)  (sca-add  input.extent.0  -32))))
(define t309 (var-lookup 't309 (sca-max  t296  0)))
(define t308 (var-lookup 't308 (sca-add  t303  t309)))
(define t307 (var-lookup 't307 (sca-add  output.s0.c.v3.base.s  t285)))
(define t311 (var-lookup 't311 (sca-add  t445  t307)))

(define halide-expr
 (vec-max
  (load maximum (ramp 0 1 32) (aligned 0 0))
  (load input (ramp (sca-add (sca-mul (sca-add maximum.s1.r$x.rebased t308) input.stride.1) t311) 1 32) (aligned 1 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "max_pool_sexp_2.out")