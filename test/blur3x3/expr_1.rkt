#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic t124 integer?)
(define-symbolic t114 integer?)
(define-symbolic t133 integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 t114)
(define input.stride.1 t124)
(define t71 (+  t133  (+  (*  input.stride.1  2)  blur_y.extent.0)))

(define halide-expr
 (vec-div
  (vec-add
   (load input (ramp (+ t71 -127) 1 128) (aligned 1 0))
   (vec-add
    (load input (ramp (+ t71 -126) 1 128) (aligned 1 0))
    (load input (ramp (+ t71 -128) 1 128) (aligned 1 0))))
  (x128 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")