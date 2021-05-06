#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t1480 integer?)
(define-symbolic t1574 integer?)
(define-symbolic t1570 integer?)
(define-symbolic t1572 integer?)

(define axioms 
  (list ))

(define output.extent.0 t1480)
(define t1472 (-  (*  output.s0.x.x  128)  (min  output.extent.0  128)))
(define t1129.s t1570)
(define t1130 (load bounded_input (ramp (+ (+ (* t1129.s 128) t1472) 128) 1 128) (aligned 1 0)))
(define t1131.s t1572)
(define t1132 (load bounded_input (ramp (+ (+ (* t1131.s 128) t1472) 128) 1 128) (aligned 1 0)))
(define t1133.s t1574)
(define t1134 (load bounded_input (ramp (+ (+ (* t1133.s 128) t1472) 128) 1 128) (aligned 1 0)))
(define t1135 (load bounded_input (ramp (+ (+ (* t1129.s 128) t1472) 129) 1 128) (aligned 1 0)))
(define t1136 (load bounded_input (ramp (+ (+ (* t1131.s 128) t1472) 129) 1 128) (aligned 1 0)))
(define t1137 (load bounded_input (ramp (+ (+ (* t1133.s 128) t1472) 129) 1 128) (aligned 1 0)))
(define t1138 (load bounded_input (ramp (+ (+ (* t1129.s 128) t1472) 130) 1 128) (aligned 1 0)))
(define t1139 (load bounded_input (ramp (+ (+ (* t1131.s 128) t1472) 130) 1 128) (aligned 1 0)))
(define t1140 (load bounded_input (ramp (+ (+ (* t1133.s 128) t1472) 130) 1 128) (aligned 1 0)))
(define t1141 (vec-min
  (vec-max
   (vec-max
    t1130
    t1132)
   t1134)
  (vec-min
   (vec-max
    (vec-max
     t1135
     t1136)
    t1137)
   (vec-max
    (vec-max
     t1138
     t1139)
    t1140))))
(define t1142 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1135
     t1136)
    t1137)
   (vec-min
    (vec-min
     t1138
     t1139)
    t1140))
  (vec-min
   (vec-min
    t1130
    t1132)
   t1134)))
(define t1143 (vec-max
  (vec-min
   (vec-max
    t1130
    t1134)
   t1132)
  (vec-min
   t1130
   t1134)))
(define t1144 (vec-max
  (vec-min
   (vec-max
    t1135
    t1137)
   t1136)
  (vec-min
   t1135
   t1137)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1141
    t1142)
   (vec-max
    (vec-min
     (vec-max
      t1143
      t1144)
     (vec-max
      (vec-min
       (vec-max
        t1138
        t1140)
       t1139)
      (vec-min
       t1138
       t1140)))
    (vec-min
     t1143
     t1144)))
  (vec-min
   t1141
   t1142)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_3.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)