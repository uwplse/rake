#lang rosette/safe

(require rake)
(init-logging "expr_95.runtimes")

(define-symbolic-buffer convolved int32_t)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var output_shift int32_t)
(define-symbolic-var t1671 int16_t)

(define axioms 
  (list ))


(define halide-expr
 (let ([t1672  (vec-mul
  (int64x64
   (load convolved (ramp 320 1 64) (aligned 0 320)))
  (int64x64
   (x64 output_multiplier)))])
  (let ([t1673   (int32x64
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x64 (int64_t (bv 1 64)))
       (vec-div
        t1672
        (x64 (int64_t (bv 1073741824 64)))))
      (vec-div
       t1672
       (x64 (int64_t (bv 2147483648 64)))))
     (x64 (int64_t (bv 2147483647 64))))
    (x64 (int64_t (bv -2147483648 64)))))])
   (vec-max
    (vec-min
     (int16x64
      (vec-max
       (vec-min
        (vec-add
         (int32x64
          (int16x64
           (vec-max
            (vec-min
             (vec-add
              (vec-shr
               t1673
               (x64 output_shift))
              (vec-bwand
               (vec-if
                (x64 (sca-lt (int32_t (bv 0 32)) output_shift))
                (x64 (int32_t (bv 1 32)))
                (x64 (int32_t (bv 0 32))))
               (vec-shr
                t1673
                (x64 (sca-add output_shift (int32_t (bv -1 32)))))))
             (x64 (int32_t (bv 32767 32))))
            (x64 (int32_t (bv -32768 32))))))
         (int32x64
          (x64 t1671)))
        (x64 (int32_t (bv 32767 32))))
       (x64 (int32_t (bv -32768 32)))))
     (x64 (int16_t (bv 255 16))))
    (x64 (int16_t (bv 0 16)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_95.out")