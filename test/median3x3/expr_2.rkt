#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer t1106-buf uint8_t)
(define-symbolic-buffer t1110-buf uint8_t)
(define-symbolic-buffer t1108-buf uint8_t)
(define t1106 (load t1106-buf (ramp 0 1 128) (aligned 0 0)))
(define t1110 (load t1110-buf (ramp 0 1 128) (aligned 0 0)))
(define t1108 (load t1108-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1106-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1110-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1108-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1106
    t1110)
   t1108)
  (vec-min
   t1106
   t1110)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")