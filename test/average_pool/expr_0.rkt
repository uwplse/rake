#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer sum uint16_t)
(define-symbolic t401 integer?)
(define-symbolic t435 integer?)
(define-symbolic t439 integer?)
(define-symbolic sum.s1.r12$x.rebased integer?)
(define-symbolic t403 integer?)
(define-symbolic output.s0.c.c integer?)
(define-symbolic t438 integer?)
(define-symbolic t399 integer?)
(define-symbolic t432 integer?)
(define-symbolic filter_width integer?)
(define-symbolic t425 integer?)
(define-symbolic t426 integer?)
(define-symbolic t427 integer?)
(define-symbolic t398 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t398))
(define input.extent.0 (var-lookup 'input.extent.0 t399))
(define input.min.1 (var-lookup 'input.min.1 t401))
(define input.stride.1 (var-lookup 'input.stride.1 t403))
(define t264.s (var-lookup 't264.s (sca-sub  (sca-sub  (sca-sub  input.min.0  t427)  t426)  t425)))
(define t274 (var-lookup 't274 (sca-min  (sca-sub  input.min.1  t432)  filter_width)))
(define t287 (var-lookup 't287 (sca-add  (sca-max  t274  0)  t435)))
(define t286 (var-lookup 't286 (sca-add  t438  (sca-sub  t264.s  input.min.0))))
(define output.s0.c.v6.base.s (var-lookup 'output.s0.c.v6.base.s (sca-min  (sca-mul  output.s0.c.c  512)  (sca-add  input.extent.0  -512))))
(define t294 (var-lookup 't294 (sca-add  t439  (sca-add  output.s0.c.v6.base.s  t286))))

(define halide-expr
 (vec-add
  (load sum (ramp 0 1 512) (aligned 0 0))
  (uint16x512
   (load input (ramp (sca-add (sca-mul (sca-add sum.s1.r12$x.rebased t287) input.stride.1) t294) 1 512) (aligned 1 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")