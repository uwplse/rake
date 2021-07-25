#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic-buffer c8 uint8_t)
(define-symbolic-buffer c9 uint8_t)
(define-symbolic-buffer t266.s.s-buf uint8_t)
(define-symbolic-buffer t262.s-buf uint8_t)
(define-symbolic-buffer t434-buf uint8_t)
(define-symbolic-buffer t265.s-buf uint8_t)
(define-symbolic-buffer t263.s.s-buf uint8_t)
(define-symbolic t454 integer?)
(define t266.s.s (load t266.s.s-buf (ramp 0 1 256) (aligned 0 0)))
(define-symbolic t455 integer?)
(define t262.s (load t262.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t434 (load t434-buf (ramp 0 1 128) (aligned 0 0)))
(define t265.s (load t265.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t263.s.s (load t263.s.s-buf (ramp 0 1 256) (aligned 0 0)))
(define-symbolic output.s0.x.x integer?)

(define axioms 
  (list 
   (values-range-from t266.s.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t262.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t434-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t265.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t263.s.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t301 (var-lookup 't301 (sca-max  (sca-mul  t455  128)  (sca-add  (sca-mul  t454  128)  2))))

(define halide-expr
 (let ([t495  (uint16x128
  (slice_vectors
   t263.s.s 2 1 128))])
  (let ([t496   (uint16x128
   (slice_vectors
    t266.s.s 2 1 128))])
   (uint8x128
    (vec-min
     (vec-add
      (vec-absd
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           (slice_vectors
            (load c8 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
          (x128 (uint16_t (bv 1 16))))
         (uint16x128
          t262.s))
        t495)
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           (slice_vectors
            (load c9 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
          (x128 (uint16_t (bv 1 16))))
         (uint16x128
          t265.s))
        t496))
      (vec-absd
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           t434)
          (x128 (uint16_t (bv 1 16))))
         (uint16x128
          t262.s))
        (uint16x128
         t265.s))
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           (slice_vectors
            (concat_vectors
             t434
             (load bounded_input (ramp (sca-add (sca-mul (sca-add (sca-mul (sca-div (sca-add t301 255) 128) 4) output.s0.x.x) 128) 128) 1 128) (aligned 128 0))) 2 1 128))
          (x128 (uint16_t (bv 1 16))))
         t495)
        t496)))
     (x128 (uint16_t (bv 255 16))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")