#lang rosette/safe

(require rake)
(init-logging "expr_7.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic rows.s0.x.x integer?)
(define-symbolic t137 integer?)

(define axioms 
  (list ))

(define t74 (var-lookup 't74 t137))
(define t105 (var-lookup 't105 (sca-mul  t74  56)))
(define t103 (var-lookup 't103 (sca-mul  t74  48)))
(define t101 (var-lookup 't101 (sca-mul  t74  40)))
(define t100 (var-lookup 't100 (sca-mul  t74  32)))
(define t97 (var-lookup 't97 (sca-mul  t74  24)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-shl
     (int16x16
      (load bounded_input (ramp (sca-mul (sca-add rows.s0.x.x t100) 16) 1 16) (aligned 16 0)))
     (x16 (uint16_t (bv 2 16))))
    (vec-add
     (vec-shl
      (int16x16
       (load bounded_input (ramp (sca-mul (sca-add rows.s0.x.x t103) 16) 1 16) (aligned 16 0)))
      (x16 (uint16_t (bv 2 16))))
     (vec-mul
      (int16x16
       (uint16x16
        (load bounded_input (ramp (sca-mul (sca-add rows.s0.x.x t101) 16) 1 16) (aligned 16 0))))
      (int16x16
       (x16 (int8_t (bv 6 8)))))))
   (int16x16
    (load bounded_input (ramp (sca-mul (sca-add rows.s0.x.x t97) 16) 1 16) (aligned 16 0))))
  (int16x16
   (load bounded_input (ramp (sca-mul (sca-add rows.s0.x.x t105) 16) 1 16) (aligned 16 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_7.out")