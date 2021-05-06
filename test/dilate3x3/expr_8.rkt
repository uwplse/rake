#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t357 integer?)
(define-symbolic t371 integer?)

(define axioms 
  (list ))

(define output.extent.0 t357)
(define t281 (+  (max  output.extent.0  128)  (*  t371  128)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) 128) t281) -127) 1 128) (aligned 1 0))
  (vec-max
   (load bounded_input (ramp (+ t281 -127) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) -128) t281) -127) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) -128) t281) -126) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (+ t281 -126) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) 128) t281) -126) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) -128) t281) -128) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (+ t281 -128) 1 128) (aligned 1 0))
         (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) 128) t281) -128) 1 128) (aligned 1 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_8.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)