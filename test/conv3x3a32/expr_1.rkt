#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-var input.extent.0 int32_t)

(define axioms 
  (list ))


(define halide-expr
 (uint8x128
  (vec-max
   (vec-min
    (ramp (int32_t (bv -1 32)) (int32_t (bv 1 32)) 128)
    (x128 (sca-add input.extent.0 (int32_t (bv -1 32)))))
   (x128 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")