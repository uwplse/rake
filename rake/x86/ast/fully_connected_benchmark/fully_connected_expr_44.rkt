#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_44.runtimes")

(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer sum_filter_intm uint32_t)
(define-symbolic multiplied_intm.s1.rc$x.rc$x.rco integer?)
(define-symbolic t872 integer?)

(define axioms 
  (list ))

(define t706 (var-lookup 't706 t872))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (uint32x16
    (load filter (ramp (sca-add (sca-mul multiplied_intm.s1.rc$x.rc$x.rco 16) t706) 1 16) (aligned 1 0))))
  (load sum_filter_intm (ramp 28 1 4) (aligned 0 28))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "fully_connected_sexp_44.out")