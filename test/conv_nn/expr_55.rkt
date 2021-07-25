#lang rosette/safe

(require rake)
(init-logging "expr_55.runtimes")

(define-symbolic-buffer convolved int32_t)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var output_shift int32_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var t1481 int16_t)

(define axioms 
  (list ))


(define halide-expr
 (let ([t1482  (vec-mul
  (int64x128
   (load convolved (ramp 640 1 128) (aligned 0 640)))
  (int64x128
   (x128 output_multiplier)))])
  (let ([t1483   (int32x128
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x128 (int64_t (bv 1 64)))
       (vec-div
        t1482
        (x128 (int64_t (bv 1073741824 64)))))
      (vec-div
       t1482
       (x128 (int64_t (bv 2147483648 64)))))
     (x128 (int64_t (bv 2147483647 64))))
    (x128 (int64_t (bv -2147483648 64)))))])
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
                  t1483
                  (x128 output_shift))
                 (vec-bwand
                  (vec-if
                   (x128 (sca-lt (int32_t (bv 0 32)) output_shift))
                   (x128 (int32_t (bv 1 32)))
                   (x128 (int32_t (bv 0 32))))
                  (vec-shr
                   t1483
                   (x128 (sca-add output_shift (int32_t (bv -1 32)))))))
                (x128 (int32_t (bv 32767 32))))
               (x128 (int32_t (bv -32768 32))))))
            (int32x128
             (x128 t1481)))
           (x128 (int32_t (bv 32767 32))))
          (x128 (int32_t (bv -32768 32)))))
        (x128 (int16_t (bv 255 16))))
       (x128 (int16_t (bv 0 16)))))
     (x128 output_max))
    (x128 output_min)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_55.out")