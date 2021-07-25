#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer t90-buf uint8_t)
(define-symbolic-buffer t91-buf uint8_t)
(define-symbolic-var input1_zero uint8_t)
(define-symbolic-var output_zero uint8_t)
(define-symbolic-var input2_zero uint8_t)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var output_shift uint32_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define t90 (load t90-buf (ramp 0 1 128) (aligned 0 0)))
(define t91 (load t91-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t90-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t91-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t92  (vec-mul
  (int64x128
   (vec-mul
    (int32x128
     (vec-add
      (vec-mul
       (int16x128
        t90)
       (x128 (int16_t (bv 64 16))))
      (x128 (sca-mul (int16x1 input1_zero) (int16_t (bv -64 16))))))
    (int32x128
     (vec-add
      (vec-mul
       (int16x128
        t91)
       (x128 (int16_t (bv 64 16))))
      (x128 (sca-mul (int16x1 input2_zero) (int16_t (bv -64 16))))))))
  (int64x128
   (x128 output_multiplier)))])
  (let ([t93   (int32x128
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x128 (int64_t (bv 1 64)))
       (vec-div
        t92
        (x128 (int64_t (bv 1073741824 64)))))
      (vec-div
       t92
       (x128 (int64_t (bv 2147483648 64)))))
     (x128 (int64_t (bv 2147483647 64))))
    (x128 (int64_t (bv -2147483648 64)))))])
   (let ([t94    (sca-min    output_shift    (uint32_t (bv 15 32)))])
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
                  (vec-shr
                   t93
                   (x128 t94))
                  (vec-bwand
                   (vec-if
                    (x128 (sca-lt (uint32_t (bv 0 32)) t94))
                    (x128 (int32_t (bv 1 32)))
                    (x128 (int32_t (bv 0 32))))
                   (vec-shr
                    t93
                    (x128 (sca-sub t94 (uint32_t (bv 1 32)))))))
                 (x128 (int32_t (bv 32767 32))))
                (x128 (int32_t (bv -32768 32))))))
             (int32x128
              (x128 (int16x1 output_zero))))
            (x128 (int32_t (bv 32767 32))))
           (x128 (int32_t (bv -32768 32)))))
         (x128 (int16_t (bv 255 16))))
        (x128 (int16_t (bv 0 16)))))
      (x128 output_max))
     (x128 output_min))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")