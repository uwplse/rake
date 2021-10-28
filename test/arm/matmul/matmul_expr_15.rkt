#lang rosette/safe

(require rake)
(init-logging "matmul_expr_15.runtimes")

(define-symbolic-buffer mat_a uint8_t)
(define-symbolic-buffer mat_b uint8_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic multiplied_no_offsets.s1.x.x integer?)
(define-symbolic t6148 integer?)
(define-symbolic t6185 integer?)
(define-symbolic multiplied_no_offsets.s1.k$x.k$x integer?)
(define-symbolic multiplied_no_offsets.s1.k$x.rki integer?)
(define-symbolic t6276 integer?)
(define-symbolic t6189 integer?)
(define-symbolic t6176 integer?)

(define axioms 
  (list ))

(define mat_b.stride.1 (var-lookup 'mat_b.stride.1 t6148))
(define t5874 (var-lookup 't5874 t6176))
(define t5875 (var-lookup 't5875 (sca-mul  t5874  16)))
(define t5876 (var-lookup 't5876 (sca-min  t5875  4)))
(define t5884 (var-lookup 't5884 (sca-mul  multiplied_no_offsets.s1.x.x  8)))
(define t5883 (var-lookup 't5883 (sca-sub  (sca-mul  multiplied_no_offsets.s1.x.x  32)  t5876)))
(define t5886 (var-lookup 't5886 (sca-mul  multiplied_no_offsets.s1.k$x.k$x  32)))
(define t5894 (var-lookup 't5894 t6185))
(define t5893 (var-lookup 't5893 (sca-add  t6189  t5883)))
(define t5425 (var-lookup 't5425 (sca-add  t6276  t5884)))
(define t5426 (var-lookup 't5426 (sca-add  (sca-mul  (sca-add  multiplied_no_offsets.s1.k$x.rki  t5886)  4)  t5894)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-add
     (load multiplied_no_offsets (ramp (sca-add t5893 28) 1 8) (aligned 4 0))
     (uint32x8
      (vec-mul
       (uint16x8
        (load mat_b (ramp (sca-add (sca-mul t5425 4) 24) 1 8) (aligned 4 0)))
       (uint16x8
        (x8 (load-sca mat_a t5426))))))
    (uint32x8
     (vec-mul
      (uint16x8
       (load mat_b (ramp (sca-add (sca-add (sca-mul t5425 4) mat_b.stride.1) 24) 1 8) (aligned 1 0)))
      (uint16x8
       (x8 (load-sca mat_a (sca-add t5426 1)))))))
   (uint32x8
    (vec-mul
     (uint16x8
      (load mat_b (ramp (sca-add (sca-mul (sca-add (sca-mul t5425 2) mat_b.stride.1) 2) 24) 1 8) (aligned 2 0)))
     (uint16x8
      (x8 (load-sca mat_a (sca-add t5426 2)))))))
  (uint32x8
   (vec-mul
    (uint16x8
     (load mat_b (ramp (sca-add (sca-add (sca-mul mat_b.stride.1 3) (sca-mul t5425 4)) 24) 1 8) (aligned 1 0)))
    (uint16x8
     (x8 (load-sca mat_a (sca-add t5426 3))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "matmul_sexp_15.out")