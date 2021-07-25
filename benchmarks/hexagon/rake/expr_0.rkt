#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer offset_c int32_t)
(define-symbolic t1259 integer?)
(define-symbolic-var input_zero uint8_t)
(define-symbolic t1232 integer?)
(define-symbolic offset_c.s1.r19$x integer?)
(define-symbolic offset_c.s1.r19$z.r124 integer?)
(define-symbolic offset_c.s1.c.co integer?)
(define-symbolic t1260 integer?)

(define axioms 
  (list ))

(define filter.stride.4 (var-lookup 'filter.stride.4 t1232))
(define t840 (var-lookup 't840 (sca-add  t1260  t1259)))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (int32x128
    (vec-mul
     (uint16x128
      (load filter (ramp (sca-add (sca-mul offset_c.s1.r19$z.r124 128) (sca-add (sca-mul filter.stride.4 offset_c.s1.r19$x) t840)) 1 128) (aligned 128 0)))
     (uint16x128
      (x128 input_zero)))))
  (load offset_c (ramp (sca-mul offset_c.s1.c.co 32) 1 32) (aligned 32 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")