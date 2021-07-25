#lang rosette/safe

(require rake)
(init-logging "expr_5.runtimes")

(define-symbolic-buffer mask int8_t)
(define-symbolic-buffer t233-buf uint8_t)
(define-symbolic-buffer t235-buf uint8_t)
(define-symbolic-buffer t237-buf uint8_t)
(define-symbolic-buffer t238.s-buf uint8_t)
(define-symbolic-buffer t234.s-buf uint8_t)
(define-symbolic-buffer t236.s-buf uint8_t)
(define t233 (load t233-buf (ramp 0 1 128) (aligned 0 0)))
(define t235 (load t235-buf (ramp 0 1 128) (aligned 0 0)))
(define t237 (load t237-buf (ramp 0 1 128) (aligned 0 0)))
(define t238.s (load t238.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t234.s (load t234.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t236.s (load t236.s-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t233-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t235-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t237-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t238.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t234.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t236.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t294  (concat_vectors
  t233
  t234.s)])
  (let ([t295   (concat_vectors
   t235
   t236.s)])
   (let ([t296    (concat_vectors
    t237
    t238.s)])
    (uint8x128
     (vec-max
      (vec-min
       (vec-div
        (vec-add
         (vec-add
          (vec-add
           (vec-add
            (vec-add
             (vec-add
              (vec-add
               (vec-add
                (int32x128
                 (vec-mul
                  (int16x128
                   (uint16x128
                    t233))
                  (int16x128
                   (x128 (load-sca mask 0)))))
                (int32x128
                 (vec-mul
                  (int16x128
                   (uint16x128
                    (slice_vectors
                     t294 1 1 128)))
                  (int16x128
                   (x128 (load-sca mask 1))))))
               (int32x128
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t294 2 1 128)))
                 (int16x128
                  (x128 (load-sca mask 2))))))
              (int32x128
               (vec-mul
                (int16x128
                 (uint16x128
                  t235))
                (int16x128
                 (x128 (load-sca mask 3))))))
             (int32x128
              (vec-mul
               (int16x128
                (uint16x128
                 (slice_vectors
                  t295 1 1 128)))
               (int16x128
                (x128 (load-sca mask 4))))))
            (int32x128
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 t295 2 1 128)))
              (int16x128
               (x128 (load-sca mask 5))))))
           (int32x128
            (vec-mul
             (int16x128
              (uint16x128
               t237))
             (int16x128
              (x128 (load-sca mask 6))))))
          (int32x128
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               t296 1 1 128)))
            (int16x128
             (x128 (load-sca mask 7))))))
         (int32x128
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              t296 2 1 128)))
           (int16x128
            (x128 (load-sca mask 8))))))
        (x128 (int32_t (bv 16 32))))
       (x128 (int32_t (bv 255 32))))
      (x128 (int32_t (bv 0 32)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_5.out")