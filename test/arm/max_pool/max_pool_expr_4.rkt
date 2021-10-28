#lang rosette/safe

(require rake)
(init-logging "max_pool_expr_4.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer maximum uint8_t)
(define-symbolic maximum.s1.r12$x.rebased integer?)
(define-symbolic t462 integer?)
(define-symbolic filter_width integer?)
(define-symbolic output.s0.c.c integer?)
(define-symbolic t455 integer?)
(define-symbolic t457 integer?)
(define-symbolic t460 integer?)
(define-symbolic t453 integer?)
(define-symbolic t454 integer?)
(define-symbolic t381 integer?)
(define-symbolic t376 integer?)
(define-symbolic t377 integer?)
(define-symbolic t379 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t376))
(define input.extent.0 (var-lookup 'input.extent.0 t377))
(define input.min.1 (var-lookup 'input.min.1 t379))
(define input.stride.1 (var-lookup 'input.stride.1 t381))
(define t315 (var-lookup 't315 (sca-sub  (sca-sub  (sca-sub  (sca-sub  input.min.0  t455)  t454)  t453)  input.min.0)))
(define t317 (var-lookup 't317 (sca-add  t457  t315)))
(define t335 (var-lookup 't335 t460))
(define t328 (var-lookup 't328 (sca-min  (sca-sub  input.min.1  t335)  filter_width)))
(define output.s0.c.v4.base.s (var-lookup 'output.s0.c.v4.base.s (sca-min  (sca-mul  output.s0.c.c  16)  (sca-add  input.extent.0  -16))))
(define t341 (var-lookup 't341 (sca-max  t328  0)))
(define t340 (var-lookup 't340 (sca-add  t335  t341)))
(define t339 (var-lookup 't339 (sca-add  output.s0.c.v4.base.s  t317)))
(define t343 (var-lookup 't343 (sca-add  t462  t339)))

(define halide-expr
 (vec-max
  (load maximum (ramp 0 1 16) (aligned 0 0))
  (load input (ramp (sca-add (sca-mul (sca-add maximum.s1.r12$x.rebased t340) input.stride.1) t343) 1 16) (aligned 1 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "max_pool_sexp_4.out")