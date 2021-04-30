#lang rosette/safe

(require rake)

(define-symbolic-buffer blur_x uint16_t)
(define-symbolic t196 integer?)
(define-symbolic t194 integer?)
(define-symbolic t155 integer?)
(define-symbolic t195 integer?)

(define axioms 
  (list 
   (values-range-from blur_x (uint16_t (bv 0 16)) (uint16_t (bv 21845 16)))))

(define blur_y.extent.0 t155)
(define t151 (+   (max    blur_y.extent.0    256)   t194))
(define t152 (+   (max    blur_y.extent.0    256)   t195))
(define t153 (+   (max    blur_y.extent.0    256)   t196))

(define halide-expr
 (vec-div
  (vec-add
   (load blur_x (ramp (+  t151  -256) 1 256) (aligned 1 0))
   (vec-add
    (load blur_x (ramp (+  t152  -256) 1 256) (aligned 1 0))
    (load blur_x (ramp (+  t153  -256) 1 256) (aligned 1 0))))
  (x256 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_3.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)