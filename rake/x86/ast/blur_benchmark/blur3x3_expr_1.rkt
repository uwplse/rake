#lang rosette/safe

(require rake)
(init-logging "blur3x3_expr_1.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic t264 integer?)
(define-symbolic t275 integer?)
(define-symbolic t292 integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 (var-lookup 'blur_y.extent.0 t264))
(define input.stride.1 (var-lookup 'input.stride.1 t275))
(define t235 (var-lookup 't235 (sca-min  blur_y.extent.0  16)))
(define t236 (var-lookup 't236 (sca-mul  input.stride.1  2)))
(define t195 (var-lookup 't195 (sca-add  t292  (sca-add  t235  t236))))

(define halide-expr
 (vec-div
  (vec-add
   (load input (ramp (sca-add t195 -15) 1 16) (aligned 1 0))
   (vec-add
    (load input (ramp (sca-add t195 -14) 1 16) (aligned 1 0))
    (load input (ramp (sca-add t195 -16) 1 16) (aligned 1 0))))
  (x16 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "blur3x3_sexp_1.out")