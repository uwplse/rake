#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_37.runtimes")

(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer sum_filter_intm uint32_t)
(define-symbolic multiplied_intm.s1.rc$x.rc$x.rco integer?)
(define-symbolic t879 integer?)

(define axioms 
  (list ))

(define t699 (var-lookup 't699 t879))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (uint32x16
    (load filter (ramp (sca-add (sca-mul multiplied_intm.s1.rc$x.rc$x.rco 16) t699) 1 16) (aligned 1 0))))
  (load sum_filter_intm (ramp 0 1 4) (aligned 0 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "fully_connected_sexp_37.out")