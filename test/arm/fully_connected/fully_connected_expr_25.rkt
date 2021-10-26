#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_25.runtimes")

(define-symbolic-buffer multiplied int32_t)
(define-symbolic-buffer sum_filter uint32_t)
(define-symbolic-var t849 int32_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-sub
  (load multiplied (ramp 0 1 4) (aligned 0 0))
  (vec-mul
   (int32x4
    (load sum_filter (ramp 0 1 4) (aligned 0 0)))
   (x4 t849))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "fully_connected_sexp_25.out")