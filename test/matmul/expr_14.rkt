#lang rosette/safe

(require rake)

(define-symbolic-buffer bias int32_t)
(define-symbolic-buffer column_sums_b uint32_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic-buffer row_sums_a uint32_t)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var mat_b_offset int16_t)
(define-symbolic output.s0.x.xo integer?)
(define-symbolic-var mat_a_offset int16_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic output.s0.y.yo integer?)
(define-symbolic-var output_offset int32_t)
(define-symbolic-var output_shift int32_t)
(define-symbolic t135 integer?)
(define-symbolic-var t121 int32_t)

(define axioms 
  (list ))

(define mat_a.extent.0 t121)
(define output.extent.1 t135)

(define halide-expr
 (vec-max
  (vec-min
   (uint8x128
    (vec-max
     (vec-min
      (vec-add
       (vec-shr
        (vec-add
         (int32x128
          (vec-max
           (vec-min
            (vec-shr
             (vec-add
              (vec-mul
               (int64x128
                (vec-add
                 (vec-add
                  (vec-mul
                   (int32x128
                    (load column_sums_b (ramp (* output.s0.x.xo 128) 1 128) (aligned 128 0)))
                   (x128 (int32x1 (sca-max (sca-min mat_a_offset (int16_t (bv 0 16))) (int16_t (bv -255 16))))))
                  (vec-add
                   (load bias (ramp (* output.s0.x.xo 128) 1 128) (aligned 128 0))
                   (int32x128
                    (load multiplied_no_offsets (ramp 384 1 128) (aligned 0 384)))))
                 (x128 (sca-add (sca-mul (sca-mul (int32x1 (sca-max (sca-min mat_a_offset (int16_t (bv 0 16))) (int16_t (bv -255 16)))) (int32x1 (sca-max (sca-min mat_b_offset (int16_t (bv 0 16))) (int16_t (bv -255 16))))) mat_a.extent.0) (sca-mul (int32x1 (sca-max (sca-min mat_b_offset (int16_t (bv 0 16))) (int16_t (bv -255 16)))) (int32x1 (load-sca row_sums_a (+ (* (- output.s0.y.yo (min (quotient output.extent.1 4) 8)) 4) 35))))))))
               (int64x128
                (x128 output_multiplier)))
              (x128 (int64_t (bv 1073741824 64))))
             (x128 (uint64_t (bv 31 64))))
            (x128 (int64_t (bv 2147483647 64))))
           (x128 (int64_t (bv -2147483648 64)))))
         (x128 (sca-shl (int32_t (bv 1 32)) (uint32x1 (sca-add (sca-max output_shift (int32_t (bv 1 32))) (int32_t (bv -1 32)))))))
        (x128 output_shift))
       (x128 output_offset))
      (x128 (int32_t (bv 255 32))))
     (x128 (int32_t (bv 0 32)))))
   (x128 output_max))
  (x128 output_min)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_14.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)