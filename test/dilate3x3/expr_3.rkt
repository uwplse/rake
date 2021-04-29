#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t311 integer?)
(define-symbolic t301 integer?)
(define-symbolic t390 integer?)
(define-symbolic t389 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t301)
(define t221 (-   (*    t311    512)   (min    output.extent.0    128)))
(define t180 (+   (*    t389    128)   (+    (*     output.s0.x.x     128)    t221)))
(define t181 (+   (*    t390    -128)   (+    (*     output.s0.x.x     128)    t221)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (+  t180  129) 1 128) (aligned 1 0))
  (vec-max
   (load bounded_input (ramp (+  (+   (*    output.s0.x.x    128)   t221)  129) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (+  t181  129) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (+  t181  130) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (+  (+   (*    output.s0.x.x    128)   t221)  130) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (+  t180  130) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (+  t181  128) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (+  (+   (*    output.s0.x.x    128)   t221)  128) 1 128) (aligned 1 0))
         (load bounded_input (ramp (+  t180  128) 1 128) (aligned 1 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_3.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)