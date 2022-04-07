#lang rosette/safe

(require rake)
(init-logging "matmul_expr_2.runtimes")

(define-symbolic-buffer mat_a uint8_t)
(define-symbolic-buffer mat_b uint8_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic multiplied_no_offsets.s1.x.x integer?)
(define-symbolic multiplied_no_offsets.s1.k$x.k$x integer?)
(define-symbolic multiplied_no_offsets.s1.k$x.rki integer?)
(define-symbolic t6198 integer?)
(define-symbolic t6148 integer?)
(define-symbolic t6176 integer?)
(define-symbolic t6186 integer?)
(define-symbolic t6190 integer?)

(define axioms 
  (list ))

(define mat_b.stride.1 (var-lookup 'mat_b.stride.1 t6148))
(define t5874 (var-lookup 't5874 t6176))
(define t5875 (var-lookup 't5875 (sca-mul  t5874  16)))
(define t5876 (var-lookup 't5876 (sca-min  t5875  4)))
(define t5884 (var-lookup 't5884 (sca-mul  multiplied_no_offsets.s1.x.x  8)))
(define t5883 (var-lookup 't5883 (sca-sub  (sca-mul  multiplied_no_offsets.s1.x.x  32)  t5876)))
(define t5886 (var-lookup 't5886 (sca-mul  multiplied_no_offsets.s1.k$x.k$x  32)))
(define t5892 (var-lookup 't5892 t6186))
(define t5891 (var-lookup 't5891 (sca-add  t6190  t5883)))
(define t5360 (var-lookup 't5360 (sca-add  t6198  t5884)))
(define t5361 (var-lookup 't5361 (sca-add  (sca-mul  (sca-add  multiplied_no_offsets.s1.k$x.rki  t5886)  4)  t5892)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-add
     (load multiplied_no_offsets (ramp (sca-add t5891 4) 1 8) (aligned 4 0))
     (uint32x8
      (vec-mul
       (uint16x8
        (load mat_b (ramp (sca-mul t5360 4) 1 8) (aligned 4 0)))
       (uint16x8
        (x8 (load-sca mat_a t5361))))))
    (uint32x8
     (vec-mul
      (uint16x8
       (load mat_b (ramp (sca-add (sca-mul t5360 4) mat_b.stride.1) 1 8) (aligned 1 0)))
      (uint16x8
       (x8 (load-sca mat_a (sca-add t5361 1)))))))
   (uint32x8
    (vec-mul
     (uint16x8
      (load mat_b (ramp (sca-mul (sca-add (sca-mul t5360 2) mat_b.stride.1) 2) 1 8) (aligned 2 0)))
     (uint16x8
      (x8 (load-sca mat_a (sca-add t5361 2)))))))
  (uint32x8
   (vec-mul
    (uint16x8
     (load mat_b (ramp (sca-add (sca-mul mat_b.stride.1 3) (sca-mul t5360 4)) 1 8) (aligned 1 0)))
    (uint16x8
     (x8 (load-sca mat_a (sca-add t5361 3))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "matmul_sexp_2.out")