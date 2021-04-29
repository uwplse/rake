#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint16_t)
(define-symbolic f1.s0.v0.v0 integer?)
(define-symbolic t4081 integer?)
(define-symbolic t4086 integer?)
(define-symbolic t4151 integer?)
(define-symbolic t4152 integer?)

(define axioms 
  (list ))

(define input.min.0 t4081)
(define input.stride.1 t4086)
(define t3859 (-   t4152   (+    t4151    input.min.0)))
(define t3759 (+   (*    input.stride.1    12)   (+    (*     f1.s0.v0.v0     128)    t3859)))
(define t4041 (+   (*    input.stride.1    10)   (+    (*     f1.s0.v0.v0     128)    t3859)))
(define t4042 (+   (*    input.stride.1    14)   (+    (*     f1.s0.v0.v0     128)    t3859)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    (vec-max
     (vec-max
      (int16x128
       (load input (ramp (+  t4041  12) 1 128) (aligned 1 0)))
      (int16x128
       (load input (ramp (+  t4042  12) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (+  t3759  14) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (+  t3759  10) 1 128) (aligned 1 0))))
   (int16x128
    (load input (ramp (+  t3759  12) 1 128) (aligned 1 0))))
  (x128 (int16_t (bv 0 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_1.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)