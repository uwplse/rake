#lang rosette/safe

(require rake)
(init-logging "l2norm_expr_3.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer inv_sqrt int32_t)
(define-symbolic t115 integer?)
(define-symbolic t120 integer?)
(define-symbolic t122 integer?)
(define-symbolic t123 integer?)
(define-symbolic t125 integer?)
(define-symbolic t135 integer?)
(define-symbolic t136 integer?)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic-var input_zero uint8_t)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t115))
(define input.stride.1 (var-lookup 'input.stride.1 t120))
(define output.min.0 (var-lookup 'output.min.0 t122))
(define output.extent.0 (var-lookup 'output.extent.0 t123))
(define output.min.1 (var-lookup 'output.min.1 t125))
(define t105 (var-lookup 't105 t135))
(define t106 (var-lookup 't106 t136))
(define t101 (var-lookup 't101 (sca-add  (sca-mul  t105  16)  output.min.0)))
(define t102 (var-lookup 't102 (sca-add  output.extent.0  output.min.0)))
(define t91 (var-lookup 't91 (sca-add  output.min.1  output.s0.y.rebased)))

(define halide-expr
 (let ([t197  (vec-mul
  (int32x16
   (vec-sub
    (int16x16
     (load input (ramp (sca-add (sca-mul input.stride.1 t91) (sca-sub (sca-sub t101 t106) input.min.0)) 1 16) (aligned 1 0)))
    (int16x16
     (x16 input_zero))))
  (x16 (load-sca inv_sqrt 0)))])
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
                t197
                (x16 (int32_t (bv 128 32)))))
              (vec-div
               t197
               (x16 (int32_t (bv 256 32)))))
             (x16 (int32_t (bv 32767 32))))
            (x16 (int32_t (bv -32768 32))))))
         (int32x16
          (x16 (int16_t (bv 128 16)))))
        (x16 (int32_t (bv 32767 32))))
       (x16 (int32_t (bv -32768 32)))))
     (x16 (int16_t (bv 255 16))))
    (x16 (int16_t (bv 0 16)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "l2norm_sexp_3.out")