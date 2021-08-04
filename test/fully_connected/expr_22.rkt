#lang rosette/safe

(require rake)
(init-logging "expr_22.runtimes")

(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer multiplied_intm int32_t)
(define-symbolic t714 integer?)
(define-symbolic t721 integer?)
(define-symbolic output.s0.b.bo integer?)
(define-symbolic output.s0.c.co integer?)
(define-symbolic t723 integer?)
(define-symbolic t715 integer?)
(define-symbolic t716 integer?)
(define-symbolic multiplied_intm.s1.r9$x.r9$x.r58 integer?)
(define-symbolic t718 integer?)
(define-symbolic t719 integer?)
(define-symbolic t720 integer?)

(define axioms 
  (list ))

(define filter.min.1 (var-lookup 'filter.min.1 t714))
(define filter.stride.1 (var-lookup 'filter.stride.1 t715))
(define input.min.0 (var-lookup 'input.min.0 t716))
(define input.min.1 (var-lookup 'input.min.1 t718))
(define input.stride.1 (var-lookup 'input.stride.1 t719))
(define output.min.0 (var-lookup 'output.min.0 t720))
(define output.extent.0 (var-lookup 'output.extent.0 t721))
(define output.min.1 (var-lookup 'output.min.1 t723))
(define output.s0.c.c.base.s (var-lookup 'output.s0.c.c.base.s (sca-min  (sca-mul  output.s0.c.co  8)  (sca-add  output.extent.0  -8))))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (int32x128
    (vec-mul
     (uint16x128
      (load filter (ramp (sca-add (sca-mul multiplied_intm.s1.r9$x.r9$x.r58 128) (sca-mul (sca-add (sca-add (sca-sub output.min.0 filter.min.1) output.s0.c.c.base.s) 1) filter.stride.1)) 1 128) (aligned 1 0)))
     (uint16x128
      (load input (ramp (sca-add (sca-mul multiplied_intm.s1.r9$x.r9$x.r58 128) (sca-sub (sca-mul (sca-sub (sca-add output.min.1 output.s0.b.bo) input.min.1) input.stride.1) input.min.0)) 1 128) (aligned 1 0))))))
  (load multiplied_intm (ramp 32 1 32) (aligned 0 32))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_22.out")