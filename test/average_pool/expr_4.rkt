#lang rosette/safe

(require rake)
(init-logging "expr_4.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer sum uint16_t)
(define-symbolic t398 integer?)
(define-symbolic t472 integer?)
(define-symbolic t481 integer?)
(define-symbolic t399 integer?)
(define-symbolic output.s0.c.c integer?)
(define-symbolic t403 integer?)
(define-symbolic t486 integer?)
(define-symbolic filter_width integer?)
(define-symbolic t473 integer?)
(define-symbolic t401 integer?)
(define-symbolic sum.s1.r12$x.rebased integer?)
(define-symbolic t478 integer?)
(define-symbolic t471 integer?)
(define-symbolic t484 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t398))
(define input.extent.0 (var-lookup 'input.extent.0 t399))
(define input.min.1 (var-lookup 'input.min.1 t401))
(define input.stride.1 (var-lookup 'input.stride.1 t403))
(define t332.s (var-lookup 't332.s (sca-sub  (sca-sub  (sca-sub  input.min.0  t473)  t472)  t471)))
(define t342 (var-lookup 't342 (sca-min  (sca-sub  input.min.1  t478)  filter_width)))
(define t355 (var-lookup 't355 (sca-add  (sca-max  t342  0)  t481)))
(define t354 (var-lookup 't354 (sca-add  t484  (sca-sub  t332.s  input.min.0))))
(define output.s0.c.v8.base.s (var-lookup 'output.s0.c.v8.base.s (sca-min  (sca-mul  output.s0.c.c  128)  (sca-add  input.extent.0  -128))))
(define t362 (var-lookup 't362 (sca-add  t486  (sca-add  output.s0.c.v8.base.s  t354))))

(define halide-expr
 (vec-add
  (load sum (ramp 0 1 128) (aligned 0 0))
  (uint16x128
   (load input (ramp (sca-add (sca-mul (sca-add sum.s1.r12$x.rebased t355) input.stride.1) t362) 1 128) (aligned 1 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_4.out")