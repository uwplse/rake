#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer filter_zeroed int16_t)
(define-symbolic-buffer sum_filter int32_t)
(define-symbolic t2579 integer?)
(define-symbolic t2548 integer?)
(define-symbolic sum_filter.s1.r19$x integer?)
(define-symbolic sum_filter.s1.r19$y integer?)

(define axioms 
  (list ))

(define filter.extent.1 (var-lookup 'filter.extent.1 t2548))
(define t2175 (var-lookup 't2175 (sca-max  t2579  filter.extent.1)))

(define halide-expr
 (vec-add
  (load sum_filter (ramp 0 1 128) (aligned 0 0))
  (int32x128
   (load filter_zeroed (ramp (sca-mul (sca-add (sca-mul sum_filter.s1.r19$y t2175) sum_filter.s1.r19$x) 128) 1 128) (aligned 128 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")