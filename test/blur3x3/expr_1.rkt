#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic t105 integer?)
(define-symbolic t115 integer?)
(define-symbolic t123 integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 (var-lookup 'blur_y.extent.0 t105))
(define input.stride.1 (var-lookup 'input.stride.1 t115))
(define t70 (var-lookup 't70 (sca-add  t123  (sca-add  (sca-mul  input.stride.1  2)  blur_y.extent.0))))

(define halide-expr
 (vec-div
  (vec-add
   (load input (ramp (sca-add t70 -63) 1 64) (aligned 1 0))
   (vec-add
    (load input (ramp (sca-add t70 -62) 1 64) (aligned 1 0))
    (load input (ramp (sca-add t70 -64) 1 64) (aligned 1 0))))
  (x64 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")