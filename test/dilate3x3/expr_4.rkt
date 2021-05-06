#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t357 integer?)
(define-symbolic t383 integer?)
(define-symbolic t385 integer?)
(define-symbolic t384 integer?)

(define axioms 
  (list ))

(define output.extent.0 t357)
(define t320 (-  (*  t383  128)  (min  output.extent.0  128)))
(define t205 (+  (*  t384  128)  (+  (*  output.s0.x.x  128)  t320)))
(define t206 (+  (*  t385  -128)  (+  (*  output.s0.x.x  128)  t320)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (+ t205 129) 1 128) (aligned 1 0))
  (vec-max
   (load bounded_input (ramp (+ (+ (* output.s0.x.x 128) t320) 129) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (+ t206 129) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (+ t206 130) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (+ (+ (* output.s0.x.x 128) t320) 130) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (+ t205 130) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (+ t206 128) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (+ (+ (* output.s0.x.x 128) t320) 128) 1 128) (aligned 1 0))
         (load bounded_input (ramp (+ t205 128) 1 128) (aligned 1 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_4.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)