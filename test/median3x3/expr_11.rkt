#lang rosette/safe

(require rake)
(init-logging "expr_11.runtimes")

(define-symbolic-buffer t1158-buf uint8_t)
(define-symbolic-buffer t1150-buf uint8_t)
(define-symbolic-buffer t1154-buf uint8_t)
(define-symbolic-buffer t1155-buf uint8_t)
(define-symbolic-buffer t1152-buf uint8_t)
(define-symbolic-buffer t1153-buf uint8_t)
(define-symbolic-buffer t1156-buf uint8_t)
(define-symbolic-buffer t1157-buf uint8_t)
(define-symbolic-buffer t1148-buf uint8_t)
(define t1158 (load t1158-buf (ramp 0 1 128) (aligned 0 0)))
(define t1150 (load t1150-buf (ramp 0 1 128) (aligned 0 0)))
(define t1154 (load t1154-buf (ramp 0 1 128) (aligned 0 0)))
(define t1155 (load t1155-buf (ramp 0 1 128) (aligned 0 0)))
(define t1152 (load t1152-buf (ramp 0 1 128) (aligned 0 0)))
(define t1153 (load t1153-buf (ramp 0 1 128) (aligned 0 0)))
(define t1156 (load t1156-buf (ramp 0 1 128) (aligned 0 0)))
(define t1157 (load t1157-buf (ramp 0 1 128) (aligned 0 0)))
(define t1148 (load t1148-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1158-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1150-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1154-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1155-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1152-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1153-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1156-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1157-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1148-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1153
     t1154)
    t1155)
   (vec-min
    (vec-min
     t1156
     t1157)
    t1158))
  (vec-min
   (vec-min
    t1148
    t1150)
   t1152)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_11.out")