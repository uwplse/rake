#lang rosette/safe

(require rake)
(init-logging "add_expr_3.runtimes")

(define-symbolic-buffer input1 uint8_t)
(define-symbolic-var t148 int16_t)
(define-symbolic t140 integer?)
(define-symbolic t86 integer?)
(define-symbolic-var t149 int16_t)
(define-symbolic t100 integer?)
(define-symbolic t101 integer?)
(define-symbolic t103 integer?)
(define-symbolic-var t151 int16_t)
(define-symbolic t91 integer?)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic-var t150 int16_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var input2_multiplier int16_t)
(define-symbolic t138 integer?)
(define-symbolic-var input1_multiplier int16_t)

(define axioms 
  (list ))

(define input1.min.0 (var-lookup 'input1.min.0 t86))
(define input1.stride.1 (var-lookup 'input1.stride.1 t91))
(define output.min.0 (var-lookup 'output.min.0 t100))
(define output.extent.0 (var-lookup 'output.extent.0 t101))
(define output.min.1 (var-lookup 'output.min.1 t103))
(define t79 (var-lookup 't79 t138))
(define t81 (var-lookup 't81 t140))
(define t75 (var-lookup 't75 (sca-add  (sca-mul  t79  16)  output.min.0)))
(define t76 (var-lookup 't76 (sca-add  output.extent.0  output.min.0)))
(define t53 (var-lookup 't53 (sca-add  output.min.1  output.s0.y.rebased)))

(define halide-expr
 (let ([t152  (vec-add
  (vec-mul
   (int32x16
    (vec-add
     (vec-mul
      (int16x16
       (load input1 (ramp (sca-add (sca-mul input1.stride.1 t53) (sca-sub (sca-sub t75 t81) input1.min.0)) 1 16) (aligned 1 0)))
      (x16 (int16_t (bv 64 16))))
     (x16 (sca-mul t148 (int16_t (bv -64 16))))))
   (int32x16
    (x16 input1_multiplier)))
  (x16 (sca-mul (int32x1 (sca-mul (sca-sub t149 t150) (int16_t (bv 64 16)))) (int32x1 input2_multiplier))))])
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
                  t152
                  (x16 (int32_t (bv 32768 32)))))
                (vec-div
                 t152
                 (x16 (int32_t (bv 65536 32)))))
               (x16 (int32_t (bv 32767 32))))
              (x16 (int32_t (bv -32768 32))))))
           (int32x16
            (x16 t151)))
          (x16 (int32_t (bv 32767 32))))
         (x16 (int32_t (bv -32768 32)))))
       (x16 (int16_t (bv 255 16))))
      (x16 (int16_t (bv 0 16)))))
    (x16 output_max))
   (x16 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "add_sexp_3.out")