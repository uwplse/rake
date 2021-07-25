#lang rosette/safe

(require rake)
(init-logging "expr_57.runtimes")

(define-symbolic-buffer t1548-buf int32_t)
(define t1548 (load t1548-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 t1548)

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_57.out")