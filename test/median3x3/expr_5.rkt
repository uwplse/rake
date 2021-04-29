#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic t1393 integer?)
(define-symbolic t1781 integer?)
(define-symbolic t1779 integer?)
(define-symbolic t1703 integer?)
(define-symbolic t1777 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t1393)
(define t1290 (+   (max    output.extent.0    128)   (*    t1703    -128)))
(define t1147 (+   (max    output.extent.0    128)   (*    t1777    128)))
(define t1148 (load bounded_input (ramp (+  t1147  -128) 1 128) (aligned 1 0)))
(define t1149.s t1779)
(define t1150 (load bounded_input (ramp (+  (+   (*    t1149.s    128)   t1290)  -128) 1 128) (aligned 1 0)))
(define t1151.s t1781)
(define t1152 (load bounded_input (ramp (+  (+   (*    t1151.s    128)   t1290)  -128) 1 128) (aligned 1 0)))
(define t1153 (load bounded_input (ramp (+  t1147  -127) 1 128) (aligned 1 0)))
(define t1154 (load bounded_input (ramp (+  (+   (*    t1149.s    128)   t1290)  -127) 1 128) (aligned 1 0)))
(define t1155 (load bounded_input (ramp (+  (+   (*    t1151.s    128)   t1290)  -127) 1 128) (aligned 1 0)))
(define t1156 (load bounded_input (ramp (+  t1147  -126) 1 128) (aligned 1 0)))
(define t1157 (load bounded_input (ramp (+  (+   (*    t1149.s    128)   t1290)  -126) 1 128) (aligned 1 0)))
(define t1158 (load bounded_input (ramp (+  (+   (*    t1151.s    128)   t1290)  -126) 1 128) (aligned 1 0)))
(define t1159 (vec-min
  (vec-max
   (vec-max
    t1148
    t1150)
   t1152)
  (vec-min
   (vec-max
    (vec-max
     t1153
     t1154)
    t1155)
   (vec-max
    (vec-max
     t1156
     t1157)
    t1158))))
(define t1160 (vec-max
  (vec-max
   (vec-min
    (vec-min
     t1153
     t1154)
    t1155)
   (vec-min
    (vec-min
     t1156
     t1157)
    t1158))
  (vec-min
   (vec-min
    t1148
    t1150)
   t1152)))
(define t1161 (vec-max
  (vec-min
   (vec-max
    t1148
    t1152)
   t1150)
  (vec-min
   t1148
   t1152)))
(define t1162 (vec-max
  (vec-min
   (vec-max
    t1153
    t1155)
   t1154)
  (vec-min
   t1153
   t1155)))

(define halide-expr
 (vec-max
  (vec-min
   (vec-max
    t1159
    t1160)
   (vec-max
    (vec-min
     (vec-max
      t1161
      t1162)
     (vec-max
      (vec-min
       (vec-max
        t1156
        t1158)
       t1157)
      (vec-min
       t1156
       t1158)))
    (vec-min
     t1161
     t1162)))
  (vec-min
   t1159
   t1160)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_5.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)