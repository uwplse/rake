#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_46.runtimes")

(define-symbolic-buffer multiplied int32_t)
(define-symbolic-buffer sum_filter uint32_t)
(define-symbolic-var t924 int32_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-sub
  (load multiplied (ramp 0 1 8) (aligned 0 0))
  (vec-mul
   (int32x8
    (load sum_filter (ramp 0 1 8) (aligned 0 0)))
   (x8 t924))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "fully_connected_sexp_46.out")