#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t1393 integer?)
(define-symbolic t1703 integer?)
(define-symbolic t1704 integer?)
(define-symbolic t1706 integer?)
(define-symbolic t1708 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t1393)
(define t1290 (+   (max    output.extent.0    128)   (*    t1703    -128)))
(define t1127 (+   (max    output.extent.0    128)   (*    t1704    128)))
(define t1128 (load bounded_input (ramp (+  t1127  -128) 1 128) (aligned 1 0)))
(define t1129.s t1706)
(define t1130 (load bounded_input (ramp (+  (+   (*    t1129.s    128)   t1290)  -128) 1 128) (aligned 1 0)))
(define t1131.s t1708)
(define t1132 (load bounded_input (ramp (+  (+   (*    t1131.s    128)   t1290)  -128) 1 128) (aligned 1 0)))
(define t1133 (load bounded_input (ramp (+  t1127  -127) 1 128) (aligned 1 0)))
(define t1134 (load bounded_input (ramp (+  (+   (*    t1129.s    128)   t1290)  -127) 1 128) (aligned 1 0)))
(define t1135 (load bounded_input (ramp (+  (+   (*    t1131.s    128)   t1290)  -127) 1 128) (aligned 1 0)))
(define t1136 (load bounded_input (ramp (+  t1127  -126) 1 128) (aligned 1 0)))
(define t1137 (load bounded_input (ramp (+  (+   (*    t1129.s    128)   t1290)  -126) 1 128) (aligned 1 0)))
(define t1138 (load bounded_input (ramp (+  (+   (*    t1131.s    128)   t1290)  -126) 1 128) (aligned 1 0)))
(define t1139 (vec-min
  (vec-max
   (vec-max
    t1128
    t1130)
   t1132)
  (vec-min
   (vec-max
    (vec-max
     t1133
     t1134)
    t1135)
   (vec-max
    (vec-max
     t1136
     t1137)
    t1138))))
(define t1140 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1133
     t1134)
    t1135)
   (vec-min
    (vec-min
     t1136
     t1137)
    t1138))
  (vec-min
   (vec-min
    t1128
    t1130)
   t1132)))
(define t1141 (vec-max
  (vec-min
   (vec-max
    t1128
    t1132)
   t1130)
  (vec-min
   t1128
   t1132)))
(define t1142 (vec-max
  (vec-min
   (vec-max
    t1133
    t1135)
   t1134)
  (vec-min
   t1133
   t1135)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1139
    t1140)
   (vec-max
    (vec-min
     (vec-max
      t1141
      t1142)
     (vec-max
      (vec-min
       (vec-max
        t1136
        t1138)
       t1137)
      (vec-min
       t1136
       t1138)))
    (vec-min
     t1141
     t1142)))
  (vec-min
   t1139
   t1140)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_4.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)