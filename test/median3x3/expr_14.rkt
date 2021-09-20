#lang rosette/safe

(require rake)
(init-logging "expr_14.runtimes")

(define-symbolic-buffer t1160-buf uint8_t)
(define-symbolic-buffer t1158-buf uint8_t)
(define-symbolic-buffer t1159-buf uint8_t)
(define-symbolic-buffer t1162-buf uint8_t)
(define-symbolic-buffer t1157-buf uint8_t)
(define-symbolic-buffer t1161-buf uint8_t)
(define-symbolic-buffer t1156-buf uint8_t)
(define t1160 (load t1160-buf (ramp 0 1 128) (aligned 0 0)))
(define t1158 (load t1158-buf (ramp 0 1 128) (aligned 0 0)))
(define t1159 (load t1159-buf (ramp 0 1 128) (aligned 0 0)))
(define t1162 (load t1162-buf (ramp 0 1 128) (aligned 0 0)))
(define t1157 (load t1157-buf (ramp 0 1 128) (aligned 0 0)))
(define t1161 (load t1161-buf (ramp 0 1 128) (aligned 0 0)))
(define t1156 (load t1156-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1160-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1158-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1159-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1162-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1157-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1161-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1156-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1159
    t1160)
   (vec-max
    (vec-min
     (vec-max
      t1161
      t1162)
     (vec-max
      (vec-min
       (vec-max
        t1156
        t1158)
       t1157)
      (vec-min
       t1156
       t1158)))
    (vec-min
     t1161
     t1162)))
  (vec-min
   t1159
   t1160)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_14.out")