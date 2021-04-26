#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t1393 integer?)
(define-symbolic t1559 integer?)
(define-symbolic t1557 integer?)
(define-symbolic t1561 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t1393)
(define t1385 (-   (*    output.s0.x.x    128)   (min    output.extent.0    128)))
(define t1087.s t1557)
(define t1088 (load bounded_input (ramp (+  (+   (*    t1087.s    128)   t1385)  128) 1 128) (aligned 1 0)))
(define t1089.s t1559)
(define t1090 (load bounded_input (ramp (+  (+   (*    t1089.s    128)   t1385)  128) 1 128) (aligned 1 0)))
(define t1091.s t1561)
(define t1092 (load bounded_input (ramp (+  (+   (*    t1091.s    128)   t1385)  128) 1 128) (aligned 1 0)))
(define t1093 (load bounded_input (ramp (+  (+   (*    t1087.s    128)   t1385)  129) 1 128) (aligned 1 0)))
(define t1094 (load bounded_input (ramp (+  (+   (*    t1089.s    128)   t1385)  129) 1 128) (aligned 1 0)))
(define t1095 (load bounded_input (ramp (+  (+   (*    t1091.s    128)   t1385)  129) 1 128) (aligned 1 0)))
(define t1096 (load bounded_input (ramp (+  (+   (*    t1087.s    128)   t1385)  130) 1 128) (aligned 1 0)))
(define t1097 (load bounded_input (ramp (+  (+   (*    t1089.s    128)   t1385)  130) 1 128) (aligned 1 0)))
(define t1098 (load bounded_input (ramp (+  (+   (*    t1091.s    128)   t1385)  130) 1 128) (aligned 1 0)))
(define t1099 (vec-min
  (vec-max
   (vec-max
    t1088
    t1090)
   t1092)
  (vec-min
   (vec-max
    (vec-max
     t1093
     t1094)
    t1095)
   (vec-max
    (vec-max
     t1096
     t1097)
    t1098))))
(define t1100 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1093
     t1094)
    t1095)
   (vec-min
    (vec-min
     t1096
     t1097)
    t1098))
  (vec-min
   (vec-min
    t1088
    t1090)
   t1092)))
(define t1101 (vec-max
  (vec-min
   (vec-max
    t1088
    t1092)
   t1090)
  (vec-min
   t1088
   t1092)))
(define t1102 (vec-max
  (vec-min
   (vec-max
    t1093
    t1095)
   t1094)
  (vec-min
   t1093
   t1095)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1099
    t1100)
   (vec-max
    (vec-min
     (vec-max
      t1101
      t1102)
     (vec-max
      (vec-min
       (vec-max
        t1096
        t1098)
       t1097)
      (vec-min
       t1096
       t1098)))
    (vec-min
     t1101
     t1102)))
  (vec-min
   t1099
   t1100)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_2.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)