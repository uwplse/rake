#lang rosette

(require rake/hvx/ast/types)
(require rake/util)
(require rake/cpp/types)

(require rosette/lib/match)

;; Types
(struct serve-vec (vec type))
(struct ??gen-vec (vec))

;; Ops
(struct si-add (v1 v2) #:transparent)

(struct si-cast (v type) #:transparent)
(struct si-sat8 (v) #:transparent)
(struct si-sat16 (v) #:transparent)
(struct si-sat32 (v) #:transparent)
(struct si-satu8 (v) #:transparent)
(struct si-satu16 (v) #:transparent)
(struct si-satu32 (v) #:transparent)

;; Check if expressions are equal
(define (si-eq-expr? e1 e2)
  (match (cons e1 e2)
    [(cons (int8_t val) (int8_t val2)) (si-eq-expr? val val2)]
    [(cons (int16_t val) (int16_t val2)) (si-eq-expr? val val2)]
    [(cons (int32_t val) (int32_t val2)) (si-eq-expr? val val2)]
    [(cons (uint8_t val) (uint8_t val2)) (si-eq-expr? val val2)]
    [(cons (uint16_t val) (uint16_t val2)) (si-eq-expr? val val2)]
    [(cons (uint32_t val) (uint32_t val2)) (si-eq-expr? val val2)]

    [(cons (si-sat8 val) (si-sat8 val2)) (si-eq-expr? val val2)]
    [(cons (si-sat16 val) (si-sat16 val2)) (si-eq-expr? val val2)]
    [(cons (si-sat32 val) (si-sat32 val2)) (si-eq-expr? val val2)]
    [(cons (si-satu8 val) (si-satu8 val2)) (si-eq-expr? val val2)]
    [(cons (si-satu16 val) (si-satu16 val2)) (si-eq-expr? val val2)]
    [(cons (si-satu32 val) (si-satu32 val2)) (si-eq-expr? val val2)]

    [(cons (si-cast val type) (si-cast val2 type2)) (and (eq? type type2) (si-eq-expr? val val2))]

    [(cons (si-add v1 v2) (si-add v3 v4)) (or (and (si-eq-expr? v1 v3) (si-eq-expr? v2 v4)) (and (si-eq-expr? v1 v4) (si-eq-expr? v2 v3)))]

    [_ (eq? e1 e2)]))
    ;[_ (error "NYI" e1 e2)]))

;; HVX Interpreter
(define (interpret p)

  (match p
    ;;;;;;;;;;;;;;;;; Instructions for vector creation ;;;;;;;;;;;;;;;
    
    [(serve-vec vec type) (type (lambda (i) (hash-ref vec i)))]

    ;;[(??gen-vec vec type) (type (lambda (i) (hash-ref vec i)))]

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
    [_ p]))

;; Define commonly occuring scalar-computation patterns as funcs for re-usability and
;; easier maintainability
(define (do-si-cast val type) (mk-typed-expr (si-cast (eval val) type) type))
(define (do-si-sat8 val) (mk-typed-expr (si-sat8 (eval val)) 'int8))
(define (do-si-sat16 val) (mk-typed-expr (si-sat16 (eval val)) 'int16))
(define (do-si-sat32 val) (mk-typed-expr (si-sat32 (eval val)) 'int32))
(define (do-si-satu8 val) (mk-typed-expr (si-satu8 (eval val)) 'uint8))
(define (do-si-satu16 val) (mk-typed-expr (si-satu16 (eval val)) 'uint16))
(define (do-si-satu32 val) (mk-typed-expr (si-satu32 (eval val)) 'uint32))

(define (add lhs rhs outT)
  (mk-typed-expr (si-add (eval (do-si-cast lhs outT)) (eval (do-si-cast rhs outT))) outT))

(define (add-acc acc lhs rhs outT)
  (mk-typed-expr (si-add (eval acc) (eval (do-si-cast lhs outT)) (eval (do-si-cast rhs outT))) outT))

(define (add-sat lhs rhs outT)
  (match outT
    ['int8 (do-si-sat8 (add lhs rhs 'int16))]
    ['int16 (do-si-sat16 (add lhs rhs 'int32))]
    ['int32 (do-si-sat32 (add lhs rhs 'int64))]
    ['uint8 (if (int8_t? rhs) (do-si-satu8 (int16_t (si-add (eval (do-si-cast lhs 'int16)) (eval (do-si-cast rhs 'int16))))) (do-si-satu8 (add lhs rhs 'uint16)))]
    ['uint16 (do-si-satu16 (add lhs rhs 'uint32))]
    ['uint32 (do-si-satu32 (add lhs rhs 'uint64))]))

(provide serve-vec ??gen-vec si-eq-expr? (rename-out [interpret si-interpret-hvx]))