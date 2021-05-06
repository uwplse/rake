#lang rosette/safe

(require rake)

(define-symbolic-buffer f27 int16_t)
(define-symbolic-buffer t3231-buf uint8_t)
(define-symbolic-buffer t3230-buf uint8_t)
(define t3231 (load t3231-buf (ramp 0 1 128) (aligned 0 0)))
(define t3230 (load t3230-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t3231-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3230-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t2678 (load f27 (ramp 256 1 128) (aligned 0 256)))
(define t2679 t3230)

(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (vec-mod
      t2678
      (x128 (int16_t (bv 8 16))))
     (int16x128
      (vec-sub
       t3231
       t2679)))
    (int16x128
     (vec-shl
      (uint16x128
       t2679)
      (x128 (uint16_t (bv 3 16))))))
   (x128 (int16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_20.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)