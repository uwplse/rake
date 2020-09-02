#lang rosette

(require rosette/lib/match)
(require rosette/lib/angelic)

(require rake/cpp/types)
(require rake/cpp/cast)
(require rake/util)

(define curr-cn 0)
(define (set-curr-cn v) (set! curr-cn v))

;; IR Types
(struct vector (data) #:transparent)

(define (elem vec idx) ((vector-data vec) idx))

;; IR instructions
(struct convolve (data weights saturateFunc outputType) #:transparent)
(struct const-divide (data divisor) #:transparent)
(struct arith-shift-right (data n round? outputType) #:transparent)
(struct logic-shift-right (data n) #:transparent)
(struct saturate (data round? signedOut?) #:transparent)
(struct upcast (data) #:transparent)
(struct downcast (data) #:transparent)
(struct broadcast (val) #:transparent)
(struct load-data (opts))
(struct swizzle-data (t0 opts) #:transparent)

;; Model IR Instructions
(define (interpret p)
  (match p
    
    [(load-data opts)
     (define-symbolic get-idx (~> integer? integer?))
     (vector (lambda (i) (list-ref (list-ref opts curr-cn) (get-idx i))))]

    [(swizzle-data t0 opts)
     (vector
      (lambda (i)
        (define-symbolic* prev? boolean?)
        (define-symbolic* idx integer?)
        (if prev?
            ((elem (interpret t0)) idx)
            (list-ref (list-ref opts curr-cn) idx))))]

    [(broadcast val) (vector (lambda (i) val))]

    [(convolve data weights saturateFunc outputType)
     (vector
      (lambda (i)
        (define v (vector-data (interpret data)))
        (define v1 (eval (cpp_cast (v i) outputType)))
        (define v2 (eval (cpp_cast (v (+ i 1)) outputType)))
        (define v3 (eval (cpp_cast (v (+ i 2)) outputType)))
        (define v4 (eval (cpp_cast (v (+ i 3)) outputType)))
        (define v5 (eval (cpp_cast (v (+ i 3)) outputType)))
        (define w1 (eval (cpp_cast (list-ref weights 0) outputType)))
        (define w2 (eval (cpp_cast (list-ref weights 1) outputType)))
        (define w3 (eval (cpp_cast (list-ref weights 2) outputType)))
        (define w4 (eval (cpp_cast (list-ref weights 3) outputType)))
        (define w5 (list-ref weights 4))
        (if w5
            (saturateFunc (mk-typed-expr (bvadd (bvmul v1 w1) (bvmul v2 w2) (bvmul v3 w3) (bvmul v4 w4) v5) outputType))
            (saturateFunc (mk-typed-expr (bvadd (bvmul v1 w1) (bvmul v2 w2) (bvmul v3 w3) (bvmul v4 w4)) outputType)))))]

    [(const-divide data divisor)
     (vector
      (lambda (i)
        (define v (elem (interpret data) i))
        (define c (interpret divisor))
        (cond
          [(int8_t? v) (mk-typed-expr (bvsdiv (eval v) (eval c)) 'int8)]
          [(int16_t? v) (mk-typed-expr (bvsdiv (eval v) (eval c)) 'int16)]
          [(uint8_t? v) (mk-typed-expr (bvudiv (eval v) (eval c)) 'uint8)]
          [(uint16_t? v) (mk-typed-expr (bvudiv (eval v) (eval c)) 'uint16)])))]

    [(arith-shift-right data n round? outputType)
     (vector
      (lambda (i)
        (define v (elem (interpret data) i))
        (define c (interpret n))
        (cond
          [(uint16_t? v)
           (satu8 (uint16_t (bvashr (if round? (bvadd (eval v) (bvshl (bv 1 16) (bvsub (eval c) (bv 1 16)))) (eval v)) (eval c))))]
          [(uint32_t? v)
           (satu16 (uint32_t (bvashr (if round? (bvadd (eval v) (bvshl (bv 1 32) (bvsub (eval c) (bv 1 32)))) (eval v)) (eval c))))]
          [(int16_t? v)
           (define out (int16_t (bvashr (if round? (bvadd (eval v) (bvshl (bv 1 16) (bvsub (eval c) (bv 1 16)))) (eval v)) (eval c))))
           (cond
             [(eq? outputType 'uint8) (satu8 out)]
             [(eq? outputType 'int8) (sat8 out)]
             [(eq? outputType 'int16) (mk-typed-expr (bvashr (eval v) (eval c)) outputType)])]
          [(int32_t? v)
           (define out (int32_t (bvashr (if round? (bvadd (eval v) (bvshl (bv 1 32) (bvsub (eval c) (bv 1 32)))) (eval v)) (eval c))))
           (cond
             [(eq? outputType 'uint16) (satu16 out)]
             [(eq? outputType 'int16) (sat16 out)]
             [(eq? outputType 'int32) (mk-typed-expr (bvashr (eval v) (eval c)) outputType)])])))]

    [(logic-shift-right data n)
     (vector
      (lambda (i)
        (define v (elem (interpret data) i))
        (define c (interpret n))
        (cond
          [(uint8_t? v) (uint8_t (bvlshr (eval v) (eval c)))]
          [(uint16_t? v) (uint16_t (bvlshr (eval v) (eval c)))]
          [(uint32_t? v) (uint32_t (bvlshr (eval v) (eval c)))])))]

    [(saturate data round? signedOut?)
     (vector
      (lambda (i)
        (define v (elem (interpret data) i))
        (cond
          [(int16_t? v)
           (cond
             [(and round? signedOut?) (sat8 (int16_t (bvashr (bvadd (eval v) (bv 128 16)) (bv 8 16))))]
             [round? (satu8 (uint16_t (bvlshr (bvadd (eval v) (bv 128 16)) (bv 8 16))))]
             [else (satu8 v)])]
          [(uint16_t? v)
           (satu8 (uint16_t (bvlshr (bvadd (eval v) (bv 128 16)) (bv 8 16))))]
          [(int32_t? v)
           (cond
             [(and round? signedOut?) (sat16 (int32_t (bvashr (bvadd (eval v) (bv 32768 32)) (bv 16 32))))]
             [round? (satu16 (uint32_t (bvlshr (bvadd (eval v) (bv 32768 32)) (bv 16 32))))]
             [else (sat16 v)])]
          [(uint32_t? v)
           (if round
               (satu16 (uint32_t (bvlshr (bvadd (eval v) (bv 32768 32)) (bv 16 32))))
               (satu16 v))])))]

    [(upcast data)
     (vector
      (lambda (i)
        (define v (elem (interpret data) i))
        (cond
          [(int8_t? v) (cpp_cast v 'int16)]
          [(int16_t? v) (cpp_cast v 'int32)]
          [(uint8_t? v) (cpp_cast v 'uint16)]
          [(uint16_t? v) (cpp_cast v 'uint32)])))]

    [(downcast data)
     (vector
      (lambda (i)
        (define v (elem (interpret data) i))
        (cond
          [(int16_t? v) (cpp_cast v 'int8)]
          [(int32_t? v) (cpp_cast v 'int16)]
          [(uint16_t? v) (cpp_cast v 'uint8)]
          [(uint32_t? v) (cpp_cast v 'uint16)])))]

    [_ p]))

(provide
 (except-out (all-defined-out) interpret set-curr-cn curr-cn elem) (rename-out [interpret interpret-ir] [set-curr-cn set-curr-cn-ir] [elem elem-ir]))