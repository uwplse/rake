#lang rosette

(require rake/cpp/types)
(require rake/cpp/cast)
(require rake/util)
(require rake/hvx/ast/types)

(require rosette/lib/match)
(require rosette/lib/angelic)

(define gather-tables (make-hash))
(define gather-types (make-hash))

(define (interpret p)
  (match p

    ;;;;;;;;;;;;;;;;; Instructions for vector creation ;;;;;;;;;;;;;;;
    
    [(vread buf loc) ((get-vec-type buf) (lambda (i) (get buf (+ loc i))))]
    [(vreadp buf loc) ((get-vecp-type buf) (lambda (i) (get buf (+ loc i))) (lambda (i) (get buf (+ loc i (get-offset buf)))))]

    ;[(vsplat Rt) (lambda (i) Rt)]

    ;;;;;;;;;;;;;;;; Instructions for data movement ;;;;;;;;;;;;;;;;
    
    [(lo Vuu) (when (hvx-pair? (interpret Vuu)) (v0 (interpret Vuu)))]
    [(hi Vuu) (when (hvx-pair? (interpret Vuu)) (v1 (interpret Vuu)))]

    [(vcombine Vu Vv)
     (match (list (interpret Vu) (interpret Vv))
       [(list (i8x128 v0) (i8x128 v1)) (i8x128x2 (lambda (i) (v0 i)) (lambda (i) (v1 i)))]
       [(list (u8x128 v0) (u8x128 v1)) (u8x128x2 (lambda (i) (v0 i)) (lambda (i) (v1 i)))]
       [(list (i16x64 v0) (i16x64 v1)) (i16x64x2 (lambda (i) (v0 i)) (lambda (i) (v1 i)))]
       [(list (u16x64 v0) (u16x64 v1)) (u16x64x2 (lambda (i) (v0 i)) (lambda (i) (v1 i)))]
       [(list (i32x32 v0) (i32x32 v1)) (i32x32x2 (lambda (i) (v0 i)) (lambda (i) (v1 i)))]
       [(list (u32x32 v0) (u32x32 v1)) (u32x32x2 (lambda (i) (v0 i)) (lambda (i) (v1 i)))])]

    [(vshuff Vu)
     (match (list (interpret Vu))
       [(list (u8x128 v0)) (u8x128 (lambda (i) (if (even? i) (v0 (quotient i 2)) (v0 (+ (quotient i 2) 64)))))]
       [(list (i8x128 v0)) (i8x128 (lambda (i) (if (even? i) (v0 (quotient i 2)) (v0 (+ (quotient i 2) 64)))))]
       [(list (u16x64 v0)) (u16x64 (lambda (i) (if (even? i) (v0 (quotient i 2)) (v0 (+ (quotient i 2) 32)))))]
       [(list (i16x64 v0)) (i16x64 (lambda (i) (if (even? i) (v0 (quotient i 2)) (v0 (+ (quotient i 2) 32)))))])]
    
    [(vshuffe Vu Vv)
     (match (list (interpret Vu) (interpret Vv))
       [(list (i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))))]
       [(list (u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))))]
       [(list (i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))))]
       [(list (u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))))])]

    [(vshuffo Vu Vv)
     (match (list (interpret Vu) (interpret Vv))
       [(list (i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))))]
       [(list (u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))))]
       [(list (i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))))]
       [(list (u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))))])]

    ;; Extract n/2 bits
    [(vshuffo-n Vd Vu signed?)
     (match (list (interpret Vd) (interpret Vu) (interpret signed?))
       [(list (i16x64 v0) (i16x64 v1) #t) (i8x128 (lambda (i) (if (even? i) (i8hi (v1 (quotient i 2))) (i8hi (v0 (quotient i 2))))))]
       [(list (i16x64 v0) (i16x64 v1) #f) (u8x128 (lambda (i) (if (even? i) (u8hi (v1 (quotient i 2))) (u8hi (v0 (quotient i 2))))))]
       [(list (u16x64 v0) (u16x64 v1) #t) (i8x128 (lambda (i) (if (even? i) (i8hi (v1 (quotient i 2))) (i8hi (v0 (quotient i 2))))))]
       [(list (u16x64 v0) (u16x64 v1) #f) (u8x128 (lambda (i) (if (even? i) (u8hi (v1 (quotient i 2))) (u8hi (v0 (quotient i 2))))))]
       [(list (i32x32 v0) (i32x32 v1) #t) (i16x64 (lambda (i) (if (even? i) (i16hi (v1 (quotient i 2))) (i16hi (v0 (quotient i 2))))))]
       [(list (i32x32 v0) (i32x32 v1) #f) (u16x64 (lambda (i) (if (even? i) (u16hi (v1 (quotient i 2))) (u16hi (v0 (quotient i 2))))))]
       [(list (u32x32 v0) (u32x32 v1) #t) (i16x64 (lambda (i) (if (even? i) (i16hi (v1 (quotient i 2))) (i16hi (v0 (quotient i 2))))))]
       [(list (u32x32 v0) (u32x32 v1) #f) (u16x64 (lambda (i) (if (even? i) (u16hi (v1 (quotient i 2))) (u16hi (v0 (quotient i 2))))))])]

    [(vshuffoe Vu Vv)
     (match (list (interpret Vu) (interpret Vv))
       [(list (i8x128 v0) (i8x128 v1)) (i8x128x2 (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))) (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))))]
       [(list (u8x128 v0) (u8x128 v1)) (u8x128x2 (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))) (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))))]
       [(list (i16x64 v0) (i16x64 v1)) (i16x64x2 (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))) (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))))]
       [(list (u16x64 v0) (u16x64 v1)) (u16x64x2 (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))) (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))))])]

    [(vdeal Vu)
     (match (list (interpret Vu))
       [(list (u8x128 v0)) (u8x128 (lambda (i) (if (< i 64) (v0 (* i 2)) (v0 (+ (* (- i 64) 2) 1)))))]
       [(list (i8x128 v0)) (i8x128 (lambda (i) (if (< i 64) (v0 (* i 2)) (v0 (+ (* (- i 64) 2) 1)))))]
       [(list (u16x64 v0)) (u16x64 (lambda (i) (if (< i 32) (v0 (* i 2)) (v0 (+ (* (- i 32) 2) 1)))))]
       [(list (i16x64 v0)) (i16x64 (lambda (i) (if (< i 32) (v0 (* i 2)) (v0 (+ (* (- i 32) 2) 1)))))])]
    
    [(vdeale Vu Vv)
     (match (list (interpret Vu) (interpret Vv))
       [(list (u8x128 v0) (u8x128 v1))
        (u8x128
         (lambda (i)
           (cond
             [(< i 32) (v1 (* i 4))]
             [(< i 64) (v1 (+ (* (- i 32) 4) 2))]
             [(< i 96) (v0 (* (- i 64) 4))]
             [else     (v0 (+ (* (- i 64) 4) 2))])))]
       [(list (i8x128 v0) (i8x128 v1))
        (i8x128
         (lambda (i)
           (cond
             [(< i 32) (v1 (* i 4))]
             [(< i 64) (v1 (+ (* (- i 32) 4) 2))]
             [(< i 96) (v0 (* (- i 64) 4))]
             [else     (v0 (+ (* (- i 64) 4) 2))])))])]

    [(vror Vu Rt)
     (match (interpret Vu)
       [(i8x128 v0) (i8x128 (lambda (i) (assert (<= 0 Rt 126)) (v0 (let ([idx (+ i Rt)]) (if (< idx 128) idx (- idx 127))))))]
       [(u8x128 v0) (u8x128 (lambda (i) (assert (<= 0 Rt 126)) (v0 (let ([idx (+ i Rt)]) (if (< idx 128) idx (- idx 127))))))]
       [(i16x64 v0) (i16x64 (lambda (i) (assert (<= 0 Rt 62)) (v0 (let ([idx (+ i Rt)]) (if (< idx 64) idx (- idx 63))))))]
       [(u16x64 v0) (u16x64 (lambda (i) (assert (<= 0 Rt 62)) (v0 (let ([idx (+ i Rt)]) (if (< idx 64) idx (- idx 63))))))]
       [(i32x32 v0) (i32x32 (lambda (i) (assert (<= 0 Rt 30)) (v0 (let ([idx (+ i Rt)]) (if (< idx 32) idx (- idx 31))))))]
       [(u32x32 v0) (u32x32 (lambda (i) (assert (<= 0 Rt 30)) (v0 (let ([idx (+ i Rt)]) (if (< idx 32) idx (- idx 31))))))])]

    [(valign Vu Vv Rt)
     (match (list (interpret Vu) (interpret Vv))
       [(list (i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (assert (<= 0 Rt 127)) (if (< i (- 128 Rt)) (v1 (+ i Rt)) (v0 (modulo (+ i Rt) 128)))))]
       [(list (u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (assert (<= 0 Rt 127)) (if (< i (- 128 Rt)) (v1 (+ i Rt)) (v0 (modulo (+ i Rt) 128)))))]
       [(list (i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (assert (<= 0 Rt 63)) (if (< i (- 64 Rt)) (v1 (+ i Rt)) (v0 (modulo (+ i Rt) 64)))))]
       [(list (u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (assert (<= 0 Rt 63)) (if (< i (- 64 Rt)) (v1 (+ i Rt)) (v0 (modulo (+ i Rt) 64)))))]
       [(list (i32x32 v0) (i32x32 v1)) (i32x32 (lambda (i) (assert (<= 0 Rt 31)) (if (< i (- 32 Rt)) (v1 (+ i Rt)) (v0 (modulo (+ i Rt) 32)))))]
       [(list (u32x32 v0) (u32x32 v1)) (u32x32 (lambda (i) (assert (<= 0 Rt 31)) (if (< i (- 32 Rt)) (v1 (+ i Rt)) (v0 (modulo (+ i Rt) 32)))))])]
    
    [(vlalign Vu Vv Rt)
     (match (list (interpret Vu) (interpret Vv))
       [(list (i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (assert (<= 0 Rt 127)) (if (< i Rt) (v1 (+ (- 128 Rt) i)) (v0 (- i Rt)))))]
       [(list (u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (assert (<= 0 Rt 127)) (if (< i Rt) (v1 (+ (- 128 Rt) i)) (v0 (- i Rt)))))]
       [(list (i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (assert (<= 0 Rt 63)) (if (< i Rt) (v1 (+ (- 64 Rt) i)) (v0 (- i Rt)))))]
       [(list (u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (assert (<= 0 Rt 63)) (if (< i Rt) (v1 (+ (- 64 Rt) i)) (v0 (- i Rt)))))]
       [(list (i32x32 v0) (i32x32 v1)) (i32x32 (lambda (i) (assert (<= 0 Rt 31)) (if (< i Rt) (v1 (+ (- 32 Rt) i)) (v0 (- i Rt)))))]
       [(list (u32x32 v0) (u32x32 v1)) (u32x32 (lambda (i) (assert (<= 0 Rt 31)) (if (< i Rt) (v1 (+ (- 32 Rt) i)) (v0 (- i Rt)))))])]
    
    ;(struct vswap (Qt Vu Vv) #:transparent)
    ;(struct vmux (Qt Vu Vv) #:transparent)
    
    ;(struct vtranspose (Vu Vv Rt) #:transparent)
    ;(struct vlut (Vu Vv) #:transparent)
    ;(struct vgather (Rt Mu Vv) #:transparent)
    
    ;;;;;;;;; New constructs to abstract away data movement;;;;;;;;;
    
    [(gather buff-reads gid) (get-from-buf buff-reads gid)]
    [(gather* buff-reads) (get-from-buf* buff-reads)]

    [(serve-vec vec otype opts sols)
     (otype
      (lambda (i)
        (list-ref
         (filter (lambda(v) (eq? (type v) (elem-type otype))) (list-ref opts curr-cn))
         ((evaluate vec (list-ref sols curr-cn)) i))))]
    
    [(serve-vec-pair v0 v1 otype opts sols)
     (otype
      (lambda (i)
        (list-ref
         (filter (lambda(v) (eq? (type v) (elem-type otype))) (list-ref opts curr-cn))
         ((evaluate v0 (list-ref sols curr-cn)) i)))
      (lambda (i)
        (list-ref
         (filter (lambda(v) (eq? (type v) (elem-type otype))) (list-ref opts curr-cn))
         ((evaluate v1 (list-ref sols curr-cn)) i))))]
    
    ;[(swizzle vec) (get-from-vec (interpret vec))]
    
    ;;;;;;;;;;;;;;;; Instructions for data processing ;;;;;;;;;;;;;;;;

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
        (i16x64x2
         (lambda (i) (multiply (lhs (* i 2)) rhs 'int16))
         (lambda (i) (multiply (lhs (+ (* i 2) 1)) rhs 'int16)))]
       [(list (u8x128 lhs) (uint8_t v))
        (u16x64x2
         (lambda (i) (multiply (lhs (* i 2)) rhs 'uint16))
         (lambda (i) (multiply (lhs (+ (* i 2) 1)) rhs 'uint16)))]
       [(list (u16x64 lhs) (uint16_t v))
        (u32x32x2
         (lambda (i) (multiply (lhs (* i 2)) rhs 'uint32))
         (lambda (i) (multiply (lhs (+ (* i 2) 1)) rhs 'uint32)))]
       [(list (i16x64 lhs) (int16_t v))
        (i16x64x2
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
       [(list (i32x32 lhs) (uint16_t v)) (u32x32 (lambda (i) (uint32_t (bvmul (lsb16 (lhs i)) (eval (cpp-cast rhs 'uint32))))))]
       [(list (u32x32 lhs) (uint16_t v)) (u32x32 (lambda (i) (uint32_t (bvmul (lsb16 (lhs i)) (eval (cpp-cast rhs 'uint32))))))])]

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
       [(list (u32x32 acc) (i32x32 lhs) (uint16_t v)) (u32x32 (lambda (i) (uint32_t (bvadd (eval (acc i)) (bvmul (lsb16 (lhs i)) (eval (cpp-cast rhs 'uint32)))))))]
       [(list (u32x32 acc) (u32x32 lhs) (uint16_t v)) (u32x32 (lambda (i) (uint32_t (bvadd (eval (acc i)) (bvmul (lsb16 (lhs i)) (eval (cpp-cast rhs 'uint32)))))))])]

    ;; Sum to vector-scalar multiplies
    [(vmpa Vuu Rt)
     (match (list (interpret Vuu) (interpret Rt))
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
     (match (list (interpret Vdd) (interpret Vuu) (interpret Rt))
       [(list (i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i16x64x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v0 i) 'int16))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (+ (* i 2) 1)) (int8_t w2) (acc-v1 i) 'int16)))]
       [(list (i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (cons (uint8_t w1) (uint8_t w2)))
        (i16x64x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (uint8_t w1) (data-v1 (* i 2)) (uint8_t w2) (acc-v0 i) 'int16))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (uint8_t w1) (data-v1 (+ (* i 2) 1)) (uint8_t w2) (acc-v1 i) 'int16)))]
       [(list (i32x32x2 acc-v0 acc-v1) (u16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i32x32x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v0 i) 'int32))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (+ (* i 2) 1)) (int8_t w2) (acc-v1 i) 'int32)))]
       [(list (i32x32x2 acc-v0 acc-v1) (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i32x32x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v0 i) 'int32))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (+ (* i 2) 1)) (int8_t w2) (acc-v1 i) 'int32)))])]

    ;; Reduce (via sum) two vector-scalar multiplies. Unlike vmpa, this is reduction within the vector.
    ;; Saturates output for some input types
    [(vdmpy Vu Rt)
     (match (list (interpret Vu) (interpret Rt))
       [(list (u8x128 data) (cons (int8_t w1) (int8_t w2))) (i16x64 (lambda (i) (multiply-add (data (* i 2)) (int8_t w1) (data (+ (* i 2) 1)) (int8_t w2) 'int16)))]
       [(list (i16x64 data) (cons (int8_t w1) (int8_t w2))) (i32x32 (lambda (i) (multiply-add (data (* i 2)) (int8_t w1) (data (+ (* i 2) 1)) (int8_t w2) 'int32)))]
       [(list (i16x64 data) (cons (int16_t w1) (int16_t w2))) (i32x32 (lambda (i) (sat32 (multiply-add (data (* i 2)) (int16_t w1) (data (+ (* i 2) 1)) (int16_t w2) 'int64))))]
       [(list (i16x64 data) (cons (uint16_t w1) (uint16_t w2))) (i32x32 (lambda (i) (sat32 (multiply-add (data (* i 2)) (uint16_t w1) (data (+ (* i 2) 1)) (uint16_t w2) 'int64))))]
       [(list (i16x64x2 data-v0 data-v1) (cons (int16_t w1) (int16_t w2))) (i32x32 (lambda (i) (sat32 (multiply-add (data-v0 (+ (* i 2) 1)) (int16_t w1) (data-v1 (* i 2)) (int16_t w2) 'int64))))]
       [(list (i16x64x2 data-v0 data-v1) (cons (uint16_t w1) (uint16_t w2))) (i32x32 (lambda (i) (sat32 (multiply-add (data-v0 (+ (* i 2) 1)) (int16_t w1) (data-v1 (* i 2)) (int16_t w2) 'int64))))])]

    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window
    [(vdmpy-sw Vuu Rt)
     (match (list (interpret Vuu) (interpret Rt))
       [(list (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i16x64x2
         (lambda (i) (multiply-add (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) 'int16))
         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) 'int16)))]
       [(list (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i32x32x2
         (lambda (i) (multiply-add (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) 'int32))
         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) 'int32)))])]

    ;; Reduce (via sum) two vector-scalar multiplies with accumulation.
    [(vdmpy-acc Vd Vu Rt)
     (match (list (interpret Vd) (interpret Vu) (interpret Rt))
       [(list (i16x64 acc) (u8x128 data) (cons (int8_t w1) (int8_t w2))) (i16x64 (lambda (i) (multiply-add-acc (data (* i 2)) (int8_t w1) (data (+ (* i 2) 1)) (int8_t w2) (acc i) 'int16)))]
       [(list (i32x32 acc) (i16x64 data) (cons (int8_t w1) (int8_t w2))) (i32x32 (lambda (i) (multiply-add-acc (data (* i 2)) (int8_t w1) (data (+ (* i 2) 1)) (int8_t w2) (acc i) 'int32)))]
       [(list (i32x32 acc) (i16x64 data) (cons (int16_t w1) (int16_t w2))) (i32x32 (lambda (i) (sat32 (multiply-add-acc (data (* i 2)) (int16_t w1) (data (+ (* i 2) 1)) (int16_t w2) (acc i) 'int64))))]
       [(list (i32x32 acc) (i16x64 data) (cons (uint16_t w1) (uint16_t w2))) (i32x32 (lambda (i) (sat32 (multiply-add-acc (data (* i 2)) (uint16_t w1) (data (+ (* i 2) 1)) (uint16_t w2) (acc i) 'int64))))]
       [(list (i32x32 acc) (i16x64x2 data-v0 data-v1) (cons (int16_t w1) (int16_t w2))) (i32x32 (lambda (i) (sat32 (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int16_t w1) (data-v1 (* i 2)) (int16_t w2) (acc i) 'int64))))]
       [(list (i32x32 acc) (i16x64x2 data-v0 data-v1) (cons (uint16_t w1) (uint16_t w2))) (i32x32 (lambda (i) (sat32 (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int16_t w1) (data-v1 (* i 2)) (int16_t w2) (acc i) 'int64))))])]

    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window with accumulate
    [(vdmpy-sw-acc Vdd Vuu Rt)
     (match (list (interpret Vdd) (interpret Vuu) (interpret Rt))
       [(list (i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i16x64x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (acc-v0 i) 'int16))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v1 i) 'int16)))]
       [(list (i32x32x2 acc-v0 acc-v1) (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i32x32x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (acc-v0 i) 'int32))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v1 i) 'int32)))])]

    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window with an additional accumulate
    [(vtmpy Vuu Rt)
     (match (list (interpret Vuu) (interpret Rt))
       [(list (i8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i16x64x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int16))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int16)))]
       [(list (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i16x64x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int16))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int16)))]
       [(list (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i32x32x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int32))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int32)))])]

    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window with an additional accumulate.
    ;; Also accumulate the output into the target register
    [(vtmpy-acc Vdd Vuu Rt)
     (match (list (interpret Vdd) (interpret Vuu) (interpret Rt))
       [(list (i16x64x2 acc-v0 acc-v1) (i8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i16x64x2
         (lambda (i) (int16_t (bvadd (eval (acc-v0 i)) (eval (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int16)))))
         (lambda (i) (int16_t (bvadd (eval (acc-v1 i)) (eval (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int16))))))]
       [(list (i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i16x64x2
         (lambda (i) (int16_t (bvadd (eval (acc-v0 i)) (eval (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int16)))))
         (lambda (i) (int16_t (bvadd (eval (acc-v1 i)) (eval (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int16))))))]
       [(list (i32x32x2 acc-v0 acc-v1) (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i32x32x2
         (lambda (i) (int32_t (bvadd (eval (acc-v0 i)) (eval (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int32)))))
         (lambda (i) (int32_t (bvadd (eval (acc-v1 i)) (eval (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int32))))))])]
    
    ;; Vector-scalar multiply with 4-wide within-vector reduction
    [(vrmpy Vu Rt)
     (match (list (interpret Vu) (interpret Rt))
       [(list (u8x128 data) (list (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4)))
        (u32x32 (lambda (i) (dot-prod4 (data (* i 4)) (data (+ (* i 4) 1)) (data (+ (* i 4) 2)) (data (+ (* i 4) 3)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32)))]
       [(list (u8x128 data) (list (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4)))
        (i32x32 (lambda (i) (dot-prod4 (data (* i 4)) (data (+ (* i 4) 1)) (data (+ (* i 4) 2)) (data (+ (* i 4) 3)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32)))])]
    
    ;; Vector-scalar multiply with 4-wide within-vector reduction with accumulation
    [(vrmpy-acc Vd Vu Rt)
     (match (list (interpret Vd) (interpret Vu) (interpret Rt))
       [(list (u32x32 acc) (u8x128 data) (list (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4)))
        (u32x32 (lambda (i) (uint32_t (bvadd (eval (acc i)) (eval (dot-prod4 (data (* i 4)) (data (+ (* i 4) 1)) (data (+ (* i 4) 2)) (data (+ (* i 4) 3)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32))))))]
       [(list (i32x32 acc) (u8x128 data) (list (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4)))
        (i32x32 (lambda (i) (uint32_t (bvadd (eval (acc i)) (eval (dot-prod4 (data (* i 4)) (data (+ (* i 4) 1)) (data (+ (* i 4) 2)) (data (+ (* i 4) 3)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32))))))])]
    
    ;; Vector-scalar multiply with 4-wide within-vector reduction (partial sliding window)
    [(vrmpy-p Vuu Rt ub)
     (match (list (interpret Vuu) (interpret Rt) (interpret ub))
       [(list (u8x128x2 data-v0 data-v1) (list (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4)) #t)
        (u32x32x2
         (lambda (i) (dot-prod4 (data-v0 (* i 4)) (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32))
         (lambda (i) (dot-prod4 (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32)))]
       [(list (u8x128x2 data-v0 data-v1) (list (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4)) #t)
        (i32x32x2
         (lambda (i) (dot-prod4 (data-v0 (* i 4)) (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32))
         (lambda (i) (dot-prod4 (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32)))]
       [(list (u8x128x2 data-v0 data-v1) (list (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4)) #f)
        (u32x32x2
         (lambda (i) (dot-prod4 (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32))
         (lambda (i) (dot-prod4 (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (data-v1 (+ (* i 4) 2)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32)))]
       [(list (u8x128x2 data-v0 data-v1) (list (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4)) #f)
        (i32x32x2
         (lambda (i) (dot-prod4 (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32))
         (lambda (i) (dot-prod4 (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (data-v1 (+ (* i 4) 2)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32)))])]

    ;; Vector-scalar multiply with 4-wide within-vector reduction (partial sliding window)
    [(vrmpy-p-acc Vdd Vuu Rt ub)
     (match (list (interpret Vdd) (interpret Vuu) (interpret Rt) (interpret ub))
       [(list (u32x32x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (list (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4)) #t)
        (u32x32x2
         (lambda (i) (add (acc-v0 i) (dot-prod4 (data-v0 (* i 4)) (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32) 'uint32))
         (lambda (i) (add (acc-v1 i) (dot-prod4 (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32) 'uint32)))]
       [(list (i32x32x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (list (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4)) #t)
        (i32x32x2
         (lambda (i) (add (acc-v0 i) (dot-prod4 (data-v0 (* i 4)) (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32) 'int32))
         (lambda (i) (add (acc-v1 i) (dot-prod4 (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32) 'int32)))]
       [(list (u32x32x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (list (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4)) #f)
        (u32x32x2
         (lambda (i) (add (acc-v0 i) (dot-prod4 (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32) 'uint32))
         (lambda (i) (add (acc-v1 i) (dot-prod4 (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (data-v1 (+ (* i 4) 2)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32) 'uint32)))]
       [(list (i32x32x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (list (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4)) #f)
        (i32x32x2
         (lambda (i) (add (acc-v0 i) (dot-prod4 (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32) 'int32))
         (lambda (i) (add (acc-v1 i) (dot-prod4 (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (data-v1 (+ (* i 4) 2)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32) 'int32)))])]

    ;; Shift-left (all elems left-shifted by the same value)
    [(vasl Vu Rt)
     (match (list (interpret Vu) (interpret Rt))
       [(list (i16x64 data) (int8_t n)) (i16x64 (lambda (i) (int16_t (bvshl (eval (data i)) n))))]
       [(list (i32x32 data) (int8_t n)) (i32x32 (lambda (i) (int32_t (bvshl (eval (data i)) n))))])]
    
    ;; Arithmetic shift-right (all elems right-shifted by the same value)
    [(vasr Vu Rt)
     (match (list (interpret Vu) (interpret Rt))
       [(list (i16x64 data) (int8_t n)) (i16x64 (lambda (i) (int16_t (bvashr (eval (data i)) n))))]
       [(list (i32x32 data) (int8_t n)) (i32x32 (lambda (i) (int32_t (bvashr (eval (data i)) n))))])]

    ;; Arithmetic shift-right with (all elems right-shifted by the same value) with accumulation
    [(vasr-acc Vd Vu Rt)
     (match (list (interpret Vd) (interpret Vu) (interpret Rt))
       [(list (i16x64 acc) (i16x64 data) (int8_t n)) (i16x64 (lambda (i) (int16_t (bvadd (eval (acc i)) (bvashr (eval (data i)) n)))))]
       [(list (i32x32 acc) (i32x32 data) (int8_t n)) (i32x32 (lambda (i) (int32_t (bvadd (eval (acc i)) (bvashr (eval (data i)) n)))))])]
    
    ;; Narrowing arithmetic shift-right with (all elems right-shifted by the same value)
    [(vasr-n Vu Vv Rt round? sat? unsigned?)
     (match (list (interpret Vu) (interpret Vv) (interpret Rt) (interpret round?) (interpret sat?) (interpret unsigned?))
       [(list (i16x64 v0) (i16x64 v1) (int8_t n) #f _ #t) (u8x128 (lambda (i) (satu8 (asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
       [(list (i16x64 v0) (i16x64 v1) (int8_t n) #f _ #f) (i8x128 (lambda (i) (sat8 (asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
       [(list (i16x64 v0) (i16x64 v1) (int8_t n) #t _ #t) (u8x128 (lambda (i) (satu8 (round-asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
       [(list (i16x64 v0) (i16x64 v1) (int8_t n) #t _ #f) (i8x128 (lambda (i) (sat8 (round-asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]

       [(list (u16x64 v0) (u16x64 v1) (int8_t n) #f _ _) (u8x128 (lambda (i) (satu8 (asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
       [(list (u16x64 v0) (u16x64 v1) (int8_t n) #t _ _) (u8x128 (lambda (i) (satu8 (round-asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]

       [(list (i32x32 v0) (i32x32 v1) (int8_t n) #f _ #t) (u16x64 (lambda (i) (satu16 (asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
       [(list (i32x32 v0) (i32x32 v1) (int8_t n) #t _ #t) (u16x64 (lambda (i) (satu16 (round-asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]

       [(list (i32x32 v0) (i32x32 v1) (int8_t n) #f #t #f) (i16x64 (lambda (i) (sat16 (asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
       [(list (i32x32 v0) (i32x32 v1) (int8_t n) #f #f #f) (i16x64 (lambda (i) (cpp-cast (round-asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)) 'int16)))]
       [(list (i32x32 v0) (i32x32 v1) (int8_t n) #t _ #f) (i16x64 (lambda (i) (sat16 (round-asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
       
       [(list (u32x32 v0) (u32x32 v1) (int8_t n) #f _ _) (u16x64 (lambda (i) (satu16 (asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
       [(list (u32x32 v0) (u32x32 v1) (int8_t n) #t _ _) (u16x64 (lambda (i) (satu16 (round-asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))])]

    ;; Rounding
    [(vround Vd Vu signed?)
     (match (list (interpret Vd) (interpret Vu) (interpret signed?))
       [(list (i16x64 v0) (i16x64 v1) #t) (i8x128 (lambda (i) (sat8 (if (even? i) (round (v1 (quotient i 2))) (round (v0 (quotient i 2)))))))]
       [(list (i16x64 v0) (i16x64 v1) #f) (u8x128 (lambda (i) (satu8 (if (even? i) (round (v1 (quotient i 2))) (round (v0 (quotient i 2)))))))]
       [(list (u16x64 v0) (u16x64 v1) _)  (u8x128 (lambda (i) (satu8 (if (even? i) (round (v1 (quotient i 2))) (round (v0 (quotient i 2)))))))]
       [(list (i32x32 v0) (i32x32 v1) #t) (i16x64 (lambda (i) (sat16 (if (even? i) (round (v1 (quotient i 2))) (round (v0 (quotient i 2)))))))]
       [(list (i32x32 v0) (i32x32 v1) #f) (u16x64 (lambda (i) (satu16 (if (even? i) (round (v1 (quotient i 2))) (round (v0 (quotient i 2)))))))]
       [(list (u32x32 v0) (u32x32 v1) _)  (u16x64 (lambda (i) (satu16 (if (even? i) (round (v1 (quotient i 2))) (round (v0 (quotient i 2)))))))])]

    [(vpacko-n Vd Vu signed?)
     (match (list (interpret Vd) (interpret Vu) (interpret signed?))
       [(list (i16x64 v0) (i16x64 v1) #t) (i8x128 (lambda (i) (if (< i 64) (i8hi (v1 i)) (i8hi (v0 (- i 64))))))]
       [(list (i16x64 v0) (i16x64 v1) #f) (u8x128 (lambda (i) (if (< i 64) (u8hi (v1 i)) (u8hi (v0 (- i 64))))))]
       [(list (u16x64 v0) (u16x64 v1) #t) (i8x128 (lambda (i) (if (< i 64) (i8hi (v1 i)) (i8hi (v0 (- i 64))))))]
       [(list (u16x64 v0) (u16x64 v1) #f) (u8x128 (lambda (i) (if (< i 64) (u8hi (v1 i)) (u8hi (v0 (- i 64))))))]
       [(list (i32x32 v0) (i32x32 v1) #t) (i16x64 (lambda (i) (if (< i 32) (i16hi (v1 i)) (i16hi (v0 (- i 32))))))]
       [(list (i32x32 v0) (i32x32 v1) #f) (u16x64 (lambda (i) (if (< i 32) (u16hi (v1 i)) (u16hi (v0 (- i 32))))))]
       [(list (u32x32 v0) (u32x32 v1) #t) (i16x64 (lambda (i) (if (< i 32) (i16hi (v1 i)) (i16hi (v0 (- i 32))))))]
       [(list (u32x32 v0) (u32x32 v1) #f) (u16x64 (lambda (i) (if (< i 32) (u16hi (v1 i)) (u16hi (v0 (- i 32))))))])]

    [(vsxt Vu signed?)
     (let ([sxt16 (lambda (val) (zero-extend (eval val) (bitvector 16)))] [sxt32 (lambda (val) (zero-extend (eval val) (bitvector 32)))])
       (match (list (interpret Vu) (interpret signed?))
         [(list (u8x128 v0) #t) (i16x64x2 (lambda (i) (int16_t (sxt16 (v0 (* i 2))))) (lambda (i) (int16_t (sxt16 (v0 (+ (* i 2) 1))))))]
         [(list (i8x128 v0) #t) (i16x64x2 (lambda (i) (int16_t (sxt16 (v0 (* i 2))))) (lambda (i) (int16_t (sxt16 (v0 (+ (* i 2) 1))))))]
         [(list (u16x64 v0) #t) (i32x32x2 (lambda (i) (int32_t (sxt32 (v0 (* i 2))))) (lambda (i) (int32_t (sxt32 (v0 (+ (* i 2) 1))))))]
         [(list (i16x64 v0) #t) (i32x32x2 (lambda (i) (int32_t (sxt32 (v0 (* i 2))))) (lambda (i) (int32_t (sxt32 (v0 (+ (* i 2) 1))))))]

         [(list (u8x128 v0) #f) (u16x64x2 (lambda (i) (uint16_t (sxt16 (v0 (* i 2))))) (lambda (i) (uint16_t (sxt16 (v0 (+ (* i 2) 1))))))]
         [(list (i8x128 v0) #f) (u16x64x2 (lambda (i) (uint16_t (sxt16 (v0 (* i 2))))) (lambda (i) (uint16_t (sxt16 (v0 (+ (* i 2) 1))))))]
         [(list (u16x64 v0) #f) (u32x32x2 (lambda (i) (uint32_t (sxt32 (v0 (* i 2))))) (lambda (i) (uint32_t (sxt32 (v0 (+ (* i 2) 1))))))]
         [(list (i16x64 v0) #f) (u32x32x2 (lambda (i) (uint32_t (sxt32 (v0 (* i 2))))) (lambda (i) (uint32_t (sxt32 (v0 (+ (* i 2) 1))))))]))]

    [(vzxt Vu signed?)
     (let ([sxt16 (lambda (val) (sign-extend (eval val) (bitvector 16)))] [sxt32 (lambda (val) (sign-extend (eval val) (bitvector 32)))])
       (match (list (interpret Vu) (interpret signed?))
         [(list (u8x128 v0) #t) (i16x64x2 (lambda (i) (int16_t (sxt16 (v0 (* i 2))))) (lambda (i) (int16_t (sxt16 (v0 (+ (* i 2) 1))))))]
         [(list (i8x128 v0) #t) (i16x64x2 (lambda (i) (int16_t (sxt16 (v0 (* i 2))))) (lambda (i) (int16_t (sxt16 (v0 (+ (* i 2) 1))))))]
         [(list (u16x64 v0) #t) (i32x32x2 (lambda (i) (int32_t (sxt32 (v0 (* i 2))))) (lambda (i) (int32_t (sxt32 (v0 (+ (* i 2) 1))))))]
         [(list (i16x64 v0) #t) (i32x32x2 (lambda (i) (int32_t (sxt32 (v0 (* i 2))))) (lambda (i) (int32_t (sxt32 (v0 (+ (* i 2) 1))))))]

         [(list (u8x128 v0) #f) (u16x64x2 (lambda (i) (uint16_t (sxt16 (v0 (* i 2))))) (lambda (i) (uint16_t (sxt16 (v0 (+ (* i 2) 1))))))]
         [(list (i8x128 v0) #f) (u16x64x2 (lambda (i) (uint16_t (sxt16 (v0 (* i 2))))) (lambda (i) (uint16_t (sxt16 (v0 (+ (* i 2) 1))))))]
         [(list (u16x64 v0) #f) (u32x32x2 (lambda (i) (uint32_t (sxt32 (v0 (* i 2))))) (lambda (i) (uint32_t (sxt32 (v0 (+ (* i 2) 1))))))]
         [(list (i16x64 v0) #f) (u32x32x2 (lambda (i) (uint32_t (sxt32 (v0 (* i 2))))) (lambda (i) (uint32_t (sxt32 (v0 (+ (* i 2) 1))))))]))]
    
    ;; ---- Everything below this line in the interpreter is tentative ----
    
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

    [(vabs Vu sat?)
     (match (interpret Vu)
       [(i8x128 Vu) (i8x128 (lambda (i) (if sat? (sat8 (abs (Vu i) 'int8)) (abs (Vu i) 'int8))))]
       [(i16x64 Vu) (i16x64 (lambda (i) (if sat? (sat16 (abs (Vu i) 'int16)) (abs (Vu i) 'int16))))]
       [(i32x32 Vu) (i32x32 (lambda (i) (if sat? (sat32 (abs (Vu i) 'int32)) (abs (Vu i) 'int32))))])]

    [(vsat Vu Vv)
     (match (list (interpret Vu) (interpret Vv))
       [(list (i32x32 v0) (i32x32 v1)) (i16x64 (lambda (i) (concat (sat16 (v0 i)) (sat16 (v1 i)))))]
       [(list (i16x64 v0) (i16x64 v1)) (u8x128 (lambda (i) (concat (usat8 (v0 i)) (usat8 (v1 i)))))]
       [(list (u32x32 v0) (u32x32 v1)) (u16x64 (lambda (i) (concat (usat16 (v0 i)) (usat16 (v1 i)))))])]
    
    [_ p]))

;; Define commonly occuring scalar-computation patterns as funcs for re-usability and
;; easier maintainability
(define (add lhs rhs outT)
  (mk-typed-expr (bvadd (eval (cpp-cast lhs outT)) (eval (cpp-cast rhs outT))) outT))

(define (add-acc acc lhs rhs outT)
  (mk-typed-expr (bvadd (eval acc) (eval (cpp-cast lhs outT)) (eval (cpp-cast rhs outT))) outT))

(define (add-sat lhs rhs outT)
  (match outT
    ['int8 (sat8 (add lhs rhs 'int16))]
    ['int16 (sat16 (add lhs rhs 'int32))]
    ['int32 (sat32 (add lhs rhs 'int64))]
    ['uint8 (if (int8_t? rhs) (satu8 (int16_t (bvadd (eval (promote lhs)) (eval (promote rhs))))) (satu8 (add lhs rhs 'uint16)))]
    ['uint16 (satu16 (add lhs rhs 'uint32))]
    ['uint32 (satu32 (add lhs rhs 'uint64))]))

(define (multiply lhs rhs outT)
  (mk-typed-expr (bvmul (eval (cpp-cast lhs outT)) (eval (cpp-cast rhs outT))) outT))
  
(define (multiply-add lhs w1 rhs w2 outT)
  (mk-typed-expr
   (bvadd
    (bvmul (eval (cpp-cast lhs outT)) (eval (cpp-cast w1 outT)))
    (bvmul (eval (cpp-cast rhs outT)) (eval (cpp-cast w2 outT))))
   outT))

(define (multiply-add-acc lhs w1 rhs w2 acc outT)
  (mk-typed-expr
   (bvadd
    (eval (cpp-cast acc outT))
    (bvmul (eval (cpp-cast lhs outT)) (eval (cpp-cast w1 outT)))
    (bvmul (eval (cpp-cast rhs outT)) (eval (cpp-cast w2 outT))))
   outT))

(define (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 outT)
  (mk-typed-expr
   (bvadd
    (bvmul (eval (cpp-cast x1 outT)) (eval (cpp-cast w1 outT)))
    (bvmul (eval (cpp-cast x2 outT)) (eval (cpp-cast w2 outT)))
    (bvmul (eval (cpp-cast x3 outT)) (eval (cpp-cast w3 outT)))
    (bvmul (eval (cpp-cast x4 outT)) (eval (cpp-cast w4 outT))))
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

(define (round v)
  (match v
    [(int16_t val) (int16_t (bvashr (bvadd val (bv #x80 16)) 8))]
    [(uint16_t val) (uint16_t (bvlshr (bvadd val (bv #x80 16)) 8))]
    [(int32_t val) (int32_t (bvashr (bvadd val (bv #x80 16)) 16))]
    [(uint32_t val) (uint32_t (bvlshr (bvadd val (bv #x80 16)) 16))]))

(define (asr val n)
  (match val
    [(int16_t v) (int16_t (bvashr v (eval (cpp-cast n 'int16))))]
    [(int32_t v) (int32_t (bvashr v (eval (cpp-cast n 'int32))))]
    [(uint16_t v) (uint32_t (bvashr v (eval (cpp-cast n 'int16))))]
    [(uint32_t v) (uint32_t (bvashr v (eval (cpp-cast n 'int32))))]))

(define (round-asr val n)
  (match val
    [(int16_t v) (define r (eval (cpp-cast n 'int16))) (int16_t (bvashr (bvadd v (bvshl (bv 1 16) (bvsub r (bv 1 16)))) r))]
    [(int32_t v) (define r (eval (cpp-cast n 'int32))) (int32_t (bvashr (bvadd v (bvshl (bv 1 32) (bvsub r (bv 1 32)))) r))]
    [(uint16_t v) (define r (eval (cpp-cast n 'int16))) (uint16_t (bvashr (bvadd v (bvshl (bv 1 32) (bvsub r (bv 1 16)))) r))]
    [(uint32_t v) (define r (eval (cpp-cast n 'int32))) (uint32_t (bvashr (bvadd v (bvshl (bv 1 32) (bvsub r (bv 1 32)))) r))]))

(define (get-vec-type buf)
  (match (hash-ref type-dict buf)
    ['int8 i8x128]
    ['int16 i16x64]
    ['int32 i32x32]
    ['uint8 u8x128]
    ['uint16 u16x64]
    ['uint32 u32x32]))

(define (get-vecp-type buf)
  (match (hash-ref type-dict buf)
    ['int8 i8x128x2]
    ['int16 i16x64x2]
    ['int32 i32x32x2]
    ['uint8 u8x128x2]
    ['uint16 u16x64x2]
    ['uint32 u32x32x2]))

(define (get-offset buf)
  (match (hash-ref type-dict buf)
    ['int8 128]
    ['uint8 128]
    ['int16 64]
    ['uint16 64]
    ['int32 32]
    ['uint32 32]))

;; The curr-cn flag is used to restrict the set of values a gather returns when the expression is being evaluated for
;; any particular channel
(define curr-cn 0)
(define (set-curr-cn v) (set! curr-cn v))

;; Since gather and swizzle constructs abstract away data-movement, their implementation must be synthesized as a hash-table.
;; Ideally this definition should be in the grammar file but that would cause a circular dependency, so here we are.
(define (get-from-buf* buff-reads)
  (define cn-reads (list-ref buff-reads 0))
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

  (define-symbolic* idx-tbl1 (~> integer? integer?))
  (define-symbolic* idx-tbl2 (~> integer? integer?))
  
  (choose*
   (vecType
    (lambda (i) (list-ref (filter (lambda(v) (eq? (type v) elemType)) (list-ref buff-reads curr-cn)) (idx-tbl1 i))))
   (vecpType
    (lambda (i) (list-ref (filter (lambda(v) (eq? (type v) elemType)) (list-ref buff-reads curr-cn)) (idx-tbl1 i)))
    (lambda (i) (list-ref (filter (lambda(v) (eq? (type v) elemType)) (list-ref buff-reads curr-cn)) (idx-tbl2 i))))))

(define (get-from-buf buff-reads gid)
  (define cn-reads (list-ref buff-reads 0))
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

  (define-symbolic* idx-tbl1 (~> integer? integer?))
  (define-symbolic* idx-tbl2 (~> integer? integer?))

  (define-symbolic* p? boolean?)
  
  (hash-set! gather-tables gid (cons idx-tbl1 idx-tbl2))
  (hash-set! gather-types gid (if p? vecpType vecType))
  
  (if p?
   (vecpType
    (lambda (i) (list-ref (filter (lambda(v) (eq? (type v) elemType)) (list-ref buff-reads curr-cn)) (idx-tbl1 i)))
    (lambda (i) (list-ref (filter (lambda(v) (eq? (type v) elemType)) (list-ref buff-reads curr-cn)) (idx-tbl2 i))))
   (vecType
    (lambda (i) (list-ref (filter (lambda(v) (eq? (type v) elemType)) (list-ref buff-reads curr-cn)) (idx-tbl1 i))))))

;(define (get-from-vec vec)
;  (define op (choose* sxt16 zxt16 sxt32 zxt32))
;  (if (pair? vec)
;      (choose*
;       (lambda (i) ((choose* lo8 hi8 lo16 hi16) ((choose* (car vec) (cdr vec)) (apply choose* (build-list 128 values)))))
;       (cons
;        (lambda (i) ((choose* (car vec) (cdr vec)) (apply choose* (build-list 128 values))))
;        (lambda (i) ((choose* (car vec) (cdr vec)) (apply choose* (build-list 128 values))))))
;      (choose*
;       (lambda (i) (vec (apply choose* (build-list 128 values))))
;       (cons
;        (lambda (i) (op (vec (apply choose* (build-list 128 values)))))
;        (lambda (i) (op (vec (apply choose* (build-list 128 values)))))))))

(define (abs val outT)
  (define valbv (eval (cpp-cast val outT)))
  (define zero (eval (cpp-cast 0 outT)))
  (mk-typed-expr (if (bvslt valbv zero) (bvneg valbv) valbv) outT))

(provide (rename-out [interpret interpret-hvx] [set-curr-cn set-curr-cn-hvx] [gather-tables hvx-gather-tables] [gather-types hvx-gather-types]))