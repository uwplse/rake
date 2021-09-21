#lang rosette/safe

(require rake)
(init-logging "expr_63.runtimes")

(define-symbolic-buffer convolved int32_t)
(define-symbolic-buffer filter_zeroed int16_t)
(define-symbolic-buffer resampled_input uint8_t)
(define-symbolic dilation_x integer?)
(define-symbolic t2794 integer?)
(define-symbolic t2846 integer?)
(define-symbolic t2548 integer?)
(define-symbolic t2775 integer?)
(define-symbolic t2772 integer?)
(define-symbolic t2776 integer?)
(define-symbolic convolved.s1.r19$y integer?)
(define-symbolic convolved.s1.r19$x integer?)
(define-symbolic t2767 integer?)
(define-symbolic t2847 integer?)

(define axioms 
  (list ))

(define filter.extent.1 (var-lookup 'filter.extent.1 t2548))
(define t2339 (var-lookup 't2339 t2767))
(define t2312 (var-lookup 't2312 (sca-max  t2772  filter.extent.1)))
(define t2324 (var-lookup 't2324 (sca-add  t2776  t2775)))
(define t2355 (var-lookup 't2355 (sca-min  (sca-add  t2794  t2339)  t2324)))
(define t2406 (var-lookup 't2406 (sca-add  t2847  (sca-sub  t2846  t2355))))

(define halide-expr
 (vec-add
  (vec-mul
   (int32x128
    (load filter_zeroed (ramp (sca-mul (sca-add (sca-mul convolved.s1.r19$y t2312) convolved.s1.r19$x) 128) 1 128) (aligned 128 0)))
   (int32x128
    (int16x128
     (load resampled_input (ramp (sca-mul (sca-add (sca-mul convolved.s1.r19$x dilation_x) t2406) 128) 1 128) (aligned 128 0)))))
  (load convolved (ramp 0 1 128) (aligned 0 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_63.out")