#lang rosette/safe

(require rake)
(init-logging "expr_25.runtimes")

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f13 int16_t)
(define-symbolic-buffer t2672.s-buf int16_t)
(define-symbolic-buffer t2674.s.s-buf int16_t)
(define-symbolic-buffer t2669.s-buf int16_t)
(define-symbolic-buffer t2670.s-buf int16_t)
(define-symbolic-buffer t2676.s.s-buf int16_t)
(define-symbolic-buffer t2668.s-buf int16_t)
(define-symbolic-buffer t2665.s-buf int16_t)
(define t2672.s (load t2672.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t2674.s.s (load t2674.s.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t2669.s (load t2669.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t3154 integer?)
(define t2670.s (load t2670.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t2676.s.s (load t2676.s.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t3157 integer?)
(define t2668.s (load t2668.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t2665.s (load t2665.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t3155 integer?)
(define-symbolic f28.s0.v0.v0 integer?)

(define axioms 
  (list 
   (values-range-from t2672.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2674.s.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2669.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2670.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2676.s.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2668.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2665.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))

(define t2853.s (var-lookup 't2853.s t3154))
(define t2854.s (var-lookup 't2854.s t3155))
(define t2851.s (var-lookup 't2851.s t3157))

(define halide-expr
 (let ([t3199  (slice_vectors
  t2665.s 1 1 64)])
  (let ([t3200   (slice_vectors
   t2668.s 2 1 64)])
   (let ([t3201    (slice_vectors
    t2669.s 2 1 64)])
    (let ([t3202     (slice_vectors
     t2670.s 1 1 64)])
     (let ([t3203      (int32x64
      t3200)])
      (let ([t3204       (slice_vectors
       t2672.s 1 1 64)])
       (let ([t3205        (int32x64
        (slice_vectors
         t2674.s.s 1 1 64))])
        (let ([t3206         (int32x64
         t3201)])
         (let ([t3207          (int32x64
          (slice_vectors
           t2676.s.s 1 1 64))])
          (interleave
           (vec-if
            (vec-lt
             (vec-absd
              t3199
              t3200)
             (vec-absd
              t3201
              t3202))
            (vec-add
             (int16x64
              (vec-div
               (vec-add
                (vec-add
                 (int32x64
                  t3199)
                 t3203)
                (x64 (int32_t (bv 1 32))))
               (x64 (int32_t (bv 2 32)))))
             (vec-sub
              t3204
              (int16x64
               (vec-div
                (vec-add
                 (vec-add
                  (int32x64
                   (load f13 (ramp (sca-mul (sca-add f28.s0.v0.v0 t2854.s) 64) 1 64) (aligned 64 0)))
                  t3205)
                 (x64 (int32_t (bv 1 32))))
                (x64 (int32_t (bv 2 32)))))))
            (vec-add
             (int16x64
              (vec-div
               (vec-add
                (vec-add
                 t3206
                 (int32x64
                  t3202))
                (x64 (int32_t (bv 1 32))))
               (x64 (int32_t (bv 2 32)))))
             (vec-sub
              t3204
              (int16x64
               (vec-div
                (vec-add
                 (vec-add
                  t3207
                  (int32x64
                   (load f13 (ramp (sca-mul (sca-add f28.s0.v0.v0 t2853.s) 64) 1 64) (aligned 64 0))))
                 (x64 (int32_t (bv 1 32))))
                (x64 (int32_t (bv 2 32))))))))
           (vec-add
            (int16x64
             (vec-div
              (vec-add
               (vec-add
                t3206
                t3203)
               (x64 (int32_t (bv 1 32))))
              (x64 (int32_t (bv 2 32)))))
            (vec-sub
             (slice_vectors
              (load deinterleaved (ramp (sca-mul (sca-add f28.s0.v0.v0 t2851.s) 64) 1 128) (aligned 64 0)) 2 1 64)
             (int16x64
              (vec-div
               (vec-add
                (vec-add
                 t3207
                 t3205)
                (x64 (int32_t (bv 1 32))))
               (x64 (int32_t (bv 2 32))))))))))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_25.out")