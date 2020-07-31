#lang rosette

(require "cpp.rkt")
(require "util.rkt")

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

(struct vmpa (Vuu Rt) #:transparent)
(struct vmpa-acc (Vdd Vuu Rt) #:transparent)

(struct vdmpy (Vu Rt) #:transparent)
(struct vdmpy-sw (Vuu Rt) #:transparent)

(struct vdmpy-acc (Vd Vu Rt) #:transparent)
(struct vdmpy-sw-acc (Vdd Vuu Rt) #:transparent)

(struct vtmpy (Vuu Rt) #:transparent)
(struct vtmpy-acc (Vdd Vuu Rt) #:transparent)

(struct vrmpy (Vu Rt) #:transparent)
(struct vrmpy-acc (Vd Vu Rt) #:transparent)

(struct vrmpy-p (Vuu Rt u1) #:transparent)
(struct vrmpy-p-acc (Vdd Vuu Rt u1) #:transparent)

;; TODO (core isntrs): Add vrmpy
;; TODO (misc isntrs): vmpy-rnd-sat, asr, asl, vluts etc
;; TODO (conditionals)

;; Temp
;(struct vdmpy (Vuu Rtb0 Rtb1) #:transparent)
;(struct vdmpy-acc (Vdd Vuu Rtb0 Rtb1) #:transparent)
;(struct vtmpy (Vuu Rtb0 Rtb1) #:transparent)
(struct vasr-rnd-sat (Vu Vv Rt) #:transparent)
;(struct vpackhi (v) #:transparent)

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
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'int8)) (multiply lhs rhs 'int16)]
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (multiply lhs rhs 'uint16)]
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (multiply lhs rhs 'uint32)]
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (multiply lhs rhs 'int32)]))
      (lambda (i)
        (define lhs ((interpret Vu) (+ (* i 2) 1)))
        (define rhs (interpret Rt))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'int8)) (multiply lhs rhs 'int16)]
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (multiply lhs rhs 'uint16)]
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (multiply lhs rhs 'uint32)]
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (multiply lhs rhs 'int32)])))]

    ;; Vector-scalar multiplication (non-widening)
    [(vmpyi Vu Rt)
     (lambda (i)
       (define lhs ((interpret Vu) i))
       (define rhs (interpret Rt))
       (cond
         [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int8)) (multiply lhs rhs 'int16)]
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'int8)) (multiply lhs rhs 'int32)]
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'uint8)) (multiply lhs rhs 'int32)]
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'int16)) (multiply lhs rhs 'int32)]))]

    ;; Vector-scalar multiplication (non-widening) -- ignores upper16 bits
    [(vmpye Vu Rt)
     (lambda (i)
       (define lhs ((interpret Vu) i))
       (define rhs (interpret Rt))
       (cond
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'uint16)) (uint32_t (bvmul (lsb16 lhs) (eval (cpp_cast rhs 'uint32))))]
         [(and (eq? (type lhs) 'uint32) (eq? (type rhs) 'uint16)) (uint32_t (bvmul (lsb16 lhs) (eval (cpp_cast rhs 'uint32))))]))]

    ;; Vector-scalar multiplication (widening) with accumulation
    [(vmpy-acc Vdd Vu Rt)
     (cons
      (lambda (i)
        (define acc ((car (interpret Vdd)) i))
        (define lhs ((interpret Vu) (* i 2)))
        (define rhs (interpret Rt))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'int8)) (int16_t (bvadd (eval acc) (eval (multiply lhs rhs 'int16))))]
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (uint16_t (bvadd (eval acc) (eval (multiply lhs rhs 'uint16))))]
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (uint32_t (bvadd (eval acc) (eval (multiply lhs rhs 'uint32))))]
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (int32_t (bvadd (eval acc) (eval (multiply lhs rhs 'int32))))]))
      (lambda (i)
        (define acc ((cdr (interpret Vdd)) i))
        (define lhs ((interpret Vu) (+ (* i 2) 1)))
        (define rhs (interpret Rt))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'int8)) (int16_t (bvadd (eval acc) (eval (multiply lhs rhs 'int16))))]
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (uint16_t (bvadd (eval acc) (eval (multiply lhs rhs 'uint16))))]
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'uint16)) (uint32_t (bvadd (eval acc) (eval (multiply lhs rhs 'uint32))))]
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int16)) (int32_t (bvadd (eval acc) (eval (multiply lhs rhs 'int32))))])))]


    ;; Vector-scalar multiplication (non-widening) with accumulation
    [(vmpyi-acc Vd Vu Rt)
     (lambda (i)
       (define acc ((interpret Vd) i))
       (define lhs ((interpret Vu) i))
       (define rhs (interpret Rt))
       (cond
         [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int8)) (int16_t (bvadd (eval acc) (eval (multiply lhs rhs 'int16))))]
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'int8)) (int32_t (bvadd (eval acc) (eval (multiply lhs rhs 'int32))))]
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'uint8)) (int32_t (bvadd (eval acc) (eval (multiply lhs rhs 'int32))))]
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'int16)) (int32_t (bvadd (eval acc) (eval (multiply lhs rhs 'int32))))]))]

    ;; Vector-scalar multiplication (non-widening) with accumulation -- ignores upper16 bits
    [(vmpye-acc Vd Vu Rt)
     (lambda (i)
       (define acc ((interpret Vd) i))
       (define lhs ((interpret Vu) i))
       (define rhs (interpret Rt))
       (cond
         [(and (eq? (type lhs) 'int32) (eq? (type rhs) 'uint16)) (uint32_t (bvadd (eval acc) (bvmul (lsb16 lhs) (eval (cpp_cast rhs 'uint32)))))]
         [(and (eq? (type lhs) 'uint32) (eq? (type rhs) 'uint16)) (uint32_t (bvadd (eval acc) (bvmul (lsb16 lhs) (eval (cpp_cast rhs 'uint32)))))]))]

    ;; Sum to vector-scalar multiplies
    [(vmpa Vuu Rt)
     (cons
      (lambda (i)
        (define lhs ((car (interpret Vuu)) (* i 2)))
        (define w1 (car (interpret Rt)))
        (define rhs ((cdr (interpret Vuu)) (* i 2)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type w1) 'int8)) (multiply-add lhs w1 rhs w2 'int16)]
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (multiply-add lhs w1 rhs w2 'int16)]
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'int8)) (multiply-add lhs w1 rhs w2 'int32)]
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int8)) (multiply-add lhs w1 rhs w2 'int32)]))
      (lambda (i)
        (define lhs ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define w1 (car (interpret Rt)))
        (define rhs ((cdr (interpret Vuu)) (+ (* i 2) 1)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type w1) 'int8)) (multiply-add lhs w1 rhs w2 'int16)]
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (multiply-add lhs w1 rhs w2 'int16)]
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'int8)) (multiply-add lhs w1 rhs w2 'int32)]
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int8)) (multiply-add lhs w1 rhs w2 'int32)])))]

    ;; Sum two vector-scalar multiplies, accumulate into output register
    [(vmpa-acc Vdd Vuu Rt)
     (cons
      (lambda (i)
        (define acc ((car (interpret Vdd)) i))
        (define lhs ((car (interpret Vuu)) (* i 2)))
        (define w1 (car (interpret Rt)))
        (define rhs ((cdr (interpret Vuu)) (* i 2)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type w1) 'int8)) (multiply-add-acc lhs w1 rhs w2 acc 'int16)]
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (multiply-add-acc lhs w1 rhs w2 acc 'int16)]
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'int8)) (multiply-add-acc lhs w1 rhs w2 acc 'int32)]
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int8)) (multiply-add-acc lhs w1 rhs w2 acc 'int32)]))
      (lambda (i)
        (define acc ((cdr (interpret Vdd)) i))
        (define lhs ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define w1 (car (interpret Rt)))
        (define rhs ((cdr (interpret Vuu)) (+ (* i 2) 1)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (eq? (type lhs) 'uint8) (eq? (type w1) 'int8)) (multiply-add-acc lhs w1 rhs w2 acc 'int16)]
          [(and (eq? (type lhs) 'uint8) (eq? (type rhs) 'uint8)) (multiply-add-acc lhs w1 rhs w2 acc 'int16)]
          [(and (eq? (type lhs) 'uint16) (eq? (type rhs) 'int8)) (multiply-add-acc lhs w1 rhs w2 acc 'int32)]
          [(and (eq? (type lhs) 'int16) (eq? (type rhs) 'int8)) (multiply-add-acc lhs w1 rhs w2 acc 'int32)])))]

    ;; Reduce (via sum) two vector-scalar multiplies. Unlike vmpa, this is reduction within the vector.
    ;; Saturates output for some input types
    [(vdmpy Vu Rt)
     (if (pair? (interpret Vu))
         (lambda (i)
           (define x1 ((car (interpret Vu)) (+ (* i 2) 1)))
           (define x2 ((cdr (interpret Vu)) (* i 2)))
           (define w1 (car (interpret Rt)))
           (define w2 (cdr (interpret Rt)))
           (cond
             [(and (eq? (type x1) 'int16) (eq? (type w1) 'int16)) (int32_t (sat32 (eval (multiply-add x1 w1 x2 w2 'int32))))]
             [(and (eq? (type x1) 'int16) (eq? (type w1) 'uint16)) (int32_t (sat32 (eval (multiply-add x1 w1 x2 w2 'int32))))]))
         (lambda (i)
           (define x1 ((interpret Vu) (* i 2)))
           (define x2 ((interpret Vu) (+ (* i 2) 1)))
           (define w1 (car (interpret Rt)))
           (define w2 (cdr (interpret Rt)))
           (cond
             [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (multiply-add x1 w1 x2 w2 'int16)]
             [(and (eq? (type x1) 'int16) (eq? (type w1) 'int8)) (multiply-add x1 w1 x2 w2 'int32)]
             [(and (eq? (type x1) 'int16) (eq? (type w1) 'int16)) (int32_t (sat32 (eval (multiply-add x1 w1 x2 w2 'int32))))]
             [(and (eq? (type x1) 'int16) (eq? (type w1) 'uint16)) (int32_t (sat32 (eval (multiply-add x1 w1 x2 w2 'int32))))])))]

    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window
    [(vdmpy-sw Vuu Rt)
     (cons
      (lambda (i)
        (define x1 ((car (interpret Vuu)) (* i 2)))
        (define x2 ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define w1 (car (interpret Rt)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (multiply-add x1 w1 x2 w2 'int16)]
          [(and (eq? (type x1) 'int16) (eq? (type w1) 'int8)) (multiply-add x1 w1 x2 w2 'int32)]))
      (lambda (i)
        (define x1 ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define x2 ((cdr (interpret Vuu)) (* i 2)))
        (define w1 (car (interpret Rt)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (multiply-add x1 w1 x2 w2 'int16)]
          [(and (eq? (type x1) 'int16) (eq? (type w1) 'int8)) (multiply-add x1 w1 x2 w2 'int32)])))]

    ;; Reduce (via sum) two vector-scalar multiplies with accumulation.
    [(vdmpy-acc Vd Vu Rt)
     (if (pair? (interpret Vu))
         (lambda (i)
           (define acc ((interpret Vd) i))
           (define x1 ((car (interpret Vu)) (+ (* i 2) 1)))
           (define x2 ((cdr (interpret Vu)) (* i 2)))
           (define w1 (car (interpret Rt)))
           (define w2 (cdr (interpret Rt)))
           (cond
             [(and (eq? (type x1) 'int16) (eq? (type w1) 'int16)) (int32_t (sat32 (bvadd (eval acc) (eval (multiply-add x1 w1 x2 w2 'int32)))))]
             [(and (eq? (type x1) 'int16) (eq? (type w1) 'uint16)) (int32_t (sat32 (bvadd (eval acc) (eval (multiply-add x1 w1 x2 w2 'int32)))))]))
         (lambda (i)
           (define acc ((interpret Vd) i))
           (define x1 ((interpret Vu) (* i 2)))
           (define x2 ((interpret Vu) (+ (* i 2) 1)))
           (define w1 (car (interpret Rt)))
           (define w2 (cdr (interpret Rt)))
           (cond
             [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (multiply-add-acc x1 w1 x2 w2 acc 'int16)]
             [(and (eq? (type x1) 'int16) (eq? (type w1) 'int8)) (multiply-add-acc x1 w1 x2 w2 acc 'int32)]
             [(and (eq? (type x1) 'int16) (eq? (type w1) 'int16)) (int32_t (sat32 (bvadd (eval acc) (eval (multiply-add x1 w1 x2 w2 'int32)))))]
             [(and (eq? (type x1) 'int16) (eq? (type w1) 'uint16)) (int32_t (sat32 (bvadd (eval acc) (eval (multiply-add x1 w1 x2 w2 'int32)))))])))]

    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window with accumulate
    [(vdmpy-sw-acc Vdd Vuu Rt)
     (cons
      (lambda (i)
        (define acc ((car (interpret Vdd)) i))
        (define x1 ((car (interpret Vuu)) (* i 2)))
        (define x2 ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define w1 (car (interpret Rt)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (multiply-add-acc x1 w1 x2 w2 acc 'int16)]
          [(and (eq? (type x1) 'int16) (eq? (type w1) 'int8)) (multiply-add-acc x1 w1 x2 w2 acc 'int32)]))
      (lambda (i)
        (define acc ((cdr (interpret Vdd)) i))
        (define x1 ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define x2 ((cdr (interpret Vuu)) (* i 2)))
        (define w1 (car (interpret Rt)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (multiply-add-acc x1 w1 x2 w2 acc 'int16)]
          [(and (eq? (type x1) 'int16) (eq? (type w1) 'int8)) (multiply-add-acc x1 w1 x2 w2 acc 'int32)])))]

    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window with an additional accumulate
    [(vtmpy Vuu Rt)
     (cons
      (lambda (i)
        (define x1 ((car (interpret Vuu)) (* i 2)))
        (define x2 ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define x3 ((cdr (interpret Vuu)) (* i 2)))
        (define w1 (car (interpret Rt)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (eq? (type x1) 'int8) (eq? (type w1) 'int8)) (multiply-add-acc x1 w1 x2 w2 x3 'int16)]
          [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (multiply-add-acc x1 w1 x2 w2 x3 'int16)]
          [(and (eq? (type x1) 'int16) (eq? (type w1) 'int8)) (multiply-add-acc x1 w1 x2 w2 x3 'int32)]))
      (lambda (i)
        (define x1 ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define x2 ((cdr (interpret Vuu)) (* i 2)))
        (define x3 ((cdr (interpret Vuu)) (+ (* i 2) 1)))
        (define w1 (car (interpret Rt)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (eq? (type x1) 'int8) (eq? (type w1) 'int8)) (multiply-add-acc x1 w1 x2 w2 x3 'int16)]
          [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (multiply-add-acc x1 w1 x2 w2 x3 'int16)]
          [(and (eq? (type x1) 'int16) (eq? (type w1) 'int8)) (multiply-add-acc x1 w1 x2 w2 x3 'int32)])))]

    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window with an additional accumulate.
    ;; Also accumulate the output into the target register
    [(vtmpy-acc Vdd Vuu Rt)
     (cons
      (lambda (i)
        (define acc ((car (interpret Vdd)) i))
        (define x1 ((car (interpret Vuu)) (* i 2)))
        (define x2 ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define x3 ((cdr (interpret Vuu)) (* i 2)))
        (define w1 (car (interpret Rt)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (eq? (type x1) 'int8) (eq? (type w1) 'int8)) (int16_t (bvadd (eval acc) (eval (multiply-add-acc x1 w1 x2 w2 x3 'int16))))]
          [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (int16_t (bvadd (eval acc) (eval (multiply-add-acc x1 w1 x2 w2 x3 'int16))))]
          [(and (eq? (type x1) 'int16) (eq? (type w1) 'int8)) (int32_t (bvadd (eval acc) (eval (multiply-add-acc x1 w1 x2 w2 x3 'int32))))]))
      (lambda (i)
        (define acc ((cdr (interpret Vdd)) i))
        (define x1 ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define x2 ((cdr (interpret Vuu)) (* i 2)))
        (define x3 ((cdr (interpret Vuu)) (+ (* i 2) 1)))
        (define w1 (car (interpret Rt)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (eq? (type x1) 'int8) (eq? (type w1) 'int8)) (int16_t (bvadd (eval acc) (eval (eval (multiply-add-acc x1 w1 x2 w2 x3 'int16)))))]
          [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (int16_t (bvadd (eval acc) (eval (multiply-add-acc x1 w1 x2 w2 x3 'int16))))]
          [(and (eq? (type x1) 'int16) (eq? (type w1) 'int8)) (int32_t (bvadd (eval acc) (eval (multiply-add-acc x1 w1 x2 w2 x3 'int32))))])))]

    ;; Vector-scalar multiply with 4-wide within-vector reduction
    [(vrmpy Vu Rt)
     (lambda (i)
       (define x1 ((interpret Vu) (* i 4)))
       (define x2 ((interpret Vu) (+ (* i 4) 1)))
       (define x3 ((interpret Vu) (+ (* i 4) 2)))
       (define x4 ((interpret Vu) (+ (* i 4) 3)))
       (define w1 (list-ref (interpret Rt) 0))
       (define w2 (list-ref (interpret Rt) 1))
       (define w3 (list-ref (interpret Rt) 2))
       (define w4 (list-ref (interpret Rt) 3))
       (cond
         [(and (eq? (type x1) 'uint8) (eq? (type w1) 'uint8)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'uint32)]
         [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'int32)]))]

    ;; Vector-scalar multiply with 4-wide within-vector reduction with accumulation
    [(vrmpy-acc Vd Vu Rt)
     (lambda (i)
       (define acc ((interpret Vd) i))
       (define x1 ((interpret Vu) (* i 4)))
       (define x2 ((interpret Vu) (+ (* i 4) 1)))
       (define x3 ((interpret Vu) (+ (* i 4) 2)))
       (define x4 ((interpret Vu) (+ (* i 4) 3)))
       (define w1 (list-ref (interpret Rt) 0))
       (define w2 (list-ref (interpret Rt) 1))
       (define w3 (list-ref (interpret Rt) 2))
       (define w4 (list-ref (interpret Rt) 3))
       (cond
         [(and (eq? (type x1) 'uint8) (eq? (type w1) 'uint8)) (uint32_t (bvadd (eval acc) (eval (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'uint32))))]
         [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (int32_t (bvadd (eval acc) (eval (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'int32))))]))]

    ;; Vector-scalar multiply with 4-wide within-vector reduction (partial sliding window)
    [(vrmpy-p Vuu Rt ub)
     (if ub
         (cons
          (lambda (i)
            (define x1 ((car (interpret Vuu)) (* i 4)))
            (define x2 ((car (interpret Vuu)) (+ (* i 4) 1)))
            (define x3 ((car (interpret Vuu)) (+ (* i 4) 2)))
            (define x4 ((car (interpret Vuu)) (+ (* i 4) 3)))
            (define w1 (list-ref (interpret Rt) 0))
            (define w2 (list-ref (interpret Rt) 1))
            (define w3 (list-ref (interpret Rt) 2))
            (define w4 (list-ref (interpret Rt) 3))
            (cond
              [(and (eq? (type x1) 'uint8) (eq? (type w1) 'uint8)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'uint32)]
              [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'int32)]))
          (lambda (i)
            (define x1 ((car (interpret Vuu)) (+ (* i 4) 2)))
            (define x2 ((car (interpret Vuu)) (+ (* i 4) 3)))
            (define x3 ((cdr (interpret Vuu)) (* i 4)))
            (define x4 ((cdr (interpret Vuu)) (+ (* i 4) 1)))
            (define w1 (list-ref (interpret Rt) 0))
            (define w2 (list-ref (interpret Rt) 1))
            (define w3 (list-ref (interpret Rt) 2))
            (define w4 (list-ref (interpret Rt) 3))
            (cond
              [(and (eq? (type x1) 'uint8) (eq? (type w1) 'uint8)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'uint32)]
              [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'int32)])))
         (cons
          (lambda (i)
            (define x1 ((car (interpret Vuu)) (+ (* i 4) 1)))
            (define x2 ((car (interpret Vuu)) (+ (* i 4) 2)))
            (define x3 ((car (interpret Vuu)) (+ (* i 4) 3)))
            (define x4 ((cdr (interpret Vuu)) (* i 4)))
            (define w1 (list-ref (interpret Rt) 0))
            (define w2 (list-ref (interpret Rt) 1))
            (define w3 (list-ref (interpret Rt) 2))
            (define w4 (list-ref (interpret Rt) 3))
            (cond
              [(and (eq? (type x1) 'uint8) (eq? (type w1) 'uint8)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'uint32)]
              [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'int32)]))
          (lambda (i)
            (define x1 ((car (interpret Vuu)) (+ (* i 4) 3)))
            (define x2 ((cdr (interpret Vuu)) (* i 4)))
            (define x3 ((cdr (interpret Vuu)) (+ (* i 4) 1)))
            (define x4 ((cdr (interpret Vuu)) (+ (* i 4) 2)))
            (define w1 (list-ref (interpret Rt) 0))
            (define w2 (list-ref (interpret Rt) 1))
            (define w3 (list-ref (interpret Rt) 2))
            (define w4 (list-ref (interpret Rt) 3))
            (cond
              [(and (eq? (type x1) 'uint8) (eq? (type w1) 'uint8)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'uint32)]
              [(and (eq? (type x1) 'uint8) (eq? (type w1) 'int8)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'int32)]))))]
    
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
(define (lsb16 v)
  (zero-extend (extract 15 0 (eval v)) (bitvector 32)))

(define (multiply lhs rhs outT)
  (mk-typed-expr (bvmul (eval (cpp_cast lhs outT)) (eval (cpp_cast rhs outT))) outT))
  
(define (multiply-add lhs w1 rhs w2 outT)
  (mk-typed-expr
   (bvadd
    (bvmul (eval (cpp_cast lhs outT)) (eval (cpp_cast w1 outT)))
    (bvmul (eval (cpp_cast rhs outT)) (eval (cpp_cast w2 outT))))
   outT))

(define (multiply-add-acc lhs w1 rhs w2 acc outT)
  (mk-typed-expr
   (bvadd
    (eval (cpp_cast acc outT))
    (bvmul (eval (cpp_cast lhs outT)) (eval (cpp_cast w1 outT)))
    (bvmul (eval (cpp_cast rhs outT)) (eval (cpp_cast w2 outT))))
   outT))

(define (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 outT)
  (mk-typed-expr
   (bvadd
    (bvmul (eval (cpp_cast x1 outT)) (eval (cpp_cast w1 outT)))
    (bvmul (eval (cpp_cast x2 outT)) (eval (cpp_cast w2 outT)))
    (bvmul (eval (cpp_cast x3 outT)) (eval (cpp_cast w3 outT)))
    (bvmul (eval (cpp_cast x4 outT)) (eval (cpp_cast w4 outT))))
   outT))

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