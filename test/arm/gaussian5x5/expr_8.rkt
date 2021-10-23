#lang rosette/safe

(require rake)
(init-logging "expr_8.runtimes")

(define-symbolic-buffer rows int16_t)
(define-symbolic output.s0.x.x integer?)

(define axioms 
  (list ))


(define halide-expr
 (uint8x16
  (vec-shr
   (vec-add
    (vec-shl
     (load rows (ramp (sca-add (sca-mul output.s0.x.x 16) 1) 1 16) (aligned 16 1))
     (x16 (uint16_t (bv 2 16))))
    (vec-add
     (load rows (ramp (sca-mul output.s0.x.x 16) 1 16) (aligned 16 0))
     (vec-add
      (vec-mul
       (load rows (ramp (sca-add (sca-mul output.s0.x.x 16) 2) 1 16) (aligned 16 2))
       (x16 (int16_t (bv 6 16))))
      (vec-add
       (load rows (ramp (sca-add (sca-mul output.s0.x.x 16) 4) 1 16) (aligned 16 4))
       (vec-shl
        (load rows (ramp (sca-add (sca-mul output.s0.x.x 16) 3) 1 16) (aligned 16 3))
        (x16 (uint16_t (bv 2 16))))))))
   (x16 (uint16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_8.out")