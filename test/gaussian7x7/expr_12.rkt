#lang rosette/safe

(require rake)
(init-logging "expr_12.runtimes")

(define-symbolic-buffer t81-buf int32_t)
(define-symbolic-buffer t82-buf int32_t)
(define t81 (load t81-buf (ramp 0 1 32) (aligned 0 0)))
(define t82 (load t82-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 (concat_vectors
  t81
  t82))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_12.out")