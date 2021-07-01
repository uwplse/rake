#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic blur_y.s0.y.y integer?)
(define-symbolic t124 integer?)
(define-symbolic t117 integer?)
(define-symbolic blur_y.s0.y.yi.$n.rebased integer?)
(define-symbolic t114 integer?)
(define-symbolic blur_x.s0.x.x integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 t114)
(define blur_y.extent.1 t117)
(define input.stride.1 t124)
(define blur_y.s0.y.yi.base (min  (*  blur_y.s0.y.y  128)  (+  blur_y.extent.1  -128)))
(define blur_x.s0.x.v1.base.s (+  (min  blur_y.extent.0  256)  (*  blur_x.s0.x.x  128)))

(define halide-expr
 (let ([t129  (+  (*  (+  blur_y.s0.y.yi.$n.rebased  blur_y.s0.y.yi.base)  input.stride.1)  blur_x.s0.x.v1.base.s)])
  (vec-div
   (vec-add
    (load input (ramp (+ t129 -255) 1 128) (aligned 1 0))
    (vec-add
     (load input (ramp (+ t129 -254) 1 128) (aligned 1 0))
     (load input (ramp (+ t129 -256) 1 128) (aligned 1 0))))
   (x128 (uint16_t (bv 3 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")