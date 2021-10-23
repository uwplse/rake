#lang rosette/safe

(require rake)
(init-logging "expr_21.runtimes")

(define-symbolic-buffer t325-buf uint8_t)
(define-symbolic-buffer t326-buf uint8_t)
(define-symbolic-buffer t330-buf uint8_t)
(define-symbolic-buffer t327-buf uint8_t)
(define-symbolic-buffer t324-buf uint8_t)
(define-symbolic-buffer t329-buf uint8_t)
(define-symbolic-buffer t328-buf uint8_t)
(define t325 (load t325-buf (ramp 0 1 16) (aligned 0 0)))
(define t326 (load t326-buf (ramp 0 1 16) (aligned 0 0)))
(define t330 (load t330-buf (ramp 0 1 16) (aligned 0 0)))
(define t327 (load t327-buf (ramp 0 1 16) (aligned 0 0)))
(define t324 (load t324-buf (ramp 0 1 16) (aligned 0 0)))
(define t329 (load t329-buf (ramp 0 1 16) (aligned 0 0)))
(define t328 (load t328-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t325-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t326-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t330-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t327-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t324-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t329-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t328-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t327
    t328)
   (vec-max
    (vec-min
     (vec-max
      t329
      t330)
     (vec-max
      (vec-min
       (vec-max
        t324
        t326)
       t325)
      (vec-min
       t324
       t326)))
    (vec-min
     t329
     t330)))
  (vec-min
   t327
   t328)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_21.out")