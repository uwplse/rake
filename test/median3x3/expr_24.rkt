#lang rosette/safe

(require rake)
(init-logging "expr_24.runtimes")

(define-symbolic-buffer t1203-buf uint8_t)
(define-symbolic-buffer t1201-buf uint8_t)
(define-symbolic-buffer t1202-buf uint8_t)
(define-symbolic-buffer t1200-buf uint8_t)
(define-symbolic-buffer t1198-buf uint8_t)
(define-symbolic-buffer t1197-buf uint8_t)
(define-symbolic-buffer t1199-buf uint8_t)
(define t1203 (load t1203-buf (ramp 0 1 128) (aligned 0 0)))
(define t1201 (load t1201-buf (ramp 0 1 128) (aligned 0 0)))
(define t1202 (load t1202-buf (ramp 0 1 128) (aligned 0 0)))
(define t1200 (load t1200-buf (ramp 0 1 128) (aligned 0 0)))
(define t1198 (load t1198-buf (ramp 0 1 128) (aligned 0 0)))
(define t1197 (load t1197-buf (ramp 0 1 128) (aligned 0 0)))
(define t1199 (load t1199-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1203-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1201-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1202-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1200-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1198-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1197-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1199-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1200
    t1201)
   (vec-max
    (vec-min
     (vec-max
      t1202
      t1203)
     (vec-max
      (vec-min
       (vec-max
        t1197
        t1199)
       t1198)
      (vec-min
       t1197
       t1199)))
    (vec-min
     t1202
     t1203)))
  (vec-min
   t1200
   t1201)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_24.out")