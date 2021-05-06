#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t1480 integer?)
(define-symbolic t1789 integer?)
(define-symbolic t2009 integer?)
(define-symbolic t2011 integer?)
(define-symbolic t2013 integer?)

(define axioms 
  (list ))

(define output.extent.0 t1480)
(define t1377 (+  (max  output.extent.0  128)  (*  t1789  -128)))
(define t1250 (+  (max  output.extent.0  128)  (*  t2009  128)))
(define t1251 (load bounded_input (ramp (+ t1250 -128) 1 128) (aligned 1 0)))
(define t1253.s t2011)
(define t1254 (load bounded_input (ramp (+ (+ (* t1253.s 128) t1377) -128) 1 128) (aligned 1 0)))
(define t1255.s t2013)
(define t1256 (load bounded_input (ramp (+ (+ (* t1255.s 128) t1377) -128) 1 128) (aligned 1 0)))
(define t1257 (load bounded_input (ramp (+ t1250 -127) 1 128) (aligned 1 0)))
(define t1258 (load bounded_input (ramp (+ (+ (* t1253.s 128) t1377) -127) 1 128) (aligned 1 0)))
(define t1259 (load bounded_input (ramp (+ (+ (* t1255.s 128) t1377) -127) 1 128) (aligned 1 0)))
(define t1260 (load bounded_input (ramp (+ t1250 -126) 1 128) (aligned 1 0)))
(define t1261 (load bounded_input (ramp (+ (+ (* t1253.s 128) t1377) -126) 1 128) (aligned 1 0)))
(define t1262 (load bounded_input (ramp (+ (+ (* t1255.s 128) t1377) -126) 1 128) (aligned 1 0)))
(define t1263 (vec-min
  (vec-max
   (vec-max
    t1251
    t1254)
   t1256)
  (vec-min
   (vec-max
    (vec-max
     t1257
     t1258)
    t1259)
   (vec-max
    (vec-max
     t1260
     t1261)
    t1262))))
(define t1264 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1257
     t1258)
    t1259)
   (vec-min
    (vec-min
     t1260
     t1261)
    t1262))
  (vec-min
   (vec-min
    t1251
    t1254)
   t1256)))
(define t1265 (vec-max
  (vec-min
   (vec-max
    t1251
    t1256)
   t1254)
  (vec-min
   t1251
   t1256)))
(define t1266 (vec-max
  (vec-min
   (vec-max
    t1257
    t1259)
   t1258)
  (vec-min
   t1257
   t1259)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1263
    t1264)
   (vec-max
    (vec-min
     (vec-max
      t1265
      t1266)
     (vec-max
      (vec-min
       (vec-max
        t1260
        t1262)
       t1261)
      (vec-min
       t1260
       t1262)))
    (vec-min
     t1265
     t1266)))
  (vec-min
   t1263
   t1264)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_9.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)