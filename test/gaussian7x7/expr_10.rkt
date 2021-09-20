#lang rosette/safe

(require rake)
(init-logging "expr_10.runtimes")

(define-symbolic-buffer t76-buf int32_t)
(define-symbolic-buffer t78-buf int32_t)
(define t76 (load t76-buf (ramp 0 1 32) (aligned 0 0)))
(define t78 (load t78-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 (concat_vectors
  t76
  t78))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_10.out")