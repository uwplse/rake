#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer mask int8_t)
(define-symbolic-buffer t250.s-buf uint8_t)
(define-symbolic-buffer t248.s-buf uint8_t)
(define-symbolic-buffer t245-buf uint8_t)
(define-symbolic-buffer t247-buf uint8_t)
(define-symbolic-buffer t249-buf uint8_t)
(define-symbolic-buffer t246.s-buf uint8_t)
(define t250.s (load t250.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t248.s (load t248.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t245 (load t245-buf (ramp 0 1 128) (aligned 0 0)))
(define t247 (load t247-buf (ramp 0 1 128) (aligned 0 0)))
(define t249 (load t249-buf (ramp 0 1 128) (aligned 0 0)))
(define t246.s (load t246.s-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t250.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t248.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t245-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t247-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t249-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t246.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t303  (concat_vectors
  t245
  t246.s)])
  (let ([t304   (concat_vectors
   t247
   t248.s)])
   (let ([t305    (concat_vectors
    t249
    t250.s)])
    (uint8x128
     (vec-max
      (vec-min
       (vec-div
        (vec-add
         (vec-mul
          (int16x128
           (uint16x128
            (slice_vectors
             t303 1 1 128)))
          (int16x128
           (x128 (load-sca mask 1))))
         (vec-add
          (vec-mul
           (int16x128
            (uint16x128
             t245))
           (int16x128
            (x128 (load-sca mask 0))))
          (vec-add
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               t303 2 1 128)))
            (int16x128
             (x128 (load-sca mask 2))))
           (vec-add
            (vec-mul
             (int16x128
              (uint16x128
               t247))
             (int16x128
              (x128 (load-sca mask 3))))
            (vec-add
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 t304 1 1 128)))
              (int16x128
               (x128 (load-sca mask 4))))
             (vec-add
              (vec-mul
               (int16x128
                (uint16x128
                 (slice_vectors
                  t304 2 1 128)))
               (int16x128
                (x128 (load-sca mask 5))))
              (vec-add
               (vec-mul
                (int16x128
                 (uint16x128
                  t249))
                (int16x128
                 (x128 (load-sca mask 6))))
               (vec-add
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t305 2 1 128)))
                 (int16x128
                  (x128 (load-sca mask 8))))
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t305 1 1 128)))
                 (int16x128
                  (x128 (load-sca mask 7))))))))))))
        (x128 (int16_t (bv 16 16))))
       (x128 (int16_t (bv 255 16))))
      (x128 (int16_t (bv 0 16)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")