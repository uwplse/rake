#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_16.runtimes")

(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer multiplied_intm int32_t)
(define-symbolic multiplied_intm.s1.r9$x.r9$x.r58 integer?)
(define-symbolic t772 integer?)
(define-symbolic t773 integer?)
(define-symbolic t737 integer?)
(define-symbolic t777 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t737))
(define t666 (var-lookup 't666 (sca-add  t772  input.min.0)))
(define t676 (var-lookup 't676 t773))
(define t683 (var-lookup 't683 (sca-sub  t777  t666)))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (int32x16
    (vec-mul
     (uint16x16
      (load filter (ramp (sca-add (sca-mul multiplied_intm.s1.r9$x.r9$x.r58 16) t676) 1 16) (aligned 1 0)))
     (uint16x16
      (load input (ramp (sca-add (sca-mul multiplied_intm.s1.r9$x.r9$x.r58 16) t683) 1 16) (aligned 1 0))))))
  (load multiplied_intm (ramp 60 1 4) (aligned 0 60))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "fully_connected_sexp_16.out")