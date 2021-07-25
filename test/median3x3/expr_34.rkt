#lang rosette/safe

(require rake)
(init-logging "expr_34.runtimes")

(define-symbolic-buffer t1243-buf uint8_t)
(define-symbolic-buffer t1242-buf uint8_t)
(define-symbolic-buffer t1239-buf uint8_t)
(define-symbolic-buffer t1238-buf uint8_t)
(define-symbolic-buffer t1240-buf uint8_t)
(define-symbolic-buffer t1241-buf uint8_t)
(define-symbolic-buffer t1237-buf uint8_t)
(define t1243 (load t1243-buf (ramp 0 1 128) (aligned 0 0)))
(define t1242 (load t1242-buf (ramp 0 1 128) (aligned 0 0)))
(define t1239 (load t1239-buf (ramp 0 1 128) (aligned 0 0)))
(define t1238 (load t1238-buf (ramp 0 1 128) (aligned 0 0)))
(define t1240 (load t1240-buf (ramp 0 1 128) (aligned 0 0)))
(define t1241 (load t1241-buf (ramp 0 1 128) (aligned 0 0)))
(define t1237 (load t1237-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1243-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1242-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1239-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1238-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1240-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1241-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1237-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1240
    t1241)
   (vec-max
    (vec-min
     (vec-max
      t1242
      t1243)
     (vec-max
      (vec-min
       (vec-max
        t1237
        t1239)
       t1238)
      (vec-min
       t1237
       t1239)))
    (vec-min
     t1242
     t1243)))
  (vec-min
   t1240
   t1241)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_34.out")