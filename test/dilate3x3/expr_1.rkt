#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t301 integer?)
(define-symbolic t313 integer?)
(define-symbolic t349 integer?)
(define-symbolic t350 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t301)
(define t219 (-   (*    t313    256)   (min    output.extent.0    128)))
(define t176 (+   (*    t349    128)   (+    (*     output.s0.x.x     128)    t219)))
(define t177 (+   (*    t350    -128)   (+    (*     output.s0.x.x     128)    t219)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (+  t176  129) 1 128) (aligned 1 0))
  (vec-max
   (load bounded_input (ramp (+  (+   (*    output.s0.x.x    128)   t219)  129) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (+  t177  129) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (+  t177  130) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (+  (+   (*    output.s0.x.x    128)   t219)  130) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (+  t176  130) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (+  t177  128) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (+  (+   (*    output.s0.x.x    128)   t219)  128) 1 128) (aligned 1 0))
         (load bounded_input (ramp (+  t176  128) 1 128) (aligned 1 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_1.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)