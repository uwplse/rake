#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer sum uint32_t)
(define-symbolic-var x_extent int32_t)
(define-symbolic-var b_extent int32_t)
(define-symbolic-var c_extent int32_t)
(define-symbolic-var y_extent int32_t)
(define-symbolic output.s0.c.c integer?)

(define axioms 
  (list ))


(define halide-expr
 (let ([t208  (sca-mul  (sca-mul  (sca-mul  c_extent  x_extent)  y_extent)  b_extent)])
  (uint8x128
   (vec-div
    (vec-add
     (int32x128
      (load sum (ramp (sca-mul output.s0.c.c 128) 1 128) (aligned 128 0)))
     (x128 (sca-div t208 (int32_t (bv 2 32)))))
    (x128 t208)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")