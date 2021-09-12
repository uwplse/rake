#lang rosette/safe

(require rake)
(init-logging "expr_35.runtimes")

(define-symbolic-buffer t2684-buf int16_t)
(define t2684 (load t2684-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t2684-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (uint8x128
  (vec-max
   (vec-min
    (vec-div
     t2684
     (x128 (int16_t (bv 8 16))))
    (x128 (int16_t (bv 127 16))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_35.out")