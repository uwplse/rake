#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t357 integer?)
(define-symbolic t368 integer?)

(define axioms 
  (list ))

(define output.extent.0 t357)
(define t253 (+  (max  output.extent.0  128)  (*  t368  512)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) 128) t253) -127) 1 128) (aligned 1 0))
  (vec-max
   (load bounded_input (ramp (+ t253 -127) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) -128) t253) -127) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) -128) t253) -126) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (+ t253 -126) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) 128) t253) -126) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) -128) t253) -128) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (+ t253 -128) 1 128) (aligned 1 0))
         (load bounded_input (ramp (+ (+ (* (quotient (+ (max output.extent.0 128) 129) 128) 128) t253) -128) 1 128) (aligned 1 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_11.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)