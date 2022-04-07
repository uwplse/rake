#lang rosette/safe

(require rake)
(init-logging "mul_expr_3.runtimes")

(define-symbolic-buffer input1 uint8_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic t88 integer?)
(define-symbolic t93 integer?)
(define-symbolic t102 integer?)
(define-symbolic t103 integer?)
(define-symbolic t105 integer?)
(define-symbolic-var t153 int16_t)
(define-symbolic-var t154 int16_t)
(define-symbolic-var t155 int16_t)
(define-symbolic-var t156 int16_t)
(define-symbolic t144 integer?)
(define-symbolic t142 integer?)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic-var t74 uint32_t)

(define axioms 
  (list ))

(define input1.min.0 (var-lookup 'input1.min.0 t88))
(define input1.stride.1 (var-lookup 'input1.stride.1 t93))
(define output.min.0 (var-lookup 'output.min.0 t102))
(define output.extent.0 (var-lookup 'output.extent.0 t103))
(define output.min.1 (var-lookup 'output.min.1 t105))
(define t81 (var-lookup 't81 t142))
(define t83 (var-lookup 't83 t144))
(define t77 (var-lookup 't77 (sca-add  (sca-mul  t81  16)  output.min.0)))
(define t78 (var-lookup 't78 (sca-add  output.extent.0  output.min.0)))
(define t53 (var-lookup 't53 (sca-add  output.min.1  output.s0.y.rebased)))

(define halide-expr
 (let ([t157  (vec-mul
  (int64x16
   (vec-mul
    (int32x16
     (vec-add
      (vec-mul
       (int16x16
        (load input1 (ramp (sca-add (sca-mul input1.stride.1 t53) (sca-sub (sca-sub t77 t83) input1.min.0)) 1 16) (aligned 1 0)))
       (x16 (int16_t (bv 64 16))))
      (x16 (sca-mul t153 (int16_t (bv -64 16))))))
    (int32x16
     (x16 (sca-mul (sca-sub t154 t155) (int16_t (bv 64 16)))))))
  (int64x16
   (x16 output_multiplier)))])
  (let ([t158   (int32x16
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x16 (int64_t (bv 1 64)))
       (vec-div
        t157
        (x16 (int64_t (bv 1073741824 64)))))
      (vec-div
       t157
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
                  t158
                  (x16 t74))
                 (vec-bwand
                  (vec-if
                   (x16 (sca-lt (uint32_t (bv 0 32)) t74))
                   (x16 (int32_t (bv 1 32)))
                   (x16 (int32_t (bv 0 32))))
                  (vec-shr
                   t158
                   (x16 (sca-sub t74 (uint32_t (bv 1 32)))))))
                (x16 (int32_t (bv 32767 32))))
               (x16 (int32_t (bv -32768 32))))))
            (int32x16
             (x16 t156)))
           (x16 (int32_t (bv 32767 32))))
          (x16 (int32_t (bv -32768 32)))))
        (x16 (int16_t (bv 255 16))))
       (x16 (int16_t (bv 0 16)))))
     (x16 output_max))
    (x16 output_min)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "mul_sexp_3.out")