#lang rosette/safe

(require rake)
(init-logging "blur3x3_expr_2.runtimes")

(define-symbolic-buffer blur_x uint16_t)
(define-symbolic blur_y.s0.y.y integer?)
(define-symbolic blur_y.s0.y.yi.$n integer?)
(define-symbolic t264 integer?)
(define-symbolic t267 integer?)
(define-symbolic t284 integer?)

(define axioms 
  (list ))

(define blur_y.extent.0 (var-lookup 'blur_y.extent.0 t264))
(define blur_y.extent.1 (var-lookup 'blur_y.extent.1 t267))
(define t235 (var-lookup 't235 (sca-min  blur_y.extent.0  16)))
(define t239 (var-lookup 't239 (sca-add  t235  -16)))
(define t227 (var-lookup 't227 (sca-min  t284  t239)))
(define blur_y.s0.y.yi.base (var-lookup 'blur_y.s0.y.yi.base (sca-min  (sca-mul  blur_y.s0.y.y  32)  (sca-add  blur_y.extent.1  -32))))
(define t217 (var-lookup 't217 (sca-add  blur_y.s0.y.yi.$n  blur_y.s0.y.yi.base)))

(define halide-expr
 (let ([t296  (sca-sub  blur_y.extent.0  t227)])
  (let ([t297   (sca-sub   t235   t227)])
   (vec-div
    (vec-add
     (load blur_x (ramp (sca-add (sca-add (sca-mul (sca-mod (sca-add t217 1) 4) t296) t297) -16) 1 16) (aligned 1 0))
     (vec-add
      (load blur_x (ramp (sca-add (sca-add (sca-mul (sca-mod (sca-add t217 2) 4) t296) t297) -16) 1 16) (aligned 1 0))
      (load blur_x (ramp (sca-add (sca-add (sca-mul (sca-mod t217 4) t296) t297) -16) 1 16) (aligned 1 0))))
    (x16 (uint16_t (bv 3 16)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "blur3x3_sexp_2.out")