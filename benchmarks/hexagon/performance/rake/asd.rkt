#lang rosette

(require rake)
(require rake/halide)

(error-print-width 100000)
(debug-on)

(init-var-types (make-hash (list)))

(define-symbolic t157.s integer?)
(define-symbolic t158.s integer?)
(define-symbolic t156 integer?)

(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (concat_vectors
      (slice_vectors
       (concat_vectors
        t157.s
        t156) 1 1 64)
      (slice_vectors
       (concat_vectors
        t156
        t158.s) 1 1 64))
     (x128 (int16_t (bv 4 16))))
    (vec-add
     (concat_vectors
      t157.s
      t156)
     (vec-add
      (vec-mul
       (concat_vectors
        (slice_vectors
         (concat_vectors
          t157.s
          t156) 2 1 64)
        (slice_vectors
         (concat_vectors
          t156
          t158.s) 2 1 64))
       (x128 (int16_t (bv 6 16))))
      (vec-add
       (concat_vectors
        (slice_vectors
         (concat_vectors
          t157.s
          t156) 4 1 64)
        (slice_vectors
         (concat_vectors
          t156
          t158.s) 4 1 64))
       (vec-mul
        (concat_vectors
         (slice_vectors
          (concat_vectors
           t157.s
           t156) 3 1 64)
         (slice_vectors
          (concat_vectors
           t156
           t158.s) 3 1 64))
        (x128 (int16_t (bv 4 16))))))))
   (x128 (int16_t (bv 256 16))))))

(for ([i 8]) (println ((interpret-halide halide-expr) i)))