#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_39.runtimes")

(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer sum_filter_intm uint32_t)
(define-symbolic multiplied_intm.s1.r9$x.r9$x.r58 integer?)
(define-symbolic t877 integer?)

(define axioms 
  (list ))

(define t701 (var-lookup 't701 t877))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (uint32x16
    (load filter (ramp (sca-add (sca-mul multiplied_intm.s1.r9$x.r9$x.r58 16) t701) 1 16) (aligned 1 0))))
  (load sum_filter_intm (ramp 8 1 4) (aligned 0 8))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "fully_connected_sexp_39.out")