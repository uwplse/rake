#lang rosette/safe

(require rake)
(init-logging "blur3x3_expr_0.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic blur_y.s0.x.x integer?)
(define-symbolic t264 integer?)
(define-symbolic t275 integer?)
(define-symbolic t288 integer?)
(define-symbolic t287 integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 (var-lookup 'blur_y.extent.0 t264))
(define input.stride.1 (var-lookup 'input.stride.1 t275))
(define t236 (var-lookup 't236 (sca-mul  input.stride.1  2)))
(define t241 (var-lookup 't241 (sca-add  t287  t236)))
(define blur_y.s0.x.v0.base (var-lookup 'blur_y.s0.x.v0.base (sca-min  (sca-mul  blur_y.s0.x.x  16)  (sca-add  blur_y.extent.0  -16))))
(define blur_x.s0.x.min_2 (var-lookup 'blur_x.s0.x.min_2 t288))
(define blur_x.s0.x.v1.base (var-lookup 'blur_x.s0.x.v1.base (sca-min  blur_x.s0.x.min_2  blur_y.s0.x.v0.base)))
(define t192 (var-lookup 't192 (sca-add  blur_x.s0.x.v1.base  t241)))

(define halide-expr
 (vec-div
  (vec-add
   (load input (ramp (sca-add t192 1) 1 16) (aligned 1 0))
   (vec-add
    (load input (ramp (sca-add t192 2) 1 16) (aligned 1 0))
    (load input (ramp t192 1 16) (aligned 1 0))))
  (x16 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "blur3x3_sexp_0.out")