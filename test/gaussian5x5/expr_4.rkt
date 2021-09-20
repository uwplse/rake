#lang rosette/safe

(require rake)
(init-logging "expr_4.runtimes")

(define-symbolic-buffer t262.s-buf int16_t)
(define-symbolic-buffer t260-buf int16_t)
(define-symbolic-buffer t261.s-buf int16_t)
(define t262.s (load t262.s-buf (ramp 0 1 64) (aligned 0 0)))
(define t260 (load t260-buf (ramp 0 1 64) (aligned 0 0)))
(define t261.s (load t261.s-buf (ramp 0 1 64) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t262.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t260-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t261.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (let ([t319  (concat_vectors
  t261.s
  t260)])
  (let ([t320   (concat_vectors
   t260
   t262.s)])
   (uint8x128
    (vec-div
     (vec-add
      (vec-mul
       (concat_vectors
        (slice_vectors
         t319 1 1 64)
        (slice_vectors
         t320 1 1 64))
       (x128 (int16_t (bv 4 16))))
      (vec-add
       t319
       (vec-add
        (vec-mul
         (concat_vectors
          (slice_vectors
           t319 2 1 64)
          (slice_vectors
           t320 2 1 64))
         (x128 (int16_t (bv 6 16))))
        (vec-add
         (concat_vectors
          (slice_vectors
           t319 4 1 64)
          (slice_vectors
           t320 4 1 64))
         (vec-mul
          (concat_vectors
           (slice_vectors
            t319 3 1 64)
           (slice_vectors
            t320 3 1 64))
          (x128 (int16_t (bv 4 16))))))))
     (x128 (int16_t (bv 256 16))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_4.out")