#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer blur_x uint16_t)
(define-symbolic blur_y.s0.y.y integer?)
(define-symbolic t107 integer?)
(define-symbolic t104 integer?)
(define-symbolic blur_y.s0.y.yi.$n.rebased integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 (var-lookup 'blur_y.extent.0 t104))
(define blur_y.extent.1 (var-lookup 'blur_y.extent.1 t107))
(define blur_y.s0.y.yi.base (var-lookup 'blur_y.s0.y.yi.base (sca-min  (sca-mul  blur_y.s0.y.y  128)  (sca-add  blur_y.extent.1  -128))))

(define halide-expr
 (let ([t131  (sca-max  blur_y.extent.0  64)])
  (let ([t132   (sca-add   blur_y.s0.y.yi.$n.rebased   blur_y.s0.y.yi.base)])
   (vec-div
    (vec-add
     (load blur_x (ramp (sca-add (sca-mul t131 (sca-add (sca-mod (sca-add t132 3) 4) 1)) -64) 1 64) (aligned 1 0))
     (vec-add
      (load blur_x (ramp (sca-add (sca-mul t131 (sca-add (sca-mod t132 4) 1)) -64) 1 64) (aligned 1 0))
      (load blur_x (ramp (sca-add (sca-mul t131 (sca-add (sca-mod (sca-add t132 2) 4) 1)) -64) 1 64) (aligned 1 0))))
    (x64 (uint16_t (bv 3 16)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")