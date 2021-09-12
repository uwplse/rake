#lang rosette/safe

(require rake)
(init-logging "expr_34.runtimes")

(define-symbolic-buffer t2682-buf int16_t)
(define-symbolic-buffer t3191-buf uint8_t)
(define-symbolic-buffer t2683-buf uint8_t)
(define t2682 (load t2682-buf (ramp 0 1 128) (aligned 0 0)))
(define t3191 (load t3191-buf (ramp 0 1 128) (aligned 0 0)))
(define t2683 (load t2683-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t2682-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t3191-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2683-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (vec-mod
      t2682
      (x128 (int16_t (bv 8 16))))
     (int16x128
      (vec-sub
       t3191
       t2683)))
    (int16x128
     (vec-shl
      (uint16x128
       t2683)
      (x128 (uint16_t (bv 3 16))))))
   (x128 (int16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_34.out")