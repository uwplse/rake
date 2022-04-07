#lang rosette/safe

(require rake)
(init-logging "median3x3_expr_18.runtimes")

(define-symbolic-buffer t316-buf uint8_t)
(define-symbolic-buffer t320-buf uint8_t)
(define-symbolic-buffer t321-buf uint8_t)
(define-symbolic-buffer t322-buf uint8_t)
(define-symbolic-buffer t325-buf uint8_t)
(define-symbolic-buffer t326-buf uint8_t)
(define-symbolic-buffer t323-buf uint8_t)
(define-symbolic-buffer t324-buf uint8_t)
(define-symbolic-buffer t318-buf uint8_t)
(define t316 (load t316-buf (ramp 0 1 16) (aligned 0 0)))
(define t320 (load t320-buf (ramp 0 1 16) (aligned 0 0)))
(define t321 (load t321-buf (ramp 0 1 16) (aligned 0 0)))
(define t322 (load t322-buf (ramp 0 1 16) (aligned 0 0)))
(define t325 (load t325-buf (ramp 0 1 16) (aligned 0 0)))
(define t326 (load t326-buf (ramp 0 1 16) (aligned 0 0)))
(define t323 (load t323-buf (ramp 0 1 16) (aligned 0 0)))
(define t324 (load t324-buf (ramp 0 1 16) (aligned 0 0)))
(define t318 (load t318-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t316-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t320-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t321-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t322-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t325-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t326-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t323-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t324-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t318-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t321
     t322)
    t323)
   (vec-min
    (vec-min
     t324
     t325)
    t326))
  (vec-min
   (vec-min
    t316
    t318)
   t320)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "median3x3_sexp_18.out")