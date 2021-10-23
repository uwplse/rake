#lang rosette/safe

(require rake)
(init-logging "expr_5.runtimes")

(define-symbolic-buffer input_bounded uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t134 integer?)

(define axioms 
  (list ))

(define t100 (var-lookup 't100 t134))
(define t93 (var-lookup 't93 (sca-mul  t100  24)))
(define t90 (var-lookup 't90 (sca-mul  t100  16)))
(define t91 (var-lookup 't91 (sca-mul  t100  8)))
(define t37 (var-lookup 't37 (sca-add  output.s0.x.x  t91)))
(define t38 (var-lookup 't38 (sca-add  output.s0.x.x  t93)))
(define t62 (var-lookup 't62 (sca-add  output.s0.x.x  t90)))

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
                (load input_bounded (ramp (sca-mul t37 16) 1 16) (aligned 16 0)))
               (x16 (uint16_t (bv 2 16)))))
             (int32x16
              (vec-mul
               (int16x16
                (uint16x16
                 (load input_bounded (ramp (sca-add (sca-mul t37 16) 1) 1 16) (aligned 16 1))))
               (int16x16
                (x16 (int8_t (bv 7 8)))))))
            (int32x16
             (vec-mul
              (int16x16
               (uint16x16
                (load input_bounded (ramp (sca-add (sca-mul t37 16) 2) 1 16) (aligned 16 2))))
              (int16x16
               (x16 (int8_t (bv 10 8)))))))
           (int32x16
            (vec-mul
             (int16x16
              (uint16x16
               (load input_bounded (ramp (sca-mul t62 16) 1 16) (aligned 16 0))))
             (int16x16
              (x16 (int8_t (bv 5 8)))))))
          (int32x16
           (vec-shl
            (int16x16
             (load input_bounded (ramp (sca-add (sca-mul t62 16) 1) 1 16) (aligned 16 1)))
            (x16 (uint16_t (bv 3 16))))))
         (int32x16
          (vec-mul
           (int16x16
            (uint16x16
             (load input_bounded (ramp (sca-add (sca-mul t62 16) 2) 1 16) (aligned 16 2))))
           (int16x16
            (x16 (int8_t (bv 11 8)))))))
        (int32x16
         (vec-mul
          (int16x16
           (uint16x16
            (load input_bounded (ramp (sca-mul t38 16) 1 16) (aligned 16 0))))
          (int16x16
           (x16 (int8_t (bv 6 8)))))))
       (int32x16
        (vec-mul
         (int16x16
          (uint16x16
           (load input_bounded (ramp (sca-add (sca-mul t38 16) 1) 1 16) (aligned 16 1))))
         (int16x16
          (x16 (int8_t (bv 9 8)))))))
      (int32x16
       (vec-mul
        (int16x16
         (uint16x16
          (load input_bounded (ramp (sca-add (sca-mul t38 16) 2) 1 16) (aligned 16 2))))
        (int16x16
         (x16 (int8_t (bv 12 8)))))))
     (x16 (uint32_t (bv 4 32))))
    (x16 (int32_t (bv 255 32))))
   (x16 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_5.out")