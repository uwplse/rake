#lang rosette/safe

(require rake)
(init-logging "dilate3x3_expr_0.runtimes")

(define-symbolic-var bounded_input.s0.x.x int32_t)
(define-symbolic-var input.extent.0 int32_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-max
  (vec-min
   (ramp (sca-add (sca-mul bounded_input.s0.x.x (int32_t (bv 16 32))) (int32_t (bv -1 32))) (int32_t (bv 1 32)) 16)
   (x16 (sca-add input.extent.0 (int32_t (bv -1 32)))))
  (x16 (int32_t (bv 0 32)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "dilate3x3_sexp_0.out")