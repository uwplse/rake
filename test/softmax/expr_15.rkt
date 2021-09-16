#lang rosette/safe

(require rake)
(init-logging "expr_15.runtimes")

(define-symbolic-buffer t215-buf int16_t)
(define-symbolic-buffer t216-buf int16_t)
(define-symbolic-var t224.s int16_t)
(define t215 (load t215-buf (ramp 0 1 128) (aligned 0 0)))
(define-symbolic-var beta_shift uint16_t)
(define t216 (load t216-buf (ramp 0 1 128) (aligned 0 0)))

(define axioms 
  (list 
   (values-range-from t215-buf (int16x1  (sca-max  (sca-min  (sca-div  (sca-min  (sca-min  (sca-min  (sca-mul  (let ([t532  (int32_t (bv -32768 32))])
  (let ([t531   (int32_t (bv 32767 32))])
   (sca-min    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t531    t532)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t531    t532))))  (int32x1  (int16_t (bv -32768 16))))  (sca-mul  (let ([t532  (int32_t (bv -32768 32))])
  (let ([t531   (int32_t (bv 32767 32))])
   (sca-min    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t531    t532)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t531    t532))))  (int32x1  (int16_t (bv 32767 16)))))  (sca-mul  (let ([t534  (int32_t (bv -32768 32))])
  (let ([t533   (int32_t (bv 32767 32))])
   (sca-max    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t533    t534)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t533    t534))))  (int32x1  (int16_t (bv -32768 16)))))  (sca-mul  (let ([t534  (int32_t (bv -32768 32))])
  (let ([t533   (int32_t (bv 32767 32))])
   (sca-max    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t533    t534)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t533    t534))))  (int32x1  (int16_t (bv 32767 16)))))  (int32_t (bv 32768 32)))  (int32_t (bv 32767 32)))  (int32_t (bv -32768 32)))) (int16x1  (sca-add  (sca-max  (sca-min  (sca-div  (sca-max  (sca-max  (sca-max  (sca-mul  (let ([t536  (int32_t (bv 32767 32))])
  (let ([t535   (int32_t (bv -32768 32))])
   (sca-min    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t535    t536)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t535    t536))))  (int32x1  (int16_t (bv -32768 16))))  (sca-mul  (let ([t536  (int32_t (bv 32767 32))])
  (let ([t535   (int32_t (bv -32768 32))])
   (sca-min    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t535    t536)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t535    t536))))  (int32x1  (int16_t (bv 32767 16)))))  (sca-mul  (let ([t538  (int32_t (bv 32767 32))])
  (let ([t537   (int32_t (bv -32768 32))])
   (sca-max    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t537    t538)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t537    t538))))  (int32x1  (int16_t (bv -32768 16)))))  (sca-mul  (let ([t538  (int32_t (bv 32767 32))])
  (let ([t537   (int32_t (bv -32768 32))])
   (sca-max    (sca-if    (sca-lt    (int32x1    (int16_t (bv 32767 16)))    (int32_t (bv 0 32)))    t537    t538)    (sca-if    (sca-lt    (int32x1    (int16_t (bv -32768 16)))    (int32_t (bv 0 32)))    t537    t538))))  (int32x1  (int16_t (bv 32767 16)))))  (int32_t (bv 32768 32)))  (int32_t (bv 32766 32)))  (int32_t (bv -32769 32)))  (int32_t (bv 1 32)))))
   (values-range-from t216-buf (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))


(define halide-expr
 (vec-shl
  (vec-sub
   t215
   (vec-shl
    t216
    (x128 beta_shift)))
  (x128 (sca-sub (int16_t (bv 15 16)) t224.s))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_15.out")