#lang rosette/safe

(require rake)
(init-logging "expr_9.runtimes")

(define-symbolic-buffer t1140-buf uint8_t)
(define-symbolic-buffer t1138-buf uint8_t)
(define-symbolic-buffer t1135-buf uint8_t)
(define-symbolic-buffer t1139-buf uint8_t)
(define-symbolic-buffer t1137-buf uint8_t)
(define-symbolic-buffer t1141-buf uint8_t)
(define-symbolic-buffer t1136-buf uint8_t)
(define t1140 (load t1140-buf (ramp 0 1 128) (aligned 0 0)))
(define t1138 (load t1138-buf (ramp 0 1 128) (aligned 0 0)))
(define t1135 (load t1135-buf (ramp 0 1 128) (aligned 0 0)))
(define t1139 (load t1139-buf (ramp 0 1 128) (aligned 0 0)))
(define t1137 (load t1137-buf (ramp 0 1 128) (aligned 0 0)))
(define t1141 (load t1141-buf (ramp 0 1 128) (aligned 0 0)))
(define t1136 (load t1136-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1140-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1138-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1135-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1139-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1137-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1141-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1136-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1138
    t1139)
   (vec-max
    (vec-min
     (vec-max
      t1140
      t1141)
     (vec-max
      (vec-min
       (vec-max
        t1135
        t1137)
       t1136)
      (vec-min
       t1135
       t1137)))
    (vec-min
     t1140
     t1141)))
  (vec-min
   t1138
   t1139)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_9.out")