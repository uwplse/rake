#lang rosette/safe

(require rake)
(init-logging "expr_15.runtimes")

(define-symbolic-buffer t84-buf int32_t)
(define-symbolic-buffer t85-buf int32_t)
(define-symbolic-buffer t86-buf int32_t)
(define-symbolic-buffer t87-buf int32_t)
(define-symbolic-buffer t88.s-buf int32_t)
(define-symbolic-buffer t81-buf int32_t)
(define-symbolic-buffer t82-buf int32_t)
(define-symbolic-buffer t83-buf int32_t)
(define t84 (load t84-buf (ramp 0 1 32) (aligned 0 0)))
(define t85 (load t85-buf (ramp 0 1 64) (aligned 0 0)))
(define t86 (load t86-buf (ramp 0 1 32) (aligned 0 0)))
(define t87 (load t87-buf (ramp 0 1 64) (aligned 0 0)))
(define t88.s (load t88.s-buf (ramp 0 1 32) (aligned 0 0)))
(define t81 (load t81-buf (ramp 0 1 32) (aligned 0 0)))
(define t82 (load t82-buf (ramp 0 1 32) (aligned 0 0)))
(define t83 (load t83-buf (ramp 0 1 64) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 (let ([t159  (concat_vectors
  t86
  t88.s)])
  (uint8x128
   (vec-max
    (vec-min
     (vec-div
      (vec-add
       (vec-mul
        (concat_vectors
         (concat_vectors
          (slice_vectors
           t83 1 1 32)
          (slice_vectors
           t85 1 1 32))
         (concat_vectors
          (slice_vectors
           t87 1 1 32)
          (slice_vectors
           t159 1 1 32)))
        (x128 (int32_t (bv 6 32))))
       (vec-add
        (concat_vectors
         (concat_vectors
          t81
          t82)
         (concat_vectors
          t84
          t86))
        (vec-add
         (vec-mul
          (concat_vectors
           (concat_vectors
            (slice_vectors
             t83 2 1 32)
            (slice_vectors
             t85 2 1 32))
           (concat_vectors
            (slice_vectors
             t87 2 1 32)
            (slice_vectors
             t159 2 1 32)))
          (x128 (int32_t (bv 15 32))))
         (vec-add
          (vec-mul
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t83 3 1 32)
             (slice_vectors
              t85 3 1 32))
            (concat_vectors
             (slice_vectors
              t87 3 1 32)
             (slice_vectors
              t159 3 1 32)))
           (x128 (int32_t (bv 20 32))))
          (vec-add
           (vec-mul
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t83 4 1 32)
              (slice_vectors
               t85 4 1 32))
             (concat_vectors
              (slice_vectors
               t87 4 1 32)
              (slice_vectors
               t159 4 1 32)))
            (x128 (int32_t (bv 15 32))))
           (vec-add
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t83 6 1 32)
              (slice_vectors
               t85 6 1 32))
             (concat_vectors
              (slice_vectors
               t87 6 1 32)
              (slice_vectors
               t159 6 1 32)))
            (vec-mul
             (concat_vectors
              (concat_vectors
               (slice_vectors
                t83 5 1 32)
               (slice_vectors
                t85 5 1 32))
              (concat_vectors
               (slice_vectors
                t87 5 1 32)
               (slice_vectors
                t159 5 1 32)))
             (x128 (int32_t (bv 6 32))))))))))
      (x128 (int32_t (bv 4096 32))))
     (x128 (int32_t (bv 255 32))))
    (x128 (int32_t (bv 0 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_15.out")