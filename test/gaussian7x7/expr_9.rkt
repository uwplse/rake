#lang rosette/safe

(require rake)
(init-logging "expr_9.runtimes")

(define-symbolic-buffer t76-buf int32_t)
(define-symbolic-buffer t74-buf int32_t)
(define t76 (load t76-buf (ramp 0 1 32) (aligned 0 0)))
(define t74 (load t74-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 (concat_vectors
  t74
  t76))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_9.out")