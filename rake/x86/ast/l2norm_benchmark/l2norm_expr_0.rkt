#lang rosette/safe

(require rake)
(init-logging "l2norm_expr_0.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic t140 integer?)
(define-symbolic t136 integer?)
(define-symbolic sum_input_sq.s1.rx$x.rx$x integer?)
(define-symbolic-var input_zero uint8_t)

(define axioms 
  (list ))

(define t106 (var-lookup 't106 t136))
(define t110 (var-lookup 't110 (sca-sub  t140  t106)))

(define halide-expr
 (vec-sub
  (int16x16
   (load input (ramp (sca-add (sca-mul sum_input_sq.s1.rx$x.rx$x 16) t110) 1 16) (aligned 1 0)))
  (int16x16
   (x16 input_zero))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "l2norm_sexp_0.out")