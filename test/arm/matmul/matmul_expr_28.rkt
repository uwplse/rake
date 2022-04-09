#lang rosette/safe

(require rake)
(init-logging "matmul_expr_28.runtimes")

(define-symbolic-buffer mat_a uint8_t)
(define-symbolic-buffer mat_b uint8_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic multiplied_no_offsets.s1.x.x integer?)
(define-symbolic t6148 integer?)
(define-symbolic multiplied_no_offsets.s1.k$x.rki integer?)
(define-symbolic t6292 integer?)
(define-symbolic t6176 integer?)
(define-symbolic t6362 integer?)
(define-symbolic t6178 integer?)
(define-symbolic t6288 integer?)

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
(define t5913 (var-lookup 't5913 t6288))
(define t5912 (var-lookup 't5912 (sca-add  t6292  t5902)))
(define t5490 (var-lookup 't5490 (sca-add  t6362  t5903)))
(define t5491 (var-lookup 't5491 (sca-add  (sca-mul  (sca-add  multiplied_no_offsets.s1.k$x.rki  t5879)  4)  t5913)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-add
     (load multiplied_no_offsets (ramp (sca-add t5912 20) 1 8) (aligned 4 0))
     (uint32x8
      (vec-mul
       (uint16x8
        (load mat_b (ramp (sca-add (sca-mul t5490 4) 16) 1 8) (aligned 4 0)))
       (uint16x8
        (x8 (load-sca mat_a t5491))))))
    (uint32x8
     (vec-mul
      (uint16x8
       (load mat_b (ramp (sca-add (sca-add (sca-mul t5490 4) mat_b.stride.1) 16) 1 8) (aligned 1 0)))
      (uint16x8
       (x8 (load-sca mat_a (sca-add t5491 1)))))))
   (uint32x8
    (vec-mul
     (uint16x8
      (load mat_b (ramp (sca-add (sca-mul (sca-add (sca-mul t5490 2) mat_b.stride.1) 2) 16) 1 8) (aligned 2 0)))
     (uint16x8
      (x8 (load-sca mat_a (sca-add t5491 2)))))))
  (uint32x8
   (vec-mul
    (uint16x8
     (load mat_b (ramp (sca-add (sca-add (sca-mul mat_b.stride.1 3) (sca-mul t5490 4)) 16) 1 8) (aligned 1 0)))
    (uint16x8
     (x8 (load-sca mat_a (sca-add t5491 3))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "matmul_sexp_28.out")