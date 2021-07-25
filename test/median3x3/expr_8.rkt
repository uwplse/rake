#lang rosette/safe

(require rake)
(init-logging "expr_8.runtimes")

(define-symbolic-buffer t1133-buf uint8_t)
(define-symbolic-buffer t1134-buf uint8_t)
(define-symbolic-buffer t1132-buf uint8_t)
(define t1133 (load t1133-buf (ramp 0 1 128) (aligned 0 0)))
(define t1134 (load t1134-buf (ramp 0 1 128) (aligned 0 0)))
(define t1132 (load t1132-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1133-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1134-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1132-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1132
    t1134)
   t1133)
  (vec-min
   t1132
   t1134)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_8.out")