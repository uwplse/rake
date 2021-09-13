#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer t104-buf uint8_t)
(define t104 (load t104-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var t106 int16_t)
(define-symbolic-var t108 int16_t)
(define-symbolic-var t105 int16_t)
(define-symbolic-var input2_multiplier int16_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var t107 int16_t)
(define-symbolic-var input1_multiplier int16_t)

(define axioms 
  (list 
   (values-range-from t104-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t109  (vec-add
  (vec-mul
   (int32x128
    (vec-add
     (vec-mul
      (int16x128
       t104)
      (x128 (int16_t (bv 64 16))))
     (x128 (sca-mul t105 (int16_t (bv -64 16))))))
   (int32x128
    (x128 input1_multiplier)))
  (x128 (sca-mul (int32x1 (sca-mul (sca-sub t106 t107) (int16_t (bv 64 16)))) (int32x1 input2_multiplier))))])
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
                  t109
                  (x128 (int32_t (bv 32768 32)))))
                (vec-div
                 t109
                 (x128 (int32_t (bv 65536 32)))))
               (x128 (int32_t (bv 32767 32))))
              (x128 (int32_t (bv -32768 32))))))
           (int32x128
            (x128 t108)))
          (x128 (int32_t (bv 32767 32))))
         (x128 (int32_t (bv -32768 32)))))
       (x128 (int16_t (bv 255 16))))
      (x128 (int16_t (bv 0 16)))))
    (x128 output_max))
   (x128 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")