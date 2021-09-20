#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer t1116-buf uint8_t)
(define-symbolic-buffer t1110-buf uint8_t)
(define-symbolic-buffer t1108-buf uint8_t)
(define-symbolic-buffer t1112-buf uint8_t)
(define-symbolic-buffer t1115-buf uint8_t)
(define-symbolic-buffer t1106-buf uint8_t)
(define-symbolic-buffer t1114-buf uint8_t)
(define-symbolic-buffer t1111-buf uint8_t)
(define-symbolic-buffer t1113-buf uint8_t)
(define t1116 (load t1116-buf (ramp 0 1 128) (aligned 0 0)))
(define t1110 (load t1110-buf (ramp 0 1 128) (aligned 0 0)))
(define t1108 (load t1108-buf (ramp 0 1 128) (aligned 0 0)))
(define t1112 (load t1112-buf (ramp 0 1 128) (aligned 0 0)))
(define t1115 (load t1115-buf (ramp 0 1 128) (aligned 0 0)))
(define t1106 (load t1106-buf (ramp 0 1 128) (aligned 0 0)))
(define t1114 (load t1114-buf (ramp 0 1 128) (aligned 0 0)))
(define t1111 (load t1111-buf (ramp 0 1 128) (aligned 0 0)))
(define t1113 (load t1113-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1116-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1110-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1108-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1112-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1115-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1106-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1114-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1111-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1113-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1111
     t1112)
    t1113)
   (vec-min
    (vec-min
     t1114
     t1115)
    t1116))
  (vec-min
   (vec-min
    t1106
    t1108)
   t1110)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")