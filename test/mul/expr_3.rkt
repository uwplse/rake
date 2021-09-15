#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer t112-buf uint8_t)
(define t112 (load t112-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var t113 int16_t)
(define-symbolic-var t114 int16_t)
(define-symbolic-var t116 int16_t)
(define-symbolic-var t115 int16_t)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var output_shift uint32_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)

(define axioms 
  (list 
   (values-range-from t112-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t117  (vec-mul
  (int64x128
   (vec-mul
    (int32x128
     (vec-add
      (vec-mul
       (int16x128
        t112)
       (x128 (int16_t (bv 64 16))))
      (x128 (sca-mul t113 (int16_t (bv -64 16))))))
    (int32x128
     (x128 (sca-mul (sca-sub t114 t115) (int16_t (bv 64 16)))))))
  (int64x128
   (x128 output_multiplier)))])
  (let ([t118   (int32x128
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x128 (int64_t (bv 1 64)))
       (vec-div
        t117
        (x128 (int64_t (bv 1073741824 64)))))
      (vec-div
       t117
       (x128 (int64_t (bv 2147483648 64)))))
     (x128 (int64_t (bv 2147483647 64))))
    (x128 (int64_t (bv -2147483648 64)))))])
   (let ([t119    (sca-min    output_shift    (uint32_t (bv 15 32)))])
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
                   t118
                   (x128 t119))
                  (vec-bwand
                   (vec-if
                    (x128 (sca-lt (uint32_t (bv 0 32)) t119))
                    (x128 (int32_t (bv 1 32)))
                    (x128 (int32_t (bv 0 32))))
                   (vec-shr
                    t118
                    (x128 (sca-sub t119 (uint32_t (bv 1 32)))))))
                 (x128 (int32_t (bv 32767 32))))
                (x128 (int32_t (bv -32768 32))))))
             (int32x128
              (x128 t116)))
            (x128 (int32_t (bv 32767 32))))
           (x128 (int32_t (bv -32768 32)))))
         (x128 (int16_t (bv 255 16))))
        (x128 (int16_t (bv 0 16)))))
      (x128 output_max))
     (x128 output_min))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")