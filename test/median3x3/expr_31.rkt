#lang rosette/safe

(require rake)
(init-logging "expr_31.runtimes")

(define-symbolic-buffer t1229-buf uint8_t)
(define-symbolic-buffer t1236-buf uint8_t)
(define-symbolic-buffer t1235-buf uint8_t)
(define-symbolic-buffer t1239-buf uint8_t)
(define-symbolic-buffer t1231-buf uint8_t)
(define-symbolic-buffer t1238-buf uint8_t)
(define-symbolic-buffer t1233-buf uint8_t)
(define-symbolic-buffer t1234-buf uint8_t)
(define-symbolic-buffer t1237-buf uint8_t)
(define t1229 (load t1229-buf (ramp 0 1 128) (aligned 0 0)))
(define t1236 (load t1236-buf (ramp 0 1 128) (aligned 0 0)))
(define t1235 (load t1235-buf (ramp 0 1 128) (aligned 0 0)))
(define t1239 (load t1239-buf (ramp 0 1 128) (aligned 0 0)))
(define t1231 (load t1231-buf (ramp 0 1 128) (aligned 0 0)))
(define t1238 (load t1238-buf (ramp 0 1 128) (aligned 0 0)))
(define t1233 (load t1233-buf (ramp 0 1 128) (aligned 0 0)))
(define t1234 (load t1234-buf (ramp 0 1 128) (aligned 0 0)))
(define t1237 (load t1237-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1229-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1236-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1235-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1239-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1231-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1238-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1233-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1234-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1237-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1234
     t1235)
    t1236)
   (vec-min
    (vec-min
     t1237
     t1238)
    t1239))
  (vec-min
   (vec-min
    t1229
    t1231)
   t1233)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_31.out")