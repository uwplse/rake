#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic f7.s0.v0.fused.v0 integer?)
(define-symbolic t4215 integer?)
(define-symbolic t4118 integer?)
(define-symbolic t4120 integer?)
(define-symbolic t4217 integer?)
(define-symbolic t4119 integer?)
(define-symbolic t4121 integer?)

(define axioms 
  (list 
   (values-range-from deinterleaved (int16_t (bv 0 16)) (int16_t (bv 32767 16)))))

(define t3790 (max   (max    (max     (*      t4121      64)     (+      (*       t4120       128)      63))    (+     (*      t4119      64)     1))   (+    (*     t4118     128)    62)))
(define t3879 t4215)
(define t3875 t4217)
(define t3661 (let ([t4054  (+   (*    (quotient     (+      t3790      129)     64)    12)   (+    (*     f7.s0.v0.fused.v0     2)    t3879))])
  (load deinterleaved (ramp (*  t4054  64) 1 128) (aligned 64 0))))
(define t3662 (let ([t4055  (+   (*    (quotient     (+      t3790      129)     64)    12)   (+    (*     f7.s0.v0.fused.v0     2)    t3879))])
  (let ([t4056   (load deinterleaved (ramp (+  (*   t4055   64)  64) 1 64) (aligned 64 0))])
   (concat_vectors
    (slice_vectors
     (concat_vectors
      (load deinterleaved (ramp (*  t4055  64) 1 64) (aligned 64 0))
      t4056) 1 1 64)
    (slice_vectors
     (concat_vectors
      t4056
      (load deinterleaved (ramp (+  (*   t4055   64)  128) 1 64) (aligned 64 0))) 1 1 64)))))
(define t3663 (let ([t4058  (load deinterleaved (ramp (+  (*   (+    (*     f7.s0.v0.fused.v0     2)    t3875)   64)  64) 1 64) (aligned 64 0))])
  (concat_vectors
   (slice_vectors
    (concat_vectors
     (load deinterleaved (ramp (*  (+   (*    f7.s0.v0.fused.v0    2)   t3875)  64) 1 64) (aligned 64 0))
     t4058) 1 1 64)
   (slice_vectors
    (concat_vectors
     t4058
     (load deinterleaved (ramp (+  (*   (+    (*     f7.s0.v0.fused.v0     2)    t3875)   64)  128) 1 64) (aligned 64 0))) 1 1 64))))
(define t3664 (let ([t4059  (load deinterleaved (ramp (+  (*   (+    (*     f7.s0.v0.fused.v0     2)    t3879)   64)  64) 1 64) (aligned 64 0))])
  (concat_vectors
   (slice_vectors
    (concat_vectors
     (load deinterleaved (ramp (*  (+   (*    f7.s0.v0.fused.v0    2)   t3879)  64) 1 64) (aligned 64 0))
     t4059) 1 1 64)
   (slice_vectors
    (concat_vectors
     t4059
     (load deinterleaved (ramp (+  (*   (+    (*     f7.s0.v0.fused.v0     2)    t3879)   64)  128) 1 64) (aligned 64 0))) 1 1 64))))

(define halide-expr
 (vec-if
  (vec-lt
   (vec-absd
    t3661
    t3662)
   (vec-absd
    t3663
    t3664))
  (int16x128
   (vec-div
    (vec-add
     (vec-add
      (int32x128
       t3661)
      (int32x128
       t3662))
     (x128 (int32_t (bv 1 32))))
    (x128 (int32_t (bv 2 32)))))
  (int16x128
   (vec-div
    (vec-add
     (vec-add
      (int32x128
       t3663)
      (int32x128
       t3664))
     (x128 (int32_t (bv 1 32))))
    (x128 (int32_t (bv 2 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_9.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)