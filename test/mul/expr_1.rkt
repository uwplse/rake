#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer t93-buf uint8_t)
(define-symbolic-buffer t95-buf uint8_t)
(define t93 (load t93-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var t94 int16_t)
(define t95 (load t95-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var t97 int16_t)
(define-symbolic-var t96 int16_t)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var output_shift uint32_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)

(define axioms 
  (list 
   (values-range-from t93-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t95-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t98  (vec-mul
  (int64x128
   (vec-mul
    (int32x128
     (vec-add
      (vec-mul
       (int16x128
        t93)
       (x128 (int16_t (bv 64 16))))
      (x128 (sca-mul t94 (int16_t (bv -64 16))))))
    (int32x128
     (vec-add
      (vec-mul
       (int16x128
        t95)
       (x128 (int16_t (bv 64 16))))
      (x128 (sca-mul t96 (int16_t (bv -64 16))))))))
  (int64x128
   (x128 output_multiplier)))])
  (let ([t99   (int32x128
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x128 (int64_t (bv 1 64)))
       (vec-div
        t98
        (x128 (int64_t (bv 1073741824 64)))))
      (vec-div
       t98
       (x128 (int64_t (bv 2147483648 64)))))
     (x128 (int64_t (bv 2147483647 64))))
    (x128 (int64_t (bv -2147483648 64)))))])
   (let ([t100    (sca-min    output_shift    (uint32_t (bv 15 32)))])
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
                   t99
                   (x128 t100))
                  (vec-bwand
                   (vec-if
                    (x128 (sca-lt (uint32_t (bv 0 32)) t100))
                    (x128 (int32_t (bv 1 32)))
                    (x128 (int32_t (bv 0 32))))
                   (vec-shr
                    t99
                    (x128 (sca-sub t100 (uint32_t (bv 1 32)))))))
                 (x128 (int32_t (bv 32767 32))))
                (x128 (int32_t (bv -32768 32))))))
             (int32x128
              (x128 t97)))
            (x128 (int32_t (bv 32767 32))))
           (x128 (int32_t (bv -32768 32)))))
         (x128 (int16_t (bv 255 16))))
        (x128 (int16_t (bv 0 16)))))
      (x128 output_max))
     (x128 output_min))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")