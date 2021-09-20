#lang rosette/safe

(require rake)
(init-logging "expr_6.runtimes")

(define-symbolic-buffer bias int32_t)
(define-symbolic-buffer column_sums_b uint32_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic-var t173 int32_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var t175 int32_t)
(define-symbolic-var output_offset int32_t)
(define-symbolic-var t176 int32_t)
(define-symbolic output.s0.x.xo integer?)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var output_shift int32_t)
(define-symbolic-var t174 int32_t)
(define-symbolic-var t177 int32_t)
(define-symbolic-var mat_a.extent.0 int32_t)

(define axioms 
  (list ))


(define halide-expr
 (let ([t178  (vec-mul
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
    (x128 (sca-add (sca-mul (sca-mul t174 t175) mat_a.extent.0) (sca-mul t176 t177)))))
  (int64x128
   (x128 output_multiplier)))])
  (let ([t179   (int32x128
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x128 (int64_t (bv 1 64)))
       (vec-div
        t178
        (x128 (int64_t (bv 1073741824 64)))))
      (vec-div
       t178
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
           t179
           (x128 output_shift))
          (vec-bwand
           (vec-if
            (x128 (sca-lt (int32_t (bv 0 32)) output_shift))
            (x128 (int32_t (bv 1 32)))
            (x128 (int32_t (bv 0 32))))
           (vec-shr
            t179
            (x128 (sca-add output_shift (int32_t (bv -1 32)))))))
         (x128 output_offset))
        (x128 (int32_t (bv 255 32))))
       (x128 (int32_t (bv 0 32)))))
     (x128 output_max))
    (x128 output_min)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_6.out")