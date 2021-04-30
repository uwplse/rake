#lang rosette/safe

(require rake)

(define-symbolic-buffer blur_x uint16_t)
(define-symbolic blur_y.s0.x.x integer?)
(define-symbolic t185 integer?)
(define-symbolic t155 integer?)
(define-symbolic t186 integer?)
(define-symbolic t187 integer?)

(define axioms 
  (list 
   (values-range-from blur_x (uint16_t (bv 0 16)) (uint16_t (bv 21845 16)))))

(define blur_y.extent.0 t155)
(define t115 (-   (*    blur_y.s0.x.x    256)   (min    blur_y.extent.0    256)))
(define t148.s t185)
(define t149.s t186)
(define t150.s t187)

(define halide-expr
 (vec-div
  (vec-add
   (load blur_x (ramp (+  (+   t115   t148.s)  256) 1 256) (aligned 1 0))
   (vec-add
    (load blur_x (ramp (+  (+   t115   t149.s)  256) 1 256) (aligned 1 0))
    (load blur_x (ramp (+  (+   t115   t150.s)  256) 1 256) (aligned 1 0))))
  (x256 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_2.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)