#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer mask int8_t)
(define-symbolic-buffer t261-buf uint8_t)
(define-symbolic-buffer t257-buf uint8_t)
(define-symbolic-buffer t259-buf uint8_t)
(define-symbolic-buffer t260.s-buf uint8_t)
(define-symbolic-buffer t262.s-buf uint8_t)
(define-symbolic-buffer t258.s-buf uint8_t)
(define t261 (load t261-buf (ramp 0 1 128) (aligned 0 0)))
(define t257 (load t257-buf (ramp 0 1 128) (aligned 0 0)))
(define t259 (load t259-buf (ramp 0 1 128) (aligned 0 0)))
(define t260.s (load t260.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t262.s (load t262.s-buf (ramp 0 1 128) (aligned 0 0)))
(define t258.s (load t258.s-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t261-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t257-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t259-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t260.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t262.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t258.s-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t321  (concat_vectors
  t257
  t258.s)])
  (let ([t322   (concat_vectors
   t259
   t260.s)])
   (let ([t323    (concat_vectors
    t261
    t262.s)])
    (uint8x128
     (vec-max
      (vec-min
       (vec-div
        (vec-add
         (vec-mul
          (int16x128
           (uint16x128
            (slice_vectors
             t321 1 1 128)))
          (int16x128
           (x128 (load-sca mask 1))))
         (vec-add
          (vec-mul
           (int16x128
            (uint16x128
             t257))
           (int16x128
            (x128 (load-sca mask 0))))
          (vec-add
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               t321 2 1 128)))
            (int16x128
             (x128 (load-sca mask 2))))
           (vec-add
            (vec-mul
             (int16x128
              (uint16x128
               t259))
             (int16x128
              (x128 (load-sca mask 3))))
            (vec-add
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 t322 1 1 128)))
              (int16x128
               (x128 (load-sca mask 4))))
             (vec-add
              (vec-mul
               (int16x128
                (uint16x128
                 (slice_vectors
                  t322 2 1 128)))
               (int16x128
                (x128 (load-sca mask 5))))
              (vec-add
               (vec-mul
                (int16x128
                 (uint16x128
                  t261))
                (int16x128
                 (x128 (load-sca mask 6))))
               (vec-add
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t323 2 1 128)))
                 (int16x128
                  (x128 (load-sca mask 8))))
                (vec-mul
                 (int16x128
                  (uint16x128
                   (slice_vectors
                    t323 1 1 128)))
                 (int16x128
                  (x128 (load-sca mask 7))))))))))))
        (x128 (int16_t (bv 16 16))))
       (x128 (int16_t (bv 255 16))))
      (x128 (int16_t (bv 0 16)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")