#lang rosette/safe

(require rake)
(init-logging "matmul_expr_50.runtimes")

(define-symbolic-buffer mat_a uint8_t)
(define-symbolic-buffer mat_b uint8_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic multiplied_no_offsets.s1.x.x integer?)
(define-symbolic t6148 integer?)
(define-symbolic t6526 integer?)
(define-symbolic t6518 integer?)
(define-symbolic multiplied_no_offsets.s1.k$x.k$x integer?)
(define-symbolic multiplied_no_offsets.s1.k$x.rki integer?)
(define-symbolic t6176 integer?)
(define-symbolic t6514 integer?)

(define axioms 
  (list ))

(define mat_b.stride.1 (var-lookup 'mat_b.stride.1 t6148))
(define t5874 (var-lookup 't5874 t6176))
(define t5875 (var-lookup 't5875 (sca-mul  t5874  16)))
(define t5876 (var-lookup 't5876 (sca-min  t5875  4)))
(define t6040 (var-lookup 't6040 (sca-mul  multiplied_no_offsets.s1.x.x  32)))
(define t6033 (var-lookup 't6033 (sca-mul  multiplied_no_offsets.s1.x.x  8)))
(define t6032 (var-lookup 't6032 (sca-sub  t6040  t5876)))
(define t6047 (var-lookup 't6047 (sca-mul  multiplied_no_offsets.s1.k$x.k$x  32)))
(define t6053 (var-lookup 't6053 t6514))
(define t6052 (var-lookup 't6052 (sca-add  t6518  t6032)))
(define t5696 (var-lookup 't5696 (sca-add  t6526  t6033)))
(define t5697 (var-lookup 't5697 (sca-add  (sca-mul  (sca-add  multiplied_no_offsets.s1.k$x.rki  t6047)  4)  t6053)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-add
     (load multiplied_no_offsets (ramp (sca-add t6052 4) 1 8) (aligned 4 0))
     (uint32x8
      (vec-mul
       (uint16x8
        (load mat_b (ramp (sca-mul t5696 4) 1 8) (aligned 4 0)))
       (uint16x8
        (x8 (load-sca mat_a t5697))))))
    (uint32x8
     (vec-mul
      (uint16x8
       (load mat_b (ramp (sca-add (sca-mul t5696 4) mat_b.stride.1) 1 8) (aligned 1 0)))
      (uint16x8
       (x8 (load-sca mat_a (sca-add t5697 1)))))))
   (uint32x8
    (vec-mul
     (uint16x8
      (load mat_b (ramp (sca-mul (sca-add (sca-mul t5696 2) mat_b.stride.1) 2) 1 8) (aligned 2 0)))
     (uint16x8
      (x8 (load-sca mat_a (sca-add t5697 2)))))))
  (uint32x8
   (vec-mul
    (uint16x8
     (load mat_b (ramp (sca-add (sca-mul mat_b.stride.1 3) (sca-mul t5696 4)) 1 8) (aligned 1 0)))
    (uint16x8
     (x8 (load-sca mat_a (sca-add t5697 3))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "matmul_sexp_50.out")