#lang rosette/safe

(require rake)
(init-logging "max_pool_expr_0.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer maximum uint8_t)
(define-symbolic filter_width integer?)
(define-symbolic output.s0.c.c integer?)
(define-symbolic maximum.s1.r$x.rebased integer?)
(define-symbolic t376 integer?)
(define-symbolic t381 integer?)
(define-symbolic t377 integer?)
(define-symbolic t379 integer?)
(define-symbolic t419 integer?)
(define-symbolic t420 integer?)
(define-symbolic t421 integer?)
(define-symbolic t423 integer?)
(define-symbolic t426 integer?)
(define-symbolic t428 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t376))
(define input.extent.0 (var-lookup 'input.extent.0 t377))
(define input.min.1 (var-lookup 'input.min.1 t379))
(define input.stride.1 (var-lookup 'input.stride.1 t381))
(define t251 (var-lookup 't251 (sca-sub  (sca-sub  (sca-sub  (sca-sub  input.min.0  t419)  t420)  t421)  input.min.0)))
(define t253 (var-lookup 't253 (sca-add  t423  t251)))
(define t271 (var-lookup 't271 t426))
(define t264 (var-lookup 't264 (sca-min  (sca-sub  input.min.1  t271)  filter_width)))
(define output.s0.c.v2.base.s (var-lookup 'output.s0.c.v2.base.s (sca-min  (sca-mul  output.s0.c.c  64)  (sca-add  input.extent.0  -64))))
(define t277 (var-lookup 't277 (sca-max  t264  0)))
(define t276 (var-lookup 't276 (sca-add  t271  t277)))
(define t275 (var-lookup 't275 (sca-add  output.s0.c.v2.base.s  t253)))
(define t279 (var-lookup 't279 (sca-add  t428  t275)))

(define halide-expr
 (vec-max
  (load maximum (ramp 0 1 64) (aligned 0 0))
  (load input (ramp (sca-add (sca-mul (sca-add maximum.s1.r$x.rebased t276) input.stride.1) t279) 1 64) (aligned 1 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "max_pool_sexp_0.out")