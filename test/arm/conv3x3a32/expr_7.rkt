#lang rosette/safe

(require rake)
(init-logging "expr_7.runtimes")

(define-symbolic-buffer input_bounded uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t134 integer?)

(define axioms 
  (list ))

(define t100 (var-lookup 't100 t134))
(define t97 (var-lookup 't97 (sca-mul  t100  40)))
(define t95 (var-lookup 't95 (sca-mul  t100  32)))
(define t93 (var-lookup 't93 (sca-mul  t100  24)))
(define t43 (var-lookup 't43 (sca-add  output.s0.x.x  t93)))
(define t44 (var-lookup 't44 (sca-add  output.s0.x.x  t97)))
(define t64 (var-lookup 't64 (sca-add  output.s0.x.x  t95)))

(define halide-expr
 (uint8x16
  (vec-max
   (vec-min
    (vec-shr
     (vec-add
      (vec-add
       (vec-add
        (vec-add
         (vec-add
          (vec-add
           (vec-add
            (vec-add
             (int32x16
              (vec-shl
               (int16x16
                (load input_bounded (ramp (sca-mul t43 16) 1 16) (aligned 16 0)))
               (x16 (uint16_t (bv 2 16)))))
             (int32x16
              (vec-mul
               (int16x16
                (uint16x16
                 (load input_bounded (ramp (sca-add (sca-mul t43 16) 1) 1 16) (aligned 16 1))))
               (int16x16
                (x16 (int8_t (bv 7 8)))))))
            (int32x16
             (vec-mul
              (int16x16
               (uint16x16
                (load input_bounded (ramp (sca-add (sca-mul t43 16) 2) 1 16) (aligned 16 2))))
              (int16x16
               (x16 (int8_t (bv 10 8)))))))
           (int32x16
            (vec-mul
             (int16x16
              (uint16x16
               (load input_bounded (ramp (sca-mul t64 16) 1 16) (aligned 16 0))))
             (int16x16
              (x16 (int8_t (bv 5 8)))))))
          (int32x16
           (vec-shl
            (int16x16
             (load input_bounded (ramp (sca-add (sca-mul t64 16) 1) 1 16) (aligned 16 1)))
            (x16 (uint16_t (bv 3 16))))))
         (int32x16
          (vec-mul
           (int16x16
            (uint16x16
             (load input_bounded (ramp (sca-add (sca-mul t64 16) 2) 1 16) (aligned 16 2))))
           (int16x16
            (x16 (int8_t (bv 11 8)))))))
        (int32x16
         (vec-mul
          (int16x16
           (uint16x16
            (load input_bounded (ramp (sca-mul t44 16) 1 16) (aligned 16 0))))
          (int16x16
           (x16 (int8_t (bv 6 8)))))))
       (int32x16
        (vec-mul
         (int16x16
          (uint16x16
           (load input_bounded (ramp (sca-add (sca-mul t44 16) 1) 1 16) (aligned 16 1))))
         (int16x16
          (x16 (int8_t (bv 9 8)))))))
      (int32x16
       (vec-mul
        (int16x16
         (uint16x16
          (load input_bounded (ramp (sca-add (sca-mul t44 16) 2) 1 16) (aligned 16 2))))
        (int16x16
         (x16 (int8_t (bv 12 8)))))))
     (x16 (uint32_t (bv 4 32))))
    (x16 (int32_t (bv 255 32))))
   (x16 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_7.out")