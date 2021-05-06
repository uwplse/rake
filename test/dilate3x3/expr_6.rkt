#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t357 integer?)
(define-symbolic t407 integer?)
(define-symbolic t366 integer?)
(define-symbolic t406 integer?)

(define axioms 
  (list ))

(define output.extent.0 t357)
(define t247 (-  (*  t366  384)  (min  output.extent.0  128)))
(define t211 (+  (*  t406  128)  (+  (*  output.s0.x.x  128)  t247)))
(define t212 (+  (*  t407  -128)  (+  (*  output.s0.x.x  128)  t247)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (+ t211 129) 1 128) (aligned 1 0))
  (vec-max
   (load bounded_input (ramp (+ (+ (* output.s0.x.x 128) t247) 129) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (+ t212 129) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (+ t212 130) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (+ (+ (* output.s0.x.x 128) t247) 130) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (+ t211 130) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (+ t212 128) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (+ (+ (* output.s0.x.x 128) t247) 128) 1 128) (aligned 1 0))
         (load bounded_input (ramp (+ t211 128) 1 128) (aligned 1 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_6.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)