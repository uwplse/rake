#lang rosette/safe

(require rake)
(init-logging "conv3x3a16_expr_0.runtimes")

(define-symbolic-var input.extent.0 int32_t)
(define-symbolic-var input_bounded.s0.x.x int32_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-max
  (vec-min
   (ramp (sca-add (sca-mul input_bounded.s0.x.x (int32_t (bv 16 32))) (int32_t (bv -1 32))) (int32_t (bv 1 32)) 16)
   (x16 (sca-add input.extent.0 (int32_t (bv -1 32)))))
  (x16 (int32_t (bv 0 32)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "conv3x3a16_sexp_0.out")