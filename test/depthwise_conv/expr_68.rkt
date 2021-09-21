#lang rosette/safe

(require rake)
(init-logging "expr_68.runtimes")

(define-symbolic-buffer convolved int32_t)
(define-symbolic-buffer filter_zeroed int16_t)
(define-symbolic-buffer resampled_input uint8_t)
(define-symbolic t2565 integer?)
(define-symbolic stride_x integer?)
(define-symbolic dilation_x integer?)
(define-symbolic t2886 integer?)
(define-symbolic output.s0.x.xo integer?)
(define-symbolic t2862 integer?)
(define-symbolic t2904 integer?)
(define-symbolic t2869 integer?)
(define-symbolic t2868 integer?)

(define axioms 
  (list ))

(define output.min.1 (var-lookup 'output.min.1 t2565))
(define t2446 (var-lookup 't2446 t2862))
(define t2429 (var-lookup 't2429 (sca-add  t2869  t2868)))
(define resampled_input.x.min_realized (var-lookup 'resampled_input.x.min_realized (sca-min  (sca-add  t2886  t2446)  t2429)))
(define t2501 (var-lookup 't2501 t2904))

(define halide-expr
 (vec-add
  (vec-mul
   (int32x128
    (load filter_zeroed (ramp 256 1 128) (aligned 0 256)))
   (int32x128
    (int16x128
     (load resampled_input (ramp (sca-mul (sca-add (sca-mul (sca-add output.min.1 output.s0.x.xo) stride_x) (sca-add (sca-sub (sca-mul dilation_x 2) resampled_input.x.min_realized) t2501)) 128) 1 128) (aligned 128 0)))))
  (load convolved (ramp 0 1 128) (aligned 0 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_68.out")