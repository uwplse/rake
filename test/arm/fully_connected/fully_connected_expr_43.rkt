#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_43.runtimes")

(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer sum_filter_intm uint32_t)
(define-symbolic t873 integer?)
(define-symbolic multiplied_intm.s1.r9$x.r9$x.r58 integer?)

(define axioms 
  (list ))

(define t705 (var-lookup 't705 t873))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (uint32x16
    (load filter (ramp (sca-add (sca-mul multiplied_intm.s1.r9$x.r9$x.r58 16) t705) 1 16) (aligned 1 0))))
  (load sum_filter_intm (ramp 24 1 4) (aligned 0 24))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "fully_connected_sexp_43.out")