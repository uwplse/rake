#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_26.runtimes")

(define-symbolic-buffer multiplied int32_t)
(define-symbolic-buffer sum_filter uint32_t)
(define-symbolic-var t852 int32_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-sub
  (load multiplied (ramp 4 1 4) (aligned 0 4))
  (vec-mul
   (int32x4
    (load sum_filter (ramp 0 1 4) (aligned 0 0)))
   (x4 t852))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "fully_connected_sexp_26.out")