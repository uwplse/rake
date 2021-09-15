#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer input1 uint8_t)
(define-symbolic-buffer input2 uint8_t)
(define-symbolic t69 integer?)
(define-symbolic t68 integer?)
(define-symbolic t82 integer?)
(define-symbolic-var t83 int16_t)
(define-symbolic-var t84 int16_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var output_shift uint32_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic t72 integer?)
(define-symbolic t65 integer?)
(define-symbolic t81 integer?)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic t76 integer?)
(define-symbolic t73 integer?)
(define-symbolic-var t85 int16_t)

(define axioms 
  (list ))

(define input1.min.0 (var-lookup 'input1.min.0 t65))
(define input1.stride.1 (var-lookup 'input1.stride.1 t68))
(define input2.min.0 (var-lookup 'input2.min.0 t69))
(define input2.stride.1 (var-lookup 'input2.stride.1 t72))
(define output.min.0 (var-lookup 'output.min.0 t73))
(define output.min.1 (var-lookup 'output.min.1 t76))
(define t40.s (var-lookup 't40.s (sca-sub  output.min.0  t81)))
(define t39.s (var-lookup 't39.s (sca-sub  output.min.0  t82)))

(define halide-expr
 (let ([t86  (sca-add  output.min.1  output.s0.y.rebased)])
  (let ([t87   (vec-mul
   (int64x128
    (vec-mul
     (int32x128
      (vec-add
       (vec-mul
        (int16x128
         (load input1 (ramp (sca-add (sca-mul output.s0.x.x 128) (sca-add (sca-mul t86 input1.stride.1) (sca-sub t39.s input1.min.0))) 1 128) (aligned 1 0)))
        (x128 (int16_t (bv 64 16))))
       (x128 (sca-mul t83 (int16_t (bv -64 16))))))
     (int32x128
      (vec-add
       (vec-mul
        (int16x128
         (load input2 (ramp (sca-add (sca-mul output.s0.x.x 128) (sca-add (sca-mul t86 input2.stride.1) (sca-sub t40.s input2.min.0))) 1 128) (aligned 1 0)))
        (x128 (int16_t (bv 64 16))))
       (x128 (sca-mul t84 (int16_t (bv -64 16))))))))
   (int64x128
    (x128 output_multiplier)))])
   (let ([t88    (int32x128
    (vec-max
     (vec-min
      (vec-add
       (vec-bwand
        (x128 (int64_t (bv 1 64)))
        (vec-div
         t87
         (x128 (int64_t (bv 1073741824 64)))))
       (vec-div
        t87
        (x128 (int64_t (bv 2147483648 64)))))
      (x128 (int64_t (bv 2147483647 64))))
     (x128 (int64_t (bv -2147483648 64)))))])
    (let ([t89     (sca-min     output_shift     (uint32_t (bv 15 32)))])
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
                    t88
                    (x128 t89))
                   (vec-bwand
                    (vec-if
                     (x128 (sca-lt (uint32_t (bv 0 32)) t89))
                     (x128 (int32_t (bv 1 32)))
                     (x128 (int32_t (bv 0 32))))
                    (vec-shr
                     t88
                     (x128 (sca-sub t89 (uint32_t (bv 1 32)))))))
                  (x128 (int32_t (bv 32767 32))))
                 (x128 (int32_t (bv -32768 32))))))
              (int32x128
               (x128 t85)))
             (x128 (int32_t (bv 32767 32))))
            (x128 (int32_t (bv -32768 32)))))
          (x128 (int16_t (bv 255 16))))
         (x128 (int16_t (bv 0 16)))))
       (x128 output_max))
      (x128 output_min)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")