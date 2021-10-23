#lang rosette/safe

(require rake)
(init-logging "expr_20.runtimes")

(define-symbolic-buffer t322-buf uint8_t)
(define-symbolic-buffer t323-buf uint8_t)
(define-symbolic-buffer t321-buf uint8_t)
(define t322 (load t322-buf (ramp 0 1 16) (aligned 0 0)))
(define t323 (load t323-buf (ramp 0 1 16) (aligned 0 0)))
(define t321 (load t321-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t322-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t323-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t321-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t321
    t323)
   t322)
  (vec-min
   t321
   t323)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_20.out")