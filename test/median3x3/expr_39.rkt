#lang rosette/safe

(require rake)
(init-logging "expr_39.runtimes")

(define-symbolic-buffer t1261-buf uint8_t)
(define-symbolic-buffer t1257-buf uint8_t)
(define-symbolic-buffer t1259-buf uint8_t)
(define-symbolic-buffer t1260-buf uint8_t)
(define-symbolic-buffer t1258-buf uint8_t)
(define-symbolic-buffer t1262-buf uint8_t)
(define-symbolic-buffer t1263-buf uint8_t)
(define t1261 (load t1261-buf (ramp 0 1 128) (aligned 0 0)))
(define t1257 (load t1257-buf (ramp 0 1 128) (aligned 0 0)))
(define t1259 (load t1259-buf (ramp 0 1 128) (aligned 0 0)))
(define t1260 (load t1260-buf (ramp 0 1 128) (aligned 0 0)))
(define t1258 (load t1258-buf (ramp 0 1 128) (aligned 0 0)))
(define t1262 (load t1262-buf (ramp 0 1 128) (aligned 0 0)))
(define t1263 (load t1263-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1261-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1257-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1259-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1260-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1258-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1262-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1263-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1260
    t1261)
   (vec-max
    (vec-min
     (vec-max
      t1262
      t1263)
     (vec-max
      (vec-min
       (vec-max
        t1257
        t1259)
       t1258)
      (vec-min
       t1257
       t1259)))
    (vec-min
     t1262
     t1263)))
  (vec-min
   t1260
   t1261)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_39.out")