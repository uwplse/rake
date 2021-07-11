#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer sum uint16_t)
(define-symbolic t401 integer?)
(define-symbolic t448 integer?)
(define-symbolic t447 integer?)
(define-symbolic t403 integer?)
(define-symbolic t399 integer?)
(define-symbolic filter_width integer?)
(define-symbolic t449 integer?)
(define-symbolic t460 integer?)
(define-symbolic t398 integer?)
(define-symbolic t454 integer?)
(define-symbolic t457 integer?)
(define-symbolic t461 integer?)
(define-symbolic sum.s1.r12$x.rebased integer?)
(define-symbolic output.s0.c.c integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t398))
(define input.extent.0 (var-lookup 'input.extent.0 t399))
(define input.min.1 (var-lookup 'input.min.1 t401))
(define input.stride.1 (var-lookup 'input.stride.1 t403))
(define t298.s (var-lookup 't298.s (sca-sub  (sca-sub  (sca-sub  input.min.0  t449)  t448)  t447)))
(define t308 (var-lookup 't308 (sca-min  (sca-sub  input.min.1  t454)  filter_width)))
(define t321 (var-lookup 't321 (sca-add  (sca-max  t308  0)  t457)))
(define t320 (var-lookup 't320 (sca-add  t460  (sca-sub  t298.s  input.min.0))))
(define output.s0.c.v7.base.s (var-lookup 'output.s0.c.v7.base.s (sca-min  (sca-mul  output.s0.c.c  256)  (sca-add  input.extent.0  -256))))
(define t328 (var-lookup 't328 (sca-add  t461  (sca-add  output.s0.c.v7.base.s  t320))))

(define halide-expr
 (vec-add
  (load sum (ramp 0 1 256) (aligned 0 0))
  (uint16x256
   (load input (ramp (sca-add (sca-mul (sca-add sum.s1.r12$x.rebased t321) input.stride.1) t328) 1 256) (aligned 1 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")