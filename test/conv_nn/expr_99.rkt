#lang rosette/safe

(require rake)
(init-logging "expr_99.runtimes")

(define-symbolic-buffer t1746-buf int32_t)
(define t1746 (load t1746-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 t1746)

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_99.out")