#lang rosette/safe

(require rake)
(init-logging "expr_19.runtimes")

(define-symbolic-buffer t1183-buf uint8_t)
(define-symbolic-buffer t1181-buf uint8_t)
(define-symbolic-buffer t1178-buf uint8_t)
(define-symbolic-buffer t1179-buf uint8_t)
(define-symbolic-buffer t1177-buf uint8_t)
(define-symbolic-buffer t1180-buf uint8_t)
(define-symbolic-buffer t1182-buf uint8_t)
(define t1183 (load t1183-buf (ramp 0 1 128) (aligned 0 0)))
(define t1181 (load t1181-buf (ramp 0 1 128) (aligned 0 0)))
(define t1178 (load t1178-buf (ramp 0 1 128) (aligned 0 0)))
(define t1179 (load t1179-buf (ramp 0 1 128) (aligned 0 0)))
(define t1177 (load t1177-buf (ramp 0 1 128) (aligned 0 0)))
(define t1180 (load t1180-buf (ramp 0 1 128) (aligned 0 0)))
(define t1182 (load t1182-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1183-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1181-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1178-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1179-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1177-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1180-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1182-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1180
    t1181)
   (vec-max
    (vec-min
     (vec-max
      t1182
      t1183)
     (vec-max
      (vec-min
       (vec-max
        t1177
        t1179)
       t1178)
      (vec-min
       t1177
       t1179)))
    (vec-min
     t1182
     t1183)))
  (vec-min
   t1180
   t1181)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_19.out")