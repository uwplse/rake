#lang rosette/safe

(require rake)

(define-symbolic-buffer f26 int16_t)
(define-symbolic-buffer output int16_t)
(define-symbolic processed.s0.v1.v3.v3 integer?)
(define-symbolic f28.s0.v1.v1 integer?)
(define-symbolic f27.s0.v1 integer?)
(define-symbolic t4135 integer?)
(define-symbolic t4142 integer?)
(define-symbolic t4138 integer?)
(define-symbolic t4103 integer?)

(define axioms 
  (list 
   (values-range-from f26 (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from output (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))

(define processed.s0.v1.max_1.s t4103)
(define t3788 (-   processed.s0.v1.max_1.s   t4135))
(define processed.s0.v1.v3.v3.base (min   t4138   t3788))
(define f28.s0.v1.min_2 (+   t4142   (*    (+     processed.s0.v1.v3.v3     processed.s0.v1.v3.v3.base)    2)))
(define t3755 (-   f27.s0.v1   (+    (*     f28.s0.v1.v1     2)    f28.s0.v1.min_2)))

(define halide-expr
 (int16x128
  (vec-div
   (vec-add
    (vec-mul
     (int32x128
      (load output (ramp (*  t3755  128) 1 128) (aligned 128 0)))
     (int32x128
      (x128 (load-sca f26 0))))
    (vec-add
     (vec-mul
      (int32x128
       (load output (ramp (+  (*   t3755   128)  256) 1 128) (aligned 128 0)))
      (int32x128
       (x128 (load-sca f26 1))))
     (vec-add
      (vec-mul
       (int32x128
        (load output (ramp (+  (*   t3755   128)  512) 1 128) (aligned 128 0)))
       (int32x128
        (x128 (load-sca f26 2))))
      (x128 (int32x1 (load-sca f26 3))))))
   (x128 (int32_t (bv 256 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_16.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)