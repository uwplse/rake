#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint16_t)
(define-symbolic blur_x.s0.y integer?)
(define-symbolic t165 integer?)
(define-symbolic t155 integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 t155)
(define input.stride.1 t165)

(define halide-expr
 (vec-div
  (vec-add
   (load input (ramp (+  (+   (*    blur_x.s0.y    input.stride.1)   blur_y.extent.0)  -127) 1 128) (aligned 1 0))
   (vec-add
    (load input (ramp (+  (+   (*    blur_x.s0.y    input.stride.1)   blur_y.extent.0)  -126) 1 128) (aligned 1 0))
    (load input (ramp (+  (+   (*    blur_x.s0.y    input.stride.1)   blur_y.extent.0)  -128) 1 128) (aligned 1 0))))
  (x128 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_1.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)