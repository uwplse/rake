#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer input uint16_t)
(define-symbolic t3043 integer?)
(define-symbolic t3044 integer?)
(define-symbolic t3042 integer?)
(define-symbolic t2987 integer?)
(define-symbolic t2982 integer?)

(define axioms 
  (list ))

(define input.min.0 t2982)
(define input.stride.1 t2987)
(define t2611 (-  (*  (+  t3044  (*  t3043  64))  2)  (+  t3042  input.min.0)))

(define halide-expr
 (let ([t3045  (+  (*  input.stride.1  16)  t2611)])
  (vec-max
   (vec-min
    (vec-max
     (vec-max
      (vec-max
       (int16x128
        (load input (ramp (+ (+ (* input.stride.1 14) t2611) -108) 1 128) (aligned 1 0)))
       (int16x128
        (load input (ramp (+ (+ (* input.stride.1 18) t2611) -108) 1 128) (aligned 1 0))))
      (int16x128
       (load input (ramp (+ t3045 -106) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (+ t3045 -110) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (+ t3045 -108) 1 128) (aligned 1 0))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")