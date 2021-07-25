#lang rosette/safe

(require rake)
(init-logging "expr_36.runtimes")

(define-symbolic-buffer t1248-buf uint8_t)
(define-symbolic-buffer t1255-buf uint8_t)
(define-symbolic-buffer t1254-buf uint8_t)
(define-symbolic-buffer t1257-buf uint8_t)
(define-symbolic-buffer t1256-buf uint8_t)
(define-symbolic-buffer t1259-buf uint8_t)
(define-symbolic-buffer t1251-buf uint8_t)
(define-symbolic-buffer t1253-buf uint8_t)
(define-symbolic-buffer t1258-buf uint8_t)
(define t1248 (load t1248-buf (ramp 0 1 128) (aligned 0 0)))
(define t1255 (load t1255-buf (ramp 0 1 128) (aligned 0 0)))
(define t1254 (load t1254-buf (ramp 0 1 128) (aligned 0 0)))
(define t1257 (load t1257-buf (ramp 0 1 128) (aligned 0 0)))
(define t1256 (load t1256-buf (ramp 0 1 128) (aligned 0 0)))
(define t1259 (load t1259-buf (ramp 0 1 128) (aligned 0 0)))
(define t1251 (load t1251-buf (ramp 0 1 128) (aligned 0 0)))
(define t1253 (load t1253-buf (ramp 0 1 128) (aligned 0 0)))
(define t1258 (load t1258-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1248-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1255-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1254-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1257-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1256-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1259-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1251-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1253-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1258-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1254
     t1255)
    t1256)
   (vec-min
    (vec-min
     t1257
     t1258)
    t1259))
  (vec-min
   (vec-min
    t1248
    t1251)
   t1253)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_36.out")