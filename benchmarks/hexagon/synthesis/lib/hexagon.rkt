#lang rosette

(require "cpp.rkt")

(require rosette/lib/match)
(require rosette/lib/angelic)
(require rosette/lib/synthax)

;; Data types
(struct vpair (Vu Vv) #:transparent)

;; Define DSL for data loading
(struct vread (buf loc) #:transparent)

;; New constructs to abstract away data movement
(struct gather (opts))
(struct swizzle (opts) #:transparent)

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

;; Define DSL for type-casting
(struct vzxt (Vu) #:transparent)
(struct vsxt (Vu) #:transparent)

;; Define DSL for data processing
(struct vadd (Vu Vv sat?) #:transparent)
(struct vadd-w (Vu Vv) #:transparent)
(struct vadd-w-acc (Vdd Vu Vv) #:transparent)

(struct vmpy (Vu Rt) #:transparent)
(struct vmpyi (Vu Rt) #:transparent)
(struct vmpye (Vu Rt) #:transparent)

(struct vmpy-acc (Vdd Vu Rt) #:transparent)
(struct vmpyi-acc (Vd Vu Rt) #:transparent)
(struct vmpye-acc (Vd Vu Rt) #:transparent)

;; TODO (core isntrs): Add vmpa, vdmpy, vtmpy, vrmpy
;; TODO (misc isntrs): vmpy-rnd-sat, asr, asl, vluts etc
;; TODO (conditionals)

;; Temp
(struct vdmpy (Vuu Rtb0 Rtb1) #:transparent)
(struct vdmpy-acc (Vdd Vuu Rtb0 Rtb1) #:transparent)
(struct vtmpy (Vuu Rtb0 Rtb1) #:transparent)
(struct vasr-rnd-sat (Vu Vv Rt) #:transparent)
(struct vpackhi (v) #:transparent)

(define (interpret p)
  (match p
    
    ;;;;;;;;;;;;;;;;;;;;; Define DSL data types ;;;;;;;;;;;;;;;;;;;;

    [(vpair Vu Vv) (cons (interpret Vu) (interpret Vv))]

    ;;;;;;;;;;;;;;;;;; Define DSL for data loading ;;;;;;;;;;;;;;;;;
    
    [(vread buf loc) (lambda (i) (buf (+ loc i)))]

    ;;;;;;;;; New constructs to abstract away data movement;;;;;;;;;
    
    [(gather opts) (get-from-buf opts)]
    [(swizzle vec) (get-from-vec (interpret vec))]
    
    ;;;;;;;;;;;;;;;; Define DSL for data processing ;;;;;;;;;;;;;;;;

    ;; Addition (non-widening) -- carry variants currently not supported
    [(vadd Vu Vv sat?)
     (cond
       ;; Variants that operate on register pairs
       [(and (pair? (interpret Vu)) (pair? (interpret Vv)))
        (cons
         (lambda (i)
           (define lhs ((car (interpret Vu)) i))
           (define rhs ((car (interpret Vv)) i))
           (cond
             ;; Saturating for signed types is optional
             [(and (eq? (type lhs) 'int8) (eq? (type rhs) 'int8)) (int8_t (if sat? (sat8 (bvadd (eval lhs) (eval rhs))) (bvadd (eval lhs) (eval rhs))))] 
             [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (int16_t (if sat? (sat16 (bvadd (eval lhs) (eval rhs))) (bvadd (eval lhs) (eval rhs))))]
             [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'int32)) (int32_t (if sat? (sat32 (bvadd (eval lhs) (eval rhs))) (bvadd (eval lhs) (eval rhs))))]
             
             ;; Always saturate for unsigned types
             [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (uint8_t (satu8 (bvadd (eval lhs) (eval rhs))))]
             [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (uint16_t (satu16 (bvadd (eval lhs) (eval rhs))))]
             [(and (eq? (type lhs) 'uint32) (eq? (type rhs) 'uint32)) (uint32_t (satu32 (bvadd (eval lhs) (eval rhs))))])
         (lambda (i)
           (define lhs ((cdr (interpret Vu)) i))
           (define rhs ((cdr (interpret Vv)) i))
           (cond
             ;; Saturating for signed types is optional
             [(and (eq? (type lhs) 'int8) (eq? (type rhs) 'int8)) (int8_t (if sat? (sat8 (bvadd (eval lhs) (eval rhs))) (bvadd (eval lhs) (eval rhs))))] 
             [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (int16_t (if sat? (sat16 (bvadd (eval lhs) (eval rhs))) (bvadd (eval lhs) (eval rhs))))]
             [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'int32)) (int32_t (if sat? (sat32 (bvadd (eval lhs) (eval rhs))) (bvadd (eval lhs) (eval rhs))))]
             
             ;; Always saturate for unsigned types
             [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (uint8_t (satu8 (bvadd (eval lhs) (eval rhs))))]
             [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (uint16_t (satu16 (bvadd (eval lhs) (eval rhs))))]
             [(and (eq? (type lhs) 'uint32) (eq? (type rhs) 'uint32)) (uint32_t (satu32 (bvadd (eval lhs) (eval rhs))))]))))]

       ;; Variants that operate on single registers
       [(not (or (pair? (interpret Vu)) (pair? (interpret Vv))))
        (lambda (i)
          (define lhs ((interpret Vu) i))
          (define rhs ((interpret Vv) i))
          (cond
            ;; Saturating for signed types is optional
            [(and (eq? (type lhs) 'int8) (eq? (type rhs) 'int8)) (int8_t (if sat? (sat8 (bvadd (eval lhs) (eval rhs))) (bvadd (eval lhs) (eval rhs))))] 
            [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (int16_t (if sat? (sat16 (bvadd (eval lhs) (eval rhs))) (bvadd (eval lhs) (eval rhs))))]
            [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'int32)) (int32_t (if sat? (sat32 (bvadd (eval lhs) (eval rhs))) (bvadd (eval lhs) (eval rhs))))]

            ;; Always saturate for unsigned types
            [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'int8)) (uint8_t (satu8 (bvadd (eval lhs) (eval rhs))))]
            [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (uint8_t (satu8 (bvadd (eval lhs) (eval rhs))))]
            [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (uint16_t (satu16 (bvadd (eval lhs) (eval rhs))))]
            [(and (eq? (type lhs) 'uint32) (eq? (type rhs) 'uint32)) (uint32_t (satu32 (bvadd (eval lhs) (eval rhs))))]))])]

    ;; Addition (widening)
    [(vadd-w Vu Vv)
     (cons
      (lambda (i)
        (define lhs ((interpret Vu) (* i 2)))
        (define rhs ((interpret Vv) (* i 2)))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (int16_t (bvadd (eval (cpp_cast lhs 'int16)) (eval (cpp_cast rhs 'int16))))] 
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (int32_t (bvadd (eval (cpp_cast lhs 'int32)) (eval (cpp_cast rhs 'int32))))] 
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (int32_t (bvadd (eval (cpp_cast lhs 'int32)) (eval (cpp_cast rhs 'int32))))]))
      (lambda (i)
        (define lhs ((interpret Vu) (+ (* i 2) 1)))
        (define rhs ((interpret Vv) (+ (* i 2) 1)))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (int16_t (bvadd (eval (cpp_cast lhs 'int16)) (eval (cpp_cast rhs 'int16))))] 
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (int32_t (bvadd (eval (cpp_cast lhs 'int32)) (eval (cpp_cast rhs 'int32))))] 
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (int32_t (bvadd (eval (cpp_cast lhs 'int32)) (eval (cpp_cast rhs 'int32))))])))]

    ;; Addition (widening) with accumulation
    [(vadd-w-acc Vdd Vu Vv)
     (cons
      (lambda (i)
        (define acc ((car (interpret Vdd)) i))
        (define lhs ((interpret Vu) (* i 2)))
        (define rhs ((interpret Vv) (* i 2)))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (int16_t (bvadd (eval acc) (eval (cpp_cast lhs 'int16)) (eval (cpp_cast rhs 'int16))))] 
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (int32_t (bvadd (eval acc) (eval (cpp_cast lhs 'int32)) (eval (cpp_cast rhs 'int32))))] 
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (int32_t (bvadd (eval acc) (eval (cpp_cast lhs 'int32)) (eval (cpp_cast rhs 'int32))))]))
      (lambda (i)
        (define acc ((cdr (interpret Vdd)) i))
        (define lhs ((interpret Vu) (+ (* i 2) 1)))
        (define rhs ((interpret Vv) (+ (* i 2) 1)))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (int16_t (bvadd (eval acc) (eval (cpp_cast lhs 'int16)) (eval (cpp_cast rhs 'int16))))] 
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (int32_t (bvadd (eval acc) (eval (cpp_cast lhs 'int32)) (eval (cpp_cast rhs 'int32))))] 
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (int32_t (bvadd (eval acc) (eval (cpp_cast lhs 'int32)) (eval (cpp_cast rhs 'int32))))])))]

    ;; Vector-scalar multiplication (widening)
    [(vmpy Vu Rt)
     (cons
      (lambda (i)
        (define lhs ((interpret Vu) (* i 2)))
        (define rhs (interpret Rt))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'int8)) (int16_t (bvmul (eval (cpp_cast lhs 'int16)) (eval (cpp_cast rhs 'int16))))]
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (uint16_t (bvmul (eval (cpp_cast lhs 'uint16)) (eval (cpp_cast rhs 'uint16))))]
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (uint32_t (bvmul (eval (cpp_cast lhs 'uint32)) (eval (cpp_cast rhs 'uint32))))]
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (int32_t (bvmul (eval (cpp_cast lhs 'int32)) (eval (cpp_cast rhs 'int32))))]))
      (lambda (i)
        (define lhs ((interpret Vu) (+ (* i 2) 1)))
        (define rhs (interpret Rt))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'int8)) (int16_t (bvmul (eval (cpp_cast lhs 'int16)) (eval (cpp_cast rhs 'int16))))]
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (uint16_t (bvmul (eval (cpp_cast lhs 'uint16)) (eval (cpp_cast rhs 'uint16))))]
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (uint32_t (bvmul (eval (cpp_cast lhs 'uint32)) (eval (cpp_cast rhs 'uint32))))]
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (int32_t (bvmul (eval (cpp_cast lhs 'int32)) (eval (cpp_cast rhs 'int32))))])))]

    ;; Vector-scalar multiplication (non-widening)
    [(vmpyi Vu Rt)
     (lambda (i)
       (define lhs ((interpret Vu) i))
       (define rhs (interpret Rt))
       (cond
         [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int8)) (int16_t (bvmul (eval lhs) (eval (cpp_cast rhs 'int16))))]
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'int8)) (int32_t (bvmul (eval lhs) (eval (cpp_cast rhs 'int32))))]
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'uint8)) (int32_t (bvmul (eval lhs) (eval (cpp_cast rhs 'int32))))]
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'int16)) (int32_t (bvmul (eval lhs) (eval (cpp_cast rhs 'int32))))]))]

    ;; Vector-scalar multiplication (non-widening) -- ignores upper16 bits
    [(vmpye Vu Rt)
     (lambda (i)
       (define lhs ((interpret Vu) i))
       (define rhs (interpret Rt))
       (cond
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'uint16))
          (uint32_t (bvmul (zero-extend (extract 31 16 (eval lhs)) (bitvector 32)) (eval (cpp_cast rhs 'uint32))))]
         [(and (eq? (type lhs) 'uint32) (eq? (type rhs) 'uint16))
          (uint32_t (bvmul (zero-extend (extract 31 16 (eval lhs)) (bitvector 32)) (eval (cpp_cast rhs 'uint32))))]))]

    ;; Vector-scalar multiplication (widening) with accumulation
    [(vmpy-acc Vdd Vu Rt)
     (cons
      (lambda (i)
        (define acc ((car (interpret Vdd)) i))
        (define lhs ((interpret Vu) (* i 2)))
        (define rhs (interpret Rt))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'int8)) (int16_t (bvadd (eval acc) (bvmul (eval (cpp_cast lhs 'int16)) (eval (cpp_cast rhs 'int16)))))]
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (uint16_t (bvadd (eval acc) (bvmul (eval (cpp_cast lhs 'uint16)) (eval (cpp_cast rhs 'uint16)))))]
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (uint32_t (bvadd (eval acc) (bvmul (eval (cpp_cast lhs 'uint32)) (eval (cpp_cast rhs 'uint32)))))]
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (int32_t (bvadd (eval acc) (bvmul (eval (cpp_cast lhs 'int32)) (eval (cpp_cast rhs 'int32)))))]))
      (lambda (i)
        (define acc ((cdr (interpret Vdd)) i))
        (define lhs ((interpret Vu) (+ (* i 2) 1)))
        (define rhs (interpret Rt))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'int8)) (int16_t (bvadd (eval acc) (bvmul (eval (cpp_cast lhs 'int16)) (eval (cpp_cast rhs 'int16)))))]
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (uint16_t (bvadd (eval acc) (bvmul (eval (cpp_cast lhs 'uint16)) (eval (cpp_cast rhs 'uint16)))))]
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (uint32_t (bvadd (eval acc) (bvmul (eval (cpp_cast lhs 'uint32)) (eval (cpp_cast rhs 'uint32)))))]
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (int32_t (bvadd (eval acc) (bvmul (eval (cpp_cast lhs 'int32)) (eval (cpp_cast rhs 'int32)))))])))]


    ;; Vector-scalar multiplication (non-widening) with accumulation
    [(vmpyi-acc Vd Vu Rt)
     (lambda (i)
       (define acc ((interpret Vd) i))
       (define lhs ((interpret Vu) i))
       (define rhs (interpret Rt))
       (cond
         [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int8)) (int16_t (bvadd (eval acc) (bvmul (eval lhs) (eval (cpp_cast rhs 'int16)))))]
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'int8)) (int32_t (bvadd (eval acc) (bvmul (eval lhs) (eval (cpp_cast rhs 'int32)))))]
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'uint8)) (int32_t (bvadd (eval acc) (bvmul (eval lhs) (eval (cpp_cast rhs 'int32)))))]
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'int16)) (int32_t (bvadd (eval acc) (bvmul (eval lhs) (eval (cpp_cast rhs 'int32)))))]))]

    ;; Vector-scalar multiplication (non-widening) with accumulation -- ignores upper16 bits
    [(vmpye-acc Vd Vu Rt)
     (lambda (i)
       (define acc ((interpret Vd) i))
       (define lhs ((interpret Vu) i))
       (define rhs (interpret Rt))
       (cond
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'uint16))
          (uint32_t (bvadd (eval acc) (bvmul (zero-extend (extract 31 16 (eval lhs)) (bitvector 32)) (eval (cpp_cast rhs 'uint32)))))]
         [(and (eq? (type lhs) 'uint32) (eq? (type rhs) 'uint16))
          (uint32_t (bvadd (eval acc) (bvmul (zero-extend (extract 31 16 (eval lhs)) (bitvector 32)) (eval (cpp_cast rhs 'uint32)))))]))]
    
    ;; ---- Everything below this line in the interpreter is tentative ----
    
    ;; Shift right with rounding and saturation
    [(vasr-rnd-sat Vu Vv Rt)
     (cond
       [((bitvector 16) ((interpret Vu) 0))
        (lambda (i)
          (if (even? i)
              (satu8 (bvashr (bvadd ((interpret Vv) (quotient i 2)) (bvshl (bv 1 16) (bvsub Rt (bv 1 16)))) Rt))
              (satu8 (bvashr (bvadd ((interpret Vu) (quotient i 2)) (bvshl (bv 1 16) (bvsub Rt (bv 1 16)))) Rt))))]
       [((bitvector 32) ((interpret Vu) 0))
        (lambda (i)
          (if (even? i)
              (sat16 (bvashr (bvadd ((interpret Vv) (quotient i 2)) (bvshl (bv 1 32) (bvsub Rt (bv 1 32)))) Rt))
              (sat16 (bvashr (bvadd ((interpret Vu) (quotient i 2)) (bvshl (bv 1 32) (bvsub Rt (bv 1 32)))) Rt))))])]

    
    
;    [(vmpyi Vu Rt)
;     (lambda (i)
;       (bvmul
;        ((interpret Vu) i)
;        (cpp_cast (interpret Rt) 'int8 'int16)))]
;
;    [(vmpyi-acc Vd Vu Rt)
;     (lambda (i)
;       (bvadd
;        ((interpret Vd) i)
;        (bvmul
;         ((interpret Vu) i)
;         (cpp_cast (interpret Rt) 'int8 'int16))))]
;
;    [(vdmpy Vuu Rtb0 Rtb1)
;     (cons
;      (lambda (i)
;       (bvadd
;        (bvmul
;         (cpp_cast ((car (interpret Vuu)) (* i 2)) 'int16 'int32)
;         (cpp_cast (interpret Rtb0) 'int8 'int32))
;        (bvmul
;         (cpp_cast ((car (interpret Vuu)) (+ (* i 2) 1)) 'int16 'int32)
;         (cpp_cast (interpret Rtb0) 'int8 'int32))))
;      (lambda (i)
;       (bvadd
;        (bvmul
;         (cpp_cast ((car (interpret Vuu)) (+ (* i 2) 1)) 'int16 'int32)
;         (cpp_cast (interpret Rtb0) 'int8 'int32))
;        (bvmul
;         (cpp_cast ((cdr (interpret Vuu)) (* i 2)) 'int16 'int32)
;         (cpp_cast (interpret Rtb1) 'int8 'int32)))))]
;
;    [(vdmpy-acc Vdd Vuu Rtb0 Rtb1)
;     (cons
;      (lambda (i)
;       (bvadd
;        ((car (interpret Vdd)) i)
;        (bvmul
;         (cpp_cast ((car (interpret Vuu)) (* i 2)) 'int16 'int32)
;         (cpp_cast (interpret Rtb0) 'int8 'int32))
;        (bvmul
;         (cpp_cast ((car (interpret Vuu)) (+ (* i 2) 1)) 'int16 'int32)
;         (cpp_cast (interpret Rtb0) 'int8 'int32))))
;      (lambda (i)
;       (bvadd
;        ((cdr (interpret Vdd)) i)
;        (bvmul
;         (cpp_cast ((car (interpret Vuu)) (+ (* i 2) 1)) 'int16 'int32)
;         (cpp_cast (interpret Rtb0) 'int8 'int32))
;        (bvmul
;         (cpp_cast ((cdr (interpret Vuu)) (* i 2)) 'int16 'int32)
;         (cpp_cast (interpret Rtb1) 'int8 'int32)))))]
;    
;    [(vtmpy Vuu Rtb0 Rtb1)
;     (cons
;      (lambda (i)
;       (bvadd
;        (bvmul
;         ((car (interpret Vuu)) (* i 2))
;         (cpp_cast (interpret Rtb0) 'int8 'int16))
;        (bvmul
;         ((car (interpret Vuu)) (+ (* i 2) 1))
;         (cpp_cast (interpret Rtb1) 'int8 'int16))
;        ((cdr (interpret Vuu)) (* i 2))))
;      (lambda (i)
;       (bvadd
;        (bvmul
;         ((car (interpret Vuu)) (+ (* i 2) 1))
;         (cpp_cast (interpret Rtb0) 'int8 'int16))
;        (bvmul
;         ((cdr (interpret Vuu)) (* i 2))
;         (cpp_cast (interpret Rtb1) 'int8 'int16))
;        ((cdr (interpret Vuu)) (+ (* i 2) 1)))))]
;
;    [(vpackhi v) (lambda (i) (extract 15 8 ((interpret v) i)))]
;
;    [(vpacke Vu Vv)
;     (lambda (i)
;       (if (< i 64)
;           (extract 7 0 ((interpret Vv) i))
;           (extract 7 0 ((interpret Vu) (- i 64)))))]
;
;    ;; Define DSL for data swizzling
;    [(lo Vuu) (car (interpret Vuu))]
;    [(hi Vuu) (cdr (interpret Vuu))]
;    [(vcombine v1 v2) (lambda (i) (if (< i 64) (v1 i) (v2 i)))]
;    [(valign v1 v2 Rt) (lambda (i) (if (< i 64) (v1 (+ i Rt)) (v2 (+ i Rt))))]
;    
;
;    ;; Define DSL for type-casting
;    [(vsxt Vu)
;     (cons
;      (lambda (i) (cpp_cast ((interpret Vu) (* i 2)) 'int16 'int32))
;      (lambda (i) (cpp_cast ((interpret Vu) (+ (* i 2) 1)) 'int16 'int32)))]
;
;    [(vsat Vu Vv)
;     (lambda (i)
;       (if (even? i)
;           (sat16 ((interpret Vv) (quotient i 2)))
;           (sat16 ((interpret Vu) (quotient i 2)))))]
    
    [_ p]))

;; Define some helper functions
(define (nop v) v)

(define (lo8 v) (extract 7 0 v))
(define (hi8 v) (extract 15 8 v))
(define (lo16 v) (extract 15 0 v))
(define (hi16 v) (extract 31 16 v))

(define (zxt16 v) (uint16_t (zero-extend (eval v) (bitvector 16))))
(define (sxt16 v) (int16_t (sign-extend (eval v) (bitvector 16))))
(define (zxt32 v) (uint32_t (zero-extend (eval v) (bitvector 32))))
(define (sxt32 v) (int32_t (sign-extend (eval v) (bitvector 32))))

(define cn 0)
(define (set-curr-cn v) (set! cn v))

(define (get-from-buf opts)
  (define op (choose* nop sxt16 zxt16 sxt32 zxt32))
  (choose*
   (lambda (i)
    (define-symbolic* idx integer?) (list-ref (list-ref opts cn) idx))
   (cons
    (lambda (i)
      (define-symbolic* idx integer?) (op (list-ref (list-ref opts cn) idx)))
    (lambda (i)
      (define-symbolic* idx integer?) (op (list-ref (list-ref opts cn) idx))))))

(define (get-from-vec vec)
  (define op (choose* sxt16 zxt16 sxt32 zxt32))
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
    
(provide (except-out (all-defined-out) interpret) (rename-out [interpret interpret-hvx]))