#lang rosette/safe

(require rake)
(init-logging "expr_21.runtimes")

(define-symbolic-buffer t1191-buf uint8_t)
(define-symbolic-buffer t1193-buf uint8_t)
(define-symbolic-buffer t1189-buf uint8_t)
(define-symbolic-buffer t1196-buf uint8_t)
(define-symbolic-buffer t1194-buf uint8_t)
(define-symbolic-buffer t1195-buf uint8_t)
(define-symbolic-buffer t1198-buf uint8_t)
(define-symbolic-buffer t1197-buf uint8_t)
(define-symbolic-buffer t1199-buf uint8_t)
(define t1191 (load t1191-buf (ramp 0 1 128) (aligned 0 0)))
(define t1193 (load t1193-buf (ramp 0 1 128) (aligned 0 0)))
(define t1189 (load t1189-buf (ramp 0 1 128) (aligned 0 0)))
(define t1196 (load t1196-buf (ramp 0 1 128) (aligned 0 0)))
(define t1194 (load t1194-buf (ramp 0 1 128) (aligned 0 0)))
(define t1195 (load t1195-buf (ramp 0 1 128) (aligned 0 0)))
(define t1198 (load t1198-buf (ramp 0 1 128) (aligned 0 0)))
(define t1197 (load t1197-buf (ramp 0 1 128) (aligned 0 0)))
(define t1199 (load t1199-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1191-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1193-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1189-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1196-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1194-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1195-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1198-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1197-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1199-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1194
     t1195)
    t1196)
   (vec-min
    (vec-min
     t1197
     t1198)
    t1199))
  (vec-min
   (vec-min
    t1189
    t1191)
   t1193)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_21.out")