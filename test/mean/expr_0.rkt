#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer sum uint32_t)
(define-symbolic sum.s1.c.c integer?)
(define-symbolic t177 integer?)
(define-symbolic t180 integer?)
(define-symbolic output.s0.x.rebased integer?)
(define-symbolic x_min integer?)
(define-symbolic t172 integer?)
(define-symbolic c_min integer?)
(define-symbolic sum.s1.r8$x.rebased integer?)
(define-symbolic t169 integer?)
(define-symbolic t191 integer?)
(define-symbolic t192 integer?)
(define-symbolic t193 integer?)
(define-symbolic t198 integer?)
(define-symbolic t199 integer?)
(define-symbolic sum.s1.r8$y.rebased integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t169))
(define input.stride.1 (var-lookup 'input.stride.1 t172))
(define output.min.0 (var-lookup 'output.min.0 t177))
(define output.min.1 (var-lookup 'output.min.1 t180))
(define t136.s (var-lookup 't136.s (sca-sub  (sca-sub  (sca-sub  (sca-add  c_min  output.min.0)  t193)  t192)  t191)))
(define t151 (var-lookup 't151 (sca-add  (sca-mul  sum.s1.c.c  128)  (sca-sub  t136.s  input.min.0))))
(define t155 (var-lookup 't155 (sca-add  t199  (sca-add  (sca-add  t198  t151)  sum.s1.r8$x.rebased))))

(define halide-expr
 (vec-add
  (load sum (ramp (sca-mul sum.s1.c.c 128) 1 128) (aligned 128 0))
  (uint32x128
   (load input (ramp (sca-add (sca-mul (sca-add (sca-add (sca-add output.min.1 x_min) output.s0.x.rebased) sum.s1.r8$y.rebased) input.stride.1) t155) 1 128) (aligned 1 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")