#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t1393 integer?)
(define-symbolic t1923 integer?)
(define-symbolic t1703 integer?)
(define-symbolic t1925 integer?)
(define-symbolic t1927 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t1393)
(define t1290 (+   (max    output.extent.0    128)   (*    t1703    -128)))
(define t1186 (+   (max    output.extent.0    128)   (*    t1923    128)))
(define t1187 (load bounded_input (ramp (+  t1186  -128) 1 128) (aligned 1 0)))
(define t1189.s t1925)
(define t1190 (load bounded_input (ramp (+  (+   (*    t1189.s    128)   t1290)  -128) 1 128) (aligned 1 0)))
(define t1191.s t1927)
(define t1192 (load bounded_input (ramp (+  (+   (*    t1191.s    128)   t1290)  -128) 1 128) (aligned 1 0)))
(define t1193 (load bounded_input (ramp (+  t1186  -127) 1 128) (aligned 1 0)))
(define t1194 (load bounded_input (ramp (+  (+   (*    t1189.s    128)   t1290)  -127) 1 128) (aligned 1 0)))
(define t1195 (load bounded_input (ramp (+  (+   (*    t1191.s    128)   t1290)  -127) 1 128) (aligned 1 0)))
(define t1196 (load bounded_input (ramp (+  t1186  -126) 1 128) (aligned 1 0)))
(define t1197 (load bounded_input (ramp (+  (+   (*    t1189.s    128)   t1290)  -126) 1 128) (aligned 1 0)))
(define t1198 (load bounded_input (ramp (+  (+   (*    t1191.s    128)   t1290)  -126) 1 128) (aligned 1 0)))
(define t1199 (vec-min
  (vec-max
   (vec-max
    t1187
    t1190)
   t1192)
  (vec-min
   (vec-max
    (vec-max
     t1193
     t1194)
    t1195)
   (vec-max
    (vec-max
     t1196
     t1197)
    t1198))))
(define t1200 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1193
     t1194)
    t1195)
   (vec-min
    (vec-min
     t1196
     t1197)
    t1198))
  (vec-min
   (vec-min
    t1187
    t1190)
   t1192)))
(define t1201 (vec-max
  (vec-min
   (vec-max
    t1187
    t1192)
   t1190)
  (vec-min
   t1187
   t1192)))
(define t1202 (vec-max
  (vec-min
   (vec-max
    t1193
    t1195)
   t1194)
  (vec-min
   t1193
   t1195)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1199
    t1200)
   (vec-max
    (vec-min
     (vec-max
      t1201
      t1202)
     (vec-max
      (vec-min
       (vec-max
        t1196
        t1198)
       t1197)
      (vec-min
       t1196
       t1198)))
    (vec-min
     t1201
     t1202)))
  (vec-min
   t1199
   t1200)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_7.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)