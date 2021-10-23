#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic t61 integer?)
(define-symbolic t66 integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t42 integer?)
(define-symbolic t47 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t42))
(define input.stride.1 (var-lookup 'input.stride.1 t47))
(define t28 (var-lookup 't28 (sca-add  t61  input.min.0)))
(define t29 (var-lookup 't29 t66))
(define t6 (var-lookup 't6 (sca-sub  (sca-mul  (sca-add  (sca-mul  output.s0.x.x  4)  t29)  4)  t28)))
(define t18 (var-lookup 't18 (sca-sub  t6  input.stride.1)))
(define t19 (var-lookup 't19 (sca-add  input.stride.1  t6)))

(define halide-expr
 (let ([t70  (vec-add
  (vec-add
   (vec-add
    (vec-mul
     (int16x16
      (load input (ramp (sca-add t6 1) 1 16) (aligned 1 0)))
     (x16 (int16_t (bv 2 16))))
    (vec-add
     (vec-add
      (vec-mul
       (vec-add
        (vec-add
         (vec-add
          (vec-mul
           (int16x16
            (load input (ramp t6 1 16) (aligned 1 0)))
           (x16 (int16_t (bv 2 16))))
          (int16x16
           (load input (ramp t18 1 16) (aligned 1 0))))
         (int16x16
          (load input (ramp t19 1 16) (aligned 1 0))))
        (int16x16
         (load input (ramp (sca-add t6 -1) 1 16) (aligned 1 0))))
       (x16 (int16_t (bv 2 16))))
      (int16x16
       (load input (ramp (sca-add t18 -1) 1 16) (aligned 1 0))))
     (int16x16
      (load input (ramp (sca-add t19 -1) 1 16) (aligned 1 0)))))
   (int16x16
    (load input (ramp (sca-add t18 1) 1 16) (aligned 1 0))))
  (int16x16
   (load input (ramp (sca-add t19 1) 1 16) (aligned 1 0))))])
  (uint8x16
   (vec-add
    (vec-bwand
     (x16 (int16_t (bv 1 16)))
     (vec-div
      t70
      (x16 (int16_t (bv 8 16)))))
    (vec-div
     t70
     (x16 (int16_t (bv 16 16))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_0.out")