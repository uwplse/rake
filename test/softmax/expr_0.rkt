#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic t254 integer?)
(define-symbolic sum_exp_row.s1.r6$x.r6$x integer?)
(define-symbolic-var beta_multiplier int16_t)
(define-symbolic output.s0.y.rebased integer?)
(define-symbolic t255 integer?)
(define-symbolic t259 integer?)
(define-symbolic-var t299 int16_t)

(define axioms 
  (list ))

(define input.min.1 (var-lookup 'input.min.1 t254))
(define input.stride.1 (var-lookup 'input.stride.1 t255))
(define output.min.1 (var-lookup 'output.min.1 t259))

(define halide-expr
 (let ([t300  (vec-mul
  (int32x128
   (vec-add
    (vec-mul
     (int16x128
      (load input (ramp (sca-add (sca-mul sum_exp_row.s1.r6$x.r6$x 128) (sca-mul (sca-sub (sca-add output.min.1 output.s0.y.rebased) input.min.1) input.stride.1)) 1 128) (aligned 1 0)))
     (x128 (int16_t (bv 64 16))))
    (x128 (sca-mul t299 (int16_t (bv -64 16))))))
  (int32x128
   (x128 beta_multiplier)))])
  (int16x128
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x128 (int32_t (bv 1 32)))
       (vec-div
        t300
        (x128 (int32_t (bv 16384 32)))))
      (vec-div
       t300
       (x128 (int32_t (bv 32768 32)))))
     (x128 (int32_t (bv 32767 32))))
    (x128 (int32_t (bv -32768 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")