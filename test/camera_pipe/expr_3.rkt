#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic t3049 integer?)
(define-symbolic t3022 integer?)
(define-symbolic t3017 integer?)
(define-symbolic t3048 integer?)
(define-symbolic t3088 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t3017))
(define input.stride.1 (var-lookup 'input.stride.1 t3022))
(define t2753.s (var-lookup 't2753.s (sca-sub  (sca-mul  t3049  128)  t3048)))
(define t2614 (var-lookup 't2614 (sca-add  t3088  (sca-sub  t2753.s  input.min.0))))

(define halide-expr
 (let ([t3089  (sca-add  (sca-mul  input.stride.1  16)  t2614)])
  (vec-max
   (vec-min
    (vec-max
     (vec-max
      (vec-max
       (int16x128
        (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 14) t2614) -108) 1 128) (aligned 1 0)))
       (int16x128
        (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 18) t2614) -108) 1 128) (aligned 1 0))))
      (int16x128
       (load input (ramp (sca-add t3089 -106) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (sca-add t3089 -110) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (sca-add t3089 -108) 1 128) (aligned 1 0))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")