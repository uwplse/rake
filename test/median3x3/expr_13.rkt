#lang rosette/safe

(require rake)
(init-logging "expr_13.runtimes")

(define-symbolic-buffer t1155-buf uint8_t)
(define-symbolic-buffer t1153-buf uint8_t)
(define-symbolic-buffer t1154-buf uint8_t)
(define t1155 (load t1155-buf (ramp 0 1 128) (aligned 0 0)))
(define t1153 (load t1153-buf (ramp 0 1 128) (aligned 0 0)))
(define t1154 (load t1154-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1155-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1153-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1154-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1153
    t1155)
   t1154)
  (vec-min
   t1153
   t1155)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_13.out")