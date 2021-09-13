#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer t91-buf uint8_t)
(define-symbolic-buffer t89-buf uint8_t)
(define-symbolic-var t93 int16_t)
(define-symbolic-var input2_multiplier int16_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define t91 (load t91-buf (ramp 0 1 128) (aligned 0 0)))
(define t89 (load t89-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var t92 int16_t)
(define-symbolic-var t90 int16_t)
(define-symbolic-var input1_multiplier int16_t)

(define axioms 
  (list 
   (values-range-from t91-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t89-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t94  (vec-add
  (vec-mul
   (int32x128
    (vec-add
     (vec-mul
      (int16x128
       t89)
      (x128 (int16_t (bv 64 16))))
     (x128 (sca-mul t90 (int16_t (bv -64 16))))))
   (int32x128
    (x128 input1_multiplier)))
  (vec-mul
   (int32x128
    (vec-add
     (vec-mul
      (int16x128
       t91)
      (x128 (int16_t (bv 64 16))))
     (x128 (sca-mul t92 (int16_t (bv -64 16))))))
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
                  t94
                  (x128 (int32_t (bv 32768 32)))))
                (vec-div
                 t94
                 (x128 (int32_t (bv 65536 32)))))
               (x128 (int32_t (bv 32767 32))))
              (x128 (int32_t (bv -32768 32))))))
           (int32x128
            (x128 t93)))
          (x128 (int32_t (bv 32767 32))))
         (x128 (int32_t (bv -32768 32)))))
       (x128 (int16_t (bv 255 16))))
      (x128 (int16_t (bv 0 16)))))
    (x128 output_max))
   (x128 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")