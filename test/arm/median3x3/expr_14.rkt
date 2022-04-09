#lang rosette/safe

(require rake)
(init-logging "expr_14.runtimes")

(define-symbolic-buffer t299-buf uint8_t)
(define-symbolic-buffer t303-buf uint8_t)
(define-symbolic-buffer t301-buf uint8_t)
(define t299 (load t299-buf (ramp 0 1 16) (aligned 0 0)))
(define t303 (load t303-buf (ramp 0 1 16) (aligned 0 0)))
(define t301 (load t301-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t299-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t303-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t301-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t299
    t303)
   t301)
  (vec-min
   t299
   t303)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_14.out")