#lang rosette/safe

(require rake)
(init-logging "expr_34.runtimes")

(define-symbolic-buffer t3240-buf uint8_t)
(define-symbolic-buffer t2689-buf uint8_t)
(define-symbolic-buffer t2688-buf int16_t)
(define t3240 (load t3240-buf (ramp 0 1 128) (aligned 0 0)))
(define t2689 (load t2689-buf (ramp 0 1 128) (aligned 0 0)))
(define t2688 (load t2688-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t3240-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2689-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2688-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (vec-mod
      t2688
      (x128 (int16_t (bv 8 16))))
     (int16x128
      (vec-sub
       t3240
       t2689)))
    (int16x128
     (vec-shl
      (uint16x128
       t2689)
      (x128 (uint16_t (bv 3 16))))))
   (x128 (int16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_34.out")