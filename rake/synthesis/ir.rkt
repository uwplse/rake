#lang rosette

(require rosette/lib/match)
(require rosette/lib/angelic)

(require rake/cpp/types)
(require rake/cpp/cast)
(require rake/util)

(define curr-cn 0)
(define (set-curr-cn v) (set! curr-cn v))

(define WMT_GENERAL 0)
(define WMT_1DSYM 1)
(define WMT_2DSYM 2)

;; IR Types
(struct vector (data) #:transparent)
(struct weight-matrix (rad vals type) #:transparent)

(define (elem vec idx) ((vector-data vec) idx))

;; IR instructions
(struct convolve (data kernel saturateFunc outputType) #:transparent)
(struct const-add (data const saturateFunc outputType) #:transparent)
(struct const-divide (data divisor) #:transparent)
(struct arith-shift-right (data n round? outputType) #:transparent)
(struct logic-shift-right (data n) #:transparent)
(struct saturate (data round? signedOut?) #:transparent)
(struct abs-diff (data0 data1) #:transparent)
(struct minimum (data0 data1) #:transparent)
(struct cast (data type) #:transparent)
(struct upcast (data) #:transparent)
(struct downcast (data) #:transparent)
(struct packhi (data signed?) #:transparent)
(struct broadcast (val) #:transparent)
(struct load-data (id opts))
(struct zip-data (data0 data1) #:transparent)

(define idx-tables (make-hash))
(for ([i 20])
  (define-symbolic* get-idx (~> integer? integer?))
  (hash-set! idx-tables i get-idx))
 
;; Model IR Instructions
(define (interpret p)
  (match p
    
    [(load-data id opts)
     ;(define-symbolic* get-idx (~> integer? integer?))
     (cond
       [(hash-has-key? idx-tables id)
        (define get-idx (hash-ref idx-tables id))
        (vector (lambda (i) (list-ref (list-ref opts curr-cn) (get-idx i))))]
       [else (error "Define more idx tables in greedy IR lifter.")])]

    [(zip-data data0 data1)
     (define data0i (interpret data0))
     (define data1i (interpret data1))
     (vector
      (lambda (i)
        (if (even? i) (elem data0i (quotient i 2)) (elem data1i (quotient i 2)))))]

    [(broadcast val) (vector (lambda (i) val))]

    ;; 1150s
    ;; 1455s
    [(convolve data kernel saturateFunc outputType)
     (define vec (vector-data (interpret data)))
     (define weights (asList kernel))
     (define width (length weights))
     (vector
      (lambda (i)
        (define out
          (cond
            [(eq? width 1) (bvmul
                            (eval (cpp-cast (vec i) outputType))
                            (eval (cpp-cast (list-ref weights 0) outputType)))]
            [(eq? width 2) (bvadd
                            (bvmul
                             (eval (cpp-cast (vec i) outputType))
                             (eval (cpp-cast (list-ref weights 0) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 1)) outputType))
                             (eval (cpp-cast (list-ref weights 1) outputType))))]
            [(eq? width 3) (bvadd
                            (bvmul
                             (eval (cpp-cast (vec i) outputType))
                             (eval (cpp-cast (list-ref weights 0) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 1)) outputType))
                             (eval (cpp-cast (list-ref weights 1) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 2)) outputType))
                             (eval (cpp-cast (list-ref weights 2) outputType))))]
            [(eq? width 4) (bvadd
                            (bvmul
                             (eval (cpp-cast (vec i) outputType))
                             (eval (cpp-cast (list-ref weights 0) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 1)) outputType))
                             (eval (cpp-cast (list-ref weights 1) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 2)) outputType))
                             (eval (cpp-cast (list-ref weights 2) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 3)) outputType))
                             (eval (cpp-cast (list-ref weights 3) outputType))))]
            [(eq? width 5) (bvadd
                            (bvmul
                             (eval (cpp-cast (vec i) outputType))
                             (eval (cpp-cast (list-ref weights 0) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 1)) outputType))
                             (eval (cpp-cast (list-ref weights 1) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 2)) outputType))
                             (eval (cpp-cast (list-ref weights 2) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 3)) outputType))
                             (eval (cpp-cast (list-ref weights 3) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 4)) outputType))
                             (eval (cpp-cast (list-ref weights 4) outputType))))]
            [(eq? width 6) (bvadd
                            (bvmul
                             (eval (cpp-cast (vec i) outputType))
                             (eval (cpp-cast (list-ref weights 0) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 1)) outputType))
                             (eval (cpp-cast (list-ref weights 1) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 2)) outputType))
                             (eval (cpp-cast (list-ref weights 2) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 3)) outputType))
                             (eval (cpp-cast (list-ref weights 3) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 4)) outputType))
                             (eval (cpp-cast (list-ref weights 4) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 5)) outputType))
                             (eval (cpp-cast (list-ref weights 5) outputType))))]
            [(eq? width 7) (bvadd
                            (bvmul
                             (eval (cpp-cast (vec i) outputType))
                             (eval (cpp-cast (list-ref weights 0) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 1)) outputType))
                             (eval (cpp-cast (list-ref weights 1) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 2)) outputType))
                             (eval (cpp-cast (list-ref weights 2) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 3)) outputType))
                             (eval (cpp-cast (list-ref weights 3) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 4)) outputType))
                             (eval (cpp-cast (list-ref weights 4) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 5)) outputType))
                             (eval (cpp-cast (list-ref weights 5) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 6)) outputType))
                             (eval (cpp-cast (list-ref weights 6) outputType))))]
            [(eq? width 8) (bvadd
                            (bvmul
                             (eval (cpp-cast (vec i) outputType))
                             (eval (cpp-cast (list-ref weights 0) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 1)) outputType))
                             (eval (cpp-cast (list-ref weights 1) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 2)) outputType))
                             (eval (cpp-cast (list-ref weights 2) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 3)) outputType))
                             (eval (cpp-cast (list-ref weights 3) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 4)) outputType))
                             (eval (cpp-cast (list-ref weights 4) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 5)) outputType))
                             (eval (cpp-cast (list-ref weights 5) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 6)) outputType))
                             (eval (cpp-cast (list-ref weights 6) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 7)) outputType))
                             (eval (cpp-cast (list-ref weights 7) outputType))))]
            [(eq? width 9) (bvadd
                            (bvmul
                             (eval (cpp-cast (vec i) outputType))
                             (eval (cpp-cast (list-ref weights 0) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 1)) outputType))
                             (eval (cpp-cast (list-ref weights 1) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 2)) outputType))
                             (eval (cpp-cast (list-ref weights 2) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 3)) outputType))
                             (eval (cpp-cast (list-ref weights 3) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 4)) outputType))
                             (eval (cpp-cast (list-ref weights 4) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 5)) outputType))
                             (eval (cpp-cast (list-ref weights 5) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 6)) outputType))
                             (eval (cpp-cast (list-ref weights 6) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 7)) outputType))
                             (eval (cpp-cast (list-ref weights 7) outputType)))
                            (bvmul
                             (eval (cpp-cast (vec (+ i 8)) outputType))
                             (eval (cpp-cast (list-ref weights 8) outputType))))]))
        (saturateFunc (mk-typed-expr out outputType))))]

    [(const-add data const saturateFunc outputType)
     (define vec (vector-data (interpret data)))
     (define c (eval (cpp-cast const outputType)))
     (vector
      (lambda (i)
        (define v (eval (cpp-cast (vec i) outputType)))
        (saturateFunc (mk-typed-expr (bvadd v c) outputType))))]

    [(const-divide data divisor)
     (define datai (interpret data))
     (define c (interpret divisor))
     (vector
      (lambda (i)
        (define v (elem datai i))
        (cond
          [(int8_t? v) (mk-typed-expr (bvsdiv (eval v) (eval c)) 'int8)]
          [(int16_t? v) (mk-typed-expr (bvsdiv (eval v) (eval c)) 'int16)]
          [(uint8_t? v) (mk-typed-expr (bvudiv (eval v) (eval c)) 'uint8)]
          [(uint16_t? v) (mk-typed-expr (bvudiv (eval v) (eval c)) 'uint16)])))]

    [(arith-shift-right data n round? outputType)
     (define datai (interpret data))
     (define c (interpret n))
     (vector
      (lambda (i)
        (define v (elem datai i))
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
     (define datai (interpret data))
     (define c (interpret n))
     (vector
      (lambda (i)
        (define v (elem datai i))
        (cond
          [(uint8_t? v) (uint8_t (bvlshr (eval v) (eval c)))]
          [(uint16_t? v) (uint16_t (bvlshr (eval v) (eval c)))]
          [(uint32_t? v) (uint32_t (bvlshr (eval v) (eval c)))])))]

    [(saturate data round? signedOut?)
     (define datai (interpret data))
     (vector
      (lambda (i)
        (define v (elem datai i))
        (cond
          [(int16_t? v)
           (cond
             [(and round? signedOut?) (sat8 (int16_t (bvashr (bvadd (eval v) (bv 128 16)) (bv 8 16))))]
             [round? (satu8 (uint16_t (bvlshr (bvadd (eval v) (bv 128 16)) (bv 8 16))))]
             [else (satu8 v)])]
          [(uint16_t? v)
           (cond
             [round? (satu8 (uint16_t (bvlshr (bvadd (eval v) (bv 128 16)) (bv 8 16))))]
             [else (satu8 v)])]
          [(int32_t? v)
           (cond
             [(and round? signedOut?) (sat16 (int32_t (bvashr (bvadd (eval v) (bv 32768 32)) (bv 16 32))))]
             [round? (satu16 (uint32_t (bvlshr (bvadd (eval v) (bv 32768 32)) (bv 16 32))))]
             [else (sat16 v)])]
          [(uint32_t? v)
           (if round
               (satu16 (uint32_t (bvlshr (bvadd (eval v) (bv 32768 32)) (bv 16 32))))
               (satu16 v))])))]
    
    [(cast data type)
     (define datai (interpret data))
     (vector
      (lambda (i) (cpp-cast (elem datai i) type)))]

    [(upcast data)
     (define datai (interpret data))
     (vector
      (lambda (i)
        (define v (elem datai i))
        (cond
          [(int8_t? v) (cpp-cast v 'int16)]
          [(int16_t? v) (cpp-cast v 'int32)]
          [(uint8_t? v) (cpp-cast v 'uint16)]
          [(uint16_t? v) (cpp-cast v 'uint32)])))]

    [(downcast data)
     (define datai (interpret data))
     (vector
      (lambda (i)
        (define v (elem datai i))
        (cond
          [(int16_t? v) (cpp-cast v 'int8)]
          [(int32_t? v) (cpp-cast v 'int16)]
          [(uint16_t? v) (cpp-cast v 'uint8)]
          [(uint32_t? v) (cpp-cast v 'uint16)])))]

    [(packhi data signed?)
     (define datai (interpret data))
     (vector
      (lambda (i)
        (define v (elem datai i))
        (match v
          [(int16_t val) ((if signed? int8_t uint8_t) (extract 15 8 val))]
          [(uint16_t val) ((if signed? int8_t uint8_t) (extract 15 8 val))]
          [(int32_t val) ((if signed? int16_t uint16_t) (extract 31 16 val))]
          [(uint32_t val) ((if signed? int16_t uint16_t) (extract 31 16 val))])))]

    [(abs-diff data0 data1)
     (define data0i (interpret data0))
     (define data1i (interpret data1))
     (vector
      (lambda (i)
        (define lhs (elem data0i i))
        (define rhs (elem data1i i))
        (match (list lhs rhs)
          [(list (uint8_t _) (uint8_t _))
           ;(uint8_t (if (bvsge (eval lhs) (eval rhs)) (bvsub (eval lhs) (eval rhs)) (bvsub (eval rhs) (eval lhs))))
           (define n (bvsub (zero-extend (eval lhs) (bitvector 9)) (zero-extend (eval rhs) (bitvector 9))))
           (define mask (bvashr n (bv 8 9)))
           (uint8_t (extract 7 0 (bvxor mask (bvadd n mask))))]
          [(list (uint16_t _) (uint16_t _))
           (uint16_t (abs16 (bvsub (eval lhs) (eval rhs))))
           ;(uint16_t (if (bvuge (eval lhs) (eval rhs)) (bvsub (eval lhs) (eval rhs)) (bvsub (eval rhs) (eval lhs))))
           ;(define n (bvsub (zero-extend (eval lhs) (bitvector 17)) (zero-extend (eval rhs) (bitvector 17))))
           ;(define mask (bvashr n (bv 16 17)))
           ;(uint16_t (extract 15 0 (bvxor mask (bvadd n mask))))
           ]
          [(list (int16_t _) (int16_t _))
           (int16_t (if (bvsge (eval lhs) (eval rhs)) (bvsub (eval lhs) (eval rhs)) (bvsub (eval rhs) (eval lhs))))
           ;(define n (bvsub (eval lhs) (eval rhs)))
           ;(define mask (bvashr n (bv 15 16)))
           ;(int16_t (bvxor mask (bvadd n mask)))
           ]
          [(list (int32_t _) (int32_t _))
           (define n (bvsub (eval lhs) (eval rhs)))
           (define mask (bvashr n (bv 31 32)))
           (int32_t (bvxor mask (bvadd n mask)))])))]

    [(minimum data0 data1)
     (define data0i (interpret data0))
     (define data1i (interpret data1))
     (vector
      (lambda (i)
        (define lhs (elem data0i i))
        (define rhs (elem data1i i))
        (match (list lhs rhs)
          [(list (int8_t v0) (int8_t v1)) (int8_t (min8 v0 v1))]
          [(list (uint8_t v0) (uint8_t v1)) (uint8_t (minu8 v0 v1))]
          [(list (int16_t v0) (int16_t v1)) (int16_t (min16 v0 v1))]
          [(list (uint16_t v0) (uint16_t v1)) (uint16_t (minu16 v0 v1))]
          [(list (int32_t v0) (int32_t v1)) (int32_t (min32 v0 v1))])))]
    
    [_ p]))

(define (asList kernel)
  (define radius (weight-matrix-rad kernel))
  (define ktype (weight-matrix-type kernel))
  (define vals (weight-matrix-vals kernel))
  (cond
    [(eq? radius 1) vals]
    [(eq? radius 2) (cond
                      [(eq? ktype WMT_GENERAL) vals]
                      [(eq? ktype WMT_1DSYM) (append vals (reverse (take vals 1)))])]
    [(eq? radius 3) (cond
                      [(eq? ktype WMT_GENERAL) vals]
                      [(eq? ktype WMT_1DSYM) (append vals (reverse (take vals 2)))])]
    [(eq? radius 4) (cond
                      [(eq? ktype WMT_GENERAL) vals]
                      [(eq? ktype WMT_1DSYM) (append vals (reverse (take vals 3)))]
                      [(eq? ktype WMT_2DSYM) (append vals (list (list-ref vals 0) (list-ref vals 1) (list-ref vals 0)  (list-ref vals 2) (list-ref vals 0)))])]
    [(eq? radius 5) (cond
                      [(eq? ktype WMT_GENERAL) vals]
                      [(eq? ktype WMT_1DSYM) (append vals (reverse (take vals 4)))])]
    [(eq? radius 6) (cond
                      [(eq? ktype WMT_GENERAL) vals]
                      [(eq? ktype WMT_1DSYM) (append vals (reverse (take vals 5)))])]
    [(eq? radius 7) (cond
                      [(eq? ktype WMT_GENERAL) vals]
                      [(eq? ktype WMT_1DSYM) (append vals (reverse (take vals 6)))])]
    [(eq? radius 8) (cond
                      [(eq? ktype WMT_GENERAL) vals]
                      [(eq? ktype WMT_1DSYM) (append vals (reverse (take vals 7)))])]
    [(eq? radius 9) (cond
                      [(eq? ktype WMT_GENERAL) vals]
                      [(eq? ktype WMT_1DSYM) (append vals (reverse (take vals 8)))])]))

(provide
 (except-out (all-defined-out) interpret set-curr-cn curr-cn elem) (rename-out [interpret interpret-ir] [set-curr-cn set-curr-cn-ir] [elem elem-ir]))