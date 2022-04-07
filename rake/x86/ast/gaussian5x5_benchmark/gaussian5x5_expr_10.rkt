#lang rosette/safe

(require rake)
(init-logging "gaussian5x5_expr_10.runtimes")

(define-symbolic-buffer rows int16_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t172 integer?)

(define axioms 
  (list ))

(define t116 (var-lookup 't116 t172))
(define t111 (var-lookup 't111 (sca-mul  t116  16)))
(define t57 (var-lookup 't57 (sca-add  output.s0.x.x  t111)))

(define halide-expr
 (uint8x16
  (vec-shr
   (vec-add
    (vec-shl
     (load rows (ramp (sca-add (sca-mul t57 16) 1) 1 16) (aligned 16 1))
     (x16 (uint16_t (bv 2 16))))
    (vec-add
     (load rows (ramp (sca-mul t57 16) 1 16) (aligned 16 0))
     (vec-add
      (vec-mul
       (load rows (ramp (sca-add (sca-mul t57 16) 2) 1 16) (aligned 16 2))
       (x16 (int16_t (bv 6 16))))
      (vec-add
       (load rows (ramp (sca-add (sca-mul t57 16) 4) 1 16) (aligned 16 4))
       (vec-shl
        (load rows (ramp (sca-add (sca-mul t57 16) 3) 1 16) (aligned 16 3))
        (x16 (uint16_t (bv 2 16))))))))
   (x16 (uint16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "gaussian5x5_sexp_10.out")