#lang rosette/safe

(require rake)
(init-logging "expr_16.runtimes")

(define-symbolic-buffer t1178-buf uint8_t)
(define-symbolic-buffer t1176-buf uint8_t)
(define-symbolic-buffer t1175-buf uint8_t)
(define-symbolic-buffer t1171-buf uint8_t)
(define-symbolic-buffer t1168-buf uint8_t)
(define-symbolic-buffer t1173-buf uint8_t)
(define-symbolic-buffer t1174-buf uint8_t)
(define-symbolic-buffer t1177-buf uint8_t)
(define-symbolic-buffer t1179-buf uint8_t)
(define t1178 (load t1178-buf (ramp 0 1 128) (aligned 0 0)))
(define t1176 (load t1176-buf (ramp 0 1 128) (aligned 0 0)))
(define t1175 (load t1175-buf (ramp 0 1 128) (aligned 0 0)))
(define t1171 (load t1171-buf (ramp 0 1 128) (aligned 0 0)))
(define t1168 (load t1168-buf (ramp 0 1 128) (aligned 0 0)))
(define t1173 (load t1173-buf (ramp 0 1 128) (aligned 0 0)))
(define t1174 (load t1174-buf (ramp 0 1 128) (aligned 0 0)))
(define t1177 (load t1177-buf (ramp 0 1 128) (aligned 0 0)))
(define t1179 (load t1179-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t1178-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1176-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1175-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1171-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1168-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1173-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1174-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1177-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from t1179-buf (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1174
     t1175)
    t1176)
   (vec-min
    (vec-min
     t1177
     t1178)
    t1179))
  (vec-min
   (vec-min
    t1168
    t1171)
   t1173)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_16.out")