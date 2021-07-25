#lang rosette/safe

(require rake)
(init-logging "expr_9.runtimes")

(define-symbolic-buffer t2624-buf int16_t)
(define-symbolic-buffer t2625-buf int16_t)
(define t2624 (load t2624-buf (ramp 0 1 128) (aligned 0 0)))
(define t2625 (load t2625-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t2624-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t2625-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (vec-absd
  t2624
  t2625))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_9.out")