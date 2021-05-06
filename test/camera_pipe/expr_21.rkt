#lang rosette/safe

(require rake)

(define-symbolic-buffer f27 int16_t)
(define-symbolic-buffer t3235-buf uint8_t)
(define-symbolic-buffer t3234-buf uint8_t)
(define t3235 (load t3235-buf (ramp 0 1 128) (aligned 0 0)))
(define t3234 (load t3234-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t3235-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3234-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t2680 (load f27 (ramp 512 1 128) (aligned 0 512)))
(define t2681 t3234)

(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (vec-mod
      t2680
      (x128 (int16_t (bv 8 16))))
     (int16x128
      (vec-sub
       t3235
       t2681)))
    (int16x128
     (vec-shl
      (uint16x128
       t2681)
      (x128 (uint16_t (bv 3 16))))))
   (x128 (int16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_21.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)