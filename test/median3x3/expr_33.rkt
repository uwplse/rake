#lang rosette/safe

(require rake)
(init-logging "expr_33.runtimes")

(define-symbolic-buffer t1236-buf uint8_t)
(define-symbolic-buffer t1235-buf uint8_t)
(define-symbolic-buffer t1234-buf uint8_t)
(define t1236 (load t1236-buf (ramp 0 1 128) (aligned 0 0)))
(define t1235 (load t1235-buf (ramp 0 1 128) (aligned 0 0)))
(define t1234 (load t1234-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1236-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1235-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1234-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1234
    t1236)
   t1235)
  (vec-min
   t1234
   t1236)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_33.out")