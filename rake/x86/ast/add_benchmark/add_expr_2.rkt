#lang rosette/safe

(require rake)
(init-logging "add_expr_2.runtimes")

(define-symbolic-buffer input1 uint8_t)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic-var input1_multiplier int16_t)
(define-symbolic-var input2_multiplier int16_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t86 integer?)
(define-symbolic t91 integer?)
(define-symbolic t100 integer?)
(define-symbolic t103 integer?)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic t140 integer?)
(define-symbolic-var t142 int16_t)
(define-symbolic-var t143 int16_t)
(define-symbolic-var t144 int16_t)
(define-symbolic-var t145 int16_t)

(define axioms 
  (list ))

(define input1.min.0 (var-lookup 'input1.min.0 t86))
(define input1.stride.1 (var-lookup 'input1.stride.1 t91))
(define output.min.0 (var-lookup 'output.min.0 t100))
(define output.min.1 (var-lookup 'output.min.1 t103))
(define t81 (var-lookup 't81 t140))
(define t72 (var-lookup 't72 (sca-sub  (sca-sub  output.min.0  t81)  input1.min.0)))
(define t82 (var-lookup 't82 (sca-add  output.min.1  output.s0.y.rebased)))

(define halide-expr
 (let ([t146  (vec-add
  (vec-mul
   (int32x16
    (vec-add
     (vec-mul
      (int16x16
       (load input1 (ramp (sca-add (sca-mul output.s0.x.x 16) (sca-add (sca-mul input1.stride.1 t82) t72)) 1 16) (aligned 1 0)))
      (x16 (int16_t (bv 64 16))))
     (x16 (sca-mul t142 (int16_t (bv -64 16))))))
   (int32x16
    (x16 input1_multiplier)))
  (x16 (sca-mul (int32x1 (sca-mul (sca-sub t143 t144) (int16_t (bv 64 16)))) (int32x1 input2_multiplier))))])
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
                  t146
                  (x16 (int32_t (bv 32768 32)))))
                (vec-div
                 t146
                 (x16 (int32_t (bv 65536 32)))))
               (x16 (int32_t (bv 32767 32))))
              (x16 (int32_t (bv -32768 32))))))
           (int32x16
            (x16 t145)))
          (x16 (int32_t (bv 32767 32))))
         (x16 (int32_t (bv -32768 32)))))
       (x16 (int16_t (bv 255 16))))
      (x16 (int16_t (bv 0 16)))))
    (x16 output_max))
   (x16 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "add_sexp_2.out")