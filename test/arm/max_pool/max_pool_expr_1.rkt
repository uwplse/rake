#lang rosette/safe

(require rake)
(init-logging "max_pool_expr_1.runtimes")

(define-symbolic-buffer maximum uint8_t)
(define-symbolic-var output_max uint8_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-min
  (load maximum (ramp 0 1 64) (aligned 0 0))
  (x64 output_max)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "max_pool_sexp_1.out")