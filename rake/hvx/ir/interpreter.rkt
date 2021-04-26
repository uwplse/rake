#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/destruct
  rosette/lib/angelic
  rake/cpp
  rake/hvx/ir/instructions)

(provide
 (rename-out [get-subexprs get-hvx-ir-subexprs])
 (rename-out [set-cn set-cn-hvx-ir])
 (rename-out [elem-type hvx-ir-elem-type])
 (rename-out [interpret interpret-hvx-ir]))

(define curr-cn 0)
(define (set-cn v) (set! curr-cn v))

(define (elem-type expr)
  (cpp-type ((interpret expr) 0)))

(define (interpret p)
  (destruct p

    [(broadcast value) (lambda (i) value)]
            
    [(load-data live-data gather-tbl)
     (lambda (i)
       (list-ref (list-ref live-data curr-cn) (list-ref gather-tbl i)))]

    [(combine sub-expr0 sub-expr1 read-tbl)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (lambda (i)
       (define idx (car (list-ref read-tbl i)))
       (define c (cdr (list-ref read-tbl i)))
       (assert (<= 0 idx i))
       (define lhs (input0 idx))
       (define rhs (input1 idx))
       (if c lhs rhs))]
    
    [(cast sub-expr type)
     (define input (interpret sub-expr))
     (lambda (i) (cpp-cast (input i) type))]

    [(add-const sub-expr const-val output-type saturate?)
     (define input (interpret sub-expr))
     (define c (eval (cpp-cast const-val output-type)))
     (define satF (get-sat-fn output-type))
     (cond
       [saturate? (lambda (i) (satF (mk-cpp-expr (bvadd (eval (cpp-cast (input i) output-type)) c) output-type)))]
       [else (lambda (i) (mk-cpp-expr (bvadd (eval (cpp-cast (input i) output-type)) c) output-type))])]

    [(shift-right sub-expr shift round? saturate? arithmetic? output-type)
     (define input (interpret sub-expr))
     (define n (interpret shift))
     (define satF (get-sat-fn output-type))
     (define shiftF (if arithmetic? bvashr bvlshr))
     (lambda (i)
       (define v (input i))
       (define one (cpp-cast (int8_t (bv 1 8)) (cpp-type v)))
       (define rounded_v (if round? (bvadd (eval v) (bvshl (eval one) (bvsub (eval n) (eval one)))) (eval v)))
       (define shifted_v (shiftF rounded_v (eval n)))
       (define saturated_v (if saturate? (satF (mk-cpp-expr shifted_v (cpp-type v))) (cpp-cast (mk-cpp-expr shifted_v (cpp-type v)) output-type)))
       saturated_v)]

    [(divide-by-const sub-expr const-val)
     (define input (interpret sub-expr))
     (define den (interpret const-val))
     (lambda (i)
       (define v (input i))
       (cond
         [(int8_t? v) (mk-cpp-expr (bvsdiv (eval v) (eval den)) 'int8)]
         [(int16_t? v) (mk-cpp-expr (bvsdiv (eval v) (eval den)) 'int16)]
         [(uint8_t? v) (mk-cpp-expr (bvudiv (eval v) (eval den)) 'uint8)]
         [(uint16_t? v) (mk-cpp-expr (bvudiv (eval v) (eval den)) 'uint16)]))]

    [(minimum sub-expr0 sub-expr1)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs (input1 i))
       (destruct* (lhs rhs)
                  [((int8_t v0) (int8_t v1)) (min8 lhs rhs)]
                  [((uint8_t v0) (uint8_t v1)) (minu8 lhs rhs)]
                  [((int16_t v0) (int16_t v1)) (min16 lhs rhs)]
                  [((uint16_t v0) (uint16_t v1)) (minu16 lhs rhs)]
                  [((int32_t v0) (int32_t v1)) (min32 lhs rhs)]
                  [((uint32_t v0) (uint32_t v1)) (minu32 lhs rhs)]))]

    [(maximum sub-expr0 sub-expr1)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs (input1 i))
       (destruct* (lhs rhs)
                  [((int8_t v0) (int8_t v1)) (max8 lhs rhs)]
                  [((uint8_t v0) (uint8_t v1)) (maxu8 lhs rhs)]
                  [((int16_t v0) (int16_t v1)) (max16 lhs rhs)]
                  [((uint16_t v0) (uint16_t v1)) (maxu16 lhs rhs)]
                  [((int32_t v0) (int32_t v1)) (max32 lhs rhs)]
                  [((uint32_t v0) (uint32_t v1)) (maxu32 lhs rhs)]))]

    [(saturate sub-expr round? output-type)
     (define input (interpret sub-expr))
     (lambda (i)
       (define v (input i))
       (define satF (get-sat-fn output-type))
       (define shiftF (if (signed-expr? v) bvashr bvlshr))
       (define shift (cond [(eq? (expr-bw v) 16) (bv 8 16)] [(eq? (expr-bw v) 32) (bv 16 32)]))
       (define offset (cond [(eq? (expr-bw v) 16) (bv 128 16)] [(eq? (expr-bw v) 32) (bv 32768 32)]))
       (define rounded (if round? (shiftF (bvadd (eval v) offset) shift) (eval v)))
       (satF (mk-cpp-expr rounded (cpp-type v))))]

    [(abs-diff sub-expr0 sub-expr1)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs (input1 i))
       (destruct* (lhs rhs)
         [((uint8_t v0) (uint8_t v1)) (uint8_t (if (bvule v0 v1) (bvsub v1 v0) (bvsub v0 v1)))]
         [((uint16_t v0) (uint16_t v1)) (uint16_t (if (bvule v0 v1) (bvsub v1 v0) (bvsub v0 v1)))]
         [((uint32_t v0) (uint32_t v1)) (uint32_t (if (bvule v0 v1) (bvsub v1 v0) (bvsub v0 v1)))]
         [((int8_t v0) (int8_t v1)) (int8_t (if (bvsle v0 v1) (bvsub v1 v0) (bvsub v0 v1)))]
         [((int16_t v0) (int16_t v1)) (int16_t (if (bvsle v0 v1) (bvsub v1 v0) (bvsub v0 v1)))]
         [((int32_t v0) (int32_t v1)) (int32_t (if (bvsle v0 v1) (bvsub v1 v0) (bvsub v0 v1)))]))]
    
    [(vs-mpy-add sub-expr weights output-type saturate?)
     (define input (interpret sub-expr))
     (define width (length weights))
     (lambda (i)
       (define out
         (mk-cpp-expr
          (cond
            [(eq? width 1) (bvmul
                            (eval (cpp-cast (input i) output-type))
                            (eval (cpp-cast (list-ref weights 0) output-type)))]
            [(eq? width 2) (bvadd
                            (bvmul
                             (eval (cpp-cast (input i) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type))))]
            [(eq? width 3) (bvadd
                            (bvmul
                             (eval (cpp-cast (input i) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type))))]
            [(eq? width 4) (bvadd
                            (bvmul
                             (eval (cpp-cast (input i) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 3)) output-type))
                             (eval (cpp-cast (list-ref weights 3) output-type))))]
            [(eq? width 5) (bvadd
                            (bvmul
                             (eval (cpp-cast (input i) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 3)) output-type))
                             (eval (cpp-cast (list-ref weights 3) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 4)) output-type))
                             (eval (cpp-cast (list-ref weights 4) output-type))))]
            [(eq? width 6) (bvadd
                            (bvmul
                             (eval (cpp-cast (input i) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 3)) output-type))
                             (eval (cpp-cast (list-ref weights 3) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 4)) output-type))
                             (eval (cpp-cast (list-ref weights 4) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 5)) output-type))
                             (eval (cpp-cast (list-ref weights 5) output-type))))]
            [(eq? width 7) (bvadd
                            (bvmul
                             (eval (cpp-cast (input i) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 3)) output-type))
                             (eval (cpp-cast (list-ref weights 3) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 4)) output-type))
                             (eval (cpp-cast (list-ref weights 4) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 5)) output-type))
                             (eval (cpp-cast (list-ref weights 5) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 6)) output-type))
                             (eval (cpp-cast (list-ref weights 6) output-type))))]
            [(eq? width 8) (bvadd
                            (bvmul
                             (eval (cpp-cast (input i) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 3)) output-type))
                             (eval (cpp-cast (list-ref weights 3) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 4)) output-type))
                             (eval (cpp-cast (list-ref weights 4) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 5)) output-type))
                             (eval (cpp-cast (list-ref weights 5) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 6)) output-type))
                             (eval (cpp-cast (list-ref weights 6) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 7)) output-type))
                             (eval (cpp-cast (list-ref weights 7) output-type))))]
            [(eq? width 9) (bvadd
                            (bvmul
                             (eval (cpp-cast (input i) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 3)) output-type))
                             (eval (cpp-cast (list-ref weights 3) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 4)) output-type))
                             (eval (cpp-cast (list-ref weights 4) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 5)) output-type))
                             (eval (cpp-cast (list-ref weights 5) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 6)) output-type))
                             (eval (cpp-cast (list-ref weights 6) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 7)) output-type))
                             (eval (cpp-cast (list-ref weights 7) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ i 8)) output-type))
                             (eval (cpp-cast (list-ref weights 8) output-type))))])
          output-type))
       
       (if saturate?
           (cond
             [(eq? output-type 'int8) (sat8 out)]
             [(eq? output-type 'int16) (sat16 out)]
             [(eq? output-type 'int32) (sat32 out)]
             [(eq? output-type 'uint8) (satu8 out)]
             [(eq? output-type 'uint16) (satu16 out)]
             [(eq? output-type 'uint32) (satu32 out)])
           out))]

    [_ p]))

(define (get-sat-fn type)
  (cond
    [(eq? type 'int8) sat8]
    [(eq? type 'int16) sat16]
    [(eq? type 'int32) sat32]
    [(eq? type 'uint8) satu8]
    [(eq? type 'uint16) satu16]
    [(eq? type 'uint32) satu32]))

(define (get-subexprs ir-expr)
  (destruct ir-expr
    [(load-data live-data gather-tbl) '()]
    [(broadcast value) '()]
    [(combine sub-expr0 sub-expr1 read-tbl) (list sub-expr0 sub-expr1)]
    [(cast sub-expr type) (list sub-expr)]
    [(vs-mpy-add sub-expr weight-matrix output-type saturate?) (list sub-expr)]
    [(shift-right sub-expr const-val round? saturate? arithmetic? output-type) (list sub-expr)]
    [(add-const sub-expr const-val output-type saturate?) (list sub-expr)]
    [(maximum sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    [(minimum sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    [(saturate sub-expr round? output-type) (list sub-expr)]
    [(abs-diff sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    [_ (error "NYI: Extracing sub-expression for IR Expr:" ir-expr)]))

;    [(zip-data data0 data1)
;     (define data0i (interpret data0))
;     (define data1i (interpret data1))
;     (vector
;      (lambda (i)
;        (if (even? i) (elem data0i (quotient i 2)) (elem data1i (quotient i 2)))))]
;    
;    [(convolve-acc acc data kernel saturateFunc outputType)
;     (define acc-vec (vector-data (interpret acc)))
;     (define vec (vector-data (interpret data)))
;     (define weights (asList kernel))
;     (define width (length weights))
;     (vector
;      (lambda (i)
;        (define out
;          (cond
;            [(eq? width 1) (bvadd
;                            (eval (acc-vec i))
;                            (bvmul
;                             (eval (cpp-cast (vec i) outputType))
;                             (eval (cpp-cast (list-ref weights 0) outputType)))
;                            )]
;            [(eq? width 2) (bvadd
;                            (eval (acc-vec i))
;                            (bvmul
;                             (eval (cpp-cast (vec i) outputType))
;                             (eval (cpp-cast (list-ref weights 0) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 1)) outputType))
;                             (eval (cpp-cast (list-ref weights 1) outputType))))]
;            [(eq? width 3) (bvadd
;                            (eval (acc-vec i))
;                            (bvmul
;                             (eval (cpp-cast (vec i) outputType))
;                             (eval (cpp-cast (list-ref weights 0) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 1)) outputType))
;                             (eval (cpp-cast (list-ref weights 1) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 2)) outputType))
;                             (eval (cpp-cast (list-ref weights 2) outputType))))]
;            [(eq? width 4) (bvadd
;                            (eval (acc-vec i))
;                            (bvmul
;                             (eval (cpp-cast (vec i) outputType))
;                             (eval (cpp-cast (list-ref weights 0) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 1)) outputType))
;                             (eval (cpp-cast (list-ref weights 1) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 2)) outputType))
;                             (eval (cpp-cast (list-ref weights 2) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 3)) outputType))
;                             (eval (cpp-cast (list-ref weights 3) outputType))))]
;            [(eq? width 5) (bvadd
;                            (eval (acc-vec i))
;                            (bvmul
;                             (eval (cpp-cast (vec i) outputType))
;                             (eval (cpp-cast (list-ref weights 0) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 1)) outputType))
;                             (eval (cpp-cast (list-ref weights 1) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 2)) outputType))
;                             (eval (cpp-cast (list-ref weights 2) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 3)) outputType))
;                             (eval (cpp-cast (list-ref weights 3) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 4)) outputType))
;                             (eval (cpp-cast (list-ref weights 4) outputType))))]
;            [(eq? width 7) (bvadd
;                            (eval (acc-vec i))
;                            (bvmul
;                             (eval (cpp-cast (vec i) outputType))
;                             (eval (cpp-cast (list-ref weights 0) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 1)) outputType))
;                             (eval (cpp-cast (list-ref weights 1) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 2)) outputType))
;                             (eval (cpp-cast (list-ref weights 2) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 3)) outputType))
;                             (eval (cpp-cast (list-ref weights 3) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 4)) outputType))
;                             (eval (cpp-cast (list-ref weights 4) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 5)) outputType))
;                             (eval (cpp-cast (list-ref weights 5) outputType))))]
;            [(eq? width 8) (bvadd
;                            (eval (acc-vec i))
;                            (bvmul
;                             (eval (cpp-cast (vec i) outputType))
;                             (eval (cpp-cast (list-ref weights 0) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 1)) outputType))
;                             (eval (cpp-cast (list-ref weights 1) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 2)) outputType))
;                             (eval (cpp-cast (list-ref weights 2) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 3)) outputType))
;                             (eval (cpp-cast (list-ref weights 3) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 4)) outputType))
;                             (eval (cpp-cast (list-ref weights 4) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 5)) outputType))
;                             (eval (cpp-cast (list-ref weights 5) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 6)) outputType))
;                             (eval (cpp-cast (list-ref weights 6) outputType))))]
;            [(eq? width 9) (bvadd
;                            (eval (acc-vec i))
;                            (bvmul
;                             (eval (cpp-cast (vec i) outputType))
;                             (eval (cpp-cast (list-ref weights 0) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 1)) outputType))
;                             (eval (cpp-cast (list-ref weights 1) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 2)) outputType))
;                             (eval (cpp-cast (list-ref weights 2) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 3)) outputType))
;                             (eval (cpp-cast (list-ref weights 3) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 4)) outputType))
;                             (eval (cpp-cast (list-ref weights 4) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 5)) outputType))
;                             (eval (cpp-cast (list-ref weights 5) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 6)) outputType))
;                             (eval (cpp-cast (list-ref weights 6) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 7)) outputType))
;                             (eval (cpp-cast (list-ref weights 7) outputType))))]
;            [(eq? width 10) (bvadd
;                            (eval (acc-vec i))
;                            (bvmul
;                             (eval (cpp-cast (vec i) outputType))
;                             (eval (cpp-cast (list-ref weights 0) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 1)) outputType))
;                             (eval (cpp-cast (list-ref weights 1) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 2)) outputType))
;                             (eval (cpp-cast (list-ref weights 2) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 3)) outputType))
;                             (eval (cpp-cast (list-ref weights 3) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 4)) outputType))
;                             (eval (cpp-cast (list-ref weights 4) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 5)) outputType))
;                             (eval (cpp-cast (list-ref weights 5) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 6)) outputType))
;                             (eval (cpp-cast (list-ref weights 6) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 7)) outputType))
;                             (eval (cpp-cast (list-ref weights 7) outputType)))
;                            (bvmul
;                             (eval (cpp-cast (vec (+ i 8)) outputType))
;                             (eval (cpp-cast (list-ref weights 8) outputType))))]))
;        (saturateFunc (mk-typed-expr out outputType))))]
;
;    [(subtract data0 data1 sat? outT)
;     (define data0i (interpret data0))
;     (define data1i (interpret data1))
;     (vector
;      (lambda (i)
;        (define lhs (cpp-cast (elem data0i i) outT))
;        (define rhs (cpp-cast (elem data1i i) outT))
;        (match (list lhs rhs)
;          [(list (int8_t _) (int8_t _))
;           (if sat? (sat8 (int8_t (bvsub (eval lhs) (eval rhs)))) (int8_t (bvsub (eval lhs) (eval rhs))))]
;          [(list (int16_t _) (int16_t _))
;           (if sat? (sat16 (int16_t (bvsub (eval lhs) (eval rhs)))) (int16_t (bvsub (eval lhs) (eval rhs))))]
;          [(list (int32_t _) (int32_t _))
;           (if sat? (sat32 (int32_t (bvsub (eval lhs) (eval rhs)))) (int32_t (bvsub (eval lhs) (eval rhs))))]
;          [(list (uint8_t _) (int8_t _))
;           (satu8 (int8_t (bvsub (eval lhs) (eval rhs))))]
;          [(list (uint8_t _) (uint8_t _))
;           (satu8 (uint8_t (bvsub (eval lhs) (eval rhs))))]
;          [(list (uint16_t _) (uint16_t _))
;           (satu16 (uint16_t (bvsub (eval lhs) (eval rhs))))]
;          [(list (uint32_t _) (uint32_t _))
;           (satu32 (uint32_t (bvsub (eval lhs) (eval rhs))))])))]