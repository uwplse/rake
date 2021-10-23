#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-var bounded_input.s0.y.min_1 int32_t)
(define-symbolic-var input.stride.1 int32_t)
(define-symbolic-var input.extent.0 int32_t)
(define-symbolic-var bounded_input.s0.y.rebased int32_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-add
  (vec-max
   (vec-min
    (ramp (int32_t (bv -1 32)) (int32_t (bv 1 32)) 16)
    (x16 (sca-add input.extent.0 (int32_t (bv -1 32)))))
   (x16 (int32_t (bv 0 32))))
  (x16 (sca-mul (sca-add bounded_input.s0.y.min_1 bounded_input.s0.y.rebased) input.stride.1))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_0.out")