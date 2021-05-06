#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint16_t)
(define-symbolic f1.s0.v0.v0 integer?)
(define-symbolic t3037 integer?)
(define-symbolic t3036 integer?)
(define-symbolic t2987 integer?)
(define-symbolic t2992 integer?)

(define axioms 
  (list ))

(define input.min.0 t2987)
(define input.stride.1 t2992)
(define t2797 (-  t3037  (+  t3036  input.min.0)))
(define t2708 (+  (*  input.stride.1  16)  (+  (*  f1.s0.v0.v0  128)  t2797)))
(define t2949 (+  (*  input.stride.1  14)  (+  (*  f1.s0.v0.v0  128)  t2797)))
(define t2950 (+  (*  input.stride.1  18)  (+  (*  f1.s0.v0.v0  128)  t2797)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    (vec-max
     (vec-max
      (int16x128
       (load input (ramp (+ t2949 12) 1 128) (aligned 1 0)))
      (int16x128
       (load input (ramp (+ t2950 12) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (+ t2708 14) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (+ t2708 10) 1 128) (aligned 1 0))))
   (int16x128
    (load input (ramp (+ t2708 12) 1 128) (aligned 1 0))))
  (x128 (int16_t (bv 0 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_1.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)