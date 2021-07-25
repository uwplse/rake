#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic-buffer c4 uint8_t)
(define-symbolic-buffer c5 uint8_t)
(define-symbolic-buffer t252.s.s-buf uint8_t)
(define-symbolic-buffer t248.s-buf uint8_t)
(define-symbolic-buffer t432-buf uint8_t)
(define-symbolic-buffer t249.s.s-buf uint8_t)
(define-symbolic-buffer t251.s-buf uint8_t)
(define-symbolic t454 integer?)
(define-symbolic t455 integer?)
(define t252.s.s (load t252.s.s-buf (ramp 0 1 256) (aligned 0 0)))
(define t248.s (load t248.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t432 (load t432-buf (ramp 0 1 128) (aligned 0 0)))
(define t249.s.s (load t249.s.s-buf (ramp 0 1 256) (aligned 0 0)))
(define t251.s (load t251.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic output.s0.x.x integer?)

(define axioms 
  (list 
   (values-range-from t252.s.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t248.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t432-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t249.s.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t251.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t301 (var-lookup 't301 (sca-max  (sca-mul  t455  128)  (sca-add  (sca-mul  t454  128)  2))))

(define halide-expr
 (let ([t475  (uint16x128
  (slice_vectors
   t249.s.s 2 1 128))])
  (let ([t476   (uint16x128
   (slice_vectors
    t252.s.s 2 1 128))])
   (uint8x128
    (vec-min
     (vec-add
      (vec-absd
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           (slice_vectors
            (load c4 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
          (x128 (uint16_t (bv 1 16))))
         (uint16x128
          t248.s))
        t475)
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           (slice_vectors
            (load c5 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
          (x128 (uint16_t (bv 1 16))))
         (uint16x128
          t251.s))
        t476))
      (vec-absd
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           t432)
          (x128 (uint16_t (bv 1 16))))
         (uint16x128
          t248.s))
        (uint16x128
         t251.s))
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           (slice_vectors
            (concat_vectors
             t432
             (load bounded_input (ramp (sca-add (sca-mul (sca-add (sca-mul (sca-div (sca-add t301 255) 128) 2) output.s0.x.x) 128) 128) 1 128) (aligned 128 0))) 2 1 128))
          (x128 (uint16_t (bv 1 16))))
         t475)
        t476)))
     (x128 (uint16_t (bv 255 16))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")