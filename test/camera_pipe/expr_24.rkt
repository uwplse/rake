#lang rosette/safe

(require rake)

(define-symbolic-buffer f27 int16_t)
(define-symbolic-buffer t3246-buf uint8_t)
(define-symbolic-buffer t3247-buf uint8_t)
(define t3246 (load t3246-buf (ramp 0 1 128) (aligned 0 0)))
(define t3247 (load t3247-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t3246-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t3247-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t2686 (load f27 (ramp 640 1 128) (aligned 0 640)))
(define t2687 t3246)

(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (vec-mod
      t2686
      (x128 (int16_t (bv 8 16))))
     (int16x128
      (vec-sub
       t3247
       t2687)))
    (int16x128
     (vec-shl
      (uint16x128
       t2687)
      (x128 (uint16_t (bv 3 16))))))
   (x128 (int16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_24.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)