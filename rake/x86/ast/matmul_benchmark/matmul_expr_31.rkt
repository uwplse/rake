#lang rosette/safe

(require rake)
(init-logging "matmul_expr_31.runtimes")

(define-symbolic-buffer mat_a uint8_t)
(define-symbolic-buffer mat_b uint8_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic multiplied_no_offsets.s1.x.x integer?)
(define-symbolic multiplied_no_offsets.s1.k$x.rki integer?)
(define-symbolic t6289 integer?)
(define-symbolic t6293 integer?)
(define-symbolic t6148 integer?)
(define-symbolic t6176 integer?)
(define-symbolic t6178 integer?)
(define-symbolic t6380 integer?)

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
(define t5911 (var-lookup 't5911 t6289))
(define t5910 (var-lookup 't5910 (sca-add  t6293  t5902)))
(define t5505 (var-lookup 't5505 (sca-add  t6380  t5903)))
(define t5506 (var-lookup 't5506 (sca-add  (sca-mul  (sca-add  multiplied_no_offsets.s1.k$x.rki  t5879)  4)  t5911)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-add
     (load multiplied_no_offsets (ramp (sca-add t5910 28) 1 8) (aligned 4 0))
     (uint32x8
      (vec-mul
       (uint16x8
        (load mat_b (ramp (sca-add (sca-mul t5505 4) 24) 1 8) (aligned 4 0)))
       (uint16x8
        (x8 (load-sca mat_a t5506))))))
    (uint32x8
     (vec-mul
      (uint16x8
       (load mat_b (ramp (sca-add (sca-add (sca-mul t5505 4) mat_b.stride.1) 24) 1 8) (aligned 1 0)))
      (uint16x8
       (x8 (load-sca mat_a (sca-add t5506 1)))))))
   (uint32x8
    (vec-mul
     (uint16x8
      (load mat_b (ramp (sca-add (sca-mul (sca-add (sca-mul t5505 2) mat_b.stride.1) 2) 24) 1 8) (aligned 2 0)))
     (uint16x8
      (x8 (load-sca mat_a (sca-add t5506 2)))))))
  (uint32x8
   (vec-mul
    (uint16x8
     (load mat_b (ramp (sca-add (sca-add (sca-mul mat_b.stride.1 3) (sca-mul t5505 4)) 24) 1 8) (aligned 1 0)))
    (uint16x8
     (x8 (load-sca mat_a (sca-add t5506 3))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "matmul_sexp_31.out")