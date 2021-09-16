#lang rosette/safe

(require rake)
(init-logging "expr_12.runtimes")

(define-symbolic-buffer t551-buf uint8_t)
(define-symbolic-var t552 int16_t)
(define-symbolic-var beta_multiplier int16_t)
(define t551 (load t551-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t551-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t553  (vec-mul
  (int32x128
   (vec-add
    (vec-mul
     (int16x128
      t551)
     (x128 (int16_t (bv 64 16))))
    (x128 (sca-mul t552 (int16_t (bv -64 16))))))
  (int32x128
   (x128 beta_multiplier)))])
  (int16x128
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x128 (int32_t (bv 1 32)))
       (vec-div
        t553
        (x128 (int32_t (bv 16384 32)))))
      (vec-div
       t553
       (x128 (int32_t (bv 32768 32)))))
     (x128 (int32_t (bv 32767 32))))
    (x128 (int32_t (bv -32768 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_12.out")