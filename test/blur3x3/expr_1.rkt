#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint16_t)
(define-symbolic t136 integer?)
(define-symbolic t127 integer?)
(define-symbolic t117 integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 t117)
(define input.stride.1 t127)
(define t104 (+  t136  (+  (*  input.stride.1  2)  blur_y.extent.0)))

(define halide-expr
 (vec-div
  (vec-add
   (load input (ramp (+ t104 -127) 1 128) (aligned 1 0))
   (vec-add
    (load input (ramp (+ t104 -126) 1 128) (aligned 1 0))
    (load input (ramp (+ t104 -128) 1 128) (aligned 1 0))))
  (x128 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_1.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)