#lang rosette/safe

(require rake)
(init-logging "expr_12.runtimes")

(define-symbolic-buffer t307-buf uint8_t)
(define-symbolic-buffer t309-buf uint8_t)
(define-symbolic-buffer t299-buf uint8_t)
(define-symbolic-buffer t305-buf uint8_t)
(define-symbolic-buffer t304-buf uint8_t)
(define-symbolic-buffer t308-buf uint8_t)
(define-symbolic-buffer t306-buf uint8_t)
(define-symbolic-buffer t303-buf uint8_t)
(define-symbolic-buffer t301-buf uint8_t)
(define t307 (load t307-buf (ramp 0 1 16) (aligned 0 0)))
(define t309 (load t309-buf (ramp 0 1 16) (aligned 0 0)))
(define t299 (load t299-buf (ramp 0 1 16) (aligned 0 0)))
(define t305 (load t305-buf (ramp 0 1 16) (aligned 0 0)))
(define t304 (load t304-buf (ramp 0 1 16) (aligned 0 0)))
(define t308 (load t308-buf (ramp 0 1 16) (aligned 0 0)))
(define t306 (load t306-buf (ramp 0 1 16) (aligned 0 0)))
(define t303 (load t303-buf (ramp 0 1 16) (aligned 0 0)))
(define t301 (load t301-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t307-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t309-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t299-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t305-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t304-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t308-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t306-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t303-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t301-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-min
  (vec-max
   (vec-max
    t299
    t301)
   t303)
  (vec-min
   (vec-max
    (vec-max
     t304
     t305)
    t306)
   (vec-max
    (vec-max
     t307
     t308)
    t309))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_12.out")