#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_7.runtimes")

(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer multiplied_intm int32_t)
(define-symbolic multiplied_intm.s1.rc$x.rc$x.rco integer?)
(define-symbolic t737 integer?)
(define-symbolic t772 integer?)
(define-symbolic t774 integer?)
(define-symbolic t779 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t737))
(define t666 (var-lookup 't666 (sca-add  t772  input.min.0)))
(define t675 (var-lookup 't675 t774))
(define t681 (var-lookup 't681 (sca-sub  t779  t666)))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (int32x16
    (vec-mul
     (uint16x16
      (load filter (ramp (sca-add (sca-mul multiplied_intm.s1.rc$x.rc$x.rco 16) t675) 1 16) (aligned 1 0)))
     (uint16x16
      (load input (ramp (sca-add (sca-mul multiplied_intm.s1.rc$x.rc$x.rco 16) t681) 1 16) (aligned 1 0))))))
  (load multiplied_intm (ramp 36 1 4) (aligned 0 36))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "fully_connected_sexp_7.out")