#lang rosette/safe

(require rake)
(init-logging "matmul_expr_52.runtimes")

(define-symbolic-buffer mat_a uint8_t)
(define-symbolic-buffer mat_b uint8_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic multiplied_no_offsets.s1.x.x integer?)
(define-symbolic multiplied_no_offsets.s1.k$x.k$x integer?)
(define-symbolic multiplied_no_offsets.s1.k$x.rki integer?)
(define-symbolic t6148 integer?)
(define-symbolic t6176 integer?)
(define-symbolic t6516 integer?)
(define-symbolic t6512 integer?)
(define-symbolic t6538 integer?)

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
(define t6057 (var-lookup 't6057 t6512))
(define t6056 (var-lookup 't6056 (sca-add  t6516  t6032)))
(define t5706 (var-lookup 't5706 (sca-add  t6538  t6033)))
(define t5707 (var-lookup 't5707 (sca-add  (sca-mul  (sca-add  multiplied_no_offsets.s1.k$x.rki  t6047)  4)  t6057)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-add
     (load multiplied_no_offsets (ramp (sca-add t6056 4) 1 8) (aligned 4 0))
     (uint32x8
      (vec-mul
       (uint16x8
        (load mat_b (ramp (sca-mul t5706 4) 1 8) (aligned 4 0)))
       (uint16x8
        (x8 (load-sca mat_a t5707))))))
    (uint32x8
     (vec-mul
      (uint16x8
       (load mat_b (ramp (sca-add (sca-mul t5706 4) mat_b.stride.1) 1 8) (aligned 1 0)))
      (uint16x8
       (x8 (load-sca mat_a (sca-add t5707 1)))))))
   (uint32x8
    (vec-mul
     (uint16x8
      (load mat_b (ramp (sca-mul (sca-add (sca-mul t5706 2) mat_b.stride.1) 2) 1 8) (aligned 2 0)))
     (uint16x8
      (x8 (load-sca mat_a (sca-add t5707 2)))))))
  (uint32x8
   (vec-mul
    (uint16x8
     (load mat_b (ramp (sca-add (sca-mul mat_b.stride.1 3) (sca-mul t5706 4)) 1 8) (aligned 1 0)))
    (uint16x8
     (x8 (load-sca mat_a (sca-add t5707 3))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "matmul_sexp_52.out")