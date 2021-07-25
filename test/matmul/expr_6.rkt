#lang rosette/safe

(require rake)
(init-logging "expr_6.runtimes")

(define-symbolic-buffer bias int32_t)
(define-symbolic-buffer column_sums_b uint32_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic-buffer row_sums_a uint32_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic output.s0.x.xo integer?)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var output_shift int32_t)
(define-symbolic output.s0.y.yo integer?)
(define-symbolic-var mat_b_offset int16_t)
(define-symbolic t139 integer?)
(define-symbolic-var mat_a.extent.0 int32_t)
(define-symbolic-var output_offset int32_t)
(define-symbolic-var mat_a_offset int16_t)

(define axioms 
  (list ))

(define output.extent.1 (var-lookup 'output.extent.1 t139))

(define halide-expr
 (let ([t173  (int32x1  (sca-max  (sca-min  mat_a_offset  (int16_t (bv 0 16)))  (int16_t (bv -255 16))))])
  (let ([t174   (int32x1   (sca-max   (sca-min   mat_b_offset   (int16_t (bv 0 16)))   (int16_t (bv -255 16))))])
   (let ([t175    (vec-mul
    (int64x128
     (vec-add
      (vec-add
       (vec-mul
        (int32x128
         (load column_sums_b (ramp (sca-mul output.s0.x.xo 128) 1 128) (aligned 128 0)))
        (x128 t173))
       (vec-add
        (load bias (ramp (sca-mul output.s0.x.xo 128) 1 128) (aligned 128 0))
        (int32x128
         (load multiplied_no_offsets (ramp 0 1 128) (aligned 0 0)))))
      (x128 (sca-add (sca-mul (sca-mul t173 t174) mat_a.extent.0) (sca-mul t174 (int32x1 (load-sca row_sums_a (sca-add (sca-mul (sca-sub output.s0.y.yo (sca-min (sca-div output.extent.1 4) 8)) 4) 32))))))))
    (int64x128
     (x128 output_multiplier)))])
    (let ([t176     (int32x128
     (vec-max
      (vec-min
       (vec-add
        (vec-bwand
         (x128 (int64_t (bv 1 64)))
         (vec-div
          t175
          (x128 (int64_t (bv 1073741824 64)))))
        (vec-div
         t175
         (x128 (int64_t (bv 2147483648 64)))))
       (x128 (int64_t (bv 2147483647 64))))
      (x128 (int64_t (bv -2147483648 64)))))])
     (vec-max
      (vec-min
       (uint8x128
        (vec-max
         (vec-min
          (vec-add
           (vec-add
            (vec-shr
             t176
             (x128 output_shift))
            (vec-bwand
             (vec-if
              (x128 (sca-lt (int32_t (bv 0 32)) output_shift))
              (x128 (int32_t (bv 1 32)))
              (x128 (int32_t (bv 0 32))))
             (vec-shr
              t176
              (x128 (sca-add output_shift (int32_t (bv -1 32)))))))
           (x128 output_offset))
          (x128 (int32_t (bv 255 32))))
         (x128 (int32_t (bv 0 32)))))
       (x128 output_max))
      (x128 output_min)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_6.out")