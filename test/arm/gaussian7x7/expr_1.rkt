#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic t46 integer?)
(define-symbolic t51 integer?)
(define-symbolic t67 integer?)
(define-symbolic t72 integer?)
(define-symbolic rows.s0.x.x integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t46))
(define input.stride.1 (var-lookup 'input.stride.1 t51))
(define t16 (var-lookup 't16 (sca-add  t67  input.min.0)))
(define t28 (var-lookup 't28 (sca-sub  t72  t16)))
(define t4 (var-lookup 't4 (sca-add  (sca-mul  rows.s0.x.x  16)  t28)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (int32x16
     (vec-mul
      (int16x16
       (uint16x16
        (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 -2) t4) -3) 1 16) (aligned 1 0))))
      (int16x16
       (x16 (int8_t (bv 6 8))))))
    (vec-add
     (int32x16
      (vec-mul
       (int16x16
        (uint16x16
         (load input (ramp (sca-add (sca-sub t4 input.stride.1) -3) 1 16) (aligned 1 0))))
       (int16x16
        (x16 (int8_t (bv 15 8))))))
     (vec-add
      (int32x16
       (vec-mul
        (int16x16
         (uint16x16
          (load input (ramp (sca-add t4 -3) 1 16) (aligned 1 0))))
        (int16x16
         (x16 (int8_t (bv 20 8))))))
      (vec-add
       (int32x16
        (vec-mul
         (int16x16
          (uint16x16
           (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 2) t4) -3) 1 16) (aligned 1 0))))
         (int16x16
          (x16 (int8_t (bv 6 8))))))
       (int32x16
        (vec-mul
         (int16x16
          (uint16x16
           (load input (ramp (sca-add (sca-add input.stride.1 t4) -3) 1 16) (aligned 1 0))))
         (int16x16
          (x16 (int8_t (bv 15 8))))))))))
   (int32x16
    (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 -3) t4) -3) 1 16) (aligned 1 0))))
  (int32x16
   (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 3) t4) -3) 1 16) (aligned 1 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_1.out")