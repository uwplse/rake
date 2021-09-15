#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic t119 integer?)
(define-symbolic sum_input_sq.s1.r8$x.r8$x integer?)
(define-symbolic t123 integer?)
(define-symbolic-var input_zero uint8_t)
(define-symbolic t118 integer?)

(define axioms 
  (list ))

(define input.min.1 (var-lookup 'input.min.1 t118))
(define input.stride.1 (var-lookup 'input.stride.1 t119))
(define output.min.1 (var-lookup 'output.min.1 t123))

(define halide-expr
 (vec-sub
  (int16x128
   (load input (ramp (sca-add (sca-mul sum_input_sq.s1.r8$x.r8$x 128) (sca-mul (sca-sub (sca-add output.min.1 output.s0.y.rebased) input.min.1) input.stride.1)) 1 128) (aligned 1 0)))
  (int16x128
   (x128 input_zero))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")