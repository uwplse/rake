#lang rosette/safe

(require rake)
(init-logging "expr_4.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer maximum uint8_t)
(define-symbolic maximum.s1.r12$x.rebased integer?)
(define-symbolic t435 integer?)
(define-symbolic output.s0.c.c integer?)
(define-symbolic filter_width integer?)
(define-symbolic t424 integer?)
(define-symbolic t430 integer?)
(define-symbolic t355 integer?)
(define-symbolic t356 integer?)
(define-symbolic t423 integer?)
(define-symbolic t360 integer?)
(define-symbolic t422 integer?)
(define-symbolic t434 integer?)
(define-symbolic t358 integer?)
(define-symbolic t426 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t355))
(define input.extent.0 (var-lookup 'input.extent.0 t356))
(define input.min.1 (var-lookup 'input.min.1 t358))
(define input.stride.1 (var-lookup 'input.stride.1 t360))
(define t293.s (var-lookup 't293.s (sca-sub  (sca-sub  (sca-sub  input.min.0  t424)  t423)  t422)))
(define t295 (var-lookup 't295 (sca-add  t426  (sca-sub  t293.s  input.min.0))))
(define t306 (var-lookup 't306 (sca-min  (sca-sub  input.min.1  t430)  filter_width)))
(define output.s0.c.v4.base.s (var-lookup 'output.s0.c.v4.base.s (sca-min  (sca-mul  output.s0.c.c  128)  (sca-add  input.extent.0  -128))))
(define t318 (var-lookup 't318 (sca-add  (sca-max  t306  0)  t434)))
(define t321 (var-lookup 't321 (sca-add  t435  (sca-add  output.s0.c.v4.base.s  t295))))

(define halide-expr
 (vec-max
  (load maximum (ramp 0 1 128) (aligned 0 0))
  (load input (ramp (sca-add (sca-mul (sca-add maximum.s1.r12$x.rebased t318) input.stride.1) t321) 1 128) (aligned 1 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_4.out")