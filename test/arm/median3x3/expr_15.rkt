#lang rosette/safe

(require rake)
(init-logging "expr_15.runtimes")

(define-symbolic-buffer t305-buf uint8_t)
(define-symbolic-buffer t304-buf uint8_t)
(define-symbolic-buffer t306-buf uint8_t)
(define t305 (load t305-buf (ramp 0 1 16) (aligned 0 0)))
(define t304 (load t304-buf (ramp 0 1 16) (aligned 0 0)))
(define t306 (load t306-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t305-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t304-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t306-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t304
    t306)
   t305)
  (vec-min
   t304
   t306)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_15.out")