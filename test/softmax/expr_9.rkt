#lang rosette/safe

(require rake)
(init-logging "expr_9.runtimes")

(define-symbolic-buffer t209-buf int16_t)
(define-symbolic-buffer t210-buf int16_t)
(define t209 (load t209-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var t224.s int16_t)
(define t210 (load t210-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var beta_shift uint16_t)

(define axioms 
  (list 
   (values-range-from t209-buf (int16x1  (sca-max  (sca-min  (sca-div  (sca-min  (sca-min  (sca-min  (sca-mul  (let ([t468  (int32_t (bv -32768 32))])
  (let ([t467   (int32_t (bv 32767 32))])
   (sca-min    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t467    t468)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t467    t468))))  (int32x1  (int16_t (bv -32768 16))))  (sca-mul  (let ([t468  (int32_t (bv -32768 32))])
  (let ([t467   (int32_t (bv 32767 32))])
   (sca-min    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t467    t468)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t467    t468))))  (int32x1  (int16_t (bv 32767 16)))))  (sca-mul  (let ([t470  (int32_t (bv -32768 32))])
  (let ([t469   (int32_t (bv 32767 32))])
   (sca-max    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t469    t470)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t469    t470))))  (int32x1  (int16_t (bv -32768 16)))))  (sca-mul  (let ([t470  (int32_t (bv -32768 32))])
  (let ([t469   (int32_t (bv 32767 32))])
   (sca-max    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t469    t470)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t469    t470))))  (int32x1  (int16_t (bv 32767 16)))))  (int32_t (bv 32768 32)))  (int32_t (bv 32767 32)))  (int32_t (bv -32768 32)))) (int16x1  (sca-add  (sca-max  (sca-min  (sca-div  (sca-max  (sca-max  (sca-max  (sca-mul  (let ([t472  (int32_t (bv 32767 32))])
  (let ([t471   (int32_t (bv -32768 32))])
   (sca-min    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t471    t472)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t471    t472))))  (int32x1  (int16_t (bv -32768 16))))  (sca-mul  (let ([t472  (int32_t (bv 32767 32))])
  (let ([t471   (int32_t (bv -32768 32))])
   (sca-min    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t471    t472)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t471    t472))))  (int32x1  (int16_t (bv 32767 16)))))  (sca-mul  (let ([t474  (int32_t (bv 32767 32))])
  (let ([t473   (int32_t (bv -32768 32))])
   (sca-max    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t473    t474)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t473    t474))))  (int32x1  (int16_t (bv -32768 16)))))  (sca-mul  (let ([t474  (int32_t (bv 32767 32))])
  (let ([t473   (int32_t (bv -32768 32))])
   (sca-max    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t473    t474)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t473    t474))))  (int32x1  (int16_t (bv 32767 16)))))  (int32_t (bv 32768 32)))  (int32_t (bv 32766 32)))  (int32_t (bv -32769 32)))  (int32_t (bv 1 32)))))
   (values-range-from t210-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (vec-shl
  (vec-sub
   t209
   (vec-shl
    t210
    (x128 beta_shift)))
  (x128 (sca-sub (int16_t (bv 15 16)) t224.s))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_9.out")