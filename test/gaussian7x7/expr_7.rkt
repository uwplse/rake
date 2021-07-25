#lang rosette/safe

(require rake)
(init-logging "expr_7.runtimes")

(define-symbolic-buffer t65-buf int32_t)
(define-symbolic-buffer t66-buf int32_t)
(define-symbolic-buffer t72.s-buf int32_t)
(define-symbolic-buffer t67-buf int32_t)
(define-symbolic-buffer t68-buf int32_t)
(define-symbolic-buffer t69-buf int32_t)
(define-symbolic-buffer t70-buf int32_t)
(define-symbolic-buffer t71-buf int32_t)
(define t65 (load t65-buf (ramp 0 1 32) (aligned 0 0)))
(define t66 (load t66-buf (ramp 0 1 32) (aligned 0 0)))
(define t72.s (load t72.s-buf (ramp 0 1 32) (aligned 0 0)))
(define t67 (load t67-buf (ramp 0 1 64) (aligned 0 0)))
(define t68 (load t68-buf (ramp 0 1 32) (aligned 0 0)))
(define t69 (load t69-buf (ramp 0 1 64) (aligned 0 0)))
(define t70 (load t70-buf (ramp 0 1 32) (aligned 0 0)))
(define t71 (load t71-buf (ramp 0 1 64) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 (let ([t147  (concat_vectors
  t70
  t72.s)])
  (uint8x128
   (vec-max
    (vec-min
     (vec-div
      (vec-add
       (vec-mul
        (concat_vectors
         (concat_vectors
          (slice_vectors
           t67 1 1 32)
          (slice_vectors
           t69 1 1 32))
         (concat_vectors
          (slice_vectors
           t71 1 1 32)
          (slice_vectors
           t147 1 1 32)))
        (x128 (int32_t (bv 6 32))))
       (vec-add
        (concat_vectors
         (concat_vectors
          t65
          t66)
         (concat_vectors
          t68
          t70))
        (vec-add
         (vec-mul
          (concat_vectors
           (concat_vectors
            (slice_vectors
             t67 2 1 32)
            (slice_vectors
             t69 2 1 32))
           (concat_vectors
            (slice_vectors
             t71 2 1 32)
            (slice_vectors
             t147 2 1 32)))
          (x128 (int32_t (bv 15 32))))
         (vec-add
          (vec-mul
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t67 3 1 32)
             (slice_vectors
              t69 3 1 32))
            (concat_vectors
             (slice_vectors
              t71 3 1 32)
             (slice_vectors
              t147 3 1 32)))
           (x128 (int32_t (bv 20 32))))
          (vec-add
           (vec-mul
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t67 4 1 32)
              (slice_vectors
               t69 4 1 32))
             (concat_vectors
              (slice_vectors
               t71 4 1 32)
              (slice_vectors
               t147 4 1 32)))
            (x128 (int32_t (bv 15 32))))
           (vec-add
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t67 6 1 32)
              (slice_vectors
               t69 6 1 32))
             (concat_vectors
              (slice_vectors
               t71 6 1 32)
              (slice_vectors
               t147 6 1 32)))
            (vec-mul
             (concat_vectors
              (concat_vectors
               (slice_vectors
                t67 5 1 32)
               (slice_vectors
                t69 5 1 32))
              (concat_vectors
               (slice_vectors
                t71 5 1 32)
               (slice_vectors
                t147 5 1 32)))
             (x128 (int32_t (bv 6 32))))))))))
      (x128 (int32_t (bv 4096 32))))
     (x128 (int32_t (bv 255 32))))
    (x128 (int32_t (bv 0 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_7.out")