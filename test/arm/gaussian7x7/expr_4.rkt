#lang rosette/safe

(require rake)
(init-logging "expr_4.runtimes")

(define-symbolic-buffer rows int32_t)
(define-symbolic output.s0.x.x integer?)

(define axioms 
  (list ))


(define halide-expr
 (uint8x16
  (vec-max
   (vec-min
    (vec-shr
     (vec-add
      (vec-mul
       (load rows (ramp (sca-add (sca-mul output.s0.x.x 16) 1) 1 16) (aligned 16 1))
       (x16 (int32_t (bv 6 32))))
      (vec-add
       (load rows (ramp (sca-mul output.s0.x.x 16) 1 16) (aligned 16 0))
       (vec-add
        (vec-mul
         (load rows (ramp (sca-add (sca-mul output.s0.x.x 16) 2) 1 16) (aligned 16 2))
         (x16 (int32_t (bv 15 32))))
        (vec-add
         (vec-mul
          (load rows (ramp (sca-add (sca-mul output.s0.x.x 16) 3) 1 16) (aligned 16 3))
          (x16 (int32_t (bv 20 32))))
         (vec-add
          (vec-mul
           (load rows (ramp (sca-add (sca-mul output.s0.x.x 16) 4) 1 16) (aligned 16 4))
           (x16 (int32_t (bv 15 32))))
          (vec-add
           (load rows (ramp (sca-add (sca-mul output.s0.x.x 16) 6) 1 16) (aligned 16 6))
           (vec-mul
            (load rows (ramp (sca-add (sca-mul output.s0.x.x 16) 5) 1 16) (aligned 16 5))
            (x16 (int32_t (bv 6 32))))))))))
     (x16 (uint32_t (bv 12 32))))
    (x16 (int32_t (bv 255 32))))
   (x16 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_4.out")