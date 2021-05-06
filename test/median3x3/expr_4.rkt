#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t1643 integer?)
(define-symbolic t1645 integer?)
(define-symbolic t1480 integer?)
(define-symbolic t1647 integer?)

(define axioms 
  (list ))

(define output.extent.0 t1480)
(define t1472 (-  (*  output.s0.x.x  128)  (min  output.extent.0  128)))
(define t1150.s t1643)
(define t1151 (load bounded_input (ramp (+ (+ (* t1150.s 128) t1472) 128) 1 128) (aligned 1 0)))
(define t1152.s t1645)
(define t1153 (load bounded_input (ramp (+ (+ (* t1152.s 128) t1472) 128) 1 128) (aligned 1 0)))
(define t1154.s t1647)
(define t1155 (load bounded_input (ramp (+ (+ (* t1154.s 128) t1472) 128) 1 128) (aligned 1 0)))
(define t1156 (load bounded_input (ramp (+ (+ (* t1150.s 128) t1472) 129) 1 128) (aligned 1 0)))
(define t1157 (load bounded_input (ramp (+ (+ (* t1152.s 128) t1472) 129) 1 128) (aligned 1 0)))
(define t1158 (load bounded_input (ramp (+ (+ (* t1154.s 128) t1472) 129) 1 128) (aligned 1 0)))
(define t1159 (load bounded_input (ramp (+ (+ (* t1150.s 128) t1472) 130) 1 128) (aligned 1 0)))
(define t1160 (load bounded_input (ramp (+ (+ (* t1152.s 128) t1472) 130) 1 128) (aligned 1 0)))
(define t1161 (load bounded_input (ramp (+ (+ (* t1154.s 128) t1472) 130) 1 128) (aligned 1 0)))
(define t1162 (vec-min
  (vec-max
   (vec-max
    t1151
    t1153)
   t1155)
  (vec-min
   (vec-max
    (vec-max
     t1156
     t1157)
    t1158)
   (vec-max
    (vec-max
     t1159
     t1160)
    t1161))))
(define t1163 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1156
     t1157)
    t1158)
   (vec-min
    (vec-min
     t1159
     t1160)
    t1161))
  (vec-min
   (vec-min
    t1151
    t1153)
   t1155)))
(define t1164 (vec-max
  (vec-min
   (vec-max
    t1151
    t1155)
   t1153)
  (vec-min
   t1151
   t1155)))
(define t1165 (vec-max
  (vec-min
   (vec-max
    t1156
    t1158)
   t1157)
  (vec-min
   t1156
   t1158)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1162
    t1163)
   (vec-max
    (vec-min
     (vec-max
      t1164
      t1165)
     (vec-max
      (vec-min
       (vec-max
        t1159
        t1161)
       t1160)
      (vec-min
       t1159
       t1161)))
    (vec-min
     t1164
     t1165)))
  (vec-min
   t1162
   t1163)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_4.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)