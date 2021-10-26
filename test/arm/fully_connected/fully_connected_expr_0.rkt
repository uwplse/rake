#lang rosette/safe

(require rake)
(init-logging "fully_connected_expr_0.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic sum_input.s1.r9$x.r9$x integer?)
(define-symbolic t737 integer?)
(define-symbolic t763 integer?)
(define-symbolic t762 integer?)

(define axioms 
  (list ))

(define input.min.0 (var-lookup 'input.min.0 t737))
(define t659 (var-lookup 't659 (sca-add  t762  input.min.0)))
(define t661 (var-lookup 't661 (sca-sub  t763  t659)))

(define halide-expr
 (uint32x16
  (load input (ramp (sca-add (sca-mul sum_input.s1.r9$x.r9$x 16) t661) 1 16) (aligned 1 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "fully_connected_sexp_0.out")