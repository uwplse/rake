#lang rosette/safe

(require rake)
(init-logging "expr_4.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t372 integer?)
(define-symbolic t358 integer?)

(define axioms 
  (list ))

(define output.extent.0 (var-lookup 'output.extent.0 t358))
(define t281 (var-lookup 't281 (sca-add  (sca-max  output.extent.0  128)  (sca-mul  t372  128))))

(define halide-expr
 (let ([t433  (sca-max  output.extent.0  128)])
  (let ([t434   (sca-add   (sca-mul   (sca-div   (sca-add   t433   129)   128)   128)   t281)])
   (let ([t435    (sca-add    (sca-mul    (sca-div    (sca-add    t433    129)    128)    -128)    t281)])
    (vec-max
     (load bounded_input (ramp (sca-add t434 -127) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (sca-add t281 -127) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (sca-add t435 -127) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (sca-add t435 -126) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (sca-add t281 -126) 1 128) (aligned 1 0))
         (vec-max
          (load bounded_input (ramp (sca-add t434 -126) 1 128) (aligned 1 0))
          (vec-max
           (load bounded_input (ramp (sca-add t435 -128) 1 128) (aligned 1 0))
           (vec-max
            (load bounded_input (ramp (sca-add t281 -128) 1 128) (aligned 1 0))
            (load bounded_input (ramp (sca-add t434 -128) 1 128) (aligned 1 0))))))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_4.out")