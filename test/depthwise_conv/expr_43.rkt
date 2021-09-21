#lang rosette/safe

(require rake)
(init-logging "expr_43.runtimes")

(define-symbolic-buffer convolved int32_t)
(define-symbolic-buffer filter_zeroed int16_t)
(define-symbolic-buffer resampled_input uint8_t)
(define-symbolic t2738 integer?)
(define-symbolic t2565 integer?)
(define-symbolic convolved.s1.r19$x integer?)
(define-symbolic stride_x integer?)
(define-symbolic t2601 integer?)
(define-symbolic t2579 integer?)
(define-symbolic dilation_x integer?)
(define-symbolic t2583 integer?)
(define-symbolic t2548 integer?)
(define-symbolic t2574 integer?)
(define-symbolic convolved.s1.r19$y integer?)
(define-symbolic output.s0.x.xo integer?)
(define-symbolic t2566 integer?)
(define-symbolic t2582 integer?)

(define axioms 
  (list ))

(define filter.extent.1 (var-lookup 'filter.extent.1 t2548))
(define output.min.1 (var-lookup 'output.min.1 t2565))
(define output.extent.1 (var-lookup 'output.extent.1 t2566))
(define t2213 (var-lookup 't2213 t2574))
(define t2175 (var-lookup 't2175 (sca-max  t2579  filter.extent.1)))
(define t2189 (var-lookup 't2189 (sca-add  t2583  t2582)))
(define t2230 (var-lookup 't2230 (sca-min  (sca-add  t2601  t2213)  t2189)))
(define output.s0.x.x.base.s (var-lookup 'output.s0.x.x.base.s (sca-min  (sca-mul  output.s0.x.xo  2)  (sca-add  output.extent.1  -2))))
(define t2309 (var-lookup 't2309 t2738))

(define halide-expr
 (vec-add
  (vec-mul
   (int32x128
    (load filter_zeroed (ramp (sca-mul (sca-add (sca-mul convolved.s1.r19$y t2175) convolved.s1.r19$x) 128) 1 128) (aligned 128 0)))
   (int32x128
    (int16x128
     (load resampled_input (ramp (sca-mul (sca-add (sca-mul convolved.s1.r19$x dilation_x) (sca-add (sca-sub (sca-mul (sca-add output.min.1 output.s0.x.x.base.s) stride_x) t2230) t2309)) 128) 1 128) (aligned 128 0)))))
  (load convolved (ramp 256 1 128) (aligned 0 256))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_43.out")