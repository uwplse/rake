#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t369 integer?)
(define-symbolic t357 integer?)

(define axioms 
  (list ))

(define output.extent.0 t357)
(define t252 (+  (max  output.extent.0  128)  (*  t369  384)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) 128) t252) -127) 1 128) (aligned 1 0))
  (vec-max
   (load bounded_input (ramp (+ t252 -127) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) -128) t252) -127) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) -128) t252) -126) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (+ t252 -126) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) 128) t252) -126) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) -128) t252) -128) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (+ t252 -128) 1 128) (aligned 1 0))
         (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) 128) t252) -128) 1 128) (aligned 1 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_10.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)