#lang rosette/safe

(require rake)
(init-logging "expr_55.runtimes")

(define-symbolic-buffer convolved int32_t)
(define-symbolic-buffer filter_zeroed int16_t)
(define-symbolic-buffer resampled_input uint8_t)
(define-symbolic t2818 integer?)
(define-symbolic t2565 integer?)
(define-symbolic output.s0.x.xo integer?)
(define-symbolic stride_x integer?)
(define-symbolic dilation_x integer?)
(define-symbolic t2794 integer?)
(define-symbolic t2775 integer?)
(define-symbolic t2776 integer?)
(define-symbolic t2767 integer?)

(define axioms 
  (list ))

(define output.min.1 (var-lookup 'output.min.1 t2565))
(define t2339 (var-lookup 't2339 t2767))
(define t2324 (var-lookup 't2324 (sca-add  t2776  t2775)))
(define t2355 (var-lookup 't2355 (sca-min  (sca-add  t2794  t2339)  t2324)))
(define t2403 (var-lookup 't2403 t2818))

(define halide-expr
 (vec-add
  (vec-mul
   (int32x128
    (load filter_zeroed (ramp 128 1 128) (aligned 0 128)))
   (int32x128
    (int16x128
     (load resampled_input (ramp (sca-mul (sca-add (sca-mul (sca-add output.min.1 output.s0.x.xo) stride_x) (sca-add (sca-sub dilation_x t2355) t2403)) 128) 1 128) (aligned 128 0)))))
  (load convolved (ramp 0 1 128) (aligned 0 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_55.out")