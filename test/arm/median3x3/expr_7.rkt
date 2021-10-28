#lang rosette/safe

(require rake)
(init-logging "expr_7.runtimes")

(define-symbolic-buffer t288-buf uint8_t)
(define-symbolic-buffer t291-buf uint8_t)
(define-symbolic-buffer t287-buf uint8_t)
(define-symbolic-buffer t284-buf uint8_t)
(define-symbolic-buffer t286-buf uint8_t)
(define-symbolic-buffer t289-buf uint8_t)
(define-symbolic-buffer t292-buf uint8_t)
(define-symbolic-buffer t282-buf uint8_t)
(define-symbolic-buffer t290-buf uint8_t)
(define t288 (load t288-buf (ramp 0 1 16) (aligned 0 0)))
(define t291 (load t291-buf (ramp 0 1 16) (aligned 0 0)))
(define t287 (load t287-buf (ramp 0 1 16) (aligned 0 0)))
(define t284 (load t284-buf (ramp 0 1 16) (aligned 0 0)))
(define t286 (load t286-buf (ramp 0 1 16) (aligned 0 0)))
(define t289 (load t289-buf (ramp 0 1 16) (aligned 0 0)))
(define t292 (load t292-buf (ramp 0 1 16) (aligned 0 0)))
(define t282 (load t282-buf (ramp 0 1 16) (aligned 0 0)))
(define t290 (load t290-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t288-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t291-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t287-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t284-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t286-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t289-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t292-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t282-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t290-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-min
  (vec-max
   (vec-max
    t282
    t284)
   t286)
  (vec-min
   (vec-max
    (vec-max
     t287
     t288)
    t289)
   (vec-max
    (vec-max
     t290
     t291)
    t292))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_7.out")