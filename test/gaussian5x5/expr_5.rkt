#lang rosette/safe

(require rake)
(init-logging "expr_5.runtimes")

(define-symbolic-buffer t264.s-buf int16_t)
(define-symbolic-buffer t265.s-buf int16_t)
(define-symbolic-buffer t263-buf int16_t)
(define t264.s (load t264.s-buf (ramp 0 1 64) (aligned 0 0)))
(define t265.s (load t265.s-buf (ramp 0 1 64) (aligned 0 0)))
(define t263 (load t263-buf (ramp 0 1 64) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t264.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t265.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t263-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (let ([t324  (concat_vectors
  t264.s
  t263)])
  (let ([t325   (concat_vectors
   t263
   t265.s)])
   (uint8x128
    (vec-div
     (vec-add
      (vec-mul
       (concat_vectors
        (slice_vectors
         t324 1 1 64)
        (slice_vectors
         t325 1 1 64))
       (x128 (int16_t (bv 4 16))))
      (vec-add
       t324
       (vec-add
        (vec-mul
         (concat_vectors
          (slice_vectors
           t324 2 1 64)
          (slice_vectors
           t325 2 1 64))
         (x128 (int16_t (bv 6 16))))
        (vec-add
         (concat_vectors
          (slice_vectors
           t324 4 1 64)
          (slice_vectors
           t325 4 1 64))
         (vec-mul
          (concat_vectors
           (slice_vectors
            t324 3 1 64)
           (slice_vectors
            t325 3 1 64))
          (x128 (int16_t (bv 4 16))))))))
     (x128 (int16_t (bv 256 16))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_5.out")