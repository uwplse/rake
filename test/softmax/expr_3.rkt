#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer t27.widened.sum_exp_row.s1.r6$x.r24-buf int16_t)
(define-symbolic-buffer t26.widened.sum_exp_row.s1.r6$x.r24-buf int16_t)
(define t27.widened.sum_exp_row.s1.r6$x.r24 (load t27.widened.sum_exp_row.s1.r6$x.r24-buf (ramp 0 1 128) (aligned 0 0)))
(define t26.widened.sum_exp_row.s1.r6$x.r24 (load t26.widened.sum_exp_row.s1.r6$x.r24-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var t224.s int16_t)
(define-symbolic-var beta_shift uint16_t)

(define axioms 
  (list 
   (values-range-from t27.widened.sum_exp_row.s1.r6$x.r24-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))
   (values-range-from t26.widened.sum_exp_row.s1.r6$x.r24-buf (int16x1  (sca-max  (sca-min  (sca-div  (sca-min  (sca-min  (sca-min  (sca-mul  (let ([t280  (int32_t (bv -32768 32))])
  (let ([t279   (int32_t (bv 32767 32))])
   (sca-min    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t279    t280)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t279    t280))))  (int32x1  (int16_t (bv -32768 16))))  (sca-mul  (let ([t280  (int32_t (bv -32768 32))])
  (let ([t279   (int32_t (bv 32767 32))])
   (sca-min    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t279    t280)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t279    t280))))  (int32x1  (int16_t (bv 32767 16)))))  (sca-mul  (let ([t282  (int32_t (bv -32768 32))])
  (let ([t281   (int32_t (bv 32767 32))])
   (sca-max    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t281    t282)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t281    t282))))  (int32x1  (int16_t (bv -32768 16)))))  (sca-mul  (let ([t282  (int32_t (bv -32768 32))])
  (let ([t281   (int32_t (bv 32767 32))])
   (sca-max    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t281    t282)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t281    t282))))  (int32x1  (int16_t (bv 32767 16)))))  (int32_t (bv 32768 32)))  (int32_t (bv 32767 32)))  (int32_t (bv -32768 32)))) (int16x1  (sca-add  (sca-max  (sca-min  (sca-div  (sca-max  (sca-max  (sca-max  (sca-mul  (let ([t284  (int32_t (bv 32767 32))])
  (let ([t283   (int32_t (bv -32768 32))])
   (sca-min    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t283    t284)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t283    t284))))  (int32x1  (int16_t (bv -32768 16))))  (sca-mul  (let ([t284  (int32_t (bv 32767 32))])
  (let ([t283   (int32_t (bv -32768 32))])
   (sca-min    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t283    t284)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t283    t284))))  (int32x1  (int16_t (bv 32767 16)))))  (sca-mul  (let ([t286  (int32_t (bv 32767 32))])
  (let ([t285   (int32_t (bv -32768 32))])
   (sca-max    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t285    t286)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t285    t286))))  (int32x1  (int16_t (bv -32768 16)))))  (sca-mul  (let ([t286  (int32_t (bv 32767 32))])
  (let ([t285   (int32_t (bv -32768 32))])
   (sca-max    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t285    t286)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t285    t286))))  (int32x1  (int16_t (bv 32767 16)))))  (int32_t (bv 32768 32)))  (int32_t (bv 32766 32)))  (int32_t (bv -32769 32)))  (int32_t (bv 1 32)))))))


(define halide-expr
 (vec-shl
  (vec-sub
   t26.widened.sum_exp_row.s1.r6$x.r24
   (vec-shl
    t27.widened.sum_exp_row.s1.r6$x.r24
    (x128 beta_shift)))
  (x128 (sca-sub (int16_t (bv 15 16)) t224.s))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")