#lang rosette/safe

(require rake)
(init-logging "expr_65.runtimes")

(define-symbolic-buffer filter uint8_t)
(define-symbolic filter_zeroed.s0.y integer?)
(define-symbolic filter_zeroed.s0.x integer?)
(define-symbolic-var filter_zero uint8_t)
(define-symbolic t2552 integer?)
(define-symbolic t2549 integer?)

(define axioms 
  (list ))

(define filter.stride.1 (var-lookup 'filter.stride.1 t2549))
(define filter.stride.2 (var-lookup 'filter.stride.2 t2552))

(define halide-expr
 (vec-sub
  (int16x64
   (slice_vectors
    (load filter (ramp (sca-add (sca-mul filter.stride.1 filter_zeroed.s0.x) (sca-mul filter.stride.2 filter_zeroed.s0.y)) 1 128) (aligned 1 0)) 0 1 64))
  (int16x64
   (x64 filter_zero))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_65.out")