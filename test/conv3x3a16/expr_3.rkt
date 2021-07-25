#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer mask int8_t)
(define-symbolic-buffer t266.s-buf uint8_t)
(define-symbolic-buffer t268.s-buf uint8_t)
(define-symbolic-buffer t267-buf uint8_t)
(define-symbolic-buffer t263-buf uint8_t)
(define-symbolic-buffer t265-buf uint8_t)
(define-symbolic-buffer t264.s-buf uint8_t)
(define t266.s (load t266.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t268.s (load t268.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t267 (load t267-buf (ramp 0 1 128) (aligned 0 0)))
(define t263 (load t263-buf (ramp 0 1 128) (aligned 0 0)))
(define t265 (load t265-buf (ramp 0 1 128) (aligned 0 0)))
(define t264.s (load t264.s-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t266.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t268.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t267-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t263-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t265-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t264.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t330  (concat_vectors
  t263
  t264.s)])
  (let ([t331   (concat_vectors
   t265
   t266.s)])
   (let ([t332    (concat_vectors
    t267
    t268.s)])
    (uint8x128
     (vec-max
      (vec-min
       (vec-div
        (vec-add
         (vec-mul
          (int16x128
           (uint16x128
            (slice_vectors
             t330 1 1 128)))
          (int16x128
           (x128 (load-sca mask 1))))
         (vec-add
          (vec-mul
           (int16x128
            (uint16x128
             t263))
           (int16x128
            (x128 (load-sca mask 0))))
          (vec-add
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               t330 2 1 128)))
            (int16x128
             (x128 (load-sca mask 2))))
           (vec-add
            (vec-mul
             (int16x128
              (uint16x128
               t265))
             (int16x128
              (x128 (load-sca mask 3))))
            (vec-add
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 t331 1 1 128)))
              (int16x128
               (x128 (load-sca mask 4))))
             (vec-add
              (vec-mul
               (int16x128
                (uint16x128
                 (slice_vectors
                  t331 2 1 128)))
               (int16x128
                (x128 (load-sca mask 5))))
              (vec-add
               (vec-mul
                (int16x128
                 (uint16x128
                  t267))
                (int16x128
                 (x128 (load-sca mask 6))))
               (vec-add
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t332 2 1 128)))
                 (int16x128
                  (x128 (load-sca mask 8))))
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t332 1 1 128)))
                 (int16x128
                  (x128 (load-sca mask 7))))))))))))
        (x128 (int16_t (bv 16 16))))
       (x128 (int16_t (bv 255 16))))
      (x128 (int16_t (bv 0 16)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")