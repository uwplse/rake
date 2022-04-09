#lang rosette/safe

(require rake)
(init-logging "blur3x3_expr_6.runtimes")

(define-symbolic-buffer blur_x uint16_t)
(define-symbolic blur_y.s0.y.y integer?)
(define-symbolic t264 integer?)
(define-symbolic t284 integer?)
(define-symbolic blur_y.s0.y.yi.$n integer?)
(define-symbolic t283 integer?)
(define-symbolic blur_y.s0.x.x.rebased integer?)
(define-symbolic t267 integer?)
(define-symbolic t282 integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 (var-lookup 'blur_y.extent.0 t264))
(define blur_y.extent.1 (var-lookup 'blur_y.extent.1 t267))
(define t235 (var-lookup 't235 (sca-min  blur_y.extent.0  16)))
(define t237 (var-lookup 't237 t282))
(define t238 (var-lookup 't238 (sca-min  t237  1)))
(define t239 (var-lookup 't239 (sca-add  t235  -16)))
(define t230 (var-lookup 't230 (sca-max  t283  t238)))
(define t227 (var-lookup 't227 (sca-min  t284  t239)))
(define blur_y.s0.y.yi.base (var-lookup 'blur_y.s0.y.yi.base (sca-min  (sca-mul  blur_y.s0.y.y  32)  (sca-add  blur_y.extent.1  -32))))
(define blur_y.s0.x.v0.base (var-lookup 'blur_y.s0.x.v0.base (sca-min  (sca-mul  (sca-add  blur_y.s0.x.x.rebased  t230)  16)  (sca-add  blur_y.extent.0  -16))))
(define t260 (var-lookup 't260 (sca-add  blur_y.s0.y.yi.$n  blur_y.s0.y.yi.base)))
(define t261 (var-lookup 't261 (sca-sub  blur_y.extent.0  t227)))

(define halide-expr
 (vec-div
  (vec-add
   (load blur_x (ramp (sca-add (sca-sub (sca-mul (sca-mod (sca-add t260 1) 4) t261) t227) blur_y.s0.x.v0.base) 1 16) (aligned 1 0))
   (vec-add
    (load blur_x (ramp (sca-add (sca-sub (sca-mul (sca-mod (sca-add t260 2) 4) t261) t227) blur_y.s0.x.v0.base) 1 16) (aligned 1 0))
    (load blur_x (ramp (sca-add (sca-sub (sca-mul (sca-mod t260 4) t261) t227) blur_y.s0.x.v0.base) 1 16) (aligned 1 0))))
  (x16 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "blur3x3_sexp_6.out")