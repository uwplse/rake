#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint16_t)
(define-symbolic f1.s0.v0.v0 integer?)
(define-symbolic t4081 integer?)
(define-symbolic t4086 integer?)
(define-symbolic t4154 integer?)
(define-symbolic t4153 integer?)

(define axioms 
  (list ))

(define input.min.0 t4081)
(define input.stride.1 t4086)
(define t3855 (-   t4154   (+    t4153    input.min.0)))
(define t3758 (+   (*    input.stride.1    12)   (+    (*     f1.s0.v0.v0     128)    t3855)))
(define t4039 (+   (*    input.stride.1    10)   (+    (*     f1.s0.v0.v0     128)    t3855)))
(define t4040 (+   (*    input.stride.1    14)   (+    (*     f1.s0.v0.v0     128)    t3855)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    (vec-max
     (vec-max
      (int16x128
       (load input (ramp (+  t4039  12) 1 128) (aligned 1 0)))
      (int16x128
       (load input (ramp (+  t4040  12) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (+  t3758  14) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (+  t3758  10) 1 128) (aligned 1 0))))
   (int16x128
    (load input (ramp (+  t3758  12) 1 128) (aligned 1 0))))
  (x128 (int16_t (bv 0 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_0.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)