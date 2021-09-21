#lang rosette/safe

(require rake)
(init-logging "expr_12.runtimes")

(define-symbolic-buffer t2627-buf int16_t)
(define-symbolic-buffer t2626-buf int16_t)
(define t2627 (load t2627-buf (ramp 0 1 128) (aligned 0 0)))
(define t2626 (load t2626-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t2627-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2626-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (int16x128
  (vec-div
   (vec-add
    (vec-add
     (int32x128
      t2626)
     (int32x128
      t2627))
    (x128 (int32_t (bv 1 32))))
   (x128 (int32_t (bv 2 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_12.out")