#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t1480 integer?)
(define-symbolic t1789 integer?)
(define-symbolic t1863 integer?)
(define-symbolic t1865 integer?)
(define-symbolic t1867 integer?)

(define axioms 
  (list ))

(define output.extent.0 t1480)
(define t1377 (+  (max  output.extent.0  128)  (*  t1789  -128)))
(define t1211 (+  (max  output.extent.0  128)  (*  t1863  128)))
(define t1212 (load bounded_input (ramp (+ t1211 -128) 1 128) (aligned 1 0)))
(define t1213.s t1865)
(define t1214 (load bounded_input (ramp (+ (+ (* t1213.s 128) t1377) -128) 1 128) (aligned 1 0)))
(define t1215.s t1867)
(define t1216 (load bounded_input (ramp (+ (+ (* t1215.s 128) t1377) -128) 1 128) (aligned 1 0)))
(define t1217 (load bounded_input (ramp (+ t1211 -127) 1 128) (aligned 1 0)))
(define t1218 (load bounded_input (ramp (+ (+ (* t1213.s 128) t1377) -127) 1 128) (aligned 1 0)))
(define t1219 (load bounded_input (ramp (+ (+ (* t1215.s 128) t1377) -127) 1 128) (aligned 1 0)))
(define t1220 (load bounded_input (ramp (+ t1211 -126) 1 128) (aligned 1 0)))
(define t1221 (load bounded_input (ramp (+ (+ (* t1213.s 128) t1377) -126) 1 128) (aligned 1 0)))
(define t1222 (load bounded_input (ramp (+ (+ (* t1215.s 128) t1377) -126) 1 128) (aligned 1 0)))
(define t1223 (vec-min
  (vec-max
   (vec-max
    t1212
    t1214)
   t1216)
  (vec-min
   (vec-max
    (vec-max
     t1217
     t1218)
    t1219)
   (vec-max
    (vec-max
     t1220
     t1221)
    t1222))))
(define t1224 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1217
     t1218)
    t1219)
   (vec-min
    (vec-min
     t1220
     t1221)
    t1222))
  (vec-min
   (vec-min
    t1212
    t1214)
   t1216)))
(define t1225 (vec-max
  (vec-min
   (vec-max
    t1212
    t1216)
   t1214)
  (vec-min
   t1212
   t1216)))
(define t1226 (vec-max
  (vec-min
   (vec-max
    t1217
    t1219)
   t1218)
  (vec-min
   t1217
   t1219)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1223
    t1224)
   (vec-max
    (vec-min
     (vec-max
      t1225
      t1226)
     (vec-max
      (vec-min
       (vec-max
        t1220
        t1222)
       t1221)
      (vec-min
       t1220
       t1222)))
    (vec-min
     t1225
     t1226)))
  (vec-min
   t1223
   t1224)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_7.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)