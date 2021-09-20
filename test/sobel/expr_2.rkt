#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic-buffer c6 uint8_t)
(define-symbolic-buffer c7 uint8_t)
(define-symbolic-buffer t255.s-buf uint8_t)
(define-symbolic-buffer t256.s.s-buf uint8_t)
(define-symbolic-buffer t433-buf uint8_t)
(define-symbolic-buffer t259.s.s-buf uint8_t)
(define-symbolic-buffer t258.s-buf uint8_t)
(define t255.s (load t255.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t455 integer?)
(define t256.s.s (load t256.s.s-buf (ramp 0 1 256) (aligned 0 0)))
(define t433 (load t433-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t454 integer?)
(define t259.s.s (load t259.s.s-buf (ramp 0 1 256) (aligned 0 0)))
(define-symbolic output.s0.x.x integer?)
(define t258.s (load t258.s-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t255.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t256.s.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t433-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t259.s.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t258.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t301 (var-lookup 't301 (sca-max  (sca-mul  t455  128)  (sca-add  (sca-mul  t454  128)  2))))

(define halide-expr
 (let ([t485  (uint16x128
  (slice_vectors
   t256.s.s 2 1 128))])
  (let ([t486   (uint16x128
   (slice_vectors
    t259.s.s 2 1 128))])
   (uint8x128
    (vec-min
     (vec-add
      (vec-absd
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           (slice_vectors
            (load c6 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
          (x128 (uint16_t (bv 1 16))))
         (uint16x128
          t255.s))
        t485)
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           (slice_vectors
            (load c7 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
          (x128 (uint16_t (bv 1 16))))
         (uint16x128
          t258.s))
        t486))
      (vec-absd
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           t433)
          (x128 (uint16_t (bv 1 16))))
         (uint16x128
          t255.s))
        (uint16x128
         t258.s))
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           (slice_vectors
            (concat_vectors
             t433
             (load bounded_input (ramp (sca-add (sca-mul (sca-add (sca-mul (sca-div (sca-add t301 255) 128) 3) output.s0.x.x) 128) 128) 1 128) (aligned 128 0))) 2 1 128))
          (x128 (uint16_t (bv 1 16))))
         t485)
        t486)))
     (x128 (uint16_t (bv 255 16))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")