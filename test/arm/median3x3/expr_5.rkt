#lang rosette/safe

(require rake)
(init-logging "expr_5.runtimes")

(define-symbolic-buffer t272-buf uint8_t)
(define-symbolic-buffer t271-buf uint8_t)
(define-symbolic-buffer t270-buf uint8_t)
(define t272 (load t272-buf (ramp 0 1 16) (aligned 0 0)))
(define t271 (load t271-buf (ramp 0 1 16) (aligned 0 0)))
(define t270 (load t270-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t272-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t271-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t270-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t270
    t272)
   t271)
  (vec-min
   t270
   t272)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_5.out")