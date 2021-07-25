#lang rosette/safe

(require rake)
(init-logging "expr_6.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t370 integer?)
(define-symbolic t358 integer?)

(define axioms 
  (list ))

(define output.extent.0 (var-lookup 'output.extent.0 t358))
(define t252 (var-lookup 't252 (sca-add  (sca-max  output.extent.0  128)  (sca-mul  t370  384))))

(define halide-expr
 (let ([t457  (sca-max  output.extent.0  128)])
  (let ([t458   (sca-add   (sca-mul   (sca-div   (sca-add   t457   129)   128)   128)   t252)])
   (let ([t459    (sca-add    (sca-mul    (sca-div    (sca-add    t457    129)    128)    -128)    t252)])
    (vec-max
     (load bounded_input (ramp (sca-add t458 -127) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (sca-add t252 -127) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (sca-add t459 -127) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (sca-add t459 -126) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (sca-add t252 -126) 1 128) (aligned 1 0))
         (vec-max
          (load bounded_input (ramp (sca-add t458 -126) 1 128) (aligned 1 0))
          (vec-max
           (load bounded_input (ramp (sca-add t459 -128) 1 128) (aligned 1 0))
           (vec-max
            (load bounded_input (ramp (sca-add t252 -128) 1 128) (aligned 1 0))
            (load bounded_input (ramp (sca-add t458 -128) 1 128) (aligned 1 0))))))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_6.out")