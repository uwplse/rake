#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer input1 uint8_t)
(define-symbolic t68 integer?)
(define-symbolic-var t105 int16_t)
(define-symbolic-var t106 int16_t)
(define-symbolic-var t107 int16_t)
(define-symbolic-var t104 int16_t)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var output_shift uint32_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic t65 integer?)
(define-symbolic t103 integer?)
(define-symbolic t76 integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t73 integer?)

(define axioms 
  (list ))

(define input1.min.0 (var-lookup 'input1.min.0 t65))
(define input1.stride.1 (var-lookup 'input1.stride.1 t68))
(define output.min.0 (var-lookup 'output.min.0 t73))
(define output.min.1 (var-lookup 'output.min.1 t76))
(define t49.s (var-lookup 't49.s (sca-sub  output.min.0  t103)))

(define halide-expr
 (let ([t108  (vec-mul
  (int64x128
   (vec-mul
    (int32x128
     (vec-add
      (vec-mul
       (int16x128
        (load input1 (ramp (sca-add (sca-mul output.s0.x.x 128) (sca-add (sca-mul (sca-add output.min.1 output.s0.y.rebased) input1.stride.1) (sca-sub t49.s input1.min.0))) 1 128) (aligned 1 0)))
       (x128 (int16_t (bv 64 16))))
      (x128 (sca-mul t104 (int16_t (bv -64 16))))))
    (int32x128
     (x128 (sca-mul (sca-sub t105 t106) (int16_t (bv 64 16)))))))
  (int64x128
   (x128 output_multiplier)))])
  (let ([t109   (int32x128
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x128 (int64_t (bv 1 64)))
       (vec-div
        t108
        (x128 (int64_t (bv 1073741824 64)))))
      (vec-div
       t108
       (x128 (int64_t (bv 2147483648 64)))))
     (x128 (int64_t (bv 2147483647 64))))
    (x128 (int64_t (bv -2147483648 64)))))])
   (let ([t110    (sca-min    output_shift    (uint32_t (bv 15 32)))])
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
                   t109
                   (x128 t110))
                  (vec-bwand
                   (vec-if
                    (x128 (sca-lt (uint32_t (bv 0 32)) t110))
                    (x128 (int32_t (bv 1 32)))
                    (x128 (int32_t (bv 0 32))))
                   (vec-shr
                    t109
                    (x128 (sca-sub t110 (uint32_t (bv 1 32)))))))
                 (x128 (int32_t (bv 32767 32))))
                (x128 (int32_t (bv -32768 32))))))
             (int32x128
              (x128 t107)))
            (x128 (int32_t (bv 32767 32))))
           (x128 (int32_t (bv -32768 32)))))
         (x128 (int16_t (bv 255 16))))
        (x128 (int16_t (bv 0 16)))))
      (x128 output_max))
     (x128 output_min))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")