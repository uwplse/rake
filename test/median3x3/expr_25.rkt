#lang rosette/safe

(require rake)
(init-logging "expr_25.runtimes")

(define-symbolic-buffer t1209-buf uint8_t)
(define-symbolic-buffer t1214-buf uint8_t)
(define-symbolic-buffer t1218-buf uint8_t)
(define-symbolic-buffer t1217-buf uint8_t)
(define-symbolic-buffer t1211-buf uint8_t)
(define-symbolic-buffer t1219-buf uint8_t)
(define-symbolic-buffer t1215-buf uint8_t)
(define-symbolic-buffer t1213-buf uint8_t)
(define-symbolic-buffer t1216-buf uint8_t)
(define t1209 (load t1209-buf (ramp 0 1 128) (aligned 0 0)))
(define t1214 (load t1214-buf (ramp 0 1 128) (aligned 0 0)))
(define t1218 (load t1218-buf (ramp 0 1 128) (aligned 0 0)))
(define t1217 (load t1217-buf (ramp 0 1 128) (aligned 0 0)))
(define t1211 (load t1211-buf (ramp 0 1 128) (aligned 0 0)))
(define t1219 (load t1219-buf (ramp 0 1 128) (aligned 0 0)))
(define t1215 (load t1215-buf (ramp 0 1 128) (aligned 0 0)))
(define t1213 (load t1213-buf (ramp 0 1 128) (aligned 0 0)))
(define t1216 (load t1216-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1209-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1214-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1218-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1217-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1211-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1219-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1215-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1213-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1216-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-min
  (vec-max
   (vec-max
    t1209
    t1211)
   t1213)
  (vec-min
   (vec-max
    (vec-max
     t1214
     t1215)
    t1216)
   (vec-max
    (vec-max
     t1217
     t1218)
    t1219))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_25.out")