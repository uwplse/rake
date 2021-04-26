#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint16_t)
(define-symbolic t4128 integer?)
(define-symbolic t4127 integer?)
(define-symbolic t4086 integer?)
(define-symbolic t4175 integer?)
(define-symbolic t4081 integer?)

(define axioms 
  (list ))

(define input.min.0 t4081)
(define input.stride.1 t4086)
(define t3805.s (-   (*    t4128    128)   t4127))
(define t3648 (+   t4175   (-    t3805.s    input.min.0)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    (vec-max
     (vec-max
      (int16x128
       (load input (ramp (+  (+   (*    input.stride.1    10)   t3648)  -108) 1 128) (aligned 1 0)))
      (int16x128
       (load input (ramp (+  (+   (*    input.stride.1    14)   t3648)  -108) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (+  (+   (*    input.stride.1    12)   t3648)  -106) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (+  (+   (*    input.stride.1    12)   t3648)  -110) 1 128) (aligned 1 0))))
   (int16x128
    (load input (ramp (+  (+   (*    input.stride.1    12)   t3648)  -108) 1 128) (aligned 1 0))))
  (x128 (int16_t (bv 0 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_2.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)