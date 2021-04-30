#lang rosette/safe

(require rake)

(define-symbolic-buffer f27 int16_t)
(define-symbolic-buffer t4405-buf uint8_t)
(define-symbolic-buffer t4407-buf uint8_t)
(define t4405 (load t4405-buf (ramp 0 1 128) (aligned 0 0)))
(define t4407 (load t4407-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from f27 (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t4405-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t4407-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t3730 (load f27 (ramp 128 1 128) (aligned 0 128)))
(define t3731 t4405)

(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (vec-mod
      t3730
      (x128 (int16_t (bv 8 16))))
     (int16x128
      (vec-sub
       t4407
       t3731)))
    (int16x128
     (vec-shl
      (uint16x128
       t3731)
      (x128 (uint16_t (bv 3 16))))))
   (x128 (int16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_22.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)