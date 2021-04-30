#lang rosette/safe

(require rake)

(define-symbolic-buffer f27 int16_t)
(define-symbolic-buffer t4415-buf uint8_t)
(define-symbolic-buffer t4417-buf uint8_t)
(define t4415 (load t4415-buf (ramp 0 1 128) (aligned 0 0)))
(define t4417 (load t4417-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from f27 (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t4415-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t4417-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t3734 (load f27 (ramp 640 1 128) (aligned 0 640)))
(define t3735 t4415)

(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (vec-mod
      t3734
      (x128 (int16_t (bv 8 16))))
     (int16x128
      (vec-sub
       t4417
       t3735)))
    (int16x128
     (vec-shl
      (uint16x128
       t3735)
      (x128 (uint16_t (bv 3 16))))))
   (x128 (int16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_24.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)