#lang rosette/safe

(require rake)
(init-logging "expr_10.runtimes")

(define-symbolic-buffer t288-buf uint8_t)
(define-symbolic-buffer t287-buf uint8_t)
(define-symbolic-buffer t289-buf uint8_t)
(define t288 (load t288-buf (ramp 0 1 16) (aligned 0 0)))
(define t287 (load t287-buf (ramp 0 1 16) (aligned 0 0)))
(define t289 (load t289-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t288-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t287-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t289-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t287
    t289)
   t288)
  (vec-min
   t287
   t289)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_10.out")