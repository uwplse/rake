#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_1.runtimes")

(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer multiplied_intm int32_t)
(define-symbolic multiplied_intm.s1.rc$x.rc$x.rco integer?)
(define-symbolic t737 integer?)
(define-symbolic t772 integer?)
(define-symbolic t776 integer?)
(define-symbolic t780 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t737))
(define t666 (var-lookup 't666 (sca-add  t772  input.min.0)))
(define t673 (var-lookup 't673 t776))
(define t680 (var-lookup 't680 (sca-sub  t780  t666)))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (int32x16
    (vec-mul
     (uint16x16
      (load filter (ramp (sca-add (sca-mul multiplied_intm.s1.rc$x.rc$x.rco 16) t673) 1 16) (aligned 1 0)))
     (uint16x16
      (load input (ramp (sca-add (sca-mul multiplied_intm.s1.rc$x.rc$x.rco 16) t680) 1 16) (aligned 1 0))))))
  (load multiplied_intm (ramp 0 1 4) (aligned 0 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "fully_connected_sexp_1.out")