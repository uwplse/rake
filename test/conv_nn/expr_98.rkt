#lang rosette/safe

(require rake)
(init-logging "expr_98.runtimes")

(define-symbolic-buffer t1725-buf int32_t)
(define t1725 (load t1725-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 t1725)

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_98.out")