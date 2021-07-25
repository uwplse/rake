#lang rosette/safe

(require rake)
(init-logging "expr_18.runtimes")

(define-symbolic-buffer t92-buf int32_t)
(define-symbolic-buffer t94-buf int32_t)
(define t92 (load t92-buf (ramp 0 1 32) (aligned 0 0)))
(define t94 (load t94-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 (concat_vectors
  t92
  t94))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_18.out")