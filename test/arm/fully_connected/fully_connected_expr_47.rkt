#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_47.runtimes")

(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer multiplied_intm int32_t)
(define-symbolic t933 integer?)
(define-symbolic t935 integer?)
(define-symbolic multiplied_intm.s1.r9$x.r9$x.r58 integer?)
(define-symbolic t934 integer?)
(define-symbolic t737 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t737))
(define t714 (var-lookup 't714 (sca-add  t933  input.min.0)))
(define t721 (var-lookup 't721 t934))
(define t724 (var-lookup 't724 (sca-sub  t935  t714)))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (int32x16
    (vec-mul
     (uint16x16
      (load filter (ramp (sca-add (sca-mul multiplied_intm.s1.r9$x.r9$x.r58 16) t721) 1 16) (aligned 1 0)))
     (uint16x16
      (load input (ramp (sca-add (sca-mul multiplied_intm.s1.r9$x.r9$x.r58 16) t724) 1 16) (aligned 1 0))))))
  (load multiplied_intm (ramp 0 1 4) (aligned 0 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "fully_connected_sexp_47.out")