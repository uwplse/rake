#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer blur_x uint16_t)
(define-symbolic t105 integer?)
(define-symbolic blur_y.s0.y.y integer?)
(define-symbolic blur_y.s0.x.x integer?)
(define-symbolic t108 integer?)
(define-symbolic blur_y.s0.y.yi.$n.rebased integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 (var-lookup 'blur_y.extent.0 t105))
(define blur_y.extent.1 (var-lookup 'blur_y.extent.1 t108))
(define blur_y.s0.y.yi.base (var-lookup 'blur_y.s0.y.yi.base (sca-min  (sca-mul  blur_y.s0.y.y  128)  (sca-add  blur_y.extent.1  -128))))
(define t73 (var-lookup 't73 (sca-sub  (sca-mul  blur_y.s0.x.x  64)  (sca-min  blur_y.extent.0  64))))

(define halide-expr
 (let ([t127  (sca-max  blur_y.extent.0  64)])
  (let ([t128   (sca-add   blur_y.s0.y.yi.$n.rebased   blur_y.s0.y.yi.base)])
   (vec-div
    (vec-add
     (load blur_x (ramp (sca-add (sca-add (sca-mul t127 (sca-mod (sca-add t128 3) 4)) t73) 64) 1 64) (aligned 1 0))
     (vec-add
      (load blur_x (ramp (sca-add (sca-add (sca-mul t127 (sca-mod t128 4)) t73) 64) 1 64) (aligned 1 0))
      (load blur_x (ramp (sca-add (sca-add (sca-mul t127 (sca-mod (sca-add t128 2) 4)) t73) 64) 1 64) (aligned 1 0))))
    (x64 (uint16_t (bv 3 16)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")