#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t368 integer?)
(define-symbolic t398 integer?)
(define-symbolic t397 integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t358 integer?)

(define axioms 
  (list ))

(define output.extent.0 (var-lookup 'output.extent.0 t358))
(define t246 (var-lookup 't246 (sca-sub  (sca-mul  t368  256)  (sca-min  output.extent.0  128))))
(define t208 (var-lookup 't208 (sca-add  (sca-mul  t397  128)  (sca-add  (sca-mul  output.s0.x.x  128)  t246))))
(define t209 (var-lookup 't209 (sca-add  (sca-mul  t398  -128)  (sca-add  (sca-mul  output.s0.x.x  128)  t246))))

(define halide-expr
 (let ([t399  (sca-add  (sca-mul  output.s0.x.x  128)  t246)])
  (vec-max
   (load bounded_input (ramp (sca-add t208 129) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (sca-add t399 129) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (sca-add t209 129) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (sca-add t209 130) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (sca-add t399 130) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (sca-add t208 130) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (sca-add t209 128) 1 128) (aligned 1 0))
         (vec-max
          (load bounded_input (ramp (sca-add t399 128) 1 128) (aligned 1 0))
          (load bounded_input (ramp (sca-add t208 128) 1 128) (aligned 1 0))))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")