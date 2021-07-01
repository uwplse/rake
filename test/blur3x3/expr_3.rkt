#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer blur_x uint16_t)
(define-symbolic t143 integer?)
(define-symbolic t144 integer?)
(define-symbolic t145 integer?)

(define axioms 
  (list ))

(define t110 t143)
(define t111 t144)
(define t112 t145)

(define halide-expr
 (vec-div
  (vec-add
   (load blur_x (ramp (+ t110 -256) 1 256) (aligned 1 0))
   (vec-add
    (load blur_x (ramp (+ t111 -256) 1 256) (aligned 1 0))
    (load blur_x (ramp (+ t112 -256) 1 256) (aligned 1 0))))
  (x256 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")