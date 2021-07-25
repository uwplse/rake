#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic-buffer inv_sqrt int32_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t115 integer?)
(define-symbolic t123 integer?)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic t130 integer?)
(define-symbolic-var input_zero uint8_t)
(define-symbolic t119 integer?)
(define-symbolic t120 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t115))
(define input.stride.1 (var-lookup 'input.stride.1 t119))
(define output.min.0 (var-lookup 'output.min.0 t120))
(define output.min.1 (var-lookup 'output.min.1 t123))
(define t101.s (var-lookup 't101.s (sca-sub  output.min.0  t130)))

(define halide-expr
 (let ([t140  (vec-mul
  (int32x128
   (vec-sub
    (int16x128
     (load input (ramp (sca-add (sca-mul output.s0.x.x 128) (sca-add (sca-mul (sca-add output.min.1 output.s0.y.rebased) input.stride.1) (sca-sub t101.s input.min.0))) 1 128) (aligned 1 0)))
    (int16x128
     (x128 input_zero))))
  (x128 (load-sca inv_sqrt 0)))])
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
                t140
                (x128 (int32_t (bv 128 32)))))
              (vec-div
               t140
               (x128 (int32_t (bv 256 32)))))
             (x128 (int32_t (bv 32767 32))))
            (x128 (int32_t (bv -32768 32))))))
         (int32x128
          (x128 (int16_t (bv 128 16)))))
        (x128 (int32_t (bv 32767 32))))
       (x128 (int32_t (bv -32768 32)))))
     (x128 (int16_t (bv 255 16))))
    (x128 (int16_t (bv 0 16)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")