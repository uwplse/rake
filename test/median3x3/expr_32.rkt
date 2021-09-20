#lang rosette/safe

(require rake)
(init-logging "expr_32.runtimes")

(define-symbolic-buffer t1229-buf uint8_t)
(define-symbolic-buffer t1233-buf uint8_t)
(define-symbolic-buffer t1231-buf uint8_t)
(define t1229 (load t1229-buf (ramp 0 1 128) (aligned 0 0)))
(define t1233 (load t1233-buf (ramp 0 1 128) (aligned 0 0)))
(define t1231 (load t1231-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1229-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1233-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1231-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1229
    t1233)
   t1231)
  (vec-min
   t1229
   t1233)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_32.out")