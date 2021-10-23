#lang rosette/safe

(require rake)
(init-logging "expr_6.runtimes")

(define-symbolic-buffer t274-buf uint8_t)
(define-symbolic-buffer t276-buf uint8_t)
(define-symbolic-buffer t277-buf uint8_t)
(define-symbolic-buffer t273-buf uint8_t)
(define-symbolic-buffer t279-buf uint8_t)
(define-symbolic-buffer t275-buf uint8_t)
(define-symbolic-buffer t278-buf uint8_t)
(define t274 (load t274-buf (ramp 0 1 16) (aligned 0 0)))
(define t276 (load t276-buf (ramp 0 1 16) (aligned 0 0)))
(define t277 (load t277-buf (ramp 0 1 16) (aligned 0 0)))
(define t273 (load t273-buf (ramp 0 1 16) (aligned 0 0)))
(define t279 (load t279-buf (ramp 0 1 16) (aligned 0 0)))
(define t275 (load t275-buf (ramp 0 1 16) (aligned 0 0)))
(define t278 (load t278-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t274-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t276-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t277-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t273-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t279-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t275-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t278-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t276
    t277)
   (vec-max
    (vec-min
     (vec-max
      t278
      t279)
     (vec-max
      (vec-min
       (vec-max
        t273
        t275)
       t274)
      (vec-min
       t273
       t275)))
    (vec-min
     t278
     t279)))
  (vec-min
   t276
   t277)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_6.out")