#lang rosette/safe

(require rake)
(init-logging "average_pool_expr_2.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer sum uint16_t)
(define-symbolic filter_width integer?)
(define-symbolic sum.s1.r$x.rebased integer?)
(define-symbolic t419 integer?)
(define-symbolic t420 integer?)
(define-symbolic t424 integer?)
(define-symbolic t422 integer?)
(define-symbolic output.s0.c.c integer?)
(define-symbolic t482 integer?)
(define-symbolic t483 integer?)
(define-symbolic t484 integer?)
(define-symbolic t487 integer?)
(define-symbolic t491 integer?)
(define-symbolic t493 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t419))
(define input.extent.0 (var-lookup 'input.extent.0 t420))
(define input.min.1 (var-lookup 'input.min.1 t422))
(define input.stride.1 (var-lookup 'input.stride.1 t424))
(define t320 (var-lookup 't320 (sca-sub  (sca-sub  (sca-sub  (sca-sub  input.min.0  t482)  t483)  t484)  input.min.0)))
(define t338 (var-lookup 't338 t487))
(define t330 (var-lookup 't330 (sca-min  (sca-sub  input.min.1  t338)  filter_width)))
(define t347 (var-lookup 't347 (sca-max  t330  0)))
(define t343 (var-lookup 't343 (sca-add  t338  t347)))
(define t342 (var-lookup 't342 (sca-add  t491  t320)))
(define output.s0.c.v7.base.s (var-lookup 'output.s0.c.v7.base.s (sca-min  (sca-mul  output.s0.c.c  32)  (sca-add  input.extent.0  -32))))
(define t349 (var-lookup 't349 (sca-add  output.s0.c.v7.base.s  t342)))
(define t350 (var-lookup 't350 (sca-add  t493  t349)))

(define halide-expr
 (vec-add
  (load sum (ramp 0 1 32) (aligned 0 0))
  (uint16x32
   (load input (ramp (sca-add (sca-mul (sca-add sum.s1.r$x.rebased t343) input.stride.1) t350) 1 32) (aligned 1 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "average_pool_sexp_2.out")