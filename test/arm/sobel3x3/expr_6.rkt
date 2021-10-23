#lang rosette/safe

(require rake)
(init-logging "expr_6.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic-buffer t102.s-buf uint8_t)
(define-symbolic-buffer t100.s-buf uint8_t)
(define-symbolic-buffer t103.s-buf uint8_t)
(define-symbolic-buffer t99.s-buf uint8_t)
(define-symbolic output.s0.x.x integer?)
(define t102.s (load t102.s-buf (ramp 0 1 16) (aligned 0 0)))
(define t100.s (load t100.s-buf (ramp 0 1 16) (aligned 0 0)))
(define t103.s (load t103.s-buf (ramp 0 1 16) (aligned 0 0)))
(define-symbolic t200 integer?)
(define t99.s (load t99.s-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t102.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t100.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t103.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t99.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t166 (var-lookup 't166 t200))
(define t161 (var-lookup 't161 (sca-mul  t166  32)))
(define t159 (var-lookup 't159 (sca-mul  t166  24)))
(define t156 (var-lookup 't156 (sca-mul  t166  16)))
(define t98 (var-lookup 't98 (sca-add  output.s0.x.x  t156)))
(define t101 (var-lookup 't101 (sca-add  output.s0.x.x  t161)))
(define t129 (var-lookup 't129 (sca-add  output.s0.x.x  t159)))

(define halide-expr
 (uint8x16
  (vec-min
   (vec-add
    (vec-absd
     (vec-add
      (vec-add
       (vec-shl
        (uint16x16
         (load bounded_input (ramp (sca-add (sca-mul t98 16) 1) 1 16) (aligned 16 1)))
        (x16 (uint16_t (bv 1 16))))
       (uint16x16
        t99.s))
      (uint16x16
       t100.s))
     (vec-add
      (vec-add
       (vec-shl
        (uint16x16
         (load bounded_input (ramp (sca-add (sca-mul t101 16) 1) 1 16) (aligned 16 1)))
        (x16 (uint16_t (bv 1 16))))
       (uint16x16
        t102.s))
      (uint16x16
       t103.s)))
    (vec-absd
     (vec-add
      (vec-add
       (vec-shl
        (uint16x16
         (load bounded_input (ramp (sca-mul t129 16) 1 16) (aligned 16 0)))
        (x16 (uint16_t (bv 1 16))))
       (uint16x16
        t99.s))
      (uint16x16
       t102.s))
     (vec-add
      (vec-add
       (vec-shl
        (uint16x16
         (load bounded_input (ramp (sca-add (sca-mul t129 16) 2) 1 16) (aligned 16 2)))
        (x16 (uint16_t (bv 1 16))))
       (uint16x16
        t100.s))
      (uint16x16
       t103.s))))
   (x16 (uint16_t (bv 255 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_6.out")