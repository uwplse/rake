#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t1393 integer?)
(define-symbolic t1632 integer?)
(define-symbolic t1634 integer?)
(define-symbolic t1630 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t1393)
(define t1385 (-   (*    output.s0.x.x    128)   (min    output.extent.0    128)))
(define t1106.s t1630)
(define t1107 (load bounded_input (ramp (+  (+   (*    t1106.s    128)   t1385)  128) 1 128) (aligned 1 0)))
(define t1109.s t1632)
(define t1110 (load bounded_input (ramp (+  (+   (*    t1109.s    128)   t1385)  128) 1 128) (aligned 1 0)))
(define t1111.s t1634)
(define t1112 (load bounded_input (ramp (+  (+   (*    t1111.s    128)   t1385)  128) 1 128) (aligned 1 0)))
(define t1113 (load bounded_input (ramp (+  (+   (*    t1106.s    128)   t1385)  129) 1 128) (aligned 1 0)))
(define t1114 (load bounded_input (ramp (+  (+   (*    t1109.s    128)   t1385)  129) 1 128) (aligned 1 0)))
(define t1115 (load bounded_input (ramp (+  (+   (*    t1111.s    128)   t1385)  129) 1 128) (aligned 1 0)))
(define t1116 (load bounded_input (ramp (+  (+   (*    t1106.s    128)   t1385)  130) 1 128) (aligned 1 0)))
(define t1117 (load bounded_input (ramp (+  (+   (*    t1109.s    128)   t1385)  130) 1 128) (aligned 1 0)))
(define t1118 (load bounded_input (ramp (+  (+   (*    t1111.s    128)   t1385)  130) 1 128) (aligned 1 0)))
(define t1119 (vec-min
  (vec-max
   (vec-max
    t1107
    t1110)
   t1112)
  (vec-min
   (vec-max
    (vec-max
     t1113
     t1114)
    t1115)
   (vec-max
    (vec-max
     t1116
     t1117)
    t1118))))
(define t1120 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1113
     t1114)
    t1115)
   (vec-min
    (vec-min
     t1116
     t1117)
    t1118))
  (vec-min
   (vec-min
    t1107
    t1110)
   t1112)))
(define t1121 (vec-max
  (vec-min
   (vec-max
    t1107
    t1112)
   t1110)
  (vec-min
   t1107
   t1112)))
(define t1122 (vec-max
  (vec-min
   (vec-max
    t1113
    t1115)
   t1114)
  (vec-min
   t1113
   t1115)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1119
    t1120)
   (vec-max
    (vec-min
     (vec-max
      t1121
      t1122)
     (vec-max
      (vec-min
       (vec-max
        t1116
        t1118)
       t1117)
      (vec-min
       t1116
       t1118)))
    (vec-min
     t1121
     t1122)))
  (vec-min
   t1119
   t1120)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_3.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)