#lang rosette/safe

(require rake)

(define-symbolic-buffer blur_x uint16_t)
(define-symbolic t148 integer?)
(define-symbolic t147 integer?)
(define-symbolic t146 integer?)

(define axioms 
  (list ))

(define t113 t146)
(define t114 t147)
(define t115 t148)

(define halide-expr
 (vec-div
  (vec-add
   (load blur_x (ramp (+ t113 -256) 1 256) (aligned 1 0))
   (vec-add
    (load blur_x (ramp (+ t114 -256) 1 256) (aligned 1 0))
    (load blur_x (ramp (+ t115 -256) 1 256) (aligned 1 0))))
  (x256 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_3.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)