#lang rosette/safe

(require rake)
(init-logging "expr_7.runtimes")

(define-symbolic-buffer t1131-buf uint8_t)
(define-symbolic-buffer t1127-buf uint8_t)
(define-symbolic-buffer t1129-buf uint8_t)
(define t1131 (load t1131-buf (ramp 0 1 128) (aligned 0 0)))
(define t1127 (load t1127-buf (ramp 0 1 128) (aligned 0 0)))
(define t1129 (load t1129-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1131-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1127-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1129-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1127
    t1131)
   t1129)
  (vec-min
   t1127
   t1131)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_7.out")