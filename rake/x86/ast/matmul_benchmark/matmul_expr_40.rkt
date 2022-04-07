#lang rosette/safe

(require rake)
(init-logging "matmul_expr_40.runtimes")

(define-symbolic-buffer mat_a uint8_t)
(define-symbolic-buffer mat_b uint8_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic multiplied_no_offsets.s1.k$x.k$x integer?)
(define-symbolic multiplied_no_offsets.s1.k$x.rki integer?)
(define-symbolic t6148 integer?)
(define-symbolic t6175 integer?)
(define-symbolic t6176 integer?)
(define-symbolic t6396 integer?)
(define-symbolic t6392 integer?)
(define-symbolic t6446 integer?)

(define axioms 
  (list ))

(define mat_b.stride.1 (var-lookup 'mat_b.stride.1 t6148))
(define t5872 (var-lookup 't5872 t6175))
(define t5873 (var-lookup 't5873 (sca-mul  t5872  32)))
(define t5874 (var-lookup 't5874 t6176))
(define t5875 (var-lookup 't5875 (sca-mul  t5874  16)))
(define t5876 (var-lookup 't5876 (sca-min  t5875  4)))
(define t5921 (var-lookup 't5921 (sca-mul  t5872  8)))
(define t5919 (var-lookup 't5919 (sca-sub  t5873  t5876)))
(define t5933 (var-lookup 't5933 (sca-mul  multiplied_no_offsets.s1.k$x.k$x  32)))
(define t5943 (var-lookup 't5943 t6392))
(define t5942 (var-lookup 't5942 (sca-add  t6396  t5919)))
(define t5574 (var-lookup 't5574 (sca-add  t6446  t5921)))
(define t5575 (var-lookup 't5575 (sca-add  (sca-mul  (sca-add  multiplied_no_offsets.s1.k$x.rki  t5933)  4)  t5943)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-add
     (load multiplied_no_offsets (ramp (sca-add t5942 12) 1 8) (aligned 4 0))
     (uint32x8
      (vec-mul
       (uint16x8
        (load mat_b (ramp (sca-add (sca-mul t5574 4) 8) 1 8) (aligned 4 0)))
       (uint16x8
        (x8 (load-sca mat_a t5575))))))
    (uint32x8
     (vec-mul
      (uint16x8
       (load mat_b (ramp (sca-add (sca-add (sca-mul t5574 4) mat_b.stride.1) 8) 1 8) (aligned 1 0)))
      (uint16x8
       (x8 (load-sca mat_a (sca-add t5575 1)))))))
   (uint32x8
    (vec-mul
     (uint16x8
      (load mat_b (ramp (sca-add (sca-mul (sca-add (sca-mul t5574 2) mat_b.stride.1) 2) 8) 1 8) (aligned 2 0)))
     (uint16x8
      (x8 (load-sca mat_a (sca-add t5575 2)))))))
  (uint32x8
   (vec-mul
    (uint16x8
     (load mat_b (ramp (sca-add (sca-add (sca-mul mat_b.stride.1 3) (sca-mul t5574 4)) 8) 1 8) (aligned 1 0)))
    (uint16x8
     (x8 (load-sca mat_a (sca-add t5575 3))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "matmul_sexp_40.out")