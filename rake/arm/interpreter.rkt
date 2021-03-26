#lang rosette

(require rake/cpp/types)
(require rake/cpp/cast)
(require rake/util)
(require rake/arm/ast/types)
(require rake/arm/ast/visitor)
(require rake/arm/comparator)

(require rosette/lib/match)
(require rosette/lib/angelic)

(define gather-tables (make-hash))
(define gather-types (make-hash))

(define (get vec i vtype low?)
  (match vtype
    ['i8x16 (if low? (vec i) (vec (+ i 8)))]
    ['u8x16 (if low? (vec i) (vec (+ i 8)))]
    ['i16x8 (if low? (vec i) (vec (+ i 4)))]
    ['u16x8 (if low? (vec i) (vec (+ i 4)))]
    ['i32x4 (if low? (vec i) (vec (+ i 2)))]
    ['u32x4 (if low? (vec i) (vec (+ i 2)))]
    ['i64x2 (if low? (vec i) (vec (+ i 1)))]
    ['u64x2 (if low? (vec i) (vec (+ i 1)))]))

(define (build-out-vec outT vec0 vec1 low?)
  (cond
    ;; Save vec0 to the lower half, clear the upper half
    [low?
      (match outT
        ['i8x16 (i8x16 (lambda (i) (if (< i 8) (vec0 i) (int8_t (bv 0 8)))))]
        ['u8x16 (u8x16 (lambda (i) (if (< i 8) (vec0 i) (uint8_t (bv 0 8)))))]
        ['i16x8 (i16x8 (lambda (i) (if (< i 4) (vec0 i) (int16_t (bv 0 16)))))]
        ['u16x8 (u16x8 (lambda (i) (if (< i 4) (vec0 i) (uint16_t (bv 0 16)))))]
        ['i32x4 (i32x4 (lambda (i) (if (< i 2) (vec0 i) (int32_t (bv 0 32)))))]
        ['u32x4 (u32x4 (lambda (i) (if (< i 2) (vec0 i) (uint32_t (bv 0 32)))))]
        ['i64x2 (i64x2 (lambda (i) (if (< i 1) (vec0 i) (int64_t (bv 0 64)))))]
        ['u64x2 (u64x2 (lambda (i) (if (< i 1) (vec0 i) (uint64_t (bv 0 64)))))])]

    ;; Save vec0 to the upper half half, retain the lower half vec1
    [else
      (match outT
        ['i8x16 (i8x16 (lambda (i) (if (< i 8) (vec1 i) (vec0 (- i 8)))))]
        ['u8x16 (u8x16 (lambda (i) (if (< i 8) (vec1 i) (vec0 (- i 8)))))]
        ['i16x8 (i16x8 (lambda (i) (if (< i 4) (vec1 i) (vec0 (- i 4)))))]
        ['u16x8 (u16x8 (lambda (i) (if (< i 4) (vec1 i) (vec0 (- i 4)))))]
        ['i32x4 (i32x4 (lambda (i) (if (< i 2) (vec1 i) (vec0 (- i 2)))))]
        ['u32x4 (u32x4 (lambda (i) (if (< i 2) (vec1 i) (vec0 (- i 2)))))]
        ['i64x2 (i64x2 (lambda (i) (if (< i 1) (vec1 i) (vec0 (- i 1)))))]
        ['u64x2 (u64x2 (lambda (i) (if (< i 1) (vec1 i) (vec0 (- i 1)))))])]))

(define (get-vec-type buf)
  (match (hash-ref type-dict buf)
    ['int8 i8x16]
    ['int16 i16x8]
    ['int32 i32x4]
    ['int64 i64x2]
    ['uint8 u8x16]
    ['uint16 u16x8]
    ['uint32 u32x4]
    ['uint64 u64x2]))

(define (interpret p)
  (match p
    
    ;;;;;;;;;;;;;;;;; Instructions for vector creation ;;;;;;;;;;;;;;;
    
    [(read buf loc align) ((get-vec-type buf) (lambda (i) (get buf (+ loc i))))]
    ;(struct dup (val) #:transparent) ;; OR ld1r??

    ;;;;;;;;;;;;;;;;; Instructions for type-promotion ;;;;;;;;;;;;;;;;

    [(sxtl Vn low?)
     (match (list (interpret Vn))
       [(list (i8x16 v0)) (i16x8 (lambda (i) (int16_t (sign-extend (eval (get v0 i 'i8x16 low?)) (bitvector 16)))))]
       [(list (i16x8 v0)) (i32x4 (lambda (i) (int32_t (sign-extend (eval (get v0 i 'i16x8 low?)) (bitvector 32)))))]
       [(list (i32x4 v0)) (i64x2 (lambda (i) (int64_t (sign-extend (eval (get v0 i 'i32x4 low?)) (bitvector 32)))))])]

    [(uxtl Vn low?)
     (match (list (interpret Vn))
       [(list (i8x16 v0)) (i16x8 (lambda (i) (int16_t (zero-extend (eval (get v0 i 'i8x16 low?)) (bitvector 16)))))]
       [(list (i16x8 v0)) (i32x4 (lambda (i) (int32_t (zero-extend (eval (get v0 i 'i16x8 low?)) (bitvector 32)))))]
       [(list (i32x4 v0)) (i64x2 (lambda (i) (int64_t (zero-extend (eval (get v0 i 'i32x4 low?)) (bitvector 32)))))])]

    ;;;;;;;;;;;;;;;;; Instructions for type-demotion ;;;;;;;;;;;;;;;;;

    ;; Wrapper for a sequence of xtn and xtn2 to narrow a full vec
    [(xtn Vn Vm signed?)
     (match (list (interpret Vn) (interpret Vm))
       [(list (i16x8 v0) (i16x8 v1))
        (if signed?
            (i8x16 (lambda (i) (if (< i 8) (i8lo (v0 i)) (i8lo (v1 i)))))
            (u8x16 (lambda (i) (if (< i 8) (u8lo (v0 i)) (u8lo (v1 i))))))]
       [(list (u16x8 v0) (u16x8 v1))
        (if signed?
            (i8x16 (lambda (i) (if (< i 8) (i8lo (v0 i)) (i8lo (v1 i)))))
            (u8x16 (lambda (i) (if (< i 8) (u8lo (v0 i)) (u8lo (v1 i))))))]
       [(list (i32x4 v0) (i32x4 v1))
        (if signed?
            (i16x8 (lambda (i) (if (< i 4) (i16lo (v0 i)) (i16lo (v1 i)))))
            (u16x8 (lambda (i) (if (< i 4) (u16lo (v0 i)) (u16lo (v1 i))))))]
       [(list (u32x4 v0) (u32x4 v1))
        (if signed?
            (i16x8 (lambda (i) (if (< i 4) (i16lo (v0 i)) (i16lo (v1 i)))))
            (u16x8 (lambda (i) (if (< i 4) (u16lo (v0 i)) (u16lo (v1 i))))))]
       [(list (i64x2 v0) (i64x2 v1))
        (if signed?
            (i32x4 (lambda (i) (if (< i 2) (i32lo (v0 i)) (i32lo (v1 i)))))
            (u32x4 (lambda (i) (if (< i 2) (u32lo (v0 i)) (u32lo (v1 i))))))]
       [(list (u64x2 v0) (u64x2 v1))
        (if signed?
            (i32x4 (lambda (i) (if (< i 2) (i32lo (v0 i)) (i32lo (v1 i)))))
            (u32x4 (lambda (i) (if (< i 2) (u32lo (v0 i)) (u32lo (v1 i))))))])]

    ;; Wrapper for a sequence of sqxtn and sqxtn2 to sat-narrow a full vec
    [(sqxtn Vn Vm)
     (match (list (interpret Vn) (interpret Vm))
       [(list (i16x8 v0) (i16x8 v1)) (i8x16 (lambda (i) (if (< i 8) (sat8 (v0 i)) (sat8 (v1 i)))))]
       [(list (i32x4 v0) (i32x4 v1)) (i16x8 (lambda (i) (if (< i 4) (sat16 (v0 i)) (sat16 (v1 i)))))]
       [(list (i64x2 v0) (i64x2 v1)) (i32x4 (lambda (i) (if (< i 2) (sat32 (v0 i)) (sat32 (v1 i)))))])]

    ;; Wrapper for a sequence of sqxtun and sqxtun2 to sat-unsigned-narrow a full vec
    [(sqxtun Vn Vm)
     (match (list (interpret Vn) (interpret Vm))
       [(list (i16x8 v0) (i16x8 v1)) (u8x16 (lambda (i) (if (< i 8) (satu8 (v0 i)) (satu8 (v1 i)))))]
       [(list (i32x4 v0) (i32x4 v1)) (u16x8 (lambda (i) (if (< i 4) (satu16 (v0 i)) (satu16 (v1 i)))))]
       [(list (i64x2 v0) (i64x2 v1)) (u32x4 (lambda (i) (if (< i 2) (satu32 (v0 i)) (satu32 (v1 i)))))])]

    ;; Wrapper for a sequence of uqxtn and uqxtn2 to unsigned-sat-narrow a full vec
    [(uqxtn Vn Vm signed?)
     (match (list (interpret Vn) (interpret Vm))
       [(list (u16x8 v0) (u16x8 v1))
        (if signed?
            (i8x16 (lambda (i) (if (< i 8) (int8_t (eval (satu8 (v0 i)))) (int8_t (eval (satu8 (v1 i)))))))
            (u8x16 (lambda (i) (if (< i 8) (satu8 (v0 i)) (satu8 (v1 i))))))]
       [(list (u32x4 v0) (u32x4 v1))
        (if signed?
            (i16x8 (lambda (i) (if (< i 8) (int16_t (eval (satu16 (v0 i)))) (int16_t (eval (satu16 (v1 i)))))))
            (u16x8 (lambda (i) (if (< i 8) (satu16 (v0 i)) (satu16 (v1 i))))))]
       [(list (u64x2 v0) (u64x2 v1))
        (if signed?
            (i32x4 (lambda (i) (if (< i 8) (int32_t (eval (satu32 (v0 i)))) (int32_t (eval (satu32 (v1 i)))))))
            (u32x4 (lambda (i) (if (< i 8) (satu32 (v0 i)) (satu32 (v1 i))))))])]

    ;; Basic arithmetic instructions
    
;    (struct add (Vn Vm) #:super struct:ast-node #:transparent)
;    (struct addp (Vn Vm) #:super struct:ast-node #:transparent)
;    (struct addv (Vn) #:super struct:ast-node #:transparent)
;
;    (struct mul (Vn Vm) #:super struct:ast-node #:transparent)
;    (struct shl (Vn shift) #:super struct:ast-node #:transparent)
;
;    (struct sshr (Vn shift) #:super struct:ast-node #:transparent)
;    (struct ssra (Vd Vn shift) #:super struct:ast-node #:transparent)
;    (struct srshr (Vn shift) #:super struct:ast-node #:transparent)
;    (struct srsra (Vd Vn shift) #:super struct:ast-node #:transparent)
;    (struct ushr (Vn shift) #:super struct:ast-node #:transparent)
;    (struct usra (Vd Vn shift) #:super struct:ast-node #:transparent)
;    (struct urshr (Vn shift) #:super struct:ast-node #:transparent)
;    (struct ursha (Vd Vn shift) #:super struct:ast-node #:transparent)
;
;    (struct abs (Vn) #:super struct:ast-node #:transparent)
;    (struct neg (Vn) #:super struct:ast-node #:transparent)
    
    ))

(provide
 (rename-out
  [interpret interpret-arm]
  ;[set-curr-cn set-curr-cn-hvx]
  [gather-tables arm-gather-tables]
  [gather-types arm-gather-types]))