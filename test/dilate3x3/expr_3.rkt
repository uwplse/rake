#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t358 integer?)
(define-symbolic t422 integer?)
(define-symbolic t421 integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t366 integer?)

(define axioms 
  (list ))

(define output.extent.0 (var-lookup 'output.extent.0 t358))
(define t248 (var-lookup 't248 (sca-sub  (sca-mul  t366  512)  (sca-min  output.extent.0  128))))
(define t214 (var-lookup 't214 (sca-add  (sca-mul  t421  128)  (sca-add  (sca-mul  output.s0.x.x  128)  t248))))
(define t215 (var-lookup 't215 (sca-add  (sca-mul  t422  -128)  (sca-add  (sca-mul  output.s0.x.x  128)  t248))))

(define halide-expr
 (let ([t423  (sca-add  (sca-mul  output.s0.x.x  128)  t248)])
  (vec-max
   (load bounded_input (ramp (sca-add t214 129) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (sca-add t423 129) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (sca-add t215 129) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (sca-add t215 130) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (sca-add t423 130) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (sca-add t214 130) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (sca-add t215 128) 1 128) (aligned 1 0))
         (vec-max
          (load bounded_input (ramp (sca-add t423 128) 1 128) (aligned 1 0))
          (load bounded_input (ramp (sca-add t214 128) 1 128) (aligned 1 0))))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")