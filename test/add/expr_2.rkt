#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer input1 uint8_t)
(define-symbolic t74 integer?)
(define-symbolic-var t98 int16_t)
(define-symbolic-var t100 int16_t)
(define-symbolic-var t101 int16_t)
(define-symbolic-var t99 int16_t)
(define-symbolic-var input2_multiplier int16_t)
(define-symbolic t63 integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t71 integer?)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic t97 integer?)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic-var input1_multiplier int16_t)
(define-symbolic t66 integer?)

(define axioms 
  (list ))

(define input1.min.0 (var-lookup 'input1.min.0 t63))
(define input1.stride.1 (var-lookup 'input1.stride.1 t66))
(define output.min.0 (var-lookup 'output.min.0 t71))
(define output.min.1 (var-lookup 'output.min.1 t74))
(define t49.s (var-lookup 't49.s (sca-sub  output.min.0  t97)))

(define halide-expr
 (let ([t102  (vec-add
  (vec-mul
   (int32x128
    (vec-add
     (vec-mul
      (int16x128
       (load input1 (ramp (sca-add (sca-mul output.s0.x.x 128) (sca-add (sca-mul (sca-add output.min.1 output.s0.y.rebased) input1.stride.1) (sca-sub t49.s input1.min.0))) 1 128) (aligned 1 0)))
      (x128 (int16_t (bv 64 16))))
     (x128 (sca-mul t98 (int16_t (bv -64 16))))))
   (int32x128
    (x128 input1_multiplier)))
  (x128 (sca-mul (int32x1 (sca-mul (sca-sub t99 t100) (int16_t (bv 64 16)))) (int32x1 input2_multiplier))))])
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
                  t102
                  (x128 (int32_t (bv 32768 32)))))
                (vec-div
                 t102
                 (x128 (int32_t (bv 65536 32)))))
               (x128 (int32_t (bv 32767 32))))
              (x128 (int32_t (bv -32768 32))))))
           (int32x128
            (x128 t101)))
          (x128 (int32_t (bv 32767 32))))
         (x128 (int32_t (bv -32768 32)))))
       (x128 (int16_t (bv 255 16))))
      (x128 (int16_t (bv 0 16)))))
    (x128 output_max))
   (x128 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")