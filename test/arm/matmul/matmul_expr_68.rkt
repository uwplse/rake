#lang rosette/safe

(require rake)
(init-logging "matmul_expr_68.runtimes")

(define-symbolic-buffer bias int32_t)
(define-symbolic-buffer column_sums_b uint32_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic-var mat_a.extent.0 int32_t)
(define-symbolic-var output_offset int32_t)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var output_shift int32_t)
(define-symbolic-var t5831 int32_t)
(define-symbolic-var t6663 int32_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t6637 integer?)
(define-symbolic-var t5832 int32_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic t6629 integer?)

(define axioms 
  (list ))

(define t6115 (var-lookup 't6115 t6629))
(define t6117 (var-lookup 't6117 (sca-mul  t6115  16)))
(define t6112 (var-lookup 't6112 (sca-min  t6115  1)))
(define t6114 (var-lookup 't6114 (sca-min  t6117  4)))
(define t6123 (var-lookup 't6123 (sca-sub  t6637  t6114)))

(define halide-expr
 (let ([t6664  (vec-mul
  (int64x16
   (vec-add
    (vec-add
     (vec-mul
      (int32x16
       (load column_sums_b (ramp (sca-add (sca-mul (sca-sub output.s0.x.x t6112) 16) 16) 1 16) (aligned 16 0)))
      (x16 t5831))
     (vec-add
      (load bias (ramp (sca-mul output.s0.x.x 16) 1 16) (aligned 16 0))
      (x16 (sca-add (sca-mul (sca-mul t5831 t5832) mat_a.extent.0) (sca-mul t5832 t6663)))))
    (int32x16
     (load multiplied_no_offsets (ramp (sca-add (sca-add (sca-mul output.s0.x.x 16) t6123) 4) 1 16) (aligned 4 0)))))
  (int64x16
   (x16 output_multiplier)))])
  (let ([t6665   (int32x16
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x16 (int64_t (bv 1 64)))
       (vec-div
        t6664
        (x16 (int64_t (bv 1073741824 64)))))
      (vec-div
       t6664
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
           t6665
           (x16 output_shift))
          (vec-bwand
           (vec-if
            (x16 (sca-lt (int32_t (bv 0 32)) output_shift))
            (x16 (int32_t (bv 1 32)))
            (x16 (int32_t (bv 0 32))))
           (vec-shr
            t6665
            (x16 (sca-add output_shift (int32_t (bv -1 32)))))))
         (x16 output_offset))
        (x16 (int32_t (bv 255 32))))
       (x16 (int32_t (bv 0 32)))))
     (x16 output_max))
    (x16 output_min)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "matmul_sexp_68.out")