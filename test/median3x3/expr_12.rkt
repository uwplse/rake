#lang rosette/safe

(require rake)
(init-logging "expr_12.runtimes")

(define-symbolic-buffer t1150-buf uint8_t)
(define-symbolic-buffer t1152-buf uint8_t)
(define-symbolic-buffer t1148-buf uint8_t)
(define t1150 (load t1150-buf (ramp 0 1 128) (aligned 0 0)))
(define t1152 (load t1152-buf (ramp 0 1 128) (aligned 0 0)))
(define t1148 (load t1148-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1150-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1152-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1148-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1148
    t1152)
   t1150)
  (vec-min
   t1148
   t1152)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_12.out")