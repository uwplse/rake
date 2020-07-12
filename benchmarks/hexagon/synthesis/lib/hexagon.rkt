#lang rosette

(require "cpp.rkt")

(require data/bit-vector)
(require rosette/lib/match)
(require rosette/lib/angelic)

;; Define DSL for data loading
(struct vread (buf loc) #:transparent)

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
(struct vpacko (Vu Vv) #:transparent)
(struct vunpack (Vu) #:transparent)
(struct vunpacko (Vu) #:transparent)
(struct vgather (Rt Mu Vv) #:transparent)

;; New constructs to abstract away data movement
(struct gather (opts))
(struct swizzle (opts) #:transparent)
(struct serve (vec))

;; Define DSL for data processing
(struct vadd (lhs rhs) #:transparent)
(struct vtmpy (v1 v2 s1 s2) #:transparent)
(struct vmpyi (v s) #:transparent)
(struct vmpyi-acc (acc v s) #:transparent)
(struct vasr-rnd-sat (Vu Vv Rt) #:transparent)
(struct vpackhi (v) #:transparent)

(define (get-from buf)
  (lambda (i)
    (define-symbolic* idx integer?)
    (buf idx)))

(define (get-from-vec vec)
  (lambda (i)
    (vec (apply choose* (build-list 128 values)))))

(define (interpret p)
  (match p
    ;; Define DSL for data loading
    [(vread buf loc) (lambda (i) (buf (+ loc i)))]

    ;; Define DSL for data swizzling
    [(vcombine v1 v2) (lambda (i) (if (< i 64) (v1 i) (v2 i)))]
    [(valign v1 v2 Rt) (lambda (i) (if (< i 64) (v1 (+ i Rt)) (v2 (+ i Rt))))]
    
    ;; New constructs to abstract away data movement
    [(gather opts) (lambda (i) (define-symbolic* idx integer?) (list-ref (list-ref opts i) idx))]
    [(swizzle vec) (get-from (interpret vec))]
    [(serve vec) (lambda (i) (hash-ref vec i))]
    
    ;; Define DSL for data processing
    [(vtmpy v1 v2 s1 s2)
     (lambda (i)
       (bvadd
        (bvmul
         ((interpret v1) (* i 2))
         (cpp_cast (interpret s1) 'int8 'int16))
        (bvmul
         ((interpret v1) (+ (* i 2) 1))
         (cpp_cast (interpret s2) 'int8 'int16))
        ((interpret v2) (* i 2))))]

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

    [(vasr-rnd-sat Vu Vv Rt)
     (lambda (i)
       (if (even? i)
           (usat8 (bvashr (bvadd ((interpret Vv) (quotient i 2)) (bvshl (bv 1 16) (bvsub Rt (bv 1 16)))) Rt))
           (usat8 (bvashr (bvadd ((interpret Vu) (quotient i 2)) (bvshl (bv 1 16) (bvsub Rt (bv 1 16)))) Rt))))]

    [(vpackhi v) (lambda (i) (extract 15 8 ((interpret v) i)))]
    
    [_ p]))
    
(provide (except-out (all-defined-out) interpret) (rename-out [interpret interpret-hvx]))