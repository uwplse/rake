#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer blur_x uint16_t)
(define-symbolic t138 integer?)
(define-symbolic t137 integer?)
(define-symbolic blur_y.s0.x.x integer?)
(define-symbolic t139 integer?)
(define-symbolic t114 integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 t114)
(define t74 (-  (*  blur_y.s0.x.x  256)  (min  blur_y.extent.0  256)))
(define t107.s t137)
(define t108.s t138)
(define t109.s t139)

(define halide-expr
 (vec-div
  (vec-add
   (load blur_x (ramp (+ (+ t107.s t74) 256) 1 256) (aligned 1 0))
   (vec-add
    (load blur_x (ramp (+ (+ t108.s t74) 256) 1 256) (aligned 1 0))
    (load blur_x (ramp (+ (+ t109.s t74) 256) 1 256) (aligned 1 0))))
  (x256 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")