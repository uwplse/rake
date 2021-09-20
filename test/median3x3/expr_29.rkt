#lang rosette/safe

(require rake)
(init-logging "expr_29.runtimes")

(define-symbolic-buffer t1219-buf uint8_t)
(define-symbolic-buffer t1222-buf uint8_t)
(define-symbolic-buffer t1220-buf uint8_t)
(define-symbolic-buffer t1223-buf uint8_t)
(define-symbolic-buffer t1221-buf uint8_t)
(define-symbolic-buffer t1218-buf uint8_t)
(define-symbolic-buffer t1217-buf uint8_t)
(define t1219 (load t1219-buf (ramp 0 1 128) (aligned 0 0)))
(define t1222 (load t1222-buf (ramp 0 1 128) (aligned 0 0)))
(define t1220 (load t1220-buf (ramp 0 1 128) (aligned 0 0)))
(define t1223 (load t1223-buf (ramp 0 1 128) (aligned 0 0)))
(define t1221 (load t1221-buf (ramp 0 1 128) (aligned 0 0)))
(define t1218 (load t1218-buf (ramp 0 1 128) (aligned 0 0)))
(define t1217 (load t1217-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1219-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1222-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1220-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1223-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1221-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1218-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1217-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1220
    t1221)
   (vec-max
    (vec-min
     (vec-max
      t1222
      t1223)
     (vec-max
      (vec-min
       (vec-max
        t1217
        t1219)
       t1218)
      (vec-min
       t1217
       t1219)))
    (vec-min
     t1222
     t1223)))
  (vec-min
   t1220
   t1221)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_29.out")