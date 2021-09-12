#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic t3028 integer?)
(define-symbolic t2987 integer?)
(define-symbolic t3027 integer?)
(define-symbolic f1.s0.v0.v0 integer?)
(define-symbolic t2982 integer?)

(define axioms 
  (list ))

(define input.min.0 t2982)
(define input.stride.1 t2987)
(define t2605 (-  (*  (+  (*  f1.s0.v0.v0  64)  t3028)  2)  (+  t3027  input.min.0)))

(define halide-expr
 (let ([t3029  (+  (*  input.stride.1  16)  t2605)])
  (vec-max
   (vec-min
    (vec-max
     (vec-max
      (vec-max
       (int16x128
        (load input (ramp (+ (+ (* input.stride.1 14) t2605) 12) 1 128) (aligned 1 0)))
       (int16x128
        (load input (ramp (+ (+ (* input.stride.1 18) t2605) 12) 1 128) (aligned 1 0))))
      (int16x128
       (load input (ramp (+ t3029 14) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (+ t3029 10) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (+ t3029 12) 1 128) (aligned 1 0))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")