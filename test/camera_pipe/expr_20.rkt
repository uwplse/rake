#lang rosette/safe

(require rake)
(init-logging "expr_20.runtimes")

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f7 int16_t)
(define-symbolic-buffer t2642.s.s-buf int16_t)
(define-symbolic-buffer t2650.s-buf int16_t)
(define-symbolic-buffer t2639.s.s-buf int16_t)
(define-symbolic-buffer t2649.s-buf int16_t)
(define-symbolic-buffer t2644.s-buf int16_t)
(define-symbolic-buffer t2647.s-buf int16_t)
(define-symbolic-buffer t2651.s-buf int16_t)
(define-symbolic t3118 integer?)
(define t2642.s.s (load t2642.s.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t2650.s (load t2650.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t2639.s.s (load t2639.s.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic f28.s0.v0.v0 integer?)
(define t2649.s (load t2649.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t3114 integer?)
(define t2644.s (load t2644.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t2647.s (load t2647.s-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic t3117 integer?)
(define t2651.s (load t2651.s-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t2642.s.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2650.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2639.s.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2649.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2644.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2647.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2651.s-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))

(define t2821 t3114)
(define t2853.s t3117)
(define t2854.s t3118)

(define halide-expr
 (let ([t3128  (slice_vectors
  t2644.s 1 1 64)])
  (let ([t3129   (int32x64
   t3128)])
   (let ([t3130    (slice_vectors
    t2647.s 1 1 64)])
    (let ([t3131     (int32x64
     t3130)])
     (let ([t3132      (int32x64
      (slice_vectors
       t2639.s.s 1 1 64))])
      (let ([t3133       (int32x64
       (slice_vectors
        t2642.s.s 1 1 64))])
       (let ([t3134        (slice_vectors
        t2649.s 2 1 64)])
        (let ([t3135         (slice_vectors
         t2650.s 2 1 64)])
         (let ([t3136          (slice_vectors
          t2651.s 1 1 64)])
          (interleave
           (vec-add
            (int16x64
             (vec-div
              (vec-add
               (vec-add
                t3129
                t3131)
               (x64 (int32_t (bv 1 32))))
              (x64 (int32_t (bv 2 32)))))
            (vec-sub
             (slice_vectors
              (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2821) 64) 1 128) (aligned 64 0)) 1 1 64)
             (int16x64
              (vec-div
               (vec-add
                (vec-add
                 t3132
                 t3133)
                (x64 (int32_t (bv 1 32))))
               (x64 (int32_t (bv 2 32)))))))
           (vec-if
            (vec-lt
             (vec-absd
              t3134
              t3130)
             (vec-absd
              t3128
              t3135))
            (vec-add
             (int16x64
              (vec-div
               (vec-add
                (vec-add
                 (int32x64
                  t3134)
                 t3131)
                (x64 (int32_t (bv 1 32))))
               (x64 (int32_t (bv 2 32)))))
             (vec-sub
              t3136
              (int16x64
               (vec-div
                (vec-add
                 (vec-add
                  (int32x64
                   (slice_vectors
                    (load f7 (ramp (* (+ f28.s0.v0.v0 t2853.s) 64) 1 128) (aligned 64 0)) 2 1 64))
                  t3133)
                 (x64 (int32_t (bv 1 32))))
                (x64 (int32_t (bv 2 32)))))))
            (vec-add
             (int16x64
              (vec-div
               (vec-add
                (vec-add
                 t3129
                 (int32x64
                  t3135))
                (x64 (int32_t (bv 1 32))))
               (x64 (int32_t (bv 2 32)))))
             (vec-sub
              t3136
              (int16x64
               (vec-div
                (vec-add
                 (vec-add
                  t3132
                  (int32x64
                   (slice_vectors
                    (load f7 (ramp (* (+ f28.s0.v0.v0 t2854.s) 64) 1 128) (aligned 64 0)) 2 1 64)))
                 (x64 (int32_t (bv 1 32))))
                (x64 (int32_t (bv 2 32)))))))))))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_20.out")