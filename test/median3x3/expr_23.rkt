#lang rosette/safe

(require rake)
(init-logging "expr_23.runtimes")

(define-symbolic-buffer t1194-buf uint8_t)
(define-symbolic-buffer t1196-buf uint8_t)
(define-symbolic-buffer t1195-buf uint8_t)
(define t1194 (load t1194-buf (ramp 0 1 128) (aligned 0 0)))
(define t1196 (load t1196-buf (ramp 0 1 128) (aligned 0 0)))
(define t1195 (load t1195-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1194-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1196-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1195-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1194
    t1196)
   t1195)
  (vec-min
   t1194
   t1196)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_23.out")