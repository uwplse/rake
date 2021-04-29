#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t1393 integer?)
(define-symbolic t1411 integer?)
(define-symbolic t1413 integer?)
(define-symbolic t1415 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t1393)
(define t1385 (-   (*    output.s0.x.x    128)   (min    output.extent.0    128)))
(define t1047.s t1411)
(define t1048 (load bounded_input (ramp (+  (+   (*    t1047.s    128)   t1385)  128) 1 128) (aligned 1 0)))
(define t1049.s t1413)
(define t1050 (load bounded_input (ramp (+  (+   (*    t1049.s    128)   t1385)  128) 1 128) (aligned 1 0)))
(define t1051.s t1415)
(define t1052 (load bounded_input (ramp (+  (+   (*    t1051.s    128)   t1385)  128) 1 128) (aligned 1 0)))
(define t1053 (load bounded_input (ramp (+  (+   (*    t1047.s    128)   t1385)  129) 1 128) (aligned 1 0)))
(define t1054 (load bounded_input (ramp (+  (+   (*    t1049.s    128)   t1385)  129) 1 128) (aligned 1 0)))
(define t1055 (load bounded_input (ramp (+  (+   (*    t1051.s    128)   t1385)  129) 1 128) (aligned 1 0)))
(define t1056 (load bounded_input (ramp (+  (+   (*    t1047.s    128)   t1385)  130) 1 128) (aligned 1 0)))
(define t1057 (load bounded_input (ramp (+  (+   (*    t1049.s    128)   t1385)  130) 1 128) (aligned 1 0)))
(define t1058 (load bounded_input (ramp (+  (+   (*    t1051.s    128)   t1385)  130) 1 128) (aligned 1 0)))
(define t1059 (vec-min
  (vec-max
   (vec-max
    t1048
    t1050)
   t1052)
  (vec-min
   (vec-max
    (vec-max
     t1053
     t1054)
    t1055)
   (vec-max
    (vec-max
     t1056
     t1057)
    t1058))))
(define t1060 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1053
     t1054)
    t1055)
   (vec-min
    (vec-min
     t1056
     t1057)
    t1058))
  (vec-min
   (vec-min
    t1048
    t1050)
   t1052)))
(define t1061 (vec-max
  (vec-min
   (vec-max
    t1048
    t1052)
   t1050)
  (vec-min
   t1048
   t1052)))
(define t1062 (vec-max
  (vec-min
   (vec-max
    t1053
    t1055)
   t1054)
  (vec-min
   t1053
   t1055)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1059
    t1060)
   (vec-max
    (vec-min
     (vec-max
      t1061
      t1062)
     (vec-max
      (vec-min
       (vec-max
        t1056
        t1058)
       t1057)
      (vec-min
       t1056
       t1058)))
    (vec-min
     t1061
     t1062)))
  (vec-min
   t1059
   t1060)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_0.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)