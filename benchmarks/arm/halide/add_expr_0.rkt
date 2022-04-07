#lang rosette/safe

(require rake)
(init-logging "add_expr_0.runtimes")

(define-symbolic-buffer input1 uint8_t)
(define-symbolic-buffer input2 uint8_t)
(define-symbolic t130 integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t129 integer?)
(define-symbolic t112 integer?)
(define-symbolic t94 integer?)
(define-symbolic t104 integer?)
(define-symbolic t99 integer?)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic t109 integer?)
(define-symbolic-var output_zero uint8_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var input2_multiplier int16_t)
(define-symbolic-var input1_zero uint8_t)
(define-symbolic-var input1_multiplier int16_t)
(define-symbolic t89 integer?)
(define-symbolic-var input2_zero uint8_t)

(define axioms 
  (list ))

(define input1.min.0 (var-lookup 'input1.min.0 t89))
(define input1.stride.1 (var-lookup 'input1.stride.1 t94))
(define input2.min.0 (var-lookup 'input2.min.0 t99))
(define input2.stride.1 (var-lookup 'input2.stride.1 t104))
(define output.min.0 (var-lookup 'output.min.0 t109))
(define output.min.1 (var-lookup 'output.min.1 t112))
(define t66 (var-lookup 't66 t129))
(define t67 (var-lookup 't67 t130))
(define t56 (var-lookup 't56 (sca-sub  (sca-sub  output.min.0  t67)  input2.min.0)))
(define t55 (var-lookup 't55 (sca-sub  (sca-sub  output.min.0  t66)  input1.min.0)))
(define t68 (var-lookup 't68 (sca-add  output.min.1  output.s0.y.rebased)))

(define halide-expr
 (let ([t132  (vec-add
  (vec-mul
   (int32x16
    (vec-add
     (vec-mul
      (int16x16
       (load input1 (ramp (sca-add (sca-mul output.s0.x.x 16) (sca-add (sca-mul input1.stride.1 t68) t55)) 1 16) (aligned 1 0)))
      (x16 (int16_t (bv 64 16))))
     (x16 (sca-mul (int16x1 input1_zero) (int16_t (bv -64 16))))))
   (int32x16
    (x16 input1_multiplier)))
  (vec-mul
   (int32x16
    (vec-add
     (vec-mul
      (int16x16
       (load input2 (ramp (sca-add (sca-mul output.s0.x.x 16) (sca-add (sca-mul input2.stride.1 t68) t56)) 1 16) (aligned 1 0)))
      (x16 (int16_t (bv 64 16))))
     (x16 (sca-mul (int16x1 input2_zero) (int16_t (bv -64 16))))))
   (int32x16
    (x16 input2_multiplier))))])
  (vec-max
   (vec-min
    (uint8x16
     (vec-max
      (vec-min
       (int16x16
        (vec-max
         (vec-min
          (vec-add
           (int32x16
            (int16x16
             (vec-max
              (vec-min
               (vec-add
                (vec-bwand
                 (x16 (int32_t (bv 1 32)))
                 (vec-div
                  t132
                  (x16 (int32_t (bv 32768 32)))))
                (vec-div
                 t132
                 (x16 (int32_t (bv 65536 32)))))
               (x16 (int32_t (bv 32767 32))))
              (x16 (int32_t (bv -32768 32))))))
           (int32x16
            (x16 (int16x1 output_zero))))
          (x16 (int32_t (bv 32767 32))))
         (x16 (int32_t (bv -32768 32)))))
       (x16 (int16_t (bv 255 16))))
      (x16 (int16_t (bv 0 16)))))
    (x16 output_max))
   (x16 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "add_sexp_0.out")