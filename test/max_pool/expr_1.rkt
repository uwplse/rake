#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer maximum uint8_t)
(define-symbolic-var output_max uint8_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-min
  (load maximum (ramp 0 1 512) (aligned 0 0))
  (x512 output_max)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")