#lang rosette/safe

(require rake)
(init-logging "gaussian3x3_expr_1.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic t69 integer?)
(define-symbolic t61 integer?)
(define-symbolic t42 integer?)
(define-symbolic t47 integer?)
(define-symbolic output.s0.x.x integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t42))
(define input.stride.1 (var-lookup 'input.stride.1 t47))
(define t28 (var-lookup 't28 (sca-add  t61  input.min.0)))
(define t31 (var-lookup 't31 (sca-sub  t69  t28)))
(define t9 (var-lookup 't9 (sca-add  (sca-mul  output.s0.x.x  16)  t31)))
(define t20 (var-lookup 't20 (sca-sub  t9  input.stride.1)))
(define t21 (var-lookup 't21 (sca-add  input.stride.1  t9)))

(define halide-expr
 (let ([t80  (vec-add
  (vec-add
   (vec-add
    (vec-mul
     (int16x16
      (load input (ramp (sca-add t9 1) 1 16) (aligned 1 0)))
     (x16 (int16_t (bv 2 16))))
    (vec-add
     (vec-add
      (vec-mul
       (vec-add
        (vec-add
         (vec-add
          (vec-mul
           (int16x16
            (load input (ramp t9 1 16) (aligned 1 0)))
           (x16 (int16_t (bv 2 16))))
          (int16x16
           (load input (ramp t20 1 16) (aligned 1 0))))
         (int16x16
          (load input (ramp t21 1 16) (aligned 1 0))))
        (int16x16
         (load input (ramp (sca-add t9 -1) 1 16) (aligned 1 0))))
       (x16 (int16_t (bv 2 16))))
      (int16x16
       (load input (ramp (sca-add t20 -1) 1 16) (aligned 1 0))))
     (int16x16
      (load input (ramp (sca-add t21 -1) 1 16) (aligned 1 0)))))
   (int16x16
    (load input (ramp (sca-add t20 1) 1 16) (aligned 1 0))))
  (int16x16
   (load input (ramp (sca-add t21 1) 1 16) (aligned 1 0))))])
  (uint8x16
   (vec-add
    (vec-bwand
     (x16 (int16_t (bv 1 16)))
     (vec-div
      t80
      (x16 (int16_t (bv 8 16)))))
    (vec-div
     t80
     (x16 (int16_t (bv 16 16))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "gaussian3x3_sexp_1.out")