#lang rosette/safe

(require rake)
(init-logging "expr_28.runtimes")

(define-symbolic-buffer t1214-buf uint8_t)
(define-symbolic-buffer t1215-buf uint8_t)
(define-symbolic-buffer t1216-buf uint8_t)
(define t1214 (load t1214-buf (ramp 0 1 128) (aligned 0 0)))
(define t1215 (load t1215-buf (ramp 0 1 128) (aligned 0 0)))
(define t1216 (load t1216-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1214-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1215-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1216-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1214
    t1216)
   t1215)
  (vec-min
   t1214
   t1216)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_28.out")