#lang rosette/safe

(require rake)
(init-logging "max_pool_expr_3.runtimes")

(define-symbolic-buffer maximum uint8_t)
(define-symbolic-var output_max uint8_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-min
  (load maximum (ramp 0 1 32) (aligned 0 0))
  (x32 output_max)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "max_pool_sexp_3.out")