#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer t108.s-buf int16_t)
(define-symbolic-buffer t109.s-buf int16_t)
(define-symbolic-buffer t107-buf int16_t)
(define t108.s (load t108.s-buf (ramp 0 1 64) (aligned 0 0)))
(define t109.s (load t109.s-buf (ramp 0 1 64) (aligned 0 0)))
(define t107 (load t107-buf (ramp 0 1 64) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t108.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t109.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t107-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (let ([t139  (concat_vectors
  t108.s
  t107)])
  (let ([t140   (concat_vectors
   t107
   t109.s)])
   (uint8x128
    (vec-div
     (vec-add
      (vec-mul
       (concat_vectors
        (slice_vectors
         t139 61 1 64)
        (slice_vectors
         t140 61 1 64))
       (x128 (int16_t (bv 4 16))))
      (vec-add
       (concat_vectors
        (slice_vectors
         t139 60 1 64)
        (slice_vectors
         t140 60 1 64))
       (vec-add
        (vec-mul
         (concat_vectors
          (slice_vectors
           t139 62 1 64)
          (slice_vectors
           t140 62 1 64))
         (x128 (int16_t (bv 6 16))))
        (vec-add
         t140
         (vec-mul
          (concat_vectors
           (slice_vectors
            t139 63 1 64)
           (slice_vectors
            t140 63 1 64))
          (x128 (int16_t (bv 4 16))))))))
     (x128 (int16_t (bv 256 16))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")