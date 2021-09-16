#lang rosette/safe

(require rake)
(init-logging "expr_6.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic t458 integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t251 integer?)
(define-symbolic-var beta_multiplier int16_t)
(define-symbolic-var t487 int16_t)
(define-symbolic t256 integer?)
(define-symbolic t266 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t251))
(define output.min.0 (var-lookup 'output.min.0 t256))
(define t226.s (var-lookup 't226.s (sca-sub  output.min.0  t266)))
(define t241 (var-lookup 't241 (sca-add  t458  (sca-sub  t226.s  input.min.0))))

(define halide-expr
 (let ([t488  (vec-mul
  (int32x128
   (vec-add
    (vec-mul
     (int16x128
      (load input (ramp (sca-add (sca-mul output.s0.x.x 128) t241) 1 128) (aligned 1 0)))
     (x128 (int16_t (bv 64 16))))
    (x128 (sca-mul t487 (int16_t (bv -64 16))))))
  (int32x128
   (x128 beta_multiplier)))])
  (int16x128
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x128 (int32_t (bv 1 32)))
       (vec-div
        t488
        (x128 (int32_t (bv 16384 32)))))
      (vec-div
       t488
       (x128 (int32_t (bv 32768 32)))))
     (x128 (int32_t (bv 32767 32))))
    (x128 (int32_t (bv -32768 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_6.out")