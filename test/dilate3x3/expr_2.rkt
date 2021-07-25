#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t409 integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t367 integer?)
(define-symbolic t410 integer?)
(define-symbolic t358 integer?)

(define axioms 
  (list ))

(define output.extent.0 (var-lookup 'output.extent.0 t358))
(define t247 (var-lookup 't247 (sca-sub  (sca-mul  t367  384)  (sca-min  output.extent.0  128))))
(define t211 (var-lookup 't211 (sca-add  (sca-mul  t409  128)  (sca-add  (sca-mul  output.s0.x.x  128)  t247))))
(define t212 (var-lookup 't212 (sca-add  (sca-mul  t410  -128)  (sca-add  (sca-mul  output.s0.x.x  128)  t247))))

(define halide-expr
 (let ([t411  (sca-add  (sca-mul  output.s0.x.x  128)  t247)])
  (vec-max
   (load bounded_input (ramp (sca-add t211 129) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (sca-add t411 129) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (sca-add t212 129) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (sca-add t212 130) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (sca-add t411 130) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (sca-add t211 130) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (sca-add t212 128) 1 128) (aligned 1 0))
         (vec-max
          (load bounded_input (ramp (sca-add t411 128) 1 128) (aligned 1 0))
          (load bounded_input (ramp (sca-add t211 128) 1 128) (aligned 1 0))))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")