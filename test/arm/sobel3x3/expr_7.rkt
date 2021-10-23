#lang rosette/safe

(require rake)
(init-logging "expr_7.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic-buffer t109.s-buf uint8_t)
(define-symbolic-buffer t110.s-buf uint8_t)
(define-symbolic-buffer t106.s-buf uint8_t)
(define-symbolic-buffer t107.s-buf uint8_t)
(define-symbolic output.s0.x.x integer?)
(define t109.s (load t109.s-buf (ramp 0 1 16) (aligned 0 0)))
(define t110.s (load t110.s-buf (ramp 0 1 16) (aligned 0 0)))
(define-symbolic t200 integer?)
(define t106.s (load t106.s-buf (ramp 0 1 16) (aligned 0 0)))
(define t107.s (load t107.s-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t109.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t110.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t106.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t107.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t166 (var-lookup 't166 t200))
(define t163 (var-lookup 't163 (sca-mul  t166  40)))
(define t161 (var-lookup 't161 (sca-mul  t166  32)))
(define t159 (var-lookup 't159 (sca-mul  t166  24)))
(define t105 (var-lookup 't105 (sca-add  output.s0.x.x  t159)))
(define t108 (var-lookup 't108 (sca-add  output.s0.x.x  t163)))
(define t130 (var-lookup 't130 (sca-add  output.s0.x.x  t161)))

(define halide-expr
 (uint8x16
  (vec-min
   (vec-add
    (vec-absd
     (vec-add
      (vec-add
       (vec-shl
        (uint16x16
         (load bounded_input (ramp (sca-add (sca-mul t105 16) 1) 1 16) (aligned 16 1)))
        (x16 (uint16_t (bv 1 16))))
       (uint16x16
        t106.s))
      (uint16x16
       t107.s))
     (vec-add
      (vec-add
       (vec-shl
        (uint16x16
         (load bounded_input (ramp (sca-add (sca-mul t108 16) 1) 1 16) (aligned 16 1)))
        (x16 (uint16_t (bv 1 16))))
       (uint16x16
        t109.s))
      (uint16x16
       t110.s)))
    (vec-absd
     (vec-add
      (vec-add
       (vec-shl
        (uint16x16
         (load bounded_input (ramp (sca-mul t130 16) 1 16) (aligned 16 0)))
        (x16 (uint16_t (bv 1 16))))
       (uint16x16
        t106.s))
      (uint16x16
       t109.s))
     (vec-add
      (vec-add
       (vec-shl
        (uint16x16
         (load bounded_input (ramp (sca-add (sca-mul t130 16) 2) 1 16) (aligned 16 2)))
        (x16 (uint16_t (bv 1 16))))
       (uint16x16
        t107.s))
      (uint16x16
       t110.s))))
   (x16 (uint16_t (bv 255 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_7.out")