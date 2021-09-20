#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic-buffer c2 uint8_t)
(define-symbolic-buffer c3 uint8_t)
(define-symbolic-buffer t431-buf uint8_t)
(define-symbolic-buffer t240.s-buf uint8_t)
(define-symbolic-buffer t245.s.s-buf uint8_t)
(define-symbolic-buffer t241.s.s-buf uint8_t)
(define-symbolic-buffer t244.s-buf uint8_t)
(define t431 (load t431-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t455 integer?)
(define t240.s (load t240.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t245.s.s (load t245.s.s-buf (ramp 0 1 256) (aligned 0 0)))
(define-symbolic t454 integer?)
(define t241.s.s (load t241.s.s-buf (ramp 0 1 256) (aligned 0 0)))
(define t244.s (load t244.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic output.s0.x.x integer?)

(define axioms 
  (list 
   (values-range-from t431-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t240.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t245.s.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t241.s.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t244.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t301 (var-lookup 't301 (sca-max  (sca-mul  t455  128)  (sca-add  (sca-mul  t454  128)  2))))

(define halide-expr
 (let ([t465  (uint16x128
  (slice_vectors
   t241.s.s 2 1 128))])
  (let ([t466   (uint16x128
   (slice_vectors
    t245.s.s 2 1 128))])
   (uint8x128
    (vec-min
     (vec-add
      (vec-absd
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           (slice_vectors
            (load c2 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
          (x128 (uint16_t (bv 1 16))))
         (uint16x128
          t240.s))
        t465)
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           (slice_vectors
            (load c3 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
          (x128 (uint16_t (bv 1 16))))
         (uint16x128
          t244.s))
        t466))
      (vec-absd
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           t431)
          (x128 (uint16_t (bv 1 16))))
         (uint16x128
          t240.s))
        (uint16x128
         t244.s))
       (vec-add
        (vec-add
         (vec-shl
          (uint16x128
           (slice_vectors
            (concat_vectors
             t431
             (load bounded_input (ramp (sca-add (sca-mul (sca-add (sca-div (sca-add t301 255) 128) output.s0.x.x) 128) 128) 1 128) (aligned 128 0))) 2 1 128))
          (x128 (uint16_t (bv 1 16))))
         t465)
        t466)))
     (x128 (uint16_t (bv 255 16))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")