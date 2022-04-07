#lang rosette/safe

(require rake)
(init-logging "gaussian5x5_expr_9.runtimes")

(define-symbolic-buffer rows int16_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t172 integer?)

(define axioms 
  (list ))

(define t116 (var-lookup 't116 t172))
(define t109 (var-lookup 't109 (sca-mul  t116  8)))
(define t56 (var-lookup 't56 (sca-add  output.s0.x.x  t109)))

(define halide-expr
 (uint8x16
  (vec-shr
   (vec-add
    (vec-shl
     (load rows (ramp (sca-add (sca-mul t56 16) 1) 1 16) (aligned 16 1))
     (x16 (uint16_t (bv 2 16))))
    (vec-add
     (load rows (ramp (sca-mul t56 16) 1 16) (aligned 16 0))
     (vec-add
      (vec-mul
       (load rows (ramp (sca-add (sca-mul t56 16) 2) 1 16) (aligned 16 2))
       (x16 (int16_t (bv 6 16))))
      (vec-add
       (load rows (ramp (sca-add (sca-mul t56 16) 4) 1 16) (aligned 16 4))
       (vec-shl
        (load rows (ramp (sca-add (sca-mul t56 16) 3) 1 16) (aligned 16 3))
        (x16 (uint16_t (bv 2 16))))))))
   (x16 (uint16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "gaussian5x5_sexp_9.out")