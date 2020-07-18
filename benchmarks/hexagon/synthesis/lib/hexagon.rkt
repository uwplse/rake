#lang rosette

(require "cpp.rkt")

(require data/bit-vector)
(require rosette/lib/match)
(require rosette/lib/angelic)
(require rosette/lib/synthax)

;; Data types
(struct vpair (Vu Vv) #:transparent)

;; Define DSL for data loading
(struct vread (buf loc) #:transparent)

;; Define DSL for data swizzling
(struct lo (Vuu) #:transparent)
(struct hi (Vuu) #:transparent)
(struct vcombine (Vu Vv) #:transparent)
(struct vshuffe (Vu Vv) #:transparent)
(struct vshuffo (Vu Vv) #:transparent)
(struct vshuffoe (Vu Vv) #:transparent)
(struct vswap (Qt Vu Vv) #:transparent)
(struct vmux (Qt Vu Vv) #:transparent)
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

;; Define DSL for type-casting
(struct vzxt (Vu) #:transparent)
(struct vsxt (Vu) #:transparent)

;; Define DSL for data processing
(struct vadd (Vu Vv) #:transparent)
(struct vmpyi (Vu Rt) #:transparent)
(struct vmpyi-acc (Vd Vu Rt) #:transparent)
(struct vdmpy (Vuu Rtb0 Rtb1) #:transparent)
(struct vdmpy-acc (Vdd Vuu Rtb0 Rtb1) #:transparent)
(struct vtmpy (Vuu Rtb0 Rtb1) #:transparent)
(struct vasr-rnd-sat (Vu Vv Rt) #:transparent)
(struct vpackhi (v) #:transparent)

;; Define some helper functions
(define (nop v) v)

(define (lo8 v) (extract 7 0 v))
(define (hi8 v) (extract 15 8 v))
(define (lo16 v) (extract 15 0 v))
(define (hi16 v) (extract 31 16 v))

(define (zxt16 v) (zero-extend v (bitvector 16)))
(define (sxt16 v) (sign-extend v (bitvector 16)))
(define (zxt32 v) (zero-extend v (bitvector 32)))
(define (sxt32 v) (sign-extend v (bitvector 32)))

(define cn 0)
(define (set-curr-cn v) (set! cn v))

;; Add 2 vec gen
(define (get-from-buf opts)
  (define op (choose* nop sxt16 zxt16 sxt32 sxt32))
  (choose*
   (lambda (i)
    (define-symbolic* idx integer?) (list-ref (list-ref opts cn) idx))
   (cons
    (lambda (i)
      (define-symbolic* idx integer?) (op (list-ref (list-ref opts cn) idx)))
    (lambda (i)
      (define-symbolic* idx integer?) (op (list-ref (list-ref opts cn) idx))))))

;; Add 2 vec gen
(define (get-from-vec vec)
  (define op (choose* sxt16 zxt16 sxt32 sxt32))
  (if (pair? vec)
      (choose
       (lambda (i) ((choose* lo8 hi8 lo16 hi16) ((choose* (car vec) (cdr vec)) (apply choose* (build-list 128 values)))))
       (cons
        (lambda (i) ((choose* (car vec) (cdr vec)) (apply choose* (build-list 128 values))))
        (lambda (i) ((choose* (car vec) (cdr vec)) (apply choose* (build-list 128 values))))))
      (choose
       (lambda (i) (vec (apply choose* (build-list 128 values))))
       (cons
        (lambda (i) (op (vec (apply choose* (build-list 128 values)))))
        (lambda (i) (op (vec (apply choose* (build-list 128 values)))))))))

(define (interpret p)
  (match p
    ;; Data types
    [(vpair Vu Vv) (cons (interpret Vu) (interpret Vv))]
    
    ;; Define DSL for data loading
    [(vread buf loc) (lambda (i) (buf (+ loc i)))]    
    
    ;; Define DSL for data swizzling
    [(lo Vuu) (car (interpret Vuu))]
    [(hi Vuu) (cdr (interpret Vuu))]
    [(vcombine v1 v2) (lambda (i) (if (< i 64) (v1 i) (v2 i)))]
    [(valign v1 v2 Rt) (lambda (i) (if (< i 64) (v1 (+ i Rt)) (v2 (+ i Rt))))]
    
    ;; New constructs to abstract away data movement
    [(gather opts) (get-from-buf opts)]
    [(swizzle vec) (get-from-vec (interpret vec))]

    ;; Define DSL for type-casting
    [(vsxt Vu)
     (cons
      (lambda (i) (cpp_cast ((interpret Vu) (* i 2)) 'int16 'int32))
      (lambda (i) (cpp_cast ((interpret Vu) (+ (* i 2) 1)) 'int16 'int32)))]

    [(vsat Vu Vv)
     (lambda (i)
       (if (even? i)
           (sat16 ((interpret Vv) (quotient i 2)))
           (sat16 ((interpret Vu) (quotient i 2)))))]
    
    ;; Define DSL for data processing
    [(vadd Vu Vv)
     (lambda (i)
       (bvadd
        ((interpret Vu) i)
        ((interpret Vv) i)))]

    [(vmpyi Vu Rt)
     (lambda (i)
       (bvmul
        ((interpret Vu) i)
        (cpp_cast (interpret Rt) 'int8 'int16)))]

    [(vmpyi-acc Vd Vu Rt)
     (lambda (i)
       (bvadd
        ((interpret Vd) i)
        (bvmul
         ((interpret Vu) i)
         (cpp_cast (interpret Rt) 'int8 'int16))))]

    [(vdmpy Vuu Rtb0 Rtb1)
     (cons
      (lambda (i)
       (bvadd
        (bvmul
         (cpp_cast ((car (interpret Vuu)) (* i 2)) 'int16 'int32)
         (cpp_cast (interpret Rtb0) 'int8 'int32))
        (bvmul
         (cpp_cast ((car (interpret Vuu)) (+ (* i 2) 1)) 'int16 'int32)
         (cpp_cast (interpret Rtb0) 'int8 'int32))))
      (lambda (i)
       (bvadd
        (bvmul
         (cpp_cast ((car (interpret Vuu)) (+ (* i 2) 1)) 'int16 'int32)
         (cpp_cast (interpret Rtb0) 'int8 'int32))
        (bvmul
         (cpp_cast ((cdr (interpret Vuu)) (* i 2)) 'int16 'int32)
         (cpp_cast (interpret Rtb1) 'int8 'int32)))))]

    [(vdmpy-acc Vdd Vuu Rtb0 Rtb1)
     (cons
      (lambda (i)
       (bvadd
        ((car (interpret Vdd)) i)
        (bvmul
         (cpp_cast ((car (interpret Vuu)) (* i 2)) 'int16 'int32)
         (cpp_cast (interpret Rtb0) 'int8 'int32))
        (bvmul
         (cpp_cast ((car (interpret Vuu)) (+ (* i 2) 1)) 'int16 'int32)
         (cpp_cast (interpret Rtb0) 'int8 'int32))))
      (lambda (i)
       (bvadd
        ((cdr (interpret Vdd)) i)
        (bvmul
         (cpp_cast ((car (interpret Vuu)) (+ (* i 2) 1)) 'int16 'int32)
         (cpp_cast (interpret Rtb0) 'int8 'int32))
        (bvmul
         (cpp_cast ((cdr (interpret Vuu)) (* i 2)) 'int16 'int32)
         (cpp_cast (interpret Rtb1) 'int8 'int32)))))]
    
    [(vtmpy Vuu Rtb0 Rtb1)
     (cons
      (lambda (i)
       (bvadd
        (bvmul
         ((car (interpret Vuu)) (* i 2))
         (cpp_cast (interpret Rtb0) 'int8 'int16))
        (bvmul
         ((car (interpret Vuu)) (+ (* i 2) 1))
         (cpp_cast (interpret Rtb1) 'int8 'int16))
        ((cdr (interpret Vuu)) (* i 2))))
      (lambda (i)
       (bvadd
        (bvmul
         ((car (interpret Vuu)) (+ (* i 2) 1))
         (cpp_cast (interpret Rtb0) 'int8 'int16))
        (bvmul
         ((cdr (interpret Vuu)) (* i 2))
         (cpp_cast (interpret Rtb1) 'int8 'int16))
        ((cdr (interpret Vuu)) (+ (* i 2) 1)))))]

    [(vasr-rnd-sat Vu Vv Rt)
     (cond
       [((bitvector 16) ((interpret Vu) 0))
        (lambda (i)
          (if (even? i)
              (usat8 (bvashr (bvadd ((interpret Vv) (quotient i 2)) (bvshl (bv 1 16) (bvsub Rt (bv 1 16)))) Rt))
              (usat8 (bvashr (bvadd ((interpret Vu) (quotient i 2)) (bvshl (bv 1 16) (bvsub Rt (bv 1 16)))) Rt))))]
       [((bitvector 32) ((interpret Vu) 0))
        (lambda (i)
          (if (even? i)
              (sat16 (bvashr (bvadd ((interpret Vv) (quotient i 2)) (bvshl (bv 1 32) (bvsub Rt (bv 1 32)))) Rt))
              (sat16 (bvashr (bvadd ((interpret Vu) (quotient i 2)) (bvshl (bv 1 32) (bvsub Rt (bv 1 32)))) Rt))))])]

    [(vpackhi v) (lambda (i) (extract 15 8 ((interpret v) i)))]

    [(vpacke Vu Vv)
     (lambda (i)
       (if (< i 64)
           (extract 7 0 ((interpret Vv) i))
           (extract 7 0 ((interpret Vu) (- i 64)))))]
    
    [_ p]))
    
(provide (except-out (all-defined-out) interpret) (rename-out [interpret interpret-hvx]))