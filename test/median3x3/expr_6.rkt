#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t1480 integer?)
(define-symbolic t1789 integer?)
(define-symbolic t1792 integer?)
(define-symbolic t1794 integer?)
(define-symbolic t1790 integer?)

(define axioms 
  (list ))

(define output.extent.0 t1480)
(define t1377 (+  (max  output.extent.0  128)  (*  t1789  -128)))
(define t1191 (+  (max  output.extent.0  128)  (*  t1790  128)))
(define t1192 (load bounded_input (ramp (+ t1191 -128) 1 128) (aligned 1 0)))
(define t1193.s t1792)
(define t1194 (load bounded_input (ramp (+ (+ (* t1193.s 128) t1377) -128) 1 128) (aligned 1 0)))
(define t1195.s t1794)
(define t1196 (load bounded_input (ramp (+ (+ (* t1195.s 128) t1377) -128) 1 128) (aligned 1 0)))
(define t1197 (load bounded_input (ramp (+ t1191 -127) 1 128) (aligned 1 0)))
(define t1198 (load bounded_input (ramp (+ (+ (* t1193.s 128) t1377) -127) 1 128) (aligned 1 0)))
(define t1199 (load bounded_input (ramp (+ (+ (* t1195.s 128) t1377) -127) 1 128) (aligned 1 0)))
(define t1200 (load bounded_input (ramp (+ t1191 -126) 1 128) (aligned 1 0)))
(define t1201 (load bounded_input (ramp (+ (+ (* t1193.s 128) t1377) -126) 1 128) (aligned 1 0)))
(define t1202 (load bounded_input (ramp (+ (+ (* t1195.s 128) t1377) -126) 1 128) (aligned 1 0)))
(define t1203 (vec-min
  (vec-max
   (vec-max
    t1192
    t1194)
   t1196)
  (vec-min
   (vec-max
    (vec-max
     t1197
     t1198)
    t1199)
   (vec-max
    (vec-max
     t1200
     t1201)
    t1202))))
(define t1204 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1197
     t1198)
    t1199)
   (vec-min
    (vec-min
     t1200
     t1201)
    t1202))
  (vec-min
   (vec-min
    t1192
    t1194)
   t1196)))
(define t1205 (vec-max
  (vec-min
   (vec-max
    t1192
    t1196)
   t1194)
  (vec-min
   t1192
   t1196)))
(define t1206 (vec-max
  (vec-min
   (vec-max
    t1197
    t1199)
   t1198)
  (vec-min
   t1197
   t1199)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1203
    t1204)
   (vec-max
    (vec-min
     (vec-max
      t1205
      t1206)
     (vec-max
      (vec-min
       (vec-max
        t1200
        t1202)
       t1201)
      (vec-min
       t1200
       t1202)))
    (vec-min
     t1205
     t1206)))
  (vec-min
   t1203
   t1204)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_6.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)