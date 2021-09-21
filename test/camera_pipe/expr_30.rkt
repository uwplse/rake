#lang rosette/safe

(require rake)
(init-logging "expr_30.runtimes")

(define-symbolic-buffer t3228-buf uint8_t)
(define-symbolic-buffer t2680-buf int16_t)
(define-symbolic-buffer t2681-buf uint8_t)
(define t3228 (load t3228-buf (ramp 0 1 128) (aligned 0 0)))
(define t2680 (load t2680-buf (ramp 0 1 128) (aligned 0 0)))
(define t2681 (load t2681-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t3228-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2680-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2681-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (vec-mod
      t2680
      (x128 (int16_t (bv 8 16))))
     (int16x128
      (vec-sub
       t3228
       t2681)))
    (int16x128
     (vec-shl
      (uint16x128
       t2681)
      (x128 (uint16_t (bv 3 16))))))
   (x128 (int16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_30.out")