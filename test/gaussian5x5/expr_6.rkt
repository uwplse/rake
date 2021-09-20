#lang rosette/safe

(require rake)
(init-logging "expr_6.runtimes")

(define-symbolic-buffer t266-buf int16_t)
(define-symbolic-buffer t268.s-buf int16_t)
(define-symbolic-buffer t267.s-buf int16_t)
(define t266 (load t266-buf (ramp 0 1 64) (aligned 0 0)))
(define t268.s (load t268.s-buf (ramp 0 1 64) (aligned 0 0)))
(define t267.s (load t267.s-buf (ramp 0 1 64) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t266-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t268.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t267.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (let ([t329  (concat_vectors
  t267.s
  t266)])
  (let ([t330   (concat_vectors
   t266
   t268.s)])
   (uint8x128
    (vec-div
     (vec-add
      (vec-mul
       (concat_vectors
        (slice_vectors
         t329 1 1 64)
        (slice_vectors
         t330 1 1 64))
       (x128 (int16_t (bv 4 16))))
      (vec-add
       t329
       (vec-add
        (vec-mul
         (concat_vectors
          (slice_vectors
           t329 2 1 64)
          (slice_vectors
           t330 2 1 64))
         (x128 (int16_t (bv 6 16))))
        (vec-add
         (concat_vectors
          (slice_vectors
           t329 4 1 64)
          (slice_vectors
           t330 4 1 64))
         (vec-mul
          (concat_vectors
           (slice_vectors
            t329 3 1 64)
           (slice_vectors
            t330 3 1 64))
          (x128 (int16_t (bv 4 16))))))))
     (x128 (int16_t (bv 256 16))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_6.out")