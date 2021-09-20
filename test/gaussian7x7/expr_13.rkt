#lang rosette/safe

(require rake)
(init-logging "expr_13.runtimes")

(define-symbolic-buffer t84-buf int32_t)
(define-symbolic-buffer t82-buf int32_t)
(define t84 (load t84-buf (ramp 0 1 32) (aligned 0 0)))
(define t82 (load t82-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 (concat_vectors
  t82
  t84))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_13.out")