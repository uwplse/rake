#lang rosette/safe

(require rake)
(init-logging "expr_11.runtimes")

(define-symbolic-buffer t80.s-buf int32_t)
(define-symbolic-buffer t75-buf int32_t)
(define-symbolic-buffer t76-buf int32_t)
(define-symbolic-buffer t77-buf int32_t)
(define-symbolic-buffer t78-buf int32_t)
(define-symbolic-buffer t79-buf int32_t)
(define-symbolic-buffer t73-buf int32_t)
(define-symbolic-buffer t74-buf int32_t)
(define t80.s (load t80.s-buf (ramp 0 1 32) (aligned 0 0)))
(define t75 (load t75-buf (ramp 0 1 64) (aligned 0 0)))
(define t76 (load t76-buf (ramp 0 1 32) (aligned 0 0)))
(define t77 (load t77-buf (ramp 0 1 64) (aligned 0 0)))
(define t78 (load t78-buf (ramp 0 1 32) (aligned 0 0)))
(define t79 (load t79-buf (ramp 0 1 64) (aligned 0 0)))
(define t73 (load t73-buf (ramp 0 1 32) (aligned 0 0)))
(define t74 (load t74-buf (ramp 0 1 32) (aligned 0 0)))

(define axioms 
  (list ))


(define halide-expr
 (let ([t153  (concat_vectors
  t78
  t80.s)])
  (uint8x128
   (vec-max
    (vec-min
     (vec-div
      (vec-add
       (vec-mul
        (concat_vectors
         (concat_vectors
          (slice_vectors
           t75 1 1 32)
          (slice_vectors
           t77 1 1 32))
         (concat_vectors
          (slice_vectors
           t79 1 1 32)
          (slice_vectors
           t153 1 1 32)))
        (x128 (int32_t (bv 6 32))))
       (vec-add
        (concat_vectors
         (concat_vectors
          t73
          t74)
         (concat_vectors
          t76
          t78))
        (vec-add
         (vec-mul
          (concat_vectors
           (concat_vectors
            (slice_vectors
             t75 2 1 32)
            (slice_vectors
             t77 2 1 32))
           (concat_vectors
            (slice_vectors
             t79 2 1 32)
            (slice_vectors
             t153 2 1 32)))
          (x128 (int32_t (bv 15 32))))
         (vec-add
          (vec-mul
           (concat_vectors
            (concat_vectors
             (slice_vectors
              t75 3 1 32)
             (slice_vectors
              t77 3 1 32))
            (concat_vectors
             (slice_vectors
              t79 3 1 32)
             (slice_vectors
              t153 3 1 32)))
           (x128 (int32_t (bv 20 32))))
          (vec-add
           (vec-mul
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t75 4 1 32)
              (slice_vectors
               t77 4 1 32))
             (concat_vectors
              (slice_vectors
               t79 4 1 32)
              (slice_vectors
               t153 4 1 32)))
            (x128 (int32_t (bv 15 32))))
           (vec-add
            (concat_vectors
             (concat_vectors
              (slice_vectors
               t75 6 1 32)
              (slice_vectors
               t77 6 1 32))
             (concat_vectors
              (slice_vectors
               t79 6 1 32)
              (slice_vectors
               t153 6 1 32)))
            (vec-mul
             (concat_vectors
              (concat_vectors
               (slice_vectors
                t75 5 1 32)
               (slice_vectors
                t77 5 1 32))
              (concat_vectors
               (slice_vectors
                t79 5 1 32)
               (slice_vectors
                t153 5 1 32)))
             (x128 (int32_t (bv 6 32))))))))))
      (x128 (int32_t (bv 4096 32))))
     (x128 (int32_t (bv 255 32))))
    (x128 (int32_t (bv 0 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_11.out")