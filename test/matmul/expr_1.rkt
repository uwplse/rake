#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer mat_b uint8_t)
(define-symbolic t134 integer?)
(define-symbolic mat_b_swizzled.s0.y integer?)
(define-symbolic output.s0.x.xo integer?)

(define axioms 
  (list ))

(define mat_b.stride.1 (var-lookup 'mat_b.stride.1 t134))

(define halide-expr
 (interleave4
  (load mat_b (ramp (sca-mul (sca-add (sca-mul mat_b.stride.1 mat_b_swizzled.s0.y) (sca-mul output.s0.x.xo 32)) 4) 1 128) (aligned 4 0))
  (load mat_b (ramp (sca-add (sca-mul (sca-add (sca-mul mat_b_swizzled.s0.y 4) 1) mat_b.stride.1) (sca-mul output.s0.x.xo 128)) 1 128) (aligned 1 0))
  (load mat_b (ramp (sca-add (sca-mul (sca-add (sca-mul mat_b_swizzled.s0.y 4) 2) mat_b.stride.1) (sca-mul output.s0.x.xo 128)) 1 128) (aligned 2 0))
  (load mat_b (ramp (sca-add (sca-mul (sca-add (sca-mul mat_b_swizzled.s0.y 4) 3) mat_b.stride.1) (sca-mul output.s0.x.xo 128)) 1 128) (aligned 1 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")