#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic f7.s0.v0.fused.v0 integer?)
(define-symbolic t4217 integer?)
(define-symbolic t4121 integer?)
(define-symbolic t4119 integer?)
(define-symbolic t4118 integer?)
(define-symbolic t4120 integer?)
(define-symbolic t4218 integer?)

(define axioms 
  (list 
   (values-range-from deinterleaved (int16_t (bv 0 16)) (int16_t (bv 32767 16)))))

(define t3790 (max   (max    (max     (*      t4121      64)     (+      (*       t4120       128)      63))    (+     (*      t4119      64)     1))   (+    (*     t4118     128)    62)))
(define t3875 t4217)
(define t3876 t4218)
(define t3654 (let ([t4051  (load deinterleaved (ramp (+  (*   (+    (*     f7.s0.v0.fused.v0     2)    t3875)   64)  64) 1 64) (aligned 64 0))])
  (concat_vectors
   (slice_vectors
    (concat_vectors
     (load deinterleaved (ramp (*  (+   (*    f7.s0.v0.fused.v0    2)   t3875)  64) 1 64) (aligned 64 0))
     t4051) 1 1 64)
   (slice_vectors
    (concat_vectors
     t4051
     (load deinterleaved (ramp (+  (*   (+    (*     f7.s0.v0.fused.v0     2)    t3875)   64)  128) 1 64) (aligned 64 0))) 1 1 64))))
(define t3655 (load deinterleaved (ramp (*  (+   (*    f7.s0.v0.fused.v0    2)   t3875)  64) 1 128) (aligned 64 0)))
(define t3656 (load deinterleaved (ramp (*  (+   (*    f7.s0.v0.fused.v0    2)   t3876)  64) 1 128) (aligned 64 0)))
(define t3657 (let ([t4053  (+   (*    (quotient     (+      t3790      129)     64)    12)   (+    (*     f7.s0.v0.fused.v0     2)    t3875))])
  (load deinterleaved (ramp (*  t4053  64) 1 128) (aligned 64 0))))

(define halide-expr
 (vec-if
  (vec-lt
   (vec-absd
    t3654
    t3655)
   (vec-absd
    t3656
    t3657))
  (int16x128
   (vec-div
    (vec-add
     (vec-add
      (int32x128
       t3654)
      (int32x128
       t3655))
     (x128 (int32_t (bv 1 32))))
    (x128 (int32_t (bv 2 32)))))
  (int16x128
   (vec-div
    (vec-add
     (vec-add
      (int32x128
       t3656)
      (int32x128
       t3657))
     (x128 (int32_t (bv 1 32))))
    (x128 (int32_t (bv 2 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_8.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)