#lang rosette/safe

(require rake)
(init-logging "expr_6.runtimes")

(define-symbolic-buffer t1133-buf uint8_t)
(define-symbolic-buffer t1135-buf uint8_t)
(define-symbolic-buffer t1134-buf uint8_t)
(define-symbolic-buffer t1137-buf uint8_t)
(define-symbolic-buffer t1131-buf uint8_t)
(define-symbolic-buffer t1132-buf uint8_t)
(define-symbolic-buffer t1136-buf uint8_t)
(define-symbolic-buffer t1129-buf uint8_t)
(define-symbolic-buffer t1127-buf uint8_t)
(define t1133 (load t1133-buf (ramp 0 1 128) (aligned 0 0)))
(define t1135 (load t1135-buf (ramp 0 1 128) (aligned 0 0)))
(define t1134 (load t1134-buf (ramp 0 1 128) (aligned 0 0)))
(define t1137 (load t1137-buf (ramp 0 1 128) (aligned 0 0)))
(define t1131 (load t1131-buf (ramp 0 1 128) (aligned 0 0)))
(define t1132 (load t1132-buf (ramp 0 1 128) (aligned 0 0)))
(define t1136 (load t1136-buf (ramp 0 1 128) (aligned 0 0)))
(define t1129 (load t1129-buf (ramp 0 1 128) (aligned 0 0)))
(define t1127 (load t1127-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1133-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1135-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1134-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1137-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1131-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1132-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1136-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1129-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1127-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1132
     t1133)
    t1134)
   (vec-min
    (vec-min
     t1135
     t1136)
    t1137))
  (vec-min
   (vec-min
    t1127
    t1129)
   t1131)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_6.out")