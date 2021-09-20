#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t279 integer?)
(define-symbolic rows.s0.x.x integer?)

(define axioms 
  (list ))

(define output.extent.0 (var-lookup 'output.extent.0 t279))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-mul
     (int16x128
      (load bounded_input (ramp (sca-mul (sca-add (sca-mul (sca-div (sca-add output.extent.0 255) 128) 4) rows.s0.x.x) 128) 1 128) (aligned 128 0)))
     (x128 (int16_t (bv 4 16))))
    (vec-add
     (vec-mul
      (int16x128
       (uint16x128
        (load bounded_input (ramp (sca-mul (sca-add (sca-mul (sca-div (sca-add output.extent.0 255) 128) 5) rows.s0.x.x) 128) 1 128) (aligned 128 0))))
      (int16x128
       (x128 (int8_t (bv 6 8)))))
     (vec-mul
      (int16x128
       (load bounded_input (ramp (sca-mul (sca-add (sca-mul (sca-div (sca-add output.extent.0 255) 128) 6) rows.s0.x.x) 128) 1 128) (aligned 128 0)))
      (x128 (int16_t (bv 4 16))))))
   (int16x128
    (load bounded_input (ramp (sca-mul (sca-add (sca-mul (sca-div (sca-add output.extent.0 255) 128) 3) rows.s0.x.x) 128) 1 128) (aligned 128 0))))
  (int16x128
   (load bounded_input (ramp (sca-mul (sca-add (sca-mul (sca-div (sca-add output.extent.0 255) 128) 7) rows.s0.x.x) 128) 1 128) (aligned 128 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")