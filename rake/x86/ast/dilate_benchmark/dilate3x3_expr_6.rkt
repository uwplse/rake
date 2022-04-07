#lang rosette/safe

(require rake)
(init-logging "dilate3x3_expr_6.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t116 integer?)
(define-symbolic output.s0.x.x integer?)

(define axioms 
  (list ))

(define t82 (var-lookup 't82 t116))
(define t77 (var-lookup 't77 (sca-mul  t82  32)))
(define t75 (var-lookup 't75 (sca-mul  t82  24)))
(define t71 (var-lookup 't71 (sca-mul  t82  16)))
(define t22 (var-lookup 't22 (sca-add  output.s0.x.x  t77)))
(define t23 (var-lookup 't23 (sca-add  output.s0.x.x  t71)))
(define t45 (var-lookup 't45 (sca-add  output.s0.x.x  t75)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (sca-add (sca-mul t22 16) 1) 1 16) (aligned 16 1))
  (vec-max
   (load bounded_input (ramp (sca-add (sca-mul t45 16) 1) 1 16) (aligned 16 1))
   (vec-max
    (load bounded_input (ramp (sca-add (sca-mul t23 16) 1) 1 16) (aligned 16 1))
    (vec-max
     (load bounded_input (ramp (sca-add (sca-mul t23 16) 2) 1 16) (aligned 16 2))
     (vec-max
      (load bounded_input (ramp (sca-add (sca-mul t45 16) 2) 1 16) (aligned 16 2))
      (vec-max
       (load bounded_input (ramp (sca-add (sca-mul t22 16) 2) 1 16) (aligned 16 2))
       (vec-max
        (load bounded_input (ramp (sca-mul t23 16) 1 16) (aligned 16 0))
        (vec-max
         (load bounded_input (ramp (sca-mul t45 16) 1 16) (aligned 16 0))
         (load bounded_input (ramp (sca-mul t22 16) 1 16) (aligned 16 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "dilate3x3_sexp_6.out")