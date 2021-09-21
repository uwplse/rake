#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic t723 integer?)
(define-symbolic t716 integer?)
(define-symbolic sum_input.s1.r9$x.r9$x integer?)
(define-symbolic sum_input.s1.b.rebased integer?)
(define-symbolic t719 integer?)
(define-symbolic t718 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t716))
(define input.min.1 (var-lookup 'input.min.1 t718))
(define input.stride.1 (var-lookup 'input.stride.1 t719))
(define output.min.1 (var-lookup 'output.min.1 t723))

(define halide-expr
 (uint32x128
  (load input (ramp (sca-add (sca-mul sum_input.s1.r9$x.r9$x 128) (sca-sub (sca-mul (sca-sub (sca-add output.min.1 sum_input.s1.b.rebased) input.min.1) input.stride.1) input.min.0)) 1 128) (aligned 1 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")