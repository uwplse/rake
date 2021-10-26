#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_33.runtimes")

(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer multiplied_intm int32_t)
(define-symbolic t871 integer?)
(define-symbolic t875 integer?)
(define-symbolic multiplied_intm.s1.r9$x.r9$x.r58 integer?)
(define-symbolic t737 integer?)
(define-symbolic t880 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t737))
(define t692 (var-lookup 't692 (sca-add  t871  input.min.0)))
(define t703 (var-lookup 't703 t875))
(define t710 (var-lookup 't710 (sca-sub  t880  t692)))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (int32x16
    (vec-mul
     (uint16x16
      (load filter (ramp (sca-add (sca-mul multiplied_intm.s1.r9$x.r9$x.r58 16) t703) 1 16) (aligned 1 0)))
     (uint16x16
      (load input (ramp (sca-add (sca-mul multiplied_intm.s1.r9$x.r9$x.r58 16) t710) 1 16) (aligned 1 0))))))
  (load multiplied_intm (ramp 16 1 4) (aligned 0 16))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "fully_connected_sexp_33.out")