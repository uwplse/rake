#lang rosette/safe

(require rake)
(init-logging "average_pool_expr_4.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer sum uint16_t)
(define-symbolic filter_width integer?)
(define-symbolic t419 integer?)
(define-symbolic t420 integer?)
(define-symbolic t424 integer?)
(define-symbolic t422 integer?)
(define-symbolic sum.s1.r$x.rebased integer?)
(define-symbolic output.s0.c.c integer?)
(define-symbolic t502 integer?)
(define-symbolic t503 integer?)
(define-symbolic t504 integer?)
(define-symbolic t507 integer?)
(define-symbolic t511 integer?)
(define-symbolic t513 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t419))
(define input.extent.0 (var-lookup 'input.extent.0 t420))
(define input.min.1 (var-lookup 'input.min.1 t422))
(define input.stride.1 (var-lookup 'input.stride.1 t424))
(define t354 (var-lookup 't354 (sca-sub  (sca-sub  (sca-sub  (sca-sub  input.min.0  t502)  t503)  t504)  input.min.0)))
(define t372 (var-lookup 't372 t507))
(define t364 (var-lookup 't364 (sca-min  (sca-sub  input.min.1  t372)  filter_width)))
(define t381 (var-lookup 't381 (sca-max  t364  0)))
(define t377 (var-lookup 't377 (sca-add  t372  t381)))
(define t376 (var-lookup 't376 (sca-add  t511  t354)))
(define output.s0.c.v8.base.s (var-lookup 'output.s0.c.v8.base.s (sca-min  (sca-mul  output.s0.c.c  16)  (sca-add  input.extent.0  -16))))
(define t383 (var-lookup 't383 (sca-add  output.s0.c.v8.base.s  t376)))
(define t384 (var-lookup 't384 (sca-add  t513  t383)))

(define halide-expr
 (vec-add
  (load sum (ramp 0 1 16) (aligned 0 0))
  (uint16x16
   (load input (ramp (sca-add (sca-mul (sca-add sum.s1.r$x.rebased t377) input.stride.1) t384) 1 16) (aligned 1 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "average_pool_sexp_4.out")