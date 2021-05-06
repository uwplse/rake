#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint16_t)
(define-symbolic t3021 integer?)
(define-symbolic t3020 integer?)
(define-symbolic t3057 integer?)
(define-symbolic t2987 integer?)
(define-symbolic t2992 integer?)

(define axioms 
  (list ))

(define input.min.0 t2987)
(define input.stride.1 t2992)
(define t2752.s (-  (*  t3021  128)  t3020))
(define t2805 (+  t3057  (-  t2752.s  input.min.0)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    (vec-max
     (vec-max
      (int16x128
       (load input (ramp (+ (+ (* input.stride.1 14) t2805) -108) 1 128) (aligned 1 0)))
      (int16x128
       (load input (ramp (+ (+ (* input.stride.1 18) t2805) -108) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (+ (+ (* input.stride.1 16) t2805) -106) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (+ (+ (* input.stride.1 16) t2805) -110) 1 128) (aligned 1 0))))
   (int16x128
    (load input (ramp (+ (+ (* input.stride.1 16) t2805) -108) 1 128) (aligned 1 0))))
  (x128 (int16_t (bv 0 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_3.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)