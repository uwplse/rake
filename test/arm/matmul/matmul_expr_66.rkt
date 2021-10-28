#lang rosette/safe

(require rake)
(init-logging "matmul_expr_66.runtimes")

(define-symbolic-buffer bias int32_t)
(define-symbolic-buffer column_sums_b uint32_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic-var mat_a.extent.0 int32_t)
(define-symbolic t6635 integer?)
(define-symbolic-var t5828 int32_t)
(define-symbolic-var output_offset int32_t)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var output_shift int32_t)
(define-symbolic-var t6643 int32_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic-var t5827 int32_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic t6629 integer?)

(define axioms 
  (list ))

(define t6115 (var-lookup 't6115 t6629))
(define t6117 (var-lookup 't6117 (sca-mul  t6115  16)))
(define t6112 (var-lookup 't6112 (sca-min  t6115  1)))
(define t6114 (var-lookup 't6114 (sca-min  t6117  4)))
(define t6119 (var-lookup 't6119 (sca-sub  (sca-mul  t6635  4)  t6114)))

(define halide-expr
 (let ([t6644  (vec-mul
  (int64x16
   (vec-add
    (vec-add
     (vec-mul
      (int32x16
       (load column_sums_b (ramp (sca-add (sca-mul (sca-sub output.s0.x.x t6112) 16) 16) 1 16) (aligned 16 0)))
      (x16 t5827))
     (vec-add
      (load bias (ramp (sca-mul output.s0.x.x 16) 1 16) (aligned 16 0))
      (x16 (sca-add (sca-mul (sca-mul t5827 t5828) mat_a.extent.0) (sca-mul t5828 t6643)))))
    (int32x16
     (load multiplied_no_offsets (ramp (sca-add (sca-add (sca-mul output.s0.x.x 16) t6119) 4) 1 16) (aligned 4 0)))))
  (int64x16
   (x16 output_multiplier)))])
  (let ([t6645   (int32x16
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x16 (int64_t (bv 1 64)))
       (vec-div
        t6644
        (x16 (int64_t (bv 1073741824 64)))))
      (vec-div
       t6644
       (x16 (int64_t (bv 2147483648 64)))))
     (x16 (int64_t (bv 2147483647 64))))
    (x16 (int64_t (bv -2147483648 64)))))])
   (vec-max
    (vec-min
     (uint8x16
      (vec-max
       (vec-min
        (vec-add
         (vec-add
          (vec-shr
           t6645
           (x16 output_shift))
          (vec-bwand
           (vec-if
            (x16 (sca-lt (int32_t (bv 0 32)) output_shift))
            (x16 (int32_t (bv 1 32)))
            (x16 (int32_t (bv 0 32))))
           (vec-shr
            t6645
            (x16 (sca-add output_shift (int32_t (bv -1 32)))))))
         (x16 output_offset))
        (x16 (int32_t (bv 255 32))))
       (x16 (int32_t (bv 0 32)))))
     (x16 output_max))
    (x16 output_min)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "matmul_sexp_66.out")