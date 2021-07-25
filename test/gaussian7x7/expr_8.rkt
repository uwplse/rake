#lang rosette/safe

(require rake)
(init-logging "expr_8.runtimes")

(define-symbolic-buffer t73-buf int32_t)
(define-symbolic-buffer t74-buf int32_t)
(define t73 (load t73-buf (ramp 0 1 32) (aligned 0 0)))
(define t74 (load t74-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 (concat_vectors
  t73
  t74))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_8.out")