#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t418 integer?)
(define-symbolic t357 integer?)
(define-symbolic t365 integer?)
(define-symbolic t417 integer?)

(define axioms 
  (list ))

(define output.extent.0 t357)
(define t248 (-  (*  t365  512)  (min  output.extent.0  128)))
(define t214 (+  (*  t417  128)  (+  (*  output.s0.x.x  128)  t248)))
(define t215 (+  (*  t418  -128)  (+  (*  output.s0.x.x  128)  t248)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (+ t214 129) 1 128) (aligned 1 0))
  (vec-max
   (load bounded_input (ramp (+ (+ (* output.s0.x.x 128) t248) 129) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (+ t215 129) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (+ t215 130) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (+ (+ (* output.s0.x.x 128) t248) 130) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (+ t214 130) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (+ t215 128) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (+ (+ (* output.s0.x.x 128) t248) 128) 1 128) (aligned 1 0))
         (load bounded_input (ramp (+ t214 128) 1 128) (aligned 1 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_7.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)