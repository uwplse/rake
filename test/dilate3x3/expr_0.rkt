#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t301 integer?)
(define-symbolic t328 integer?)
(define-symbolic t329 integer?)
(define-symbolic t330 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t301)
(define t265 (-   (*    t328    128)   (min    output.extent.0    128)))
(define t174 (+   (*    t329    128)   (+    (*     output.s0.x.x     128)    t265)))
(define t175 (+   (*    t330    -128)   (+    (*     output.s0.x.x     128)    t265)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (+  t174  129) 1 128) (aligned 1 0))
  (vec-max
   (load bounded_input (ramp (+  (+   (*    output.s0.x.x    128)   t265)  129) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (+  t175  129) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (+  t175  130) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (+  (+   (*    output.s0.x.x    128)   t265)  130) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (+  t174  130) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (+  t175  128) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (+  (+   (*    output.s0.x.x    128)   t265)  128) 1 128) (aligned 1 0))
         (load bounded_input (ramp (+  t174  128) 1 128) (aligned 1 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_0.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)