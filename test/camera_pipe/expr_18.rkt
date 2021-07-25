#lang rosette/safe

(require rake)
(init-logging "expr_18.runtimes")

(define-symbolic-buffer t2632-buf int16_t)
(define-symbolic-buffer t2633-buf int16_t)
(define t2632 (load t2632-buf (ramp 0 1 128) (aligned 0 0)))
(define t2633 (load t2633-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t2632-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2633-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (int16x128
  (vec-div
   (vec-add
    (vec-add
     (int32x128
      t2632)
     (int32x128
      t2633))
    (x128 (int32_t (bv 1 32))))
   (x128 (int32_t (bv 2 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_18.out")