#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t1480 integer?)
(define-symbolic t1789 integer?)
(define-symbolic t1938 integer?)
(define-symbolic t1936 integer?)
(define-symbolic t1940 integer?)

(define axioms 
  (list ))

(define output.extent.0 t1480)
(define t1377 (+  (max  output.extent.0  128)  (*  t1789  -128)))
(define t1231 (+  (max  output.extent.0  128)  (*  t1936  128)))
(define t1232 (load bounded_input (ramp (+ t1231 -128) 1 128) (aligned 1 0)))
(define t1233.s t1938)
(define t1234 (load bounded_input (ramp (+ (+ (* t1233.s 128) t1377) -128) 1 128) (aligned 1 0)))
(define t1235.s t1940)
(define t1236 (load bounded_input (ramp (+ (+ (* t1235.s 128) t1377) -128) 1 128) (aligned 1 0)))
(define t1237 (load bounded_input (ramp (+ t1231 -127) 1 128) (aligned 1 0)))
(define t1238 (load bounded_input (ramp (+ (+ (* t1233.s 128) t1377) -127) 1 128) (aligned 1 0)))
(define t1239 (load bounded_input (ramp (+ (+ (* t1235.s 128) t1377) -127) 1 128) (aligned 1 0)))
(define t1240 (load bounded_input (ramp (+ t1231 -126) 1 128) (aligned 1 0)))
(define t1241 (load bounded_input (ramp (+ (+ (* t1233.s 128) t1377) -126) 1 128) (aligned 1 0)))
(define t1242 (load bounded_input (ramp (+ (+ (* t1235.s 128) t1377) -126) 1 128) (aligned 1 0)))
(define t1243 (vec-min
  (vec-max
   (vec-max
    t1232
    t1234)
   t1236)
  (vec-min
   (vec-max
    (vec-max
     t1237
     t1238)
    t1239)
   (vec-max
    (vec-max
     t1240
     t1241)
    t1242))))
(define t1244 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1237
     t1238)
    t1239)
   (vec-min
    (vec-min
     t1240
     t1241)
    t1242))
  (vec-min
   (vec-min
    t1232
    t1234)
   t1236)))
(define t1245 (vec-max
  (vec-min
   (vec-max
    t1232
    t1236)
   t1234)
  (vec-min
   t1232
   t1236)))
(define t1246 (vec-max
  (vec-min
   (vec-max
    t1237
    t1239)
   t1238)
  (vec-min
   t1237
   t1239)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1243
    t1244)
   (vec-max
    (vec-min
     (vec-max
      t1245
      t1246)
     (vec-max
      (vec-min
       (vec-max
        t1240
        t1242)
       t1241)
      (vec-min
       t1240
       t1242)))
    (vec-min
     t1245
     t1246)))
  (vec-min
   t1243
   t1244)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_8.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)