#lang rosette/safe

(require rake)
(init-logging "expr_72.runtimes")

(define-symbolic-buffer convolved int32_t)
(define-symbolic-buffer filter_zeroed int16_t)
(define-symbolic-buffer resampled_input uint8_t)
(define-symbolic t2565 integer?)
(define-symbolic stride_x integer?)
(define-symbolic t2902 integer?)
(define-symbolic t2886 integer?)
(define-symbolic output.s0.x.xo integer?)
(define-symbolic t2548 integer?)
(define-symbolic t2862 integer?)
(define-symbolic t2869 integer?)
(define-symbolic t2856 integer?)
(define-symbolic t2868 integer?)

(define axioms 
  (list ))

(define filter.extent.1 (var-lookup 'filter.extent.1 t2548))
(define output.min.1 (var-lookup 'output.min.1 t2565))
(define filter_zeroed.x.extent_realized (var-lookup 'filter_zeroed.x.extent_realized (sca-max  t2856  filter.extent.1)))
(define t2446 (var-lookup 't2446 t2862))
(define t2429 (var-lookup 't2429 (sca-add  t2869  t2868)))
(define resampled_input.x.min_realized (var-lookup 'resampled_input.x.min_realized (sca-min  (sca-add  t2886  t2446)  t2429)))
(define t2497 (var-lookup 't2497 t2902))

(define halide-expr
 (vec-add
  (vec-mul
   (int32x128
    (load filter_zeroed (ramp (sca-mul filter_zeroed.x.extent_realized 256) 1 128) (aligned 256 0)))
   (int32x128
    (int16x128
     (load resampled_input (ramp (sca-mul (sca-add (sca-mul (sca-add output.min.1 output.s0.x.xo) stride_x) (sca-sub t2497 resampled_input.x.min_realized)) 128) 1 128) (aligned 128 0)))))
  (load convolved (ramp 0 1 128) (aligned 0 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_72.out")