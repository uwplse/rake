#lang rosette/safe

(require rake)
(init-logging "expr_7.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t358 integer?)
(define-symbolic t369 integer?)

(define axioms 
  (list ))

(define output.extent.0 (var-lookup 'output.extent.0 t358))
(define t253 (var-lookup 't253 (sca-add  (sca-max  output.extent.0  128)  (sca-mul  t369  512))))

(define halide-expr
 (let ([t469  (sca-max  output.extent.0  128)])
  (let ([t470   (sca-add   (sca-mul   (sca-div   (sca-add   t469   129)   128)   128)   t253)])
   (let ([t471    (sca-add    (sca-mul    (sca-div    (sca-add    t469    129)    128)    -128)    t253)])
    (vec-max
     (load bounded_input (ramp (sca-add t470 -127) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (sca-add t253 -127) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (sca-add t471 -127) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (sca-add t471 -126) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (sca-add t253 -126) 1 128) (aligned 1 0))
         (vec-max
          (load bounded_input (ramp (sca-add t470 -126) 1 128) (aligned 1 0))
          (vec-max
           (load bounded_input (ramp (sca-add t471 -128) 1 128) (aligned 1 0))
           (vec-max
            (load bounded_input (ramp (sca-add t253 -128) 1 128) (aligned 1 0))
            (load bounded_input (ramp (sca-add t470 -128) 1 128) (aligned 1 0))))))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_7.out")