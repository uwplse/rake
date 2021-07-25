#lang rosette/safe

(require rake)
(init-logging "expr_37.runtimes")

(define-symbolic-buffer t1248-buf uint8_t)
(define-symbolic-buffer t1251-buf uint8_t)
(define-symbolic-buffer t1253-buf uint8_t)
(define t1248 (load t1248-buf (ramp 0 1 128) (aligned 0 0)))
(define t1251 (load t1251-buf (ramp 0 1 128) (aligned 0 0)))
(define t1253 (load t1253-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1248-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1251-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1253-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1248
    t1253)
   t1251)
  (vec-min
   t1248
   t1253)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_37.out")