#lang rosette/safe

(require rake)
(init-logging "blur3x3_expr_5.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic t264 integer?)
(define-symbolic t275 integer?)
(define-symbolic t283 integer?)
(define-symbolic t310 integer?)
(define-symbolic blur_y.s0.x.x.rebased integer?)
(define-symbolic t282 integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 (var-lookup 'blur_y.extent.0 t264))
(define input.stride.1 (var-lookup 'input.stride.1 t275))
(define t236 (var-lookup 't236 (sca-mul  input.stride.1  2)))
(define t237 (var-lookup 't237 t282))
(define t238 (var-lookup 't238 (sca-min  t237  1)))
(define t230 (var-lookup 't230 (sca-max  t283  t238)))
(define blur_y.s0.x.v0.base (var-lookup 'blur_y.s0.x.v0.base (sca-min  (sca-mul  (sca-add  blur_y.s0.x.x.rebased  t230)  16)  (sca-add  blur_y.extent.0  -16))))
(define blur_x.s0.x.min_2 (var-lookup 'blur_x.s0.x.min_2 (sca-min  (sca-mul  (sca-add  blur_y.s0.x.x.rebased  t230)  16)  blur_y.extent.0)))
(define blur_x.s0.x.v1.base (var-lookup 'blur_x.s0.x.v1.base (sca-min  blur_x.s0.x.min_2  blur_y.s0.x.v0.base)))
(define t256 (var-lookup 't256 (sca-add  t310  t236)))
(define t206 (var-lookup 't206 (sca-add  blur_x.s0.x.v1.base  t256)))

(define halide-expr
 (vec-div
  (vec-add
   (load input (ramp (sca-add t206 1) 1 16) (aligned 1 0))
   (vec-add
    (load input (ramp (sca-add t206 2) 1 16) (aligned 1 0))
    (load input (ramp t206 1 16) (aligned 1 0))))
  (x16 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "blur3x3_sexp_5.out")