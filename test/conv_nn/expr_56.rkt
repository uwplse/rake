#lang rosette/safe

(require rake)
(init-logging "expr_56.runtimes")

(define-symbolic-buffer t1527-buf int32_t)
(define t1527 (load t1527-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 t1527)

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_56.out")