#lang rosette/safe

(require rake)

(define-symbolic-buffer f27 int16_t)
(define-symbolic-buffer t3238-buf uint8_t)
(define-symbolic-buffer t3239-buf uint8_t)
(define t3238 (load t3238-buf (ramp 0 1 128) (aligned 0 0)))
(define t3239 (load t3239-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t3238-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3239-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t2682 (load f27 (ramp 128 1 128) (aligned 0 128)))
(define t2683 t3238)

(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (vec-mod
      t2682
      (x128 (int16_t (bv 8 16))))
     (int16x128
      (vec-sub
       t3239
       t2683)))
    (int16x128
     (vec-shl
      (uint16x128
       t2683)
      (x128 (uint16_t (bv 3 16))))))
   (x128 (int16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_22.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)