#lang rosette/safe

(require rake)
(init-logging "add_expr_1.runtimes")

(define-symbolic-buffer input1 uint8_t)
(define-symbolic-buffer input2 uint8_t)
(define-symbolic-var t133 int16_t)
(define-symbolic-var t134 int16_t)
(define-symbolic t98 integer?)
(define-symbolic t93 integer?)
(define-symbolic t86 integer?)
(define-symbolic t100 integer?)
(define-symbolic t101 integer?)
(define-symbolic t103 integer?)
(define-symbolic t91 integer?)
(define-symbolic t123 integer?)
(define-symbolic t121 integer?)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic t124 integer?)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var input2_multiplier int16_t)
(define-symbolic-var t132 int16_t)
(define-symbolic-var input1_multiplier int16_t)

(define axioms 
  (list ))

(define input1.min.0 (var-lookup 'input1.min.0 t86))
(define input1.stride.1 (var-lookup 'input1.stride.1 t91))
(define input2.min.0 (var-lookup 'input2.min.0 t93))
(define input2.stride.1 (var-lookup 'input2.stride.1 t98))
(define output.min.0 (var-lookup 'output.min.0 t100))
(define output.extent.0 (var-lookup 'output.extent.0 t101))
(define output.min.1 (var-lookup 'output.min.1 t103))
(define t64 (var-lookup 't64 t121))
(define t66 (var-lookup 't66 t123))
(define t67 (var-lookup 't67 t124))
(define t59 (var-lookup 't59 (sca-add  (sca-mul  t64  16)  output.min.0)))
(define t60 (var-lookup 't60 (sca-add  output.extent.0  output.min.0)))
(define t37 (var-lookup 't37 (vec-le
  (ramp (sca-add t59 1) 1 16)
  (x16 t60))))
(define t50 (var-lookup 't50 (sca-add  output.min.1  output.s0.y.rebased)))

(define halide-expr
 (let ([t135  (vec-add
  (vec-mul
   (int32x16
    (vec-add
     (vec-mul
      (int16x16
       (load input1 (ramp (sca-add (sca-mul input1.stride.1 t50) (sca-sub (sca-sub t59 t66) input1.min.0)) 1 16) (aligned 1 0)))
      (x16 (int16_t (bv 64 16))))
     (x16 (sca-mul t132 (int16_t (bv -64 16))))))
   (int32x16
    (x16 input1_multiplier)))
  (vec-mul
   (int32x16
    (vec-add
     (vec-mul
      (int16x16
       (load input2 (ramp (sca-add (sca-mul input2.stride.1 t50) (sca-sub (sca-sub t59 t67) input2.min.0)) 1 16) (aligned 1 0)))
      (x16 (int16_t (bv 64 16))))
     (x16 (sca-mul t133 (int16_t (bv -64 16))))))
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
                  t135
                  (x16 (int32_t (bv 32768 32)))))
                (vec-div
                 t135
                 (x16 (int32_t (bv 65536 32)))))
               (x16 (int32_t (bv 32767 32))))
              (x16 (int32_t (bv -32768 32))))))
           (int32x16
            (x16 t134)))
          (x16 (int32_t (bv 32767 32))))
         (x16 (int32_t (bv -32768 32)))))
       (x16 (int16_t (bv 255 16))))
      (x16 (int16_t (bv 0 16)))))
    (x16 output_max))
   (x16 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "add_sexp_1.out")