#lang rosette/safe

(require rake)
(init-logging "expr_17.runtimes")

(define-symbolic-buffer t2635-buf int16_t)
(define-symbolic-buffer t2634-buf int16_t)
(define t2635 (load t2635-buf (ramp 0 1 128) (aligned 0 0)))
(define t2634 (load t2634-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t2635-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2634-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (vec-absd
  t2634
  t2635))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_17.out")