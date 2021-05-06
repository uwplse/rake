#lang rosette/safe

(require rake)

(define-symbolic-buffer f26 int16_t)
(define-symbolic-buffer output int16_t)
(define-symbolic f27.s0.v1.rebased integer?)

(define axioms 
  (list ))


(define halide-expr
 (int16x128
  (vec-div
   (vec-add
    (vec-mul
     (int32x128
      (load output (ramp (* f27.s0.v1.rebased 128) 1 128) (aligned 128 0)))
     (int32x128
      (x128 (load-sca f26 4))))
    (vec-add
     (vec-mul
      (int32x128
       (load output (ramp (+ (* f27.s0.v1.rebased 128) 256) 1 128) (aligned 128 0)))
      (int32x128
       (x128 (load-sca f26 5))))
     (vec-add
      (vec-mul
       (int32x128
        (load output (ramp (+ (* f27.s0.v1.rebased 128) 512) 1 128) (aligned 128 0)))
       (int32x128
        (x128 (load-sca f26 6))))
      (x128 (int32x1 (load-sca f26 7))))))
   (x128 (int32_t (bv 256 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_17.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)