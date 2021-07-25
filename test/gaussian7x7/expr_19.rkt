#lang rosette/safe

(require rake)
(init-logging "expr_19.runtimes")

(define-symbolic-buffer t89-buf int32_t)
(define-symbolic-buffer t90-buf int32_t)
(define-symbolic-buffer t91-buf int32_t)
(define-symbolic-buffer t92-buf int32_t)
(define-symbolic-buffer t93-buf int32_t)
(define-symbolic-buffer t94-buf int32_t)
(define-symbolic-buffer t95-buf int32_t)
(define-symbolic-buffer t96.s-buf int32_t)
(define t89 (load t89-buf (ramp 0 1 32) (aligned 0 0)))
(define t90 (load t90-buf (ramp 0 1 32) (aligned 0 0)))
(define t91 (load t91-buf (ramp 0 1 64) (aligned 0 0)))
(define t92 (load t92-buf (ramp 0 1 32) (aligned 0 0)))
(define t93 (load t93-buf (ramp 0 1 64) (aligned 0 0)))
(define t94 (load t94-buf (ramp 0 1 32) (aligned 0 0)))
(define t95 (load t95-buf (ramp 0 1 64) (aligned 0 0)))
(define t96.s (load t96.s-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 (let ([t165  (concat_vectors
  t94
  t96.s)])
  (uint8x128
   (vec-max
    (vec-min
     (vec-div
      (vec-add
       (vec-mul
        (concat_vectors
         (concat_vectors
          (slice_vectors
           t91 1 1 32)
          (slice_vectors
           t93 1 1 32))
         (concat_vectors
          (slice_vectors
           t95 1 1 32)
          (slice_vectors
           t165 1 1 32)))
        (x128 (int32_t (bv 6 32))))
       (vec-add
        (concat_vectors
         (concat_vectors
          t89
          t90)
         (concat_vectors
          t92
          t94))
        (vec-add
         (vec-mul
          (concat_vectors
           (concat_vectors
            (slice_vectors
             t91 2 1 32)
            (slice_vectors
             t93 2 1 32))
           (concat_vectors
            (slice_vectors
             t95 2 1 32)
            (slice_vectors
             t165 2 1 32)))
          (x128 (int32_t (bv 15 32))))
         (vec-add
          (vec-mul
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t91 3 1 32)
             (slice_vectors
              t93 3 1 32))
            (concat_vectors
             (slice_vectors
              t95 3 1 32)
             (slice_vectors
              t165 3 1 32)))
           (x128 (int32_t (bv 20 32))))
          (vec-add
           (vec-mul
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t91 4 1 32)
              (slice_vectors
               t93 4 1 32))
             (concat_vectors
              (slice_vectors
               t95 4 1 32)
              (slice_vectors
               t165 4 1 32)))
            (x128 (int32_t (bv 15 32))))
           (vec-add
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t91 6 1 32)
              (slice_vectors
               t93 6 1 32))
             (concat_vectors
              (slice_vectors
               t95 6 1 32)
              (slice_vectors
               t165 6 1 32)))
            (vec-mul
             (concat_vectors
              (concat_vectors
               (slice_vectors
                t91 5 1 32)
               (slice_vectors
                t93 5 1 32))
              (concat_vectors
               (slice_vectors
                t95 5 1 32)
               (slice_vectors
                t165 5 1 32)))
             (x128 (int32_t (bv 6 32))))))))))
      (x128 (int32_t (bv 4096 32))))
     (x128 (int32_t (bv 255 32))))
    (x128 (int32_t (bv 0 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_19.out")