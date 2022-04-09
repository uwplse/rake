#lang rosette/safe

(require rake)
(init-logging "matmul_expr_25.runtimes")

(define-symbolic-buffer mat_a uint8_t)
(define-symbolic-buffer mat_b uint8_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic multiplied_no_offsets.s1.x.x integer?)
(define-symbolic t6148 integer?)
(define-symbolic t6344 integer?)
(define-symbolic t6295 integer?)
(define-symbolic multiplied_no_offsets.s1.k$x.rki integer?)
(define-symbolic t6176 integer?)
(define-symbolic t6291 integer?)
(define-symbolic t6178 integer?)

(define axioms 
  (list ))

(define mat_b.stride.1 (var-lookup 'mat_b.stride.1 t6148))
(define t5874 (var-lookup 't5874 t6176))
(define t5875 (var-lookup 't5875 (sca-mul  t5874  16)))
(define t5876 (var-lookup 't5876 (sca-min  t5875  4)))
(define t5878 (var-lookup 't5878 t6178))
(define t5879 (var-lookup 't5879 (sca-mul  t5878  32)))
(define t5903 (var-lookup 't5903 (sca-mul  multiplied_no_offsets.s1.x.x  8)))
(define t5902 (var-lookup 't5902 (sca-sub  (sca-mul  multiplied_no_offsets.s1.x.x  32)  t5876)))
(define t5905 (var-lookup 't5905 (sca-add  (sca-mul  t6291  4)  t5902)))
(define t5906 (var-lookup 't5906 (sca-add  t6295  t5879)))
(define t5475 (var-lookup 't5475 (sca-add  t6344  t5903)))
(define t5476 (var-lookup 't5476 (sca-add  multiplied_no_offsets.s1.k$x.rki  t5906)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-add
     (load multiplied_no_offsets (ramp (sca-add t5905 20) 1 8) (aligned 4 0))
     (uint32x8
      (vec-mul
       (uint16x8
        (load mat_b (ramp (sca-add (sca-mul t5475 4) 16) 1 8) (aligned 4 0)))
       (uint16x8
        (x8 (load-sca mat_a (sca-mul t5476 4)))))))
    (uint32x8
     (vec-mul
      (uint16x8
       (load mat_b (ramp (sca-add (sca-add (sca-mul t5475 4) mat_b.stride.1) 16) 1 8) (aligned 1 0)))
      (uint16x8
       (x8 (load-sca mat_a (sca-add (sca-mul t5476 4) 1)))))))
   (uint32x8
    (vec-mul
     (uint16x8
      (load mat_b (ramp (sca-add (sca-mul (sca-add (sca-mul t5475 2) mat_b.stride.1) 2) 16) 1 8) (aligned 2 0)))
     (uint16x8
      (x8 (load-sca mat_a (sca-add (sca-mul t5476 4) 2)))))))
  (uint32x8
   (vec-mul
    (uint16x8
     (load mat_b (ramp (sca-add (sca-add (sca-mul mat_b.stride.1 3) (sca-mul t5475 4)) 16) 1 8) (aligned 1 0)))
    (uint16x8
     (x8 (load-sca mat_a (sca-add (sca-mul t5476 4) 3))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "matmul_sexp_25.out")