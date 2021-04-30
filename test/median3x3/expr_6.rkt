#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t1393 integer?)
(define-symbolic t1854 integer?)
(define-symbolic t1850 integer?)
(define-symbolic t1852 integer?)
(define-symbolic t1703 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t1393)
(define t1290 (+   (max    output.extent.0    128)   (*    t1703    -128)))
(define t1167 (+   (max    output.extent.0    128)   (*    t1850    128)))
(define t1168 (load bounded_input (ramp (+  t1167  -128) 1 128) (aligned 1 0)))
(define t1169.s t1852)
(define t1170 (load bounded_input (ramp (+  (+   (*    t1169.s    128)   t1290)  -128) 1 128) (aligned 1 0)))
(define t1171.s t1854)
(define t1172 (load bounded_input (ramp (+  (+   (*    t1171.s    128)   t1290)  -128) 1 128) (aligned 1 0)))
(define t1173 (load bounded_input (ramp (+  t1167  -127) 1 128) (aligned 1 0)))
(define t1174 (load bounded_input (ramp (+  (+   (*    t1169.s    128)   t1290)  -127) 1 128) (aligned 1 0)))
(define t1175 (load bounded_input (ramp (+  (+   (*    t1171.s    128)   t1290)  -127) 1 128) (aligned 1 0)))
(define t1176 (load bounded_input (ramp (+  t1167  -126) 1 128) (aligned 1 0)))
(define t1177 (load bounded_input (ramp (+  (+   (*    t1169.s    128)   t1290)  -126) 1 128) (aligned 1 0)))
(define t1178 (load bounded_input (ramp (+  (+   (*    t1171.s    128)   t1290)  -126) 1 128) (aligned 1 0)))
(define t1179 (vec-min
  (vec-max
   (vec-max
    t1168
    t1170)
   t1172)
  (vec-min
   (vec-max
    (vec-max
     t1173
     t1174)
    t1175)
   (vec-max
    (vec-max
     t1176
     t1177)
    t1178))))
(define t1180 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1173
     t1174)
    t1175)
   (vec-min
    (vec-min
     t1176
     t1177)
    t1178))
  (vec-min
   (vec-min
    t1168
    t1170)
   t1172)))
(define t1181 (vec-max
  (vec-min
   (vec-max
    t1168
    t1172)
   t1170)
  (vec-min
   t1168
   t1172)))
(define t1182 (vec-max
  (vec-min
   (vec-max
    t1173
    t1175)
   t1174)
  (vec-min
   t1173
   t1175)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1179
    t1180)
   (vec-max
    (vec-min
     (vec-max
      t1181
      t1182)
     (vec-max
      (vec-min
       (vec-max
        t1176
        t1178)
       t1177)
      (vec-min
       t1176
       t1178)))
    (vec-min
     t1181
     t1182)))
  (vec-min
   t1179
   t1180)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_6.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)