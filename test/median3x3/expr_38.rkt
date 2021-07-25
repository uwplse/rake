#lang rosette/safe

(require rake)
(init-logging "expr_38.runtimes")

(define-symbolic-buffer t1255-buf uint8_t)
(define-symbolic-buffer t1254-buf uint8_t)
(define-symbolic-buffer t1256-buf uint8_t)
(define t1255 (load t1255-buf (ramp 0 1 128) (aligned 0 0)))
(define t1254 (load t1254-buf (ramp 0 1 128) (aligned 0 0)))
(define t1256 (load t1256-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1255-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1254-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1256-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1254
    t1256)
   t1255)
  (vec-min
   t1254
   t1256)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_38.out")