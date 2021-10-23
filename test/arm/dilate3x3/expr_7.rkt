#lang rosette/safe

(require rake)
(init-logging "expr_7.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t116 integer?)

(define axioms 
  (list ))

(define t82 (var-lookup 't82 t116))
(define t79 (var-lookup 't79 (sca-mul  t82  40)))
(define t77 (var-lookup 't77 (sca-mul  t82  32)))
(define t75 (var-lookup 't75 (sca-mul  t82  24)))
(define t25 (var-lookup 't25 (sca-add  output.s0.x.x  t79)))
(define t26 (var-lookup 't26 (sca-add  output.s0.x.x  t75)))
(define t46 (var-lookup 't46 (sca-add  output.s0.x.x  t77)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (sca-add (sca-mul t25 16) 1) 1 16) (aligned 16 1))
  (vec-max
   (load bounded_input (ramp (sca-add (sca-mul t46 16) 1) 1 16) (aligned 16 1))
   (vec-max
    (load bounded_input (ramp (sca-add (sca-mul t26 16) 1) 1 16) (aligned 16 1))
    (vec-max
     (load bounded_input (ramp (sca-add (sca-mul t26 16) 2) 1 16) (aligned 16 2))
     (vec-max
      (load bounded_input (ramp (sca-add (sca-mul t46 16) 2) 1 16) (aligned 16 2))
      (vec-max
       (load bounded_input (ramp (sca-add (sca-mul t25 16) 2) 1 16) (aligned 16 2))
       (vec-max
        (load bounded_input (ramp (sca-mul t26 16) 1 16) (aligned 16 0))
        (vec-max
         (load bounded_input (ramp (sca-mul t46 16) 1 16) (aligned 16 0))
         (load bounded_input (ramp (sca-mul t25 16) 1 16) (aligned 16 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_7.out")