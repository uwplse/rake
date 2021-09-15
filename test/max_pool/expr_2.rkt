#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer maximum uint8_t)
(define-symbolic t402 integer?)
(define-symbolic t410 integer?)
(define-symbolic t415 integer?)
(define-symbolic output.s0.c.c integer?)
(define-symbolic maximum.s1.r12$x.rebased integer?)
(define-symbolic filter_width integer?)
(define-symbolic t355 integer?)
(define-symbolic t356 integer?)
(define-symbolic t404 integer?)
(define-symbolic t406 integer?)
(define-symbolic t403 integer?)
(define-symbolic t360 integer?)
(define-symbolic t358 integer?)
(define-symbolic t414 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t355))
(define input.extent.0 (var-lookup 'input.extent.0 t356))
(define input.min.1 (var-lookup 'input.min.1 t358))
(define input.stride.1 (var-lookup 'input.stride.1 t360))
(define t261.s (var-lookup 't261.s (sca-sub  (sca-sub  (sca-sub  input.min.0  t404)  t403)  t402)))
(define t263 (var-lookup 't263 (sca-add  t406  (sca-sub  t261.s  input.min.0))))
(define t274 (var-lookup 't274 (sca-min  (sca-sub  input.min.1  t410)  filter_width)))
(define output.s0.c.v3.base.s (var-lookup 'output.s0.c.v3.base.s (sca-min  (sca-mul  output.s0.c.c  256)  (sca-add  input.extent.0  -256))))
(define t286 (var-lookup 't286 (sca-add  (sca-max  t274  0)  t414)))
(define t289 (var-lookup 't289 (sca-add  t415  (sca-add  output.s0.c.v3.base.s  t263))))

(define halide-expr
 (vec-max
  (load maximum (ramp 0 1 256) (aligned 0 0))
  (load input (ramp (sca-add (sca-mul (sca-add maximum.s1.r12$x.rebased t286) input.stride.1) t289) 1 256) (aligned 1 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")