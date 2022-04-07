#lang rosette/safe

(require rake)
(init-logging "mul_expr_0.runtimes")

(define-symbolic-buffer input1 uint8_t)
(define-symbolic-buffer input2 uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic t88 integer?)
(define-symbolic t93 integer?)
(define-symbolic t95 integer?)
(define-symbolic t100 integer?)
(define-symbolic t102 integer?)
(define-symbolic t105 integer?)
(define-symbolic t125 integer?)
(define-symbolic t126 integer?)
(define-symbolic-var t127 int16_t)
(define-symbolic-var t128 int16_t)
(define-symbolic-var t129 int16_t)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic-var t57 uint32_t)

(define axioms 
  (list ))

(define input1.min.0 (var-lookup 'input1.min.0 t88))
(define input1.stride.1 (var-lookup 'input1.stride.1 t93))
(define input2.min.0 (var-lookup 'input2.min.0 t95))
(define input2.stride.1 (var-lookup 'input2.stride.1 t100))
(define output.min.0 (var-lookup 'output.min.0 t102))
(define output.min.1 (var-lookup 'output.min.1 t105))
(define t67 (var-lookup 't67 t125))
(define t68 (var-lookup 't68 t126))
(define t56 (var-lookup 't56 (sca-sub  (sca-sub  output.min.0  t68)  input2.min.0)))
(define t55 (var-lookup 't55 (sca-sub  (sca-sub  output.min.0  t67)  input1.min.0)))
(define t69 (var-lookup 't69 (sca-add  output.min.1  output.s0.y.rebased)))

(define halide-expr
 (let ([t130  (vec-mul
  (int64x16
   (vec-mul
    (int32x16
     (vec-add
      (vec-mul
       (int16x16
        (load input1 (ramp (sca-add (sca-mul output.s0.x.x 16) (sca-add (sca-mul input1.stride.1 t69) t55)) 1 16) (aligned 1 0)))
       (x16 (int16_t (bv 64 16))))
      (x16 (sca-mul t127 (int16_t (bv -64 16))))))
    (int32x16
     (vec-add
      (vec-mul
       (int16x16
        (load input2 (ramp (sca-add (sca-mul output.s0.x.x 16) (sca-add (sca-mul input2.stride.1 t69) t56)) 1 16) (aligned 1 0)))
       (x16 (int16_t (bv 64 16))))
      (x16 (sca-mul t128 (int16_t (bv -64 16))))))))
  (int64x16
   (x16 output_multiplier)))])
  (let ([t131   (int32x16
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x16 (int64_t (bv 1 64)))
       (vec-div
        t130
        (x16 (int64_t (bv 1073741824 64)))))
      (vec-div
       t130
       (x16 (int64_t (bv 2147483648 64)))))
     (x16 (int64_t (bv 2147483647 64))))
    (x16 (int64_t (bv -2147483648 64)))))])
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
                 (vec-shr
                  t131
                  (x16 t57))
                 (vec-bwand
                  (vec-if
                   (x16 (sca-lt (uint32_t (bv 0 32)) t57))
                   (x16 (int32_t (bv 1 32)))
                   (x16 (int32_t (bv 0 32))))
                  (vec-shr
                   t131
                   (x16 (sca-sub t57 (uint32_t (bv 1 32)))))))
                (x16 (int32_t (bv 32767 32))))
               (x16 (int32_t (bv -32768 32))))))
            (int32x16
             (x16 t129)))
           (x16 (int32_t (bv 32767 32))))
          (x16 (int32_t (bv -32768 32)))))
        (x16 (int16_t (bv 255 16))))
       (x16 (int16_t (bv 0 16)))))
     (x16 output_max))
    (x16 output_min)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "mul_sexp_0.out")