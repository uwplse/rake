#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t301 integer?)
(define-symbolic t312 integer?)
(define-symbolic t369 integer?)
(define-symbolic t370 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t301)
(define t220 (-   (*    t312    384)   (min    output.extent.0    128)))
(define t178 (+   (*    t369    128)   (+    (*     output.s0.x.x     128)    t220)))
(define t179 (+   (*    t370    -128)   (+    (*     output.s0.x.x     128)    t220)))

(define halide-expr
 (vec-max
  (load bounded_input (ramp (+  t178  129) 1 128) (aligned 1 0))
  (vec-max
   (load bounded_input (ramp (+  (+   (*    output.s0.x.x    128)   t220)  129) 1 128) (aligned 1 0))
   (vec-max
    (load bounded_input (ramp (+  t179  129) 1 128) (aligned 1 0))
    (vec-max
     (load bounded_input (ramp (+  t179  130) 1 128) (aligned 1 0))
     (vec-max
      (load bounded_input (ramp (+  (+   (*    output.s0.x.x    128)   t220)  130) 1 128) (aligned 1 0))
      (vec-max
       (load bounded_input (ramp (+  t178  130) 1 128) (aligned 1 0))
       (vec-max
        (load bounded_input (ramp (+  t179  128) 1 128) (aligned 1 0))
        (vec-max
         (load bounded_input (ramp (+  (+   (*    output.s0.x.x    128)   t220)  128) 1 128) (aligned 1 0))
         (load bounded_input (ramp (+  t178  128) 1 128) (aligned 1 0)))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_2.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)