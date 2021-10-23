#lang rosette/safe

(require rake)
(init-logging "expr_19.runtimes")

(define-symbolic-buffer t316-buf uint8_t)
(define-symbolic-buffer t318-buf uint8_t)
(define-symbolic-buffer t320-buf uint8_t)
(define t316 (load t316-buf (ramp 0 1 16) (aligned 0 0)))
(define t318 (load t318-buf (ramp 0 1 16) (aligned 0 0)))
(define t320 (load t320-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t316-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t318-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t320-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t316
    t320)
   t318)
  (vec-min
   t316
   t320)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_19.out")