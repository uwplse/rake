#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint16_t)
(define-symbolic t3052 integer?)
(define-symbolic t3051 integer?)
(define-symbolic t3050 integer?)
(define-symbolic t2987 integer?)
(define-symbolic t2992 integer?)

(define axioms 
  (list ))

(define input.min.0 t2987)
(define input.stride.1 t2992)
(define t2801 (-  (*  (+  t3052  (*  t3051  64))  2)  (+  t3050  input.min.0)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    (vec-max
     (vec-max
      (int16x128
       (load input (ramp (+ (+ (* input.stride.1 14) t2801) -108) 1 128) (aligned 1 0)))
      (int16x128
       (load input (ramp (+ (+ (* input.stride.1 18) t2801) -108) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (+ (+ (* input.stride.1 16) t2801) -106) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (+ (+ (* input.stride.1 16) t2801) -110) 1 128) (aligned 1 0))))
   (int16x128
    (load input (ramp (+ (+ (* input.stride.1 16) t2801) -108) 1 128) (aligned 1 0))))
  (x128 (int16_t (bv 0 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_2.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)