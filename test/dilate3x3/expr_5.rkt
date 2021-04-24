#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t308 integer?)
(define-symbolic t301 integer?)
(define-symbolic t307 integer?)
(define-symbolic t316 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t301)
(define t196 (max   (-    (max     (+      (min       (*        t308        128)       (+        output.extent.0        -128))      127)     output.extent.0)    (min     output.extent.0     128))   (+    (*     t307     128)    -2)))
(define t223 (+   (max    output.extent.0    128)   (*    t316    256)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (+  (+   (*    (quotient     (+      t196      257)     128)    128)   t223)  -127) 1 128) (aligned 1 0))
  (vec-max
   (load bounded_input (ramp (+  t223  -127) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (+  (+   (*    (quotient     (+      t196      257)     128)    -128)   t223)  -127) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (+  (+   (*    (quotient     (+      t196      257)     128)    -128)   t223)  -126) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (+  t223  -126) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (+  (+   (*    (quotient     (+      t196      257)     128)    128)   t223)  -126) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (+  (+   (*    (quotient     (+      t196      257)     128)    -128)   t223)  -128) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (+  t223  -128) 1 128) (aligned 1 0))
         (load bounded_input (ramp (+  (+   (*    (quotient     (+      t196      257)     128)    128)   t223)  -128) 1 128) (aligned 1 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_5.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)