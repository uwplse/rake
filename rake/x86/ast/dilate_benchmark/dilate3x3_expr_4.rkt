#lang rosette/safe

(require rake)
(init-logging "dilate3x3_expr_4.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t116 integer?)
(define-symbolic output.s0.x.x integer?)

(define axioms 
  (list ))

(define t82 (var-lookup 't82 t116))
(define t71 (var-lookup 't71 (sca-mul  t82  16)))
(define t73 (var-lookup 't73 (sca-mul  t82  8)))
(define t16 (var-lookup 't16 (sca-add  output.s0.x.x  t71)))
(define t17 (var-lookup 't17 output.s0.x.x))
(define t43 (var-lookup 't43 (sca-add  output.s0.x.x  t73)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (sca-add (sca-mul t16 16) 1) 1 16) (aligned 16 1))
  (vec-max
   (load bounded_input (ramp (sca-add (sca-mul t43 16) 1) 1 16) (aligned 16 1))
   (vec-max
    (load bounded_input (ramp (sca-add (sca-mul t17 16) 1) 1 16) (aligned 16 1))
    (vec-max
     (load bounded_input (ramp (sca-add (sca-mul t17 16) 2) 1 16) (aligned 16 2))
     (vec-max
      (load bounded_input (ramp (sca-add (sca-mul t43 16) 2) 1 16) (aligned 16 2))
      (vec-max
       (load bounded_input (ramp (sca-add (sca-mul t16 16) 2) 1 16) (aligned 16 2))
       (vec-max
        (load bounded_input (ramp (sca-mul t17 16) 1 16) (aligned 16 0))
        (vec-max
         (load bounded_input (ramp (sca-mul t43 16) 1 16) (aligned 16 0))
         (load bounded_input (ramp (sca-mul t16 16) 1 16) (aligned 16 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "dilate3x3_sexp_4.out")