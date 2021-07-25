#lang rosette/safe

(require rake)
(init-logging "expr_18.runtimes")

(define-symbolic-buffer t1176-buf uint8_t)
(define-symbolic-buffer t1175-buf uint8_t)
(define-symbolic-buffer t1174-buf uint8_t)
(define t1176 (load t1176-buf (ramp 0 1 128) (aligned 0 0)))
(define t1175 (load t1175-buf (ramp 0 1 128) (aligned 0 0)))
(define t1174 (load t1174-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1176-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1175-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1174-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1174
    t1176)
   t1175)
  (vec-min
   t1174
   t1176)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_18.out")