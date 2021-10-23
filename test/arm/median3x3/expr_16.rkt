#lang rosette/safe

(require rake)
(init-logging "expr_16.runtimes")

(define-symbolic-buffer t307-buf uint8_t)
(define-symbolic-buffer t309-buf uint8_t)
(define-symbolic-buffer t313-buf uint8_t)
(define-symbolic-buffer t308-buf uint8_t)
(define-symbolic-buffer t310-buf uint8_t)
(define-symbolic-buffer t311-buf uint8_t)
(define-symbolic-buffer t312-buf uint8_t)
(define t307 (load t307-buf (ramp 0 1 16) (aligned 0 0)))
(define t309 (load t309-buf (ramp 0 1 16) (aligned 0 0)))
(define t313 (load t313-buf (ramp 0 1 16) (aligned 0 0)))
(define t308 (load t308-buf (ramp 0 1 16) (aligned 0 0)))
(define t310 (load t310-buf (ramp 0 1 16) (aligned 0 0)))
(define t311 (load t311-buf (ramp 0 1 16) (aligned 0 0)))
(define t312 (load t312-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t307-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t309-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t313-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t308-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t310-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t311-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t312-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t310
    t311)
   (vec-max
    (vec-min
     (vec-max
      t312
      t313)
     (vec-max
      (vec-min
       (vec-max
        t307
        t309)
       t308)
      (vec-min
       t307
       t309)))
    (vec-min
     t312
     t313)))
  (vec-min
   t310
   t311)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_16.out")