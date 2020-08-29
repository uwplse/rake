#lang rosette

(require "cpp.rkt")
(require "util.rkt")

(require rosette/lib/match)
(require rosette/lib/angelic)
(require rosette/lib/synthax)

;; HVX data types
(struct i8x128 (Vu) #:transparent)
(struct u8x128 (Vu) #:transparent)
(struct i16x64 (Vu) #:transparent)
(struct u16x64 (Vu) #:transparent)
(struct i32x32 (Vu) #:transparent)
(struct u32x32 (Vu) #:transparent)

(struct i8x128x2 (Vu Vv) #:transparent)
(struct u8x128x2 (Vu Vv) #:transparent)
(struct i16x64x2 (Vu Vv) #:transparent)
(struct u16x64x2 (Vu Vv) #:transparent)
(struct i32x32x2 (Vu Vv) #:transparent)
(struct u32x32x2 (Vu Vv) #:transparent)

(define (elem vec idx)
  (match vec
    [(i8x128 data) (data idx)]
    [(u8x128 data) (data idx)]
    [(i16x64 data) (data idx)]
    [(u16x64 data) (data idx)]
    [(i32x32 data) (data idx)]
    [(u32x32 data) (data idx)]))

(define (v0-elem vec idx)
  (match vec
    [(i8x128x2 v0 v1) (v0 idx)]
    [(u8x128x2 v0 v1) (v0 idx)]
    [(i16x64x2 v0 v1) (v0 idx)]
    [(u16x64x2 v0 v1) (v0 idx)]
    [(i32x32x2 v0 v1) (v0 idx)]
    [(u32x32x2 v0 v1) (v0 idx)]))

(define (v1-elem vec idx)
  (match vec
    [(i8x128x2 v0 v1) (v1 idx)]
    [(u8x128x2 v0 v1) (v1 idx)]
    [(i16x64x2 v0 v1) (v1 idx)]
    [(u16x64x2 v0 v1) (v1 idx)]
    [(i32x32x2 v0 v1) (v1 idx)]
    [(u32x32x2 v0 v1) (v1 idx)]))
     
;; Define DSL for vector creation
(struct vread (buf loc) #:transparent)
(struct vsplat (Rt) #:transparent)

;; New constructs to abstract away data movement
(struct gather (buff-reads))
(struct swizzle (vec) #:transparent)

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

(struct vavg (Vu Vv rnd?) #:transparent)
(struct vnavg (Vu Vv) #:transparent)

(struct vlsr (Vu Rt) #:transparent)
(struct vasr (Vu Rt) #:transparent)

;; Temp
;(struct vdmpy (Vuu Rtb0 Rtb1) #:transparent)
;(struct vdmpy-acc (Vdd Vuu Rtb0 Rtb1) #:transparent)
;(struct vtmpy (Vuu Rtb0 Rtb1) #:transparent)
(struct vasr-rnd-sat (Vu Vv Rt) #:transparent)
;(struct vpackhi (v) #:transparent)

(define (interpret p)
  (match p

    ;;;;;;;;;;;;;;;;; Define DSL for vector creation ;;;;;;;;;;;;;;;
    
    [(vread buf loc) ((get-vec-type buf) (lambda (i) (get buf (+ loc i))))]

    ;[(vsplat Rt) (lambda (i) Rt)]

    ;;;;;;;;; New constructs to abstract away data movement;;;;;;;;;
    
    [(gather buff-reads) (get-from-buf buff-reads)]
    [(swizzle vec) (get-from-vec (interpret vec))]
    
    ;;;;;;;;;;;;;;;; Define DSL for data processing ;;;;;;;;;;;;;;;;

    ;; Addition (non-widening) -- carry variants currently not supported
    [(vadd Vu Vv sat?)
     (match (list (interpret Vu) (interpret Vv))
       ;; Saturating for signed types is optional
       [(list (i8x128 lhs) (i8x128 rhs)) (i8x128 (lambda (i) (if sat? (add-sat (lhs i) (rhs i) 'int8) (add (lhs i) (rhs i) 'int8))))]
       [(list (i16x64 lhs) (i16x64 rhs)) (i16x64 (lambda (i) (if sat? (add-sat (lhs i) (rhs i) 'int16) (add (lhs i) (rhs i) 'int16))))]
       [(list (i32x32 lhs) (i32x32 rhs)) (i32x32 (lambda (i) (if sat? (add-sat (lhs i) (rhs i) 'int32) (add (lhs i) (rhs i) 'int32))))]

       ;; Always saturate for unsigned types
       [(list (u8x128 lhs) (i8x128 rhs)) (u8x128 (lambda (i) (add-sat (lhs i) (rhs i) 'uint8)))]
       [(list (u8x128 lhs) (u8x128 rhs)) (u8x128 (lambda (i) (add-sat (lhs i) (rhs i) 'uint8)))]
       [(list (u16x64 lhs) (u16x64 rhs)) (u16x64 (lambda (i) (add-sat (lhs i) (rhs i) 'uint16)))]
       [(list (u32x32 lhs) (u32x32 rhs)) (u32x32 (lambda (i) (add-sat (lhs i) (rhs i) 'uint32)))]
       
       ;; Saturating for signed types is optional
       [(list (i8x128x2 lhs-v0 lhs-v1) (i8x128x2 rhs-v0 rhs-v1))
        (i8x128x2
         (lambda (i) (if sat? (add-sat (lhs-v0 i) (rhs-v0 i) 'int8) (add (lhs-v0 i) (rhs-v0 i) 'int8)))
         (lambda (i) (if sat? (add-sat (lhs-v1 i) (rhs-v1 i) 'int8) (add (lhs-v1 i) (rhs-v1 i) 'int8))))]
       [(list (i16x64x2 lhs-v0 lhs-v1) (i16x64x2 rhs-v0 rhs-v1))
        (i16x64x2
         (lambda (i) (if sat? (add-sat (lhs-v0 i) (rhs-v0 i) 'int16) (add (lhs-v0 i) (rhs-v0 i) 'int16)))
         (lambda (i) (if sat? (add-sat (lhs-v1 i) (rhs-v1 i) 'int16) (add (lhs-v1 i) (rhs-v1 i) 'int16))))]
       [(list (i32x32x2 lhs-v0 lhs-v1) (i32x32x2 rhs-v0 rhs-v1))
        (i32x32x2
         (lambda (i) (if sat? (add-sat (lhs-v0 i) (rhs-v0 i) 'int32) (add (lhs-v0 i) (rhs-v0 i) 'int32)))
         (lambda (i) (if sat? (add-sat (lhs-v1 i) (rhs-v1 i) 'int32) (add (lhs-v1 i) (rhs-v1 i) 'int32))))]

       ;; Always saturate for unsigned types
       [(list (u8x128x2 lhs-v0 lhs-v1) (u8x128x2 rhs-v0 rhs-v1))
        (i8x128x2
         (lambda (i) (add-sat (lhs-v0 i) (rhs-v0 i) 'uint8))
         (lambda (i) (add-sat (lhs-v1 i) (rhs-v1 i) 'uint8)))]
       [(list (u16x64x2 lhs-v0 lhs-v1) (u16x64x2 rhs-v0 rhs-v1))
        (i16x64x2
         (lambda (i) (add-sat (lhs-v0 i) (rhs-v0 i) 'uint16))
         (lambda (i) (add-sat (lhs-v1 i) (rhs-v1 i) 'uint16)))]
       [(list (u32x32x2 lhs-v0 lhs-v1) (u32x32x2 rhs-v0 rhs-v1))
        (i32x32x2
         (lambda (i) (add-sat (lhs-v0 i) (rhs-v0 i) 'uint32))
         (lambda (i) (add-sat (lhs-v1 i) (rhs-v1 i) 'uint32)))])]

    ;; Addition (widening)
    [(vadd-w Vu Vv)
     (match (list (interpret Vu) (interpret Vv))
       [(list (u8x128 lhs) (u8x128 rhs))
        (i16x64x2
         (lambda (i) (add (lhs (* i 2)) (rhs (* i 2)) 'int16))
         (lambda (i) (add (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int16)))]
       [(list (u16x64 lhs) (u16x64 rhs))
        (i32x32x2
         (lambda (i) (add (lhs (* i 2)) (rhs (* i 2)) 'int32))
         (lambda (i) (add (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int32)))]
       [(list (i16x64 lhs) (i16x64 rhs))
        (i32x32x2
         (lambda (i) (add (lhs (* i 2)) (rhs (* i 2)) 'int32))
         (lambda (i) (add (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int32)))])]
       
    ;; Addition (widening) with accumulation
    [(vadd-w-acc Vdd Vu Vv)
     (match (list (interpret Vdd) (interpret Vu) (interpret Vv))
       [(list (i16x64x2 acc-v0 acc-v1) (u8x128 lhs) (u8x128 rhs))
        (i16x64x2
         (lambda (i) (add-acc (acc-v0 i) (lhs (* i 2)) (rhs (* i 2)) 'int16))
         (lambda (i) (add-acc (acc-v1 i) (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int16)))]
       [(list (i32x32x2 acc-v0 acc-v1) (u16x64 lhs) (u16x64 rhs))
        (i32x32x2
         (lambda (i) (add-acc (acc-v0 i) (lhs (* i 2)) (rhs (* i 2)) 'int32))
         (lambda (i) (add-acc (acc-v1 i) (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int32)))]
       [(list (i32x32x2 acc-v0 acc-v1) (i16x64 lhs) (i16x64 rhs))
        (i32x32x2
         (lambda (i) (add-acc (acc-v0 i) (lhs (* i 2)) (rhs (* i 2)) 'int32))
         (lambda (i) (add-acc (acc-v1 i) (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int32)))])]

    ;; Vector-scalar multiplication (widening)
    [(vmpy Vu Rt)
     (define rhs (interpret Rt))
     (match (list (interpret Vu) rhs)
       [(list (u8x128 lhs) (int8_t v))
        (i16x64
         (lambda (i) (multiply (lhs (* i 2)) rhs 'int16))
         (lambda (i) (multiply (lhs (+ (* i 2) 1)) rhs 'int16)))]
       [(list (u8x128 lhs) (uint8_t v))
        (u16x64
         (lambda (i) (multiply (lhs (* i 2)) rhs 'uint16))
         (lambda (i) (multiply (lhs (+ (* i 2) 1)) rhs 'uint16)))]
       [(list (u16x64 lhs) (uint16_t v))
        (u32x32
         (lambda (i) (multiply (lhs (* i 2)) rhs 'uint32))
         (lambda (i) (multiply (lhs (+ (* i 2) 1)) rhs 'uint32)))]
       [(list (i16x64 lhs) (int16_t v))
        (i16x64
         (lambda (i) (multiply (lhs (* i 2)) rhs 'int32))
         (lambda (i) (multiply (lhs (+ (* i 2) 1)) rhs 'int32)))])]

    ;; Vector-scalar multiplication (non-widening)
    [(vmpyi Vu Rt)
     (define rhs (interpret Rt))
     (match (list (interpret Vu) rhs)
       [(list (i16x64 lhs) (int8_t v)) (i16x64 (lambda (i) (multiply (lhs i) rhs 'int16)))]
       [(list (i32x32 lhs) (int8_t v)) (i32x32 (lambda (i) (multiply (lhs i) rhs 'int32)))]
       [(list (i32x32 lhs) (uint8_t v)) (i32x32 (lambda (i) (multiply (lhs i) rhs 'int32)))]
       [(list (i32x32 lhs) (int16_t v)) (i32x32 (lambda (i) (multiply (lhs i) rhs 'int32)))])]

    ;; Vector-scalar multiplication (non-widening) -- ignores upper16 bits
    [(vmpye Vu Rt)
     (define rhs (interpret Rt))
     (match (list (interpret Vu) rhs)
       [(list (i32x32 lhs) (uint16_t v)) (u32x32 (lambda (i) (uint32_t (bvmul (lsb16 (lhs i)) (eval (cpp_cast rhs 'uint32))))))]
       [(list (u32x32 lhs) (uint16_t v)) (u32x32 (lambda (i) (uint32_t (bvmul (lsb16 (lhs i)) (eval (cpp_cast rhs 'uint32))))))])]

    ;; Vector-scalar multiplication (widening) with accumulation
    [(vmpy-acc Vdd Vu Rt)
     (define rhs (interpret Rt))
     (match (list (interpret Vdd) (interpret Vu) rhs)
       [(list (i16x64x2 acc-v0 acc-v1) (u8x128 lhs) (int8_t v))
        (i16x64x2
         (lambda (i) (int16_t (bvadd (eval (acc-v0 i)) (eval (multiply (lhs (* i 2)) rhs 'int16)))))
         (lambda (i) (int16_t (bvadd (eval (acc-v1 i)) (eval (multiply (lhs (+ (* i 2) 1)) rhs 'int16))))))]
       
       [(list (u16x64x2 acc-v0 acc-v1) (u8x128 lhs) (uint8_t v))
        (u16x64x2
         (lambda (i) (uint16_t (bvadd (eval (acc-v0 i)) (eval (multiply (lhs (* i 2)) rhs 'uint16)))))
         (lambda (i) (uint16_t (bvadd (eval (acc-v1 i)) (eval (multiply (lhs (+ (* i 2) 1)) rhs 'uint16))))))]
       
       [(list (u32x32x2 acc-v0 acc-v1) (u16x64 lhs) (uint16_t v))
        (u32x32x2
         (lambda (i) (uint32_t (bvadd (eval (acc-v0 i)) (eval (multiply (lhs (* i 2)) rhs 'uint32)))))
         (lambda (i) (uint32_t (bvadd (eval (acc-v1 i)) (eval (multiply (lhs (+ (* i 2) 1)) rhs 'int'uint3216))))))]
       
       [(list (i32x32x2 acc-v0 acc-v1) (i16x64 lhs) (int16_t v))
        (i32x32x2
         (lambda (i) (int32_t (bvadd (eval (acc-v0 i)) (eval (multiply (lhs (* i 2)) rhs 'int32)))))
         (lambda (i) (int32_t (bvadd (eval (acc-v1 i)) (eval (multiply (lhs (+ (* i 2) 1)) rhs 'int32))))))])]


    ;; Vector-scalar multiplication (non-widening) with accumulation
    [(vmpyi-acc Vd Vu Rt)
     (define rhs (interpret Rt))
     (match (list (interpret Vd) (interpret Vu) rhs)
       [(list (i16x64 acc) (i16x64 lhs) (int8_t v)) (i16x64 (lambda (i) (int16_t (bvadd (eval (acc i)) (eval (multiply (lhs i) rhs 'int16))))))]
       [(list (i32x32 acc) (i32x32 lhs) (int8_t v)) (i32x32 (lambda (i) (int32_t (bvadd (eval (acc i)) (eval (multiply (lhs i) rhs 'int32))))))]
       [(list (i32x32 acc) (i32x32 lhs) (uint8_t v)) (i32x32 (lambda (i) (int32_t (bvadd (eval (acc i)) (eval (multiply (lhs i) rhs 'int32))))))]
       [(list (i32x32 acc) (i32x32 lhs) (int16_t v)) (i32x32 (lambda (i) (int32_t (bvadd (eval (acc i)) (eval (multiply (lhs i) rhs 'int32))))))])]

    ;; Vector-scalar multiplication (non-widening) with accumulation -- ignores upper16 bits
    [(vmpye-acc Vd Vu Rt)
     (define rhs (interpret Rt))
     (match (list (interpret Vd) (interpret Vu) rhs)
       [(list (u32x32 acc) (i32x32 lhs) (uint16_t v)) (u32x32 (lambda (i) (uint32_t (bvadd (eval (acc i)) (bvmul (lsb16 (lhs i)) (eval (cpp_cast rhs 'uint32)))))))]
       [(list (u32x32 acc) (u32x32 lhs) (uint16_t v)) (u32x32 (lambda (i) (uint32_t (bvadd (eval (acc i)) (bvmul (lsb16 (lhs i)) (eval (cpp_cast rhs 'uint32)))))))])]

    ;; Sum to vector-scalar multiplies
    [(vmpa Vuu Rt)
     (define rhs (interpret Rt))
     (match (list (interpret Vuu) rhs)
       [(list (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i16x64x2
         (lambda (i) (multiply-add (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) 'int16))
         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (+ (* i 2) 1)) (int8_t w2) 'int16)))]
       [(list (u8x128x2 data-v0 data-v1) (cons (uint8_t w1) (uint8_t w2)))
        (i16x64x2
         (lambda (i) (multiply-add (data-v0 (* i 2)) (uint8_t w1) (data-v1 (* i 2)) (uint8_t w2) 'int16))
         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (uint8_t w1) (data-v1 (+ (* i 2) 1)) (uint8_t w2) 'int16)))]
       [(list (u16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i32x32x2
         (lambda (i) (multiply-add (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) 'int32))
         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (+ (* i 2) 1)) (int8_t w2) 'int32)))]
       [(list (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i32x32x2
         (lambda (i) (multiply-add (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) 'int32))
         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (+ (* i 2) 1)) (int8_t w2) 'int32)))])]

    ;; Sum two vector-scalar multiplies, accumulate into output register
    [(vmpa-acc Vdd Vuu Rt)
     (define rhs (interpret Rt))
     (match (list (interpret Vdd) (interpret Vuu) rhs)
       [(list (i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i16x64x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v0 i) 'int16))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v1 i) 'int16)))]
       [(list (i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (cons (uint8_t w1) (uint8_t w2)))
        (i16x64x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (uint8_t w1) (data-v1 (* i 2)) (uint8_t w2) (acc-v0 i) 'int16))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (uint8_t w1) (data-v1 (* i 2)) (uint8_t w2) (acc-v1 i) 'int16)))]
       [(list (i32x32x2 acc-v0 acc-v1) (u16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i32x32x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v0 i) 'int32))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v1 i) 'int32)))]
       [(list (i32x32x2 acc-v0 acc-v1) (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i32x32x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v0 i) 'int32))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v1 i) 'int32)))])]

    ;; Reduce (via sum) two vector-scalar multiplies. Unlike vmpa, this is reduction within the vector.
    ;; Saturates output for some input types
    [(vdmpy Vu Rt)
     (define rhs (interpret Rt))
     (match (list (interpret Vu) Rt)
       [(list (i16x64x2 data-v0 data-v1) (cons (int16_t w1) (int16_t w2))) (i32x32 (lambda (i) (sat32 (multiply-add (data-v0 (+ (* i 2) 1)) (int16_t w1) (data-v1 (* i 2)) (int16_t w2) 'int64))))]
       [(list (i16x64x2 data-v0 data-v1) (cons (uint16_t w1) (uint16_t w2))) (i32x32 (lambda (i) (sat32 (multiply-add (data-v0 (+ (* i 2) 1)) (int16_t w1) (data-v1 (* i 2)) (int16_t w2) 'int64))))]
       
       (lambda (i)
           (define x1 ((interpret Vu) (* i 2)))
           (define x2 ((interpret Vu) (+ (* i 2) 1)))
           (define w1 (car (interpret Rt)))
           (define w2 (cdr (interpret Rt)))
           (cond
             [(and (uint8_t? x1) (int8_t? w1)) (multiply-add x1 w1 x2 w2 'int16)]
             [(and (int16_t? x1) (int8_t? w1)) (multiply-add x1 w1 x2 w2 'int32)]
             [(and (int16_t? x1) (int16_t? w1)) (sat32 (multiply-add x1 w1 x2 w2 'int64))]
             [(and (int16_t? x1) (uint16_t? w1)) (sat32 (multiply-add x1 w1 x2 w2 'int64))])))]

    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window
    [(vdmpy-sw Vuu Rt)
     (cons
      (lambda (i)
        (define x1 ((car (interpret Vuu)) (* i 2)))
        (define x2 ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define w1 (car (interpret Rt)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (uint8_t? x1) (int8_t? w1)) (multiply-add x1 w1 x2 w2 'int16)]
          [(and (int16_t? x1) (int8_t? w1)) (multiply-add x1 w1 x2 w2 'int32)]))
      (lambda (i)
        (define x1 ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define x2 ((cdr (interpret Vuu)) (* i 2)))
        (define w1 (car (interpret Rt)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (uint8_t? x1) (int8_t? w1)) (multiply-add x1 w1 x2 w2 'int16)]
          [(and (int16_t? x1) (int8_t? w1)) (multiply-add x1 w1 x2 w2 'int32)])))]

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
             [(and (int16_t? x1) (int16_t? w1)) (sat32 (multiply-add-acc x1 w1 x2 w2 acc 'int64))]
             [(and (int16_t? x1) (uint16_t? w1)) (sat32 (multiply-add-acc x1 w1 x2 w2 acc 'int64))]))
         (lambda (i)
           (define acc ((interpret Vd) i))
           (define x1 ((interpret Vu) (* i 2)))
           (define x2 ((interpret Vu) (+ (* i 2) 1)))
           (define w1 (car (interpret Rt)))
           (define w2 (cdr (interpret Rt)))
           (cond
             [(and (uint8_t? x1) (int8_t? w1)) (multiply-add-acc x1 w1 x2 w2 acc 'int16)]
             [(and (int16_t? x1) (int8_t? w1)) (multiply-add-acc x1 w1 x2 w2 acc 'int32)]
             [(and (int16_t? x1) (int16_t? w1)) (sat32 (multiply-add-acc x1 w1 x2 w2 acc 'int64))]
             [(and (int16_t? x1) (uint16_t? w1)) (sat32 (multiply-add-acc x1 w1 x2 w2 acc 'int64))])))]

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
          [(and (uint8_t? x1) (int8_t? w1)) (multiply-add-acc x1 w1 x2 w2 acc 'int16)]
          [(and (int16_t? x1) (int8_t? w1)) (multiply-add-acc x1 w1 x2 w2 acc 'int32)]))
      (lambda (i)
        (define acc ((cdr (interpret Vdd)) i))
        (define x1 ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define x2 ((cdr (interpret Vuu)) (* i 2)))
        (define w1 (car (interpret Rt)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (uint8_t? x1) (int8_t? w1)) (multiply-add-acc x1 w1 x2 w2 acc 'int16)]
          [(and (int16_t? x1) (int8_t? w1)) (multiply-add-acc x1 w1 x2 w2 acc 'int32)])))]

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
          [(and (int8_t? x1) (int8_t? w1)) (multiply-add-acc x1 w1 x2 w2 x3 'int16)]
          [(and (uint8_t? x1) (int8_t? w1)) (multiply-add-acc x1 w1 x2 w2 x3 'int16)]
          [(and (int16_t? x1) (int8_t? w1)) (multiply-add-acc x1 w1 x2 w2 x3 'int32)]))
      (lambda (i)
        (define x1 ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define x2 ((cdr (interpret Vuu)) (* i 2)))
        (define x3 ((cdr (interpret Vuu)) (+ (* i 2) 1)))
        (define w1 (car (interpret Rt)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (int8_t? x1) (int8_t? w1)) (multiply-add-acc x1 w1 x2 w2 x3 'int16)]
          [(and (uint8_t? x1) (int8_t? w1)) (multiply-add-acc x1 w1 x2 w2 x3 'int16)]
          [(and (int16_t? x1) (int8_t? w1)) (multiply-add-acc x1 w1 x2 w2 x3 'int32)])))]

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
          [(and (int8_t? x1) (int8_t? w1)) (int16_t (bvadd (eval acc) (eval (multiply-add-acc x1 w1 x2 w2 x3 'int16))))]
          [(and (uint8_t? x1) (int8_t? w1)) (int16_t (bvadd (eval acc) (eval (multiply-add-acc x1 w1 x2 w2 x3 'int16))))]
          [(and (int16_t? x1) (int8_t? w1)) (int32_t (bvadd (eval acc) (eval (multiply-add-acc x1 w1 x2 w2 x3 'int32))))]))
      (lambda (i)
        (define acc ((cdr (interpret Vdd)) i))
        (define x1 ((car (interpret Vuu)) (+ (* i 2) 1)))
        (define x2 ((cdr (interpret Vuu)) (* i 2)))
        (define x3 ((cdr (interpret Vuu)) (+ (* i 2) 1)))
        (define w1 (car (interpret Rt)))
        (define w2 (cdr (interpret Rt)))
        (cond
          [(and (int8_t? x1) (int8_t? w1)) (int16_t (bvadd (eval acc) (eval (eval (multiply-add-acc x1 w1 x2 w2 x3 'int16)))))]
          [(and (uint8_t? x1) (int8_t? w1)) (int16_t (bvadd (eval acc) (eval (multiply-add-acc x1 w1 x2 w2 x3 'int16))))]
          [(and (int16_t? x1) (int8_t? w1)) (int32_t (bvadd (eval acc) (eval (multiply-add-acc x1 w1 x2 w2 x3 'int32))))])))]

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
         [(and (uint8_t? x1) (uint8_t? w1)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'uint32)]
         [(and (uint8_t? x1) (int8_t? w1)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'int32)]))]

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
         [(and (uint8_t? x1) (uint8_t? w1)) (uint32_t (bvadd (eval acc) (eval (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'uint32))))]
         [(and (uint8_t? x1) (int8_t? w1)) (int32_t (bvadd (eval acc) (eval (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'int32))))]))]

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
              [(and (uint8_t? x1) (uint8_t? w1)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'uint32)]
              [(and (uint8_t? x1) (int8_t? w1)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'int32)]))
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
              [(and (uint8_t? x1) (uint8_t? w1)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'uint32)]
              [(and (uint8_t? x1) (int8_t? w1)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'int32)])))
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
              [(and (uint8_t? x1) (uint8_t? w1)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'uint32)]
              [(and (uint8_t? x1) (int8_t? w1)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'int32)]))
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
              [(and (uint8_t? x1) (uint8_t? w1)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'uint32)]
              [(and (uint8_t? x1) (int8_t? w1)) (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 'int32)]))))]

    ;; Element-wise average of two vectors (optional +1 rounding)
    [(vavg Vu Vv rnd?)
     (lambda (i)
       (define lhs ((interpret Vu) i))
       (define rhs ((interpret Vv) i))
       (cond
         [(and (int8_t? lhs) (int8_t? rhs)) (if rnd? (average-round lhs rhs 'int8) (average lhs rhs 'int8))]
         [(and (int16_t? lhs) (int16_t? rhs)) (if rnd? (average-round lhs rhs 'int16) (average lhs rhs 'int16))]
         [(and (int32_t? lhs) (int32_t? rhs)) (if rnd? (average-round lhs rhs 'int32) (average lhs rhs 'int32))]
         [(and (uint8_t? lhs) (uint8_t? rhs)) (if rnd? (average-round lhs rhs 'uint8) (average lhs rhs 'uint8))]
         [(and (uint16_t? lhs) (uint16_t? rhs)) (if rnd? (average-round lhs rhs 'uint16) (average lhs rhs 'uint16))]
         [(and (uint32_t? lhs) (uint32_t? rhs)) (if rnd? (average-round lhs rhs 'uint32) (average lhs rhs 'uint32))]))]

    ;; Subtract and divide by 2
    [(vnavg Vu Vv)
     (lambda (i)
       (define lhs ((interpret Vu) i))
       (define rhs ((interpret Vv) i))
       (cond
         [(and (uint8_t? lhs) (uint8_t? rhs)) (naverage lhs rhs 'int8)]
         [(and (int8_t? lhs) (int8_t? rhs)) (naverage lhs rhs 'int8)]
         [(and (int16_t? lhs) (int16_t? rhs)) (naverage lhs rhs 'int16)]
         [(and (int32_t? lhs) (int32_t? rhs)) (naverage lhs rhs 'int32)]))]

    ;; Logical shift right
    [(vlsr Vu Rt)
     (lambda (i)
       (define val ((interpret Vu) i))
       (define c (interpret Rt))
       (cond
         [(uint8_t? val) (uint8_t (bvlshr (eval val) (eval c)))]
         [(uint16_t? val) (uint16_t (bvlshr (eval val) (eval c)))]
         [(uint32_t? val) (uint32_t (bvlshr (eval val) (eval c)))]))]

    ;; Logical shift right
    [(vlsr Vu Rt)
     (lambda (i)
       (define val ((interpret Vu) i))
       (define c (interpret Rt))
       (cond
         [(uint8_t? val) (uint8_t (bvlshr (eval val) (eval c)))]
         [(uint16_t? val) (uint16_t (bvlshr (eval val) (eval c)))]
         [(uint32_t? val) (uint32_t (bvlshr (eval val) (eval c)))]))]
    
    ;; ---- Everything below this line in the interpreter is tentative ----

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
(define (add lhs rhs outT)
  (mk-typed-expr (bvadd (eval (cpp_cast lhs outT)) (eval (cpp_cast rhs outT))) outT))

(define (add-acc acc lhs rhs outT)
  (mk-typed-expr (bvadd (eval acc) (eval (cpp_cast lhs outT)) (eval (cpp_cast rhs outT))) outT))

(define (add-sat lhs rhs outT)
  (cond
    [(eq? outT 'int8) (sat8 (add lhs rhs 'int16))]
    [(eq? outT 'int16) (sat16 (add lhs rhs 'int32))]
    [(eq? outT 'int32) (sat32 (add lhs rhs 'int64))]

    [(and (eq? outT 'uint8) (int8_t? rhs)) (satu8 (int16_t (bvadd (eval (promote lhs)) (eval (promote rhs)))))]
    [(eq? outT 'uint8) (satu8 (add lhs rhs 'uint16_t))]
    [(eq? outT 'uint16) (satu16 (add lhs rhs 'uint32))]
    [(eq? outT 'uint32) (satu32 (add lhs rhs 'uint64))]))

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

(define (average lhs rhs outT)
  (cond
    [(eq? outT 'int8) (mk-typed-expr (bvashr (bvadd (eval lhs) (eval rhs)) (bv 1 8)) outT)]
    [(eq? outT 'int16) (mk-typed-expr (bvashr (bvadd (eval lhs) (eval rhs)) (bv 1 16)) outT)]
    [(eq? outT 'int32) (mk-typed-expr (bvashr (bvadd (eval lhs) (eval rhs)) (bv 1 32)) outT)]
    [(eq? outT 'uint8) (mk-typed-expr (bvlshr (bvadd (eval lhs) (eval rhs)) (bv 1 8)) outT)]
    [(eq? outT 'uint16) (mk-typed-expr (bvlshr (bvadd (eval lhs) (eval rhs)) (bv 1 16)) outT)]
    [(eq? outT 'uint32) (mk-typed-expr (bvlshr (bvadd (eval lhs) (eval rhs)) (bv 1 32)) outT)]))

(define (average-round lhs rhs outT)
  (cond
    [(eq? outT 'int8) (mk-typed-expr (bvashr (bvadd (eval lhs) (eval rhs) (bv 1 8)) (bv 1 8)) outT)]
    [(eq? outT 'int16) (mk-typed-expr (bvashr (bvadd (eval lhs) (eval rhs) (bv 1 16)) (bv 1 16)) outT)]
    [(eq? outT 'int32) (mk-typed-expr (bvashr (bvadd (eval lhs) (eval rhs) (bv 1 32)) (bv 1 32)) outT)]
    [(eq? outT 'uint8) (mk-typed-expr (bvlshr (bvadd (eval lhs) (eval rhs) (bv 1 8)) (bv 1 8)) outT)]
    [(eq? outT 'uint16) (mk-typed-expr (bvlshr (bvadd (eval lhs) (eval rhs) (bv 1 16)) (bv 1 16)) outT)]
    [(eq? outT 'uint32) (mk-typed-expr (bvlshr (bvadd (eval lhs) (eval rhs) (bv 1 32)) (bv 1 32)) outT)]))

(define (naverage lhs rhs outT)
  (cond
    [(eq? outT 'uint8) (mk-typed-expr (bvashr (bvsub (eval lhs) (eval rhs)) (bv 1 8)) outT)]
    [(eq? outT 'int8) (mk-typed-expr (bvashr (bvsub (eval lhs) (eval rhs)) (bv 1 8)) outT)]
    [(eq? outT 'int16) (mk-typed-expr (bvashr (bvsub (eval lhs) (eval rhs)) (bv 1 16)) outT)]
    [(eq? outT 'int32) (mk-typed-expr (bvashr (bvsub (eval lhs) (eval rhs)) (bv 1 32)) outT)]))

(define curr-cn 0)
(define (set-curr-cn v) (set! curr-cn v))

;(define (filter-upcasts vec)
;  (cond
;    [(int8_t? ((interpret-ir vec) 0)) (choose* 'int16)]
;    [(int16_t? ((interpret-ir vec) 0)) (choose* 'int32)]
;    [(uint8_t? ((interpret-ir vec) 0)) (choose* 'uint16 'int16)]
;    [(uint16_t? ((interpret-ir vec) 0)) (choose* 'int32 'uint32)]
;    [else (choose* )]))

(define (get-vec-type buf)
  (match (hash-ref type-dict buf)
    ['int8 i8x128]
    ['int16 i16x64]
    ['int32 i32x32]
    ['uint8 u8x128]
    ['uint16 u16x64]
    ['uint32 u32x32]))

(define (get-from-buf buff-reads)
  (define cn-reads (list-ref buff-reads curr-cn))
  (define elemType (apply choose* (map (lambda(v) (type v)) cn-reads)))
  (define opts (filter (lambda(v) (eq? (type v) elemType)) cn-reads))
  (define vecType (cond
                    [(eq? elemType 'int8) i8x128]
                    [(eq? elemType 'int16) i16x64]
                    [(eq? elemType 'int32) i32x32]
                    [(eq? elemType 'uint8) u8x128]
                    [(eq? elemType 'uint16) u16x64]
                    [(eq? elemType 'uint32) u32x32]))
  (define vecpType (cond
                    [(eq? elemType 'int8) i8x128x2]
                    [(eq? elemType 'int16) i16x64x2]
                    [(eq? elemType 'int32) i32x32x2]
                    [(eq? elemType 'uint8) u8x128x2]
                    [(eq? elemType 'uint16) u16x64x2]
                    [(eq? elemType 'uint32) u32x32x2]))
  (define-symbolic* get-idx (~> integer? integer?))
  (define-symbolic* get-idx2 (~> integer? integer?))
  (choose*
   (vecType (lambda (i) (list-ref opts (get-idx i))))
   (vecpType ((cons (lambda (i) (list-ref opts (get-idx i))) (lambda (i) (list-ref opts (get-idx2 i))))))))

;  (define op (choose* nop sxt16 zxt16 sxt32 zxt32))
;  (choose*
;   (lambda (i)
;    (define-symbolic* idx integer?) (list-ref  idx))
;   (cons
;    (lambda (i)
;      (define-symbolic* idx integer?) (op (list-ref (list-ref opts curr-cn) idx)))
;    (lambda (i)
;      (define-symbolic* idx integer?) (op (list-ref (list-ref opts curr-cn) idx))))))

(define (get-from-vec vec)
  (define op (choose* sxt16 zxt16 sxt32 zxt32))
  ;(define downcasts (choose* sxt16 zxt16 sxt32 zxt32))
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
    
(provide
 (except-out
  (all-defined-out)
  interpret
  set-curr-cn curr-cn
  add add-acc add-sat multiply multiply-add multiply-add-acc dot-prod4)
 (rename-out [interpret interpret-hvx] [set-curr-cn set-curr-cn-hvx]))