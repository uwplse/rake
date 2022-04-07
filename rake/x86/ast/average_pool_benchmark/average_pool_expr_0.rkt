#lang rosette/safe

(require rake)
(init-logging "average_pool_expr_0.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer sum uint16_t)
(define-symbolic filter_width integer?)
(define-symbolic sum.s1.r$x.rebased integer?)
(define-symbolic t419 integer?)
(define-symbolic t420 integer?)
(define-symbolic t424 integer?)
(define-symbolic t422 integer?)
(define-symbolic t462 integer?)
(define-symbolic t463 integer?)
(define-symbolic t464 integer?)
(define-symbolic t467 integer?)
(define-symbolic t471 integer?)
(define-symbolic t473 integer?)
(define-symbolic output.s0.c.c integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t419))
(define input.extent.0 (var-lookup 'input.extent.0 t420))
(define input.min.1 (var-lookup 'input.min.1 t422))
(define input.stride.1 (var-lookup 'input.stride.1 t424))
(define t286 (var-lookup 't286 (sca-sub  (sca-sub  (sca-sub  (sca-sub  input.min.0  t462)  t463)  t464)  input.min.0)))
(define t304 (var-lookup 't304 t467))
(define t296 (var-lookup 't296 (sca-min  (sca-sub  input.min.1  t304)  filter_width)))
(define t313 (var-lookup 't313 (sca-max  t296  0)))
(define t309 (var-lookup 't309 (sca-add  t304  t313)))
(define t308 (var-lookup 't308 (sca-add  t471  t286)))
(define output.s0.c.v6.base.s (var-lookup 'output.s0.c.v6.base.s (sca-min  (sca-mul  output.s0.c.c  64)  (sca-add  input.extent.0  -64))))
(define t315 (var-lookup 't315 (sca-add  output.s0.c.v6.base.s  t308)))
(define t316 (var-lookup 't316 (sca-add  t473  t315)))

(define halide-expr
 (vec-add
  (load sum (ramp 0 1 64) (aligned 0 0))
  (uint16x64
   (load input (ramp (sca-add (sca-mul (sca-add sum.s1.r$x.rebased t309) input.stride.1) t316) 1 64) (aligned 1 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "average_pool_sexp_0.out")