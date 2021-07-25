#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer t86-buf uint8_t)
(define-symbolic-buffer t87-buf uint8_t)
(define t86 (load t86-buf (ramp 0 1 128) (aligned 0 0)))
(define t87 (load t87-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var input2_multiplier int16_t)
(define-symbolic-var input2_zero uint8_t)
(define-symbolic-var output_zero uint8_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var input1_multiplier int16_t)
(define-symbolic-var input1_zero uint8_t)

(define axioms 
  (list 
   (values-range-from t86-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t87-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t88  (vec-add
  (vec-mul
   (int32x128
    (vec-add
     (vec-mul
      (int16x128
       t86)
      (x128 (int16_t (bv 64 16))))
     (x128 (sca-mul (int16x1 input1_zero) (int16_t (bv -64 16))))))
   (int32x128
    (x128 input1_multiplier)))
  (vec-mul
   (int32x128
    (vec-add
     (vec-mul
      (int16x128
       t87)
      (x128 (int16_t (bv 64 16))))
     (x128 (sca-mul (int16x1 input2_zero) (int16_t (bv -64 16))))))
   (int32x128
    (x128 input2_multiplier))))])
  (vec-max
   (vec-min
    (uint8x128
     (vec-max
      (vec-min
       (int16x128
        (vec-max
         (vec-min
          (vec-add
           (int32x128
            (int16x128
             (vec-max
              (vec-min
               (vec-add
                (vec-bwand
                 (x128 (int32_t (bv 1 32)))
                 (vec-div
                  t88
                  (x128 (int32_t (bv 32768 32)))))
                (vec-div
                 t88
                 (x128 (int32_t (bv 65536 32)))))
               (x128 (int32_t (bv 32767 32))))
              (x128 (int32_t (bv -32768 32))))))
           (int32x128
            (x128 (int16x1 output_zero))))
          (x128 (int32_t (bv 32767 32))))
         (x128 (int32_t (bv -32768 32)))))
       (x128 (int16_t (bv 255 16))))
      (x128 (int16_t (bv 0 16)))))
    (x128 output_max))
   (x128 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")