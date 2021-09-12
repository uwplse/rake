#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic t3051 integer?)
(define-symbolic t3012 integer?)
(define-symbolic t2987 integer?)
(define-symbolic t3011 integer?)
(define-symbolic t2982 integer?)

(define axioms 
  (list ))

(define input.min.0 t2982)
(define input.stride.1 t2987)
(define t2753.s (-  (*  t3012  128)  t3011))
(define t2614 (+  t3051  (-  t2753.s  input.min.0)))

(define halide-expr
 (let ([t3052  (+  (*  input.stride.1  16)  t2614)])
  (vec-max
   (vec-min
    (vec-max
     (vec-max
      (vec-max
       (int16x128
        (load input (ramp (+ (+ (* input.stride.1 14) t2614) -108) 1 128) (aligned 1 0)))
       (int16x128
        (load input (ramp (+ (+ (* input.stride.1 18) t2614) -108) 1 128) (aligned 1 0))))
      (int16x128
       (load input (ramp (+ t3052 -106) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (+ t3052 -110) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (+ t3052 -108) 1 128) (aligned 1 0))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")