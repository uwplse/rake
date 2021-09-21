#lang rosette/safe

(require rake)
(init-logging "expr_26.runtimes")

(define-symbolic-buffer f26 int16_t)
(define-symbolic-buffer output int16_t)
(define-symbolic-var t3211 int32_t)
(define-symbolic f27.s0.v1.rebased integer?)

(define axioms 
  (list ))


(define halide-expr
 (int16x128
  (vec-div
   (vec-add
    (vec-mul
     (int32x128
      (load output (ramp (sca-mul f27.s0.v1.rebased 128) 1 128) (aligned 128 0)))
     (int32x128
      (x128 (load-sca f26 0))))
    (vec-add
     (vec-mul
      (int32x128
       (load output (ramp (sca-add (sca-mul f27.s0.v1.rebased 128) 256) 1 128) (aligned 128 0)))
      (int32x128
       (x128 (load-sca f26 1))))
     (vec-add
      (vec-mul
       (int32x128
        (load output (ramp (sca-add (sca-mul f27.s0.v1.rebased 128) 512) 1 128) (aligned 128 0)))
       (int32x128
        (x128 (load-sca f26 2))))
      (x128 t3211))))
   (x128 (int32_t (bv 256 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_26.out")