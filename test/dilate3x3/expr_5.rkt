#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t367 integer?)
(define-symbolic t357 integer?)
(define-symbolic t396 integer?)
(define-symbolic t395 integer?)

(define axioms 
  (list ))

(define output.extent.0 t357)
(define t246 (-  (*  t367  256)  (min  output.extent.0  128)))
(define t208 (+  (*  t395  128)  (+  (*  output.s0.x.x  128)  t246)))
(define t209 (+  (*  t396  -128)  (+  (*  output.s0.x.x  128)  t246)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (+ t208 129) 1 128) (aligned 1 0))
  (vec-max
   (load bounded_input (ramp (+ (+ (* output.s0.x.x 128) t246) 129) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (+ t209 129) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (+ t209 130) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (+ (+ (* output.s0.x.x 128) t246) 130) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (+ t208 130) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (+ t209 128) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (+ (+ (* output.s0.x.x 128) t246) 128) 1 128) (aligned 1 0))
         (load bounded_input (ramp (+ t208 128) 1 128) (aligned 1 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_5.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)