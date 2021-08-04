#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer c3 uint8_t)
(define-symbolic-buffer input uint8_t)
(define-symbolic t128 integer?)
(define-symbolic t127 integer?)
(define-symbolic t113 integer?)
(define-symbolic output.s0.x.x.$n.rebased integer?)

(define axioms 
  (list ))

(define input.stride.1 (var-lookup 'input.stride.1 t113))
(define t80 (var-lookup 't80 (sca-add  (sca-mul  (sca-add  (sca-min  t128  0)  output.s0.x.x.$n.rebased)  128)  t127)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-mul
     (int16x128
      (load c3 (ramp 0 1 128) (aligned 0 0)))
     (x128 (int16_t (bv 4 16))))
    (vec-add
     (vec-mul
      (int16x128
       (uint16x128
        (load c3 (ramp 128 1 128) (aligned 0 128))))
      (int16x128
       (x128 (int8_t (bv 6 8)))))
     (vec-mul
      (int16x128
       (load c3 (ramp 256 1 128) (aligned 0 256)))
      (x128 (int16_t (bv 4 16))))))
   (int16x128
    (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 -2) t80) 2) 1 128) (aligned 128 2))))
  (int16x128
   (load input (ramp (sca-add (sca-add (sca-mul input.stride.1 2) t80) 2) 1 128) (aligned 128 2)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")