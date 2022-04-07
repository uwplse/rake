#lang rosette/safe

(require rake)
(init-logging "blur3x3_expr_3.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic blur_y.s0.x.x.rebased integer?)
(define-symbolic t275 integer?)
(define-symbolic t282 integer?)
(define-symbolic t302 integer?)

(define axioms 
  (list ))

(define input.stride.1 (var-lookup 'input.stride.1 t275))
(define t236 (var-lookup 't236 (sca-mul  input.stride.1  2)))
(define t237 (var-lookup 't237 t282))
(define t238 (var-lookup 't238 (sca-min  t237  1)))
(define t250 (var-lookup 't250 (sca-add  t302  t236)))
(define t201 (var-lookup 't201 (sca-add  (sca-mul  (sca-add  blur_y.s0.x.x.rebased  t238)  16)  t250)))

(define halide-expr
 (vec-div
  (vec-add
   (load input (ramp (sca-add t201 1) 1 16) (aligned 1 0))
   (vec-add
    (load input (ramp (sca-add t201 2) 1 16) (aligned 1 0))
    (load input (ramp t201 1 16) (aligned 1 0))))
  (x16 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "blur3x3_sexp_3.out")