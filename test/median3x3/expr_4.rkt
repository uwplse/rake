#lang rosette/safe

(require rake)
(init-logging "expr_4.runtimes")

(define-symbolic-buffer t1118-buf uint8_t)
(define-symbolic-buffer t1119-buf uint8_t)
(define-symbolic-buffer t1114-buf uint8_t)
(define-symbolic-buffer t1115-buf uint8_t)
(define-symbolic-buffer t1116-buf uint8_t)
(define-symbolic-buffer t1120-buf uint8_t)
(define-symbolic-buffer t1117-buf uint8_t)
(define t1118 (load t1118-buf (ramp 0 1 128) (aligned 0 0)))
(define t1119 (load t1119-buf (ramp 0 1 128) (aligned 0 0)))
(define t1114 (load t1114-buf (ramp 0 1 128) (aligned 0 0)))
(define t1115 (load t1115-buf (ramp 0 1 128) (aligned 0 0)))
(define t1116 (load t1116-buf (ramp 0 1 128) (aligned 0 0)))
(define t1120 (load t1120-buf (ramp 0 1 128) (aligned 0 0)))
(define t1117 (load t1117-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1118-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1119-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1114-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1115-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1116-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1120-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1117-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1117
    t1118)
   (vec-max
    (vec-min
     (vec-max
      t1119
      t1120)
     (vec-max
      (vec-min
       (vec-max
        t1114
        t1116)
       t1115)
      (vec-min
       t1114
       t1116)))
    (vec-min
     t1119
     t1120)))
  (vec-min
   t1117
   t1118)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_4.out")