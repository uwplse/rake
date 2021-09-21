#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic t3022 integer?)
(define-symbolic t3017 integer?)
(define-symbolic f1.s0.v0.v0 integer?)
(define-symbolic t3072 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t3017))
(define input.stride.1 (var-lookup 'input.stride.1 t3022))
(define t2608 (var-lookup 't2608 (sca-add  (sca-mul  f1.s0.v0.v0  128)  (sca-sub  t3072  input.min.0))))

(define halide-expr
 (let ([t3073  (sca-add  (sca-mul  input.stride.1  16)  t2608)])
  (vec-max
   (vec-min
    (vec-max
     (vec-max
      (vec-max
       (int16x128
        (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 14) t2608) 12) 1 128) (aligned 1 0)))
       (int16x128
        (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 18) t2608) 12) 1 128) (aligned 1 0))))
      (int16x128
       (load input (ramp (sca-add t3073 14) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (sca-add t3073 10) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (sca-add t3073 12) 1 128) (aligned 1 0))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")