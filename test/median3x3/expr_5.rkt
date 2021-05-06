#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t1480 integer?)
(define-symbolic t1718 integer?)
(define-symbolic t1720 integer?)
(define-symbolic t1716 integer?)

(define axioms 
  (list ))

(define output.extent.0 t1480)
(define t1472 (-  (*  output.s0.x.x  128)  (min  output.extent.0  128)))
(define t1170.s t1716)
(define t1171 (load bounded_input (ramp (+ (+ (* t1170.s 128) t1472) 128) 1 128) (aligned 1 0)))
(define t1173.s t1718)
(define t1174 (load bounded_input (ramp (+ (+ (* t1173.s 128) t1472) 128) 1 128) (aligned 1 0)))
(define t1175.s t1720)
(define t1176 (load bounded_input (ramp (+ (+ (* t1175.s 128) t1472) 128) 1 128) (aligned 1 0)))
(define t1177 (load bounded_input (ramp (+ (+ (* t1170.s 128) t1472) 129) 1 128) (aligned 1 0)))
(define t1178 (load bounded_input (ramp (+ (+ (* t1173.s 128) t1472) 129) 1 128) (aligned 1 0)))
(define t1179 (load bounded_input (ramp (+ (+ (* t1175.s 128) t1472) 129) 1 128) (aligned 1 0)))
(define t1180 (load bounded_input (ramp (+ (+ (* t1170.s 128) t1472) 130) 1 128) (aligned 1 0)))
(define t1181 (load bounded_input (ramp (+ (+ (* t1173.s 128) t1472) 130) 1 128) (aligned 1 0)))
(define t1182 (load bounded_input (ramp (+ (+ (* t1175.s 128) t1472) 130) 1 128) (aligned 1 0)))
(define t1183 (vec-min
  (vec-max
   (vec-max
    t1171
    t1174)
   t1176)
  (vec-min
   (vec-max
    (vec-max
     t1177
     t1178)
    t1179)
   (vec-max
    (vec-max
     t1180
     t1181)
    t1182))))
(define t1184 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1177
     t1178)
    t1179)
   (vec-min
    (vec-min
     t1180
     t1181)
    t1182))
  (vec-min
   (vec-min
    t1171
    t1174)
   t1176)))
(define t1185 (vec-max
  (vec-min
   (vec-max
    t1171
    t1176)
   t1174)
  (vec-min
   t1171
   t1176)))
(define t1186 (vec-max
  (vec-min
   (vec-max
    t1177
    t1179)
   t1178)
  (vec-min
   t1177
   t1179)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1183
    t1184)
   (vec-max
    (vec-min
     (vec-max
      t1185
      t1186)
     (vec-max
      (vec-min
       (vec-max
        t1180
        t1182)
       t1181)
      (vec-min
       t1180
       t1182)))
    (vec-min
     t1185
     t1186)))
  (vec-min
   t1183
   t1184)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_5.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)