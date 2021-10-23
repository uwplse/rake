#lang rosette/safe

(require rake)
(init-logging "expr_4.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic-buffer t86.s-buf uint8_t)
(define-symbolic-buffer t88.s-buf uint8_t)
(define-symbolic-buffer t85.s-buf uint8_t)
(define-symbolic-buffer t89.s-buf uint8_t)
(define-symbolic output.s0.x.x integer?)
(define t86.s (load t86.s-buf (ramp 0 1 16) (aligned 0 0)))
(define t88.s (load t88.s-buf (ramp 0 1 16) (aligned 0 0)))
(define-symbolic t200 integer?)
(define t85.s (load t85.s-buf (ramp 0 1 16) (aligned 0 0)))
(define t89.s (load t89.s-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t86.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t88.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t85.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t89.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t166 (var-lookup 't166 t200))
(define t156 (var-lookup 't156 (sca-mul  t166  16)))
(define t157 (var-lookup 't157 (sca-mul  t166  8)))
(define t84 (var-lookup 't84 output.s0.x.x))
(define t87 (var-lookup 't87 (sca-add  output.s0.x.x  t156)))
(define t127 (var-lookup 't127 (sca-add  output.s0.x.x  t157)))

(define halide-expr
 (uint8x16
  (vec-min
   (vec-add
    (vec-absd
     (vec-add
      (vec-add
       (vec-shl
        (uint16x16
         (load bounded_input (ramp (sca-add (sca-mul t84 16) 1) 1 16) (aligned 16 1)))
        (x16 (uint16_t (bv 1 16))))
       (uint16x16
        t85.s))
      (uint16x16
       t86.s))
     (vec-add
      (vec-add
       (vec-shl
        (uint16x16
         (load bounded_input (ramp (sca-add (sca-mul t87 16) 1) 1 16) (aligned 16 1)))
        (x16 (uint16_t (bv 1 16))))
       (uint16x16
        t88.s))
      (uint16x16
       t89.s)))
    (vec-absd
     (vec-add
      (vec-add
       (vec-shl
        (uint16x16
         (load bounded_input (ramp (sca-mul t127 16) 1 16) (aligned 16 0)))
        (x16 (uint16_t (bv 1 16))))
       (uint16x16
        t85.s))
      (uint16x16
       t88.s))
     (vec-add
      (vec-add
       (vec-shl
        (uint16x16
         (load bounded_input (ramp (sca-add (sca-mul t127 16) 2) 1 16) (aligned 16 2)))
        (x16 (uint16_t (bv 1 16))))
       (uint16x16
        t86.s))
      (uint16x16
       t89.s))))
   (x16 (uint16_t (bv 255 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_4.out")