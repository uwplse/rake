#lang rosette

(require "cpp.rkt")

(require data/bit-vector)
(require rosette/lib/match)
(require rosette/lib/angelic)

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

(struct read (buf) #:transparent)
;(struct swizzle (v m) #:transparent)
(struct gather (v) #:transparent)
(struct swizzle (v) #:transparent)

(define (get-from buf)
  (lambda (i)
    (define-symbolic* idx integer?)
    (buf idx)))

(define (get-from-buf buf)
  (lambda (i)
    (choose*
     (buf 126)
     (buf 127)
     (buf 128)
     (buf 129)
     (buf 130))))
    ;(buf (apply choose* (list 126 127 128 129 130)))))

(define (get-from-vec vec)
  (lambda (i)
    (vec (apply choose* (build-list 128 values)))))

(define (interpret p)
  (match p
    ;[(swizzle buf idxm) (get-from buf idxm)]
    [(gather buf) (get-from buf)]
    [(swizzle vec) (get-from (interpret vec))]
    
    ;[(vpacko v) (lambda (i) (extract 15 8 ((interpret v) i)))]
    [(vpacko v) (lambda (i) (extlow ((interpret v) i)))]
    
    ;; Todo: finish implementations for other types
    [(vadd a b)
     (lambda (i)
       (bvadd
        ((interpret a) i)
        ((interpret b) i)))]

    [(vmpyi-acc acc v s)
     (lambda (i)
       (bvadd
        ((interpret acc) i)
        (bvmul
         ((interpret v) i)
         (cpp_cast (interpret s) 'int8 'int16))))]
    
    [_ p]))
    
(provide (except-out (all-defined-out) interpret) (rename-out [interpret interpret-hvx]))