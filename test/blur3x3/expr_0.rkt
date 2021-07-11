#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic blur_y.s0.y.y integer?)
(define-symbolic t107 integer?)
(define-symbolic t114 integer?)
(define-symbolic t104 integer?)
(define-symbolic blur_y.s0.y.yi.$n.rebased integer?)
(define-symbolic blur_x.s0.x.x integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 (var-lookup 'blur_y.extent.0 t104))
(define blur_y.extent.1 (var-lookup 'blur_y.extent.1 t107))
(define input.stride.1 (var-lookup 'input.stride.1 t114))
(define blur_y.s0.y.yi.base (var-lookup 'blur_y.s0.y.yi.base (sca-min  (sca-mul  blur_y.s0.y.y  128)  (sca-add  blur_y.extent.1  -128))))
(define blur_x.s0.x.v1.base.s (var-lookup 'blur_x.s0.x.v1.base.s (sca-add  (sca-min  blur_y.extent.0  64)  (sca-mul  blur_x.s0.x.x  64))))

(define halide-expr
 (let ([t118  (sca-add  (sca-mul  (sca-add  blur_y.s0.y.yi.$n.rebased  blur_y.s0.y.yi.base)  input.stride.1)  blur_x.s0.x.v1.base.s)])
  (vec-div
   (vec-add
    (load input (ramp (sca-add t118 -63) 1 64) (aligned 1 0))
    (vec-add
     (load input (ramp (sca-add t118 -62) 1 64) (aligned 1 0))
     (load input (ramp (sca-add t118 -64) 1 64) (aligned 1 0))))
   (x64 (uint16_t (bv 3 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")