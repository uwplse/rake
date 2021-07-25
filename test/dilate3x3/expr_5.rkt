#lang rosette/safe

(require rake)
(init-logging "expr_5.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t371 integer?)
(define-symbolic t358 integer?)

(define axioms 
  (list ))

(define output.extent.0 (var-lookup 'output.extent.0 t358))
(define t251 (var-lookup 't251 (sca-add  (sca-max  output.extent.0  128)  (sca-mul  t371  256))))

(define halide-expr
 (let ([t445  (sca-max  output.extent.0  128)])
  (let ([t446   (sca-add   (sca-mul   (sca-div   (sca-add   t445   129)   128)   128)   t251)])
   (let ([t447    (sca-add    (sca-mul    (sca-div    (sca-add    t445    129)    128)    -128)    t251)])
    (vec-max
     (load bounded_input (ramp (sca-add t446 -127) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (sca-add t251 -127) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (sca-add t447 -127) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (sca-add t447 -126) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (sca-add t251 -126) 1 128) (aligned 1 0))
         (vec-max
          (load bounded_input (ramp (sca-add t446 -126) 1 128) (aligned 1 0))
          (vec-max
           (load bounded_input (ramp (sca-add t447 -128) 1 128) (aligned 1 0))
           (vec-max
            (load bounded_input (ramp (sca-add t251 -128) 1 128) (aligned 1 0))
            (load bounded_input (ramp (sca-add t446 -128) 1 128) (aligned 1 0))))))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_5.out")