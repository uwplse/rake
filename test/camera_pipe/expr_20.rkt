#lang rosette/safe

(require rake)

(define-symbolic-buffer f27 int16_t)
(define-symbolic-buffer t4395-buf uint8_t)
(define-symbolic-buffer t4397-buf uint8_t)
(define t4395 (load t4395-buf (ramp 0 1 128) (aligned 0 0)))
(define t4397 (load t4397-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from f27 (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t4395-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t4397-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t3726 (load f27 (ramp 256 1 128) (aligned 0 256)))
(define t3727 t4395)

(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (vec-mod
      t3726
      (x128 (int16_t (bv 8 16))))
     (int16x128
      (vec-sub
       t4397
       t3727)))
    (int16x128
     (vec-shl
      (uint16x128
       t3727)
      (x128 (uint16_t (bv 3 16))))))
   (x128 (int16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_20.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)