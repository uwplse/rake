#lang rosette/safe

(require rake)

(define-symbolic-buffer blur_x uint16_t)
(define-symbolic blur_y.s0.x.x integer?)
(define-symbolic t142 integer?)
(define-symbolic t141 integer?)
(define-symbolic t117 integer?)
(define-symbolic t140 integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 t117)
(define t74 (-  (*  blur_y.s0.x.x  256)  (min  blur_y.extent.0  256)))
(define t110.s t140)
(define t111.s t141)
(define t112.s t142)

(define halide-expr
 (vec-div
  (vec-add
   (load blur_x (ramp (+ (+ t110.s t74) 256) 1 256) (aligned 1 0))
   (vec-add
    (load blur_x (ramp (+ (+ t111.s t74) 256) 1 256) (aligned 1 0))
    (load blur_x (ramp (+ (+ t112.s t74) 256) 1 256) (aligned 1 0))))
  (x256 (uint16_t (bv 3 16)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_2.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)