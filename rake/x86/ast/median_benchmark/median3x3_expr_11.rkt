#lang rosette/safe

(require rake)
(init-logging "median3x3_expr_11.runtimes")

(define-symbolic-buffer t295-buf uint8_t)
(define-symbolic-buffer t296-buf uint8_t)
(define-symbolic-buffer t291-buf uint8_t)
(define-symbolic-buffer t292-buf uint8_t)
(define-symbolic-buffer t293-buf uint8_t)
(define-symbolic-buffer t294-buf uint8_t)
(define-symbolic-buffer t290-buf uint8_t)
(define t295 (load t295-buf (ramp 0 1 16) (aligned 0 0)))
(define t296 (load t296-buf (ramp 0 1 16) (aligned 0 0)))
(define t291 (load t291-buf (ramp 0 1 16) (aligned 0 0)))
(define t292 (load t292-buf (ramp 0 1 16) (aligned 0 0)))
(define t293 (load t293-buf (ramp 0 1 16) (aligned 0 0)))
(define t294 (load t294-buf (ramp 0 1 16) (aligned 0 0)))
(define t290 (load t290-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t295-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t296-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t291-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t292-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t293-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t294-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t290-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t293
    t294)
   (vec-max
    (vec-min
     (vec-max
      t295
      t296)
     (vec-max
      (vec-min
       (vec-max
        t290
        t292)
       t291)
      (vec-min
       t290
       t292)))
    (vec-min
     t295
     t296)))
  (vec-min
   t293
   t294)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "median3x3_sexp_11.out")