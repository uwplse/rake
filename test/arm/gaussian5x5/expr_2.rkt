#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-var t86 int32_t)
(define-symbolic-var input.extent.0 int32_t)
(define-symbolic-var t89 int32_t)
(define-symbolic-var bounded_input.s0.x.x.rebased int32_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-add
  (vec-max
   (vec-min
    (ramp (sca-add (sca-mul (sca-add bounded_input.s0.x.x.rebased t86) (int32_t (bv 16 32))) (int32_t (bv -2 32))) (int32_t (bv 1 32)) 16)
    (x16 (sca-add input.extent.0 (int32_t (bv -1 32)))))
   (x16 (int32_t (bv 0 32))))
  (x16 t89)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_2.out")