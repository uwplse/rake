#lang rosette/safe

(require rake)
(init-logging "max_pool_expr_5.runtimes")

(define-symbolic-buffer maximum uint8_t)
(define-symbolic-var output_max uint8_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-min
  (load maximum (ramp 0 1 16) (aligned 0 0))
  (x16 output_max)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "max_pool_sexp_5.out")