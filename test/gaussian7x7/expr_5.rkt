#lang rosette/safe

(require rake)
(init-logging "expr_5.runtimes")

(define-symbolic-buffer t66-buf int32_t)
(define-symbolic-buffer t68-buf int32_t)
(define t66 (load t66-buf (ramp 0 1 32) (aligned 0 0)))
(define t68 (load t68-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 (concat_vectors
  t66
  t68))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_5.out")