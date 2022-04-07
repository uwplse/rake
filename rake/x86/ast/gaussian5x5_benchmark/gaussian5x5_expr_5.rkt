#lang rosette/safe

(require rake)
(init-logging "gaussian5x5_expr_5.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic rows.s0.x.x integer?)
(define-symbolic t137 integer?)

(define axioms 
  (list ))

(define t74 (var-lookup 't74 t137))
(define t101 (var-lookup 't101 (sca-mul  t74  40)))
(define t100 (var-lookup 't100 (sca-mul  t74  32)))
(define t97 (var-lookup 't97 (sca-mul  t74  24)))
(define t98 (var-lookup 't98 (sca-mul  t74  16)))
(define t99 (var-lookup 't99 (sca-mul  t74  8)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-shl
     (int16x16
      (load bounded_input (ramp (sca-mul (sca-add rows.s0.x.x t98) 16) 1 16) (aligned 16 0)))
     (x16 (uint16_t (bv 2 16))))
    (vec-add
     (vec-shl
      (int16x16
       (load bounded_input (ramp (sca-mul (sca-add rows.s0.x.x t100) 16) 1 16) (aligned 16 0)))
      (x16 (uint16_t (bv 2 16))))
     (vec-mul
      (int16x16
       (uint16x16
        (load bounded_input (ramp (sca-mul (sca-add rows.s0.x.x t97) 16) 1 16) (aligned 16 0))))
      (int16x16
       (x16 (int8_t (bv 6 8)))))))
   (int16x16
    (load bounded_input (ramp (sca-mul (sca-add rows.s0.x.x t99) 16) 1 16) (aligned 16 0))))
  (int16x16
   (load bounded_input (ramp (sca-mul (sca-add rows.s0.x.x t101) 16) 1 16) (aligned 16 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "gaussian5x5_sexp_5.out")