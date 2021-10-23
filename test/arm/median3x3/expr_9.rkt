#lang rosette/safe

(require rake)
(init-logging "expr_9.runtimes")

(define-symbolic-buffer t284-buf uint8_t)
(define-symbolic-buffer t286-buf uint8_t)
(define-symbolic-buffer t282-buf uint8_t)
(define t284 (load t284-buf (ramp 0 1 16) (aligned 0 0)))
(define t286 (load t286-buf (ramp 0 1 16) (aligned 0 0)))
(define t282 (load t282-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t284-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t286-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t282-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t282
    t286)
   t284)
  (vec-min
   t282
   t286)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_9.out")