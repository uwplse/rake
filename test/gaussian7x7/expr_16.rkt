#lang rosette/safe

(require rake)
(init-logging "expr_16.runtimes")

(define-symbolic-buffer t89-buf int32_t)
(define-symbolic-buffer t90-buf int32_t)
(define t89 (load t89-buf (ramp 0 1 32) (aligned 0 0)))
(define t90 (load t90-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 (concat_vectors
  t89
  t90))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_16.out")