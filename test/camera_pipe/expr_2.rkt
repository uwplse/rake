#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic t3022 integer?)
(define-symbolic t3080 integer?)
(define-symbolic t3017 integer?)
(define-symbolic t3079 integer?)
(define-symbolic t3081 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t3017))
(define input.stride.1 (var-lookup 'input.stride.1 t3022))
(define t2611 (var-lookup 't2611 (sca-sub  (sca-mul  (sca-add  t3081  (sca-mul  t3080  64))  2)  (sca-add  t3079  input.min.0))))

(define halide-expr
 (let ([t3082  (sca-add  (sca-mul  input.stride.1  16)  t2611)])
  (vec-max
   (vec-min
    (vec-max
     (vec-max
      (vec-max
       (int16x128
        (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 14) t2611) -108) 1 128) (aligned 1 0)))
       (int16x128
        (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 18) t2611) -108) 1 128) (aligned 1 0))))
      (int16x128
       (load input (ramp (sca-add t3082 -106) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (sca-add t3082 -110) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (sca-add t3082 -108) 1 128) (aligned 1 0))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")