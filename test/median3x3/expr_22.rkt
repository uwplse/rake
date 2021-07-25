#lang rosette/safe

(require rake)
(init-logging "expr_22.runtimes")

(define-symbolic-buffer t1191-buf uint8_t)
(define-symbolic-buffer t1193-buf uint8_t)
(define-symbolic-buffer t1189-buf uint8_t)
(define t1191 (load t1191-buf (ramp 0 1 128) (aligned 0 0)))
(define t1193 (load t1193-buf (ramp 0 1 128) (aligned 0 0)))
(define t1189 (load t1189-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1191-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1193-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1189-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1189
    t1193)
   t1191)
  (vec-min
   t1189
   t1193)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_22.out")