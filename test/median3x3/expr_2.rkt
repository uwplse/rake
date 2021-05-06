#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t1480 integer?)
(define-symbolic t1497 integer?)
(define-symbolic t1499 integer?)
(define-symbolic t1501 integer?)

(define axioms 
  (list ))

(define output.extent.0 t1480)
(define t1472 (-  (*  output.s0.x.x  128)  (min  output.extent.0  128)))
(define t1108.s t1497)
(define t1109 (load bounded_input (ramp (+ (+ (* t1108.s 128) t1472) 128) 1 128) (aligned 1 0)))
(define t1110.s t1499)
(define t1111 (load bounded_input (ramp (+ (+ (* t1110.s 128) t1472) 128) 1 128) (aligned 1 0)))
(define t1112.s t1501)
(define t1113 (load bounded_input (ramp (+ (+ (* t1112.s 128) t1472) 128) 1 128) (aligned 1 0)))
(define t1114 (load bounded_input (ramp (+ (+ (* t1108.s 128) t1472) 129) 1 128) (aligned 1 0)))
(define t1115 (load bounded_input (ramp (+ (+ (* t1110.s 128) t1472) 129) 1 128) (aligned 1 0)))
(define t1116 (load bounded_input (ramp (+ (+ (* t1112.s 128) t1472) 129) 1 128) (aligned 1 0)))
(define t1117 (load bounded_input (ramp (+ (+ (* t1108.s 128) t1472) 130) 1 128) (aligned 1 0)))
(define t1118 (load bounded_input (ramp (+ (+ (* t1110.s 128) t1472) 130) 1 128) (aligned 1 0)))
(define t1119 (load bounded_input (ramp (+ (+ (* t1112.s 128) t1472) 130) 1 128) (aligned 1 0)))
(define t1120 (vec-min
  (vec-max
   (vec-max
    t1109
    t1111)
   t1113)
  (vec-min
   (vec-max
    (vec-max
     t1114
     t1115)
    t1116)
   (vec-max
    (vec-max
     t1117
     t1118)
    t1119))))
(define t1121 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1114
     t1115)
    t1116)
   (vec-min
    (vec-min
     t1117
     t1118)
    t1119))
  (vec-min
   (vec-min
    t1109
    t1111)
   t1113)))
(define t1122 (vec-max
  (vec-min
   (vec-max
    t1109
    t1113)
   t1111)
  (vec-min
   t1109
   t1113)))
(define t1123 (vec-max
  (vec-min
   (vec-max
    t1114
    t1116)
   t1115)
  (vec-min
   t1114
   t1116)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1120
    t1121)
   (vec-max
    (vec-min
     (vec-max
      t1122
      t1123)
     (vec-max
      (vec-min
       (vec-max
        t1117
        t1119)
       t1118)
      (vec-min
       t1117
       t1119)))
    (vec-min
     t1122
     t1123)))
  (vec-min
   t1120
   t1121)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_2.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)