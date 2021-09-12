#lang rosette/safe

(require rake)
(init-logging "expr_16.runtimes")

(define-symbolic-buffer t2632-buf int16_t)
(define-symbolic-buffer t2633-buf int16_t)
(define t2632 (load t2632-buf (ramp 0 1 128) (aligned 0 0)))
(define t2633 (load t2633-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t2632-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2633-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (vec-absd
  t2632
  t2633))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_16.out")