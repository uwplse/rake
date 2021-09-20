#lang rosette/safe

(require rake)
(init-logging "expr_17.runtimes")

(define-symbolic-buffer t1168-buf uint8_t)
(define-symbolic-buffer t1171-buf uint8_t)
(define-symbolic-buffer t1173-buf uint8_t)
(define t1168 (load t1168-buf (ramp 0 1 128) (aligned 0 0)))
(define t1171 (load t1171-buf (ramp 0 1 128) (aligned 0 0)))
(define t1173 (load t1173-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1168-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1171-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1173-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1168
    t1173)
   t1171)
  (vec-min
   t1168
   t1173)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_17.out")