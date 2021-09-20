#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic t126 integer?)
(define-symbolic rows.s0.x.x integer?)
(define-symbolic t100 integer?)

(define axioms 
  (list ))

(define input.stride.1 (var-lookup 'input.stride.1 t100))
(define t6 (var-lookup 't6 (sca-add  (sca-mul  rows.s0.x.x  128)  t126)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-add
     (vec-add
      (vec-add
       (int32x128
        (vec-mul
         (int16x128
          (uint16x128
           (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 2) t6) -3) 1 128) (aligned 128 125))))
         (int16x128
          (x128 (int8_t (bv 6 8))))))
       (int32x128
        (vec-mul
         (int16x128
          (uint16x128
           (load input (ramp (sca-add (sca-add input.stride.1 t6) -3) 1 128) (aligned 128 125))))
         (int16x128
          (x128 (int8_t (bv 15 8)))))))
      (int32x128
       (vec-mul
        (int16x128
         (uint16x128
          (load input (ramp (sca-add t6 -3) 1 128) (aligned 128 125))))
        (int16x128
         (x128 (int8_t (bv 20 8)))))))
     (int32x128
      (vec-mul
       (int16x128
        (uint16x128
         (load input (ramp (sca-add (sca-sub t6 input.stride.1) -3) 1 128) (aligned 128 125))))
       (int16x128
        (x128 (int8_t (bv 15 8)))))))
    (int32x128
     (vec-mul
      (int16x128
       (uint16x128
        (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 -2) t6) -3) 1 128) (aligned 128 125))))
      (int16x128
       (x128 (int8_t (bv 6 8)))))))
   (int32x128
    (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 -3) t6) -3) 1 128) (aligned 128 125))))
  (int32x128
   (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 3) t6) -3) 1 128) (aligned 128 125)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")