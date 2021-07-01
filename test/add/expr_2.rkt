#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer input1 uint8_t)
(define-symbolic-buffer input2 uint8_t)
(define-symbolic t102 integer?)
(define-symbolic t101 integer?)
(define-symbolic-var input2_multiplier int16_t)
(define-symbolic t68 integer?)
(define-symbolic t75 integer?)
(define-symbolic t76 integer?)
(define-symbolic-var input2_zero uint8_t)
(define-symbolic-var output_zero uint8_t)
(define-symbolic t74 integer?)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t79 integer?)
(define-symbolic-var input1_multiplier int16_t)
(define-symbolic-var input1_zero uint8_t)

(define axioms 
  (list ))

(define input1.min.0 t68)
(define input2.min.1 t74)
(define input2.stride.1 t75)
(define output.min.0 t76)
(define output.min.1 t79)
(define t49.s (-  output.min.0  t101))
(define t66 (+  (*  output.s0.x.x  256)  (+  t102  (-  t49.s  input1.min.0))))

(define halide-expr
 (let ([t103  (vec-add
  (vec-mul
   (int32x256
    (vec-add
     (vec-mul
      (int16x256
       (load input1 (ramp t66 1 256) (aligned 1 0)))
      (x256 (int16_t (bv 64 16))))
     (x256 (sca-mul (int16x1 input1_zero) (int16_t (bv -64 16))))))
   (int32x256
    (x256 input1_multiplier)))
  (x256 (sca-mul (int32x1 (sca-mul (sca-sub (int16x1 (load-sca input2 (* (+ (- output.min.1 input2.min.1) output.s0.y.rebased) input2.stride.1))) (int16x1 input2_zero)) (int16_t (bv 64 16)))) (int32x1 input2_multiplier))))])
  (vec-max
   (vec-min
    (uint8x256
     (vec-max
      (vec-min
       (int16x256
        (vec-max
         (vec-min
          (vec-add
           (int32x256
            (int16x256
             (vec-max
              (vec-min
               (vec-add
                (vec-bwand
                 (x256 (int32_t (bv 1 32)))
                 (vec-div
                  t103
                  (x256 (int32_t (bv 32768 32)))))
                (vec-div
                 t103
                 (x256 (int32_t (bv 65536 32)))))
               (x256 (int32_t (bv 32767 32))))
              (x256 (int32_t (bv -32768 32))))))
           (int32x256
            (x256 (int16x1 output_zero))))
          (x256 (int32_t (bv 32767 32))))
         (x256 (int32_t (bv -32768 32)))))
       (x256 (int16_t (bv 255 16))))
      (x256 (int16_t (bv 0 16)))))
    (x256 output_max))
   (x256 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")