#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer t1112-buf uint8_t)
(define-symbolic-buffer t1111-buf uint8_t)
(define-symbolic-buffer t1113-buf uint8_t)
(define t1112 (load t1112-buf (ramp 0 1 128) (aligned 0 0)))
(define t1111 (load t1111-buf (ramp 0 1 128) (aligned 0 0)))
(define t1113 (load t1113-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1112-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1111-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1113-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1111
    t1113)
   t1112)
  (vec-min
   t1111
   t1113)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")