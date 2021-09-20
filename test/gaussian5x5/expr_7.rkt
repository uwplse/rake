#lang rosette/safe

(require rake)
(init-logging "expr_7.runtimes")

(define-symbolic-buffer t270.s-buf int16_t)
(define-symbolic-buffer t269-buf int16_t)
(define-symbolic-buffer t271.s-buf int16_t)
(define t270.s (load t270.s-buf (ramp 0 1 64) (aligned 0 0)))
(define t269 (load t269-buf (ramp 0 1 64) (aligned 0 0)))
(define t271.s (load t271.s-buf (ramp 0 1 64) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t270.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t269-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t271.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (let ([t334  (concat_vectors
  t270.s
  t269)])
  (let ([t335   (concat_vectors
   t269
   t271.s)])
   (uint8x128
    (vec-div
     (vec-add
      (vec-mul
       (concat_vectors
        (slice_vectors
         t334 1 1 64)
        (slice_vectors
         t335 1 1 64))
       (x128 (int16_t (bv 4 16))))
      (vec-add
       t334
       (vec-add
        (vec-mul
         (concat_vectors
          (slice_vectors
           t334 2 1 64)
          (slice_vectors
           t335 2 1 64))
         (x128 (int16_t (bv 6 16))))
        (vec-add
         (concat_vectors
          (slice_vectors
           t334 4 1 64)
          (slice_vectors
           t335 4 1 64))
         (vec-mul
          (concat_vectors
           (slice_vectors
            t334 3 1 64)
           (slice_vectors
            t335 3 1 64))
          (x128 (int16_t (bv 4 16))))))))
     (x128 (int16_t (bv 256 16))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_7.out")