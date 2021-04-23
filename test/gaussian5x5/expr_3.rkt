#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic rows.s0.x.x integer?)
(define-symbolic t270 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define output.extent.0 t270)

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-mul
     (int16x128
      (load bounded_input (ramp (+  (*   (+    (*     (quotient      (+       output.extent.0       255)      256)     8)    rows.s0.x.x)   128)  512) 1 128) (aligned 128 0)))
     (x128 (int16_t (bv 4 16))))
    (vec-add
     (vec-mul
      (int16x128
       (uint16x128
        (load bounded_input (ramp (+  (*   (+    (*     (quotient      (+       output.extent.0       255)      256)     10)    rows.s0.x.x)   128)  640) 1 128) (aligned 128 0))))
      (int16x128
       (x128 (int8_t (bv 6 8)))))
     (vec-mul
      (int16x128
       (load bounded_input (ramp (+  (*   (+    (*     (quotient      (+       output.extent.0       255)      256)     12)    rows.s0.x.x)   128)  768) 1 128) (aligned 128 0)))
      (x128 (int16_t (bv 4 16))))))
   (int16x128
    (load bounded_input (ramp (+  (*   (+    (*     (quotient      (+       output.extent.0       255)      256)     6)    rows.s0.x.x)   128)  384) 1 128) (aligned 128 0))))
  (int16x128
   (load bounded_input (ramp (+  (*   (+    (*     (quotient      (+       output.extent.0       255)      256)     14)    rows.s0.x.x)   128)  896) 1 128) (aligned 128 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_3.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)