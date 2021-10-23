#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer t272-buf uint8_t)
(define-symbolic-buffer t274-buf uint8_t)
(define-symbolic-buffer t273-buf uint8_t)
(define-symbolic-buffer t265-buf uint8_t)
(define-symbolic-buffer t267-buf uint8_t)
(define-symbolic-buffer t271-buf uint8_t)
(define-symbolic-buffer t269-buf uint8_t)
(define-symbolic-buffer t270-buf uint8_t)
(define-symbolic-buffer t275-buf uint8_t)
(define t272 (load t272-buf (ramp 0 1 16) (aligned 0 0)))
(define t274 (load t274-buf (ramp 0 1 16) (aligned 0 0)))
(define t273 (load t273-buf (ramp 0 1 16) (aligned 0 0)))
(define t265 (load t265-buf (ramp 0 1 16) (aligned 0 0)))
(define t267 (load t267-buf (ramp 0 1 16) (aligned 0 0)))
(define t271 (load t271-buf (ramp 0 1 16) (aligned 0 0)))
(define t269 (load t269-buf (ramp 0 1 16) (aligned 0 0)))
(define t270 (load t270-buf (ramp 0 1 16) (aligned 0 0)))
(define t275 (load t275-buf (ramp 0 1 16) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t272-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t274-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t273-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t265-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t267-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t271-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t269-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t270-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t275-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-min
  (vec-max
   (vec-max
    t265
    t267)
   t269)
  (vec-min
   (vec-max
    (vec-max
     t270
     t271)
    t272)
   (vec-max
    (vec-max
     t273
     t274)
    t275))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_2.out")