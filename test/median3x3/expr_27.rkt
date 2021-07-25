#lang rosette/safe

(require rake)
(init-logging "expr_27.runtimes")

(define-symbolic-buffer t1209-buf uint8_t)
(define-symbolic-buffer t1211-buf uint8_t)
(define-symbolic-buffer t1213-buf uint8_t)
(define t1209 (load t1209-buf (ramp 0 1 128) (aligned 0 0)))
(define t1211 (load t1211-buf (ramp 0 1 128) (aligned 0 0)))
(define t1213 (load t1213-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1209-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1211-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1213-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1209
    t1213)
   t1211)
  (vec-min
   t1209
   t1213)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_27.out")