#lang rosette/safe

(require rake)
(init-logging "expr_14.runtimes")

(define-symbolic-buffer t84-buf int32_t)
(define-symbolic-buffer t86-buf int32_t)
(define t84 (load t84-buf (ramp 0 1 32) (aligned 0 0)))
(define t86 (load t86-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 (concat_vectors
  t84
  t86))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_14.out")