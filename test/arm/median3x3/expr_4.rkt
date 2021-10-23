#lang rosette/safe

(require rake)
(init-logging "expr_4.runtimes")

(define-symbolic-buffer t265-buf uint8_t)
(define-symbolic-buffer t267-buf uint8_t)
(define-symbolic-buffer t269-buf uint8_t)
(define t265 (load t265-buf (ramp 0 1 16) (aligned 0 0)))
(define t267 (load t267-buf (ramp 0 1 16) (aligned 0 0)))
(define t269 (load t269-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t265-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t267-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t269-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t265
    t269)
   t267)
  (vec-min
   t265
   t269)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_4.out")