#lang rosette/safe

(require rake)
(init-logging "expr_5.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t116 integer?)

(define axioms 
  (list ))

(define t82 (var-lookup 't82 t116))
(define t75 (var-lookup 't75 (sca-mul  t82  24)))
(define t71 (var-lookup 't71 (sca-mul  t82  16)))
(define t73 (var-lookup 't73 (sca-mul  t82  8)))
(define t19 (var-lookup 't19 (sca-add  output.s0.x.x  t75)))
(define t20 (var-lookup 't20 (sca-add  output.s0.x.x  t73)))
(define t44 (var-lookup 't44 (sca-add  output.s0.x.x  t71)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (sca-add (sca-mul t19 16) 1) 1 16) (aligned 16 1))
  (vec-max
   (load bounded_input (ramp (sca-add (sca-mul t44 16) 1) 1 16) (aligned 16 1))
   (vec-max
    (load bounded_input (ramp (sca-add (sca-mul t20 16) 1) 1 16) (aligned 16 1))
    (vec-max
     (load bounded_input (ramp (sca-add (sca-mul t20 16) 2) 1 16) (aligned 16 2))
     (vec-max
      (load bounded_input (ramp (sca-add (sca-mul t44 16) 2) 1 16) (aligned 16 2))
      (vec-max
       (load bounded_input (ramp (sca-add (sca-mul t19 16) 2) 1 16) (aligned 16 2))
       (vec-max
        (load bounded_input (ramp (sca-mul t20 16) 1 16) (aligned 16 0))
        (vec-max
         (load bounded_input (ramp (sca-mul t44 16) 1 16) (aligned 16 0))
         (load bounded_input (ramp (sca-mul t19 16) 1 16) (aligned 16 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_5.out")