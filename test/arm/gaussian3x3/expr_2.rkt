#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic t61 integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t68 integer?)
(define-symbolic t42 integer?)
(define-symbolic t47 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t42))
(define input.stride.1 (var-lookup 'input.stride.1 t47))
(define t28 (var-lookup 't28 (sca-add  t61  input.min.0)))
(define t33 (var-lookup 't33 (sca-sub  t68  t28)))
(define t12 (var-lookup 't12 (sca-add  (sca-mul  output.s0.x.x  16)  t33)))
(define t22 (var-lookup 't22 (sca-sub  t12  input.stride.1)))
(define t23 (var-lookup 't23 (sca-add  input.stride.1  t12)))

(define halide-expr
 (let ([t90  (vec-add
  (vec-add
   (vec-add
    (vec-mul
     (int16x16
      (load input (ramp (sca-add t12 1) 1 16) (aligned 1 0)))
     (x16 (int16_t (bv 2 16))))
    (vec-add
     (vec-add
      (vec-mul
       (vec-add
        (vec-add
         (vec-add
          (vec-mul
           (int16x16
            (load input (ramp t12 1 16) (aligned 1 0)))
           (x16 (int16_t (bv 2 16))))
          (int16x16
           (load input (ramp t22 1 16) (aligned 1 0))))
         (int16x16
          (load input (ramp t23 1 16) (aligned 1 0))))
        (int16x16
         (load input (ramp (sca-add t12 -1) 1 16) (aligned 1 0))))
       (x16 (int16_t (bv 2 16))))
      (int16x16
       (load input (ramp (sca-add t22 -1) 1 16) (aligned 1 0))))
     (int16x16
      (load input (ramp (sca-add t23 -1) 1 16) (aligned 1 0)))))
   (int16x16
    (load input (ramp (sca-add t22 1) 1 16) (aligned 1 0))))
  (int16x16
   (load input (ramp (sca-add t23 1) 1 16) (aligned 1 0))))])
  (uint8x16
   (vec-add
    (vec-bwand
     (x16 (int16_t (bv 1 16)))
     (vec-div
      t90
      (x16 (int16_t (bv 8 16)))))
    (vec-div
     t90
     (x16 (int16_t (bv 16 16))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_2.out")