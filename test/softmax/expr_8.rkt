#lang rosette/safe

(require rake)
(init-logging "expr_8.runtimes")

(define-symbolic-buffer t210-buf int16_t)
(define t210 (load t210-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t210-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (int16x128
  (vec-max
   (vec-min
    (vec-shl
     (int32x128
      (x128 (int16_t (bv 1 16))))
     (int32x128
      (vec-add
       t210
       (x128 (int16_t (bv 15 16))))))
    (x128 (int32_t (bv 32767 32))))
   (x128 (int32_t (bv -32768 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_8.out")