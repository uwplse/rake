#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t1393 integer?)
(define-symbolic t1484 integer?)
(define-symbolic t1486 integer?)
(define-symbolic t1488 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t1393)
(define t1385 (-   (*    output.s0.x.x    128)   (min    output.extent.0    128)))
(define t1067.s t1484)
(define t1068 (load bounded_input (ramp (+  (+   (*    t1067.s    128)   t1385)  128) 1 128) (aligned 1 0)))
(define t1069.s t1486)
(define t1070 (load bounded_input (ramp (+  (+   (*    t1069.s    128)   t1385)  128) 1 128) (aligned 1 0)))
(define t1071.s t1488)
(define t1072 (load bounded_input (ramp (+  (+   (*    t1071.s    128)   t1385)  128) 1 128) (aligned 1 0)))
(define t1073 (load bounded_input (ramp (+  (+   (*    t1067.s    128)   t1385)  129) 1 128) (aligned 1 0)))
(define t1074 (load bounded_input (ramp (+  (+   (*    t1069.s    128)   t1385)  129) 1 128) (aligned 1 0)))
(define t1075 (load bounded_input (ramp (+  (+   (*    t1071.s    128)   t1385)  129) 1 128) (aligned 1 0)))
(define t1076 (load bounded_input (ramp (+  (+   (*    t1067.s    128)   t1385)  130) 1 128) (aligned 1 0)))
(define t1077 (load bounded_input (ramp (+  (+   (*    t1069.s    128)   t1385)  130) 1 128) (aligned 1 0)))
(define t1078 (load bounded_input (ramp (+  (+   (*    t1071.s    128)   t1385)  130) 1 128) (aligned 1 0)))
(define t1079 (vec-min
  (vec-max
   (vec-max
    t1068
    t1070)
   t1072)
  (vec-min
   (vec-max
    (vec-max
     t1073
     t1074)
    t1075)
   (vec-max
    (vec-max
     t1076
     t1077)
    t1078))))
(define t1080 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1073
     t1074)
    t1075)
   (vec-min
    (vec-min
     t1076
     t1077)
    t1078))
  (vec-min
   (vec-min
    t1068
    t1070)
   t1072)))
(define t1081 (vec-max
  (vec-min
   (vec-max
    t1068
    t1072)
   t1070)
  (vec-min
   t1068
   t1072)))
(define t1082 (vec-max
  (vec-min
   (vec-max
    t1073
    t1075)
   t1074)
  (vec-min
   t1073
   t1075)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1079
    t1080)
   (vec-max
    (vec-min
     (vec-max
      t1081
      t1082)
     (vec-max
      (vec-min
       (vec-max
        t1076
        t1078)
       t1077)
      (vec-min
       t1076
       t1078)))
    (vec-min
     t1081
     t1082)))
  (vec-min
   t1079
   t1080)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_1.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)