#lang rosette/safe

(require rake)
(init-logging "expr_36.runtimes")

(define-symbolic-buffer t2684-buf int16_t)
(define-symbolic-buffer t3194-buf uint8_t)
(define-symbolic-buffer t2685-buf uint8_t)
(define t2684 (load t2684-buf (ramp 0 1 128) (aligned 0 0)))
(define t3194 (load t3194-buf (ramp 0 1 128) (aligned 0 0)))
(define t2685 (load t2685-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t2684-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t3194-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t2685-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (vec-mod
      t2684
      (x128 (int16_t (bv 8 16))))
     (int16x128
      (vec-sub
       t3194
       t2685)))
    (int16x128
     (vec-shl
      (uint16x128
       t2685)
      (x128 (uint16_t (bv 3 16))))))
   (x128 (int16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_36.out")