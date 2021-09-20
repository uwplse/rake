#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t358 integer?)
(define-symbolic t386 integer?)
(define-symbolic t385 integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t384 integer?)

(define axioms 
  (list ))

(define output.extent.0 (var-lookup 'output.extent.0 t358))
(define t320 (var-lookup 't320 (sca-sub  (sca-mul  t384  128)  (sca-min  output.extent.0  128))))
(define t205 (var-lookup 't205 (sca-add  (sca-mul  t385  128)  (sca-add  (sca-mul  output.s0.x.x  128)  t320))))
(define t206 (var-lookup 't206 (sca-add  (sca-mul  t386  -128)  (sca-add  (sca-mul  output.s0.x.x  128)  t320))))

(define halide-expr
 (let ([t387  (sca-add  (sca-mul  output.s0.x.x  128)  t320)])
  (vec-max
   (load bounded_input (ramp (sca-add t205 129) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (sca-add t387 129) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (sca-add t206 129) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (sca-add t206 130) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (sca-add t387 130) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (sca-add t205 130) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (sca-add t206 128) 1 128) (aligned 1 0))
         (vec-max
          (load bounded_input (ramp (sca-add t387 128) 1 128) (aligned 1 0))
          (load bounded_input (ramp (sca-add t205 128) 1 128) (aligned 1 0))))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")