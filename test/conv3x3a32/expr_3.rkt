#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-var input.extent.0 int32_t)
(define-symbolic-var t226.s int32_t)
(define-symbolic-var input_bounded.s0.x.x int32_t)

(define axioms 
  (list ))


(define halide-expr
 (uint8x128
  (vec-add
   (vec-max
    (vec-min
     (ramp (sca-add (sca-mul input_bounded.s0.x.x (int32_t (bv 128 32))) (int32_t (bv -1 32))) (int32_t (bv 1 32)) 128)
     (x128 (sca-add input.extent.0 (int32_t (bv -1 32)))))
    (x128 (int32_t (bv 0 32))))
   (x128 (sca-sub (int32_t (bv 1 32)) (sca-max t226.s (int32_t (bv 1 32))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")