#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer inv_sqrt int32_t)
(define-symbolic-buffer t190-buf uint8_t)
(define t190 (load t190-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var input_zero uint8_t)

(define axioms 
  (list 
   (values-range-from t190-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (let ([t191  (vec-mul
  (int32x128
   (vec-sub
    (int16x128
     t190)
    (int16x128
     (x128 input_zero))))
  (x128 (load-sca inv_sqrt 0)))])
  (uint8x128
   (vec-max
    (vec-min
     (int16x128
      (vec-max
       (vec-min
        (vec-add
         (int32x128
          (int16x128
           (vec-max
            (vec-min
             (vec-add
              (vec-bwand
               (x128 (int32_t (bv 1 32)))
               (vec-div
                t191
                (x128 (int32_t (bv 128 32)))))
              (vec-div
               t191
               (x128 (int32_t (bv 256 32)))))
             (x128 (int32_t (bv 32767 32))))
            (x128 (int32_t (bv -32768 32))))))
         (int32x128
          (x128 (int16_t (bv 128 16)))))
        (x128 (int32_t (bv 32767 32))))
       (x128 (int32_t (bv -32768 32)))))
     (x128 (int16_t (bv 255 16))))
    (x128 (int16_t (bv 0 16)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")