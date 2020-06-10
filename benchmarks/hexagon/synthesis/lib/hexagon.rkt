#lang rosette

(require "cpp.rkt")
(require data/bit-vector)
(require rosette/lib/match)

;; Define DSL for data swizzling
(struct vcombine (Vu Vv) #:transparent)
(struct vshuffe (Vu Vv) #:transparent)
(struct vshuffo (Vu Vv) #:transparent)
(struct vshuffoe (Vu Vv) #:transparent)
(struct vswap (Qt Vu Vv) #:transparent)
(struct vmux (Qt Vu Vv) #:transparent)
(struct vzxt (Vu) #:transparent)
(struct vsxt (Vu) #:transparent)
(struct vsat (Vu Vv) #:transparent)
(struct valign (Vu Vv Rt) #:transparent)
(struct vror (Vu Rt) #:transparent)
(struct vrotr (Vu Vv) #:transparent)
(struct vdeal (Vu) #:transparent)
(struct vdeale (Vu Vv) #:transparent)
(struct vshuff (Vu) #:transparent)
(struct vtranspose (Vu Vv Rt) #:transparent)
(struct vpack (Vu Vv) #:transparent)
(struct vpacke (Vu Vv) #:transparent)
;(struct vpacko (Vu Vv) #:transparent)
(struct vunpack (Vu) #:transparent)
(struct vunpacko (Vu) #:transparent)
(struct vgather (Rt Mu Vv) #:transparent)

;; Define DSL for data processing
(struct vadd (lhs rhs) #:transparent)
(struct vmpyi (v s) #:transparent)
(struct vmpyi-acc (acc v s) #:transparent)
(struct vpacko (v) #:transparent)

(struct swizzle (v) #:transparent)

(define (get-from buf)
  (lambda (i)
    (define-symbolic* idx integer?)
    (buf idx)))

(define (interpret p)
  (match p
    [(swizzle buf) (get-from buf)]
    
    [(vpacko v) (cond
                  [((bitvector 16) ((interpret v) 0)) (lambda (i) (extract 15 8 ((interpret v) i)))])]
    
    ;; Todo: finish implementations for other types
    [(vadd a b)
     (lambda (i)
       (bvadd
        (cast ((interpret a) i) 'uint8 'int16)
        (cast ((interpret b) i) 'uint8 'int16)))]

    [(vmpyi-acc acc v s)
     (lambda (i)
       (bvadd
        ((interpret acc) i)
        (bvmul
         ((interpret v) i)
         (cast (interpret s) 'int8 'int16))))]
    
    [_ p]))
    
(provide (all-defined-out))