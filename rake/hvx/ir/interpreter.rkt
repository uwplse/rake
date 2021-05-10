#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/destruct
  rosette/lib/angelic
  rake/cpp
  rake/hvx/ir/instructions)

(provide
 (rename-out [instr-count hvx-ir-instr-count])
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

    [(build-vec base stride len)
     (lambda (i)
       (mk-cpp-expr
        (bvadd
         (eval base)
         (bvmul (eval stride) (integer->bitvector i (bitvector (expr-bw stride)))))
        (cpp-type base)))]
            
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
       (define lhs (input0 0))
       (define rhs (input1 0))
       (if c lhs rhs))]
    
    [(cast sub-expr type)
     (define input (interpret sub-expr))
     (lambda (i) (cpp-cast (input i) type))]

    [(add-const sub-expr const-val output-type saturate?)
     (define input (interpret sub-expr))
     (define c (eval (cpp-cast const-val output-type)))
     (define satF (get-sat-fn output-type))
     (cond
       [saturate? (lambda (i) (satF (int64_t (bvadd (eval (cpp-cast (input i) 'int64)) (eval (cpp-cast const-val 'int64))))))]
       [else (lambda (i) (mk-cpp-expr (bvadd (eval (cpp-cast (input i) output-type)) c) output-type))])]

    [(shift-right sub-expr shift round? saturate? arithmetic? output-type)
     (define input (interpret sub-expr))
     (define n (interpret shift))
     (define satF (get-sat-fn output-type))
     (define shiftF (if arithmetic? bvashr bvlshr))
     (cond
       [round?
        (lambda (i)
          (define val (input i))
          (define shift (if (eq? (expr-bw n) (expr-bw val)) n (cpp-cast n (cpp-type val))))
          (define zero (cpp-cast (int8_t (bv 0 8)) (cpp-type val)))
          (define one (cpp-cast (int8_t (bv 1 8)) (cpp-type val)))
        
          (define shr_1 (shiftF (eval val) (eval shift)))
          (define shr_2 (shiftF (eval val) (bvsub (eval shift) (eval one))))
          (define rnd (bvand shr_2 (if ((if (signed-expr? shift) bvslt bvult) (eval zero) (eval shift)) (eval one) (eval zero))))
          (define res (bvadd shr_1 rnd))
          (define saturated_v (if saturate? (satF (mk-cpp-expr res (cpp-type val))) (mk-cpp-expr res output-type)))
          saturated_v)]
       [else
        (lambda(i)
          (define v (input i))
          (define shifted_v (shiftF (eval v) (eval (cpp-cast n (cpp-type v)))))
          (define saturated_v (if saturate? (satF (mk-cpp-expr shifted_v (cpp-type v))) (cpp-cast (mk-cpp-expr shifted_v (cpp-type v)) output-type)))
          saturated_v)])]

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

    [(vs-divide sub-expr sca-val output-type)
     (define input (interpret sub-expr))
     (define den (interpret sca-val))
     (lambda (i)
       (define v (input i))
       (cond
         [(int8_t? v) (euclidean-div v den output-type)]
         [(int16_t? v) (euclidean-div v den output-type)]
         [(int32_t? v) (euclidean-div v den output-type)]
         [(uint8_t? v) (euclidean-div v den output-type)]
         [(uint16_t? v) (euclidean-div v den output-type)]
         [(uint32_t? v) (euclidean-div v den output-type)]))]
    
    [(average sub-expr round? output-type)
     (define input (interpret sub-expr))
     (lambda (i)
       (cond
         [(eq? output-type 'int8)
          (define sum (bvadd (eval (cpp-cast (input (* i 2)) 'int16)) (eval (cpp-cast (input (+ (* i 2) 1)) 'int16))))
          (define rounded (if round? (bvadd sum (bv 1 16)) sum))
          (cpp-cast (int16_t (bvashr rounded (bv 1 16))) 'int8)]
         [(eq? output-type 'int16)
          (define sum (bvadd (eval (cpp-cast (input (* i 2)) 'int32)) (eval (cpp-cast (input (+ (* i 2) 1)) 'int32))))
          (define rounded (if round? (bvadd sum (bv 1 32)) sum))
          (cpp-cast (int32_t (bvashr rounded (bv 1 32))) 'int16)]
         [(eq? output-type 'int32)
          (define sum (bvadd (eval (cpp-cast (input (* i 2)) 'int64)) (eval (cpp-cast (input (+ (* i 2) 1)) 'int64))))
          (define rounded (if round? (bvadd sum (bv 1 64)) sum))
          (cpp-cast (int64_t (bvashr rounded (bv 1 64))) 'int32)]
         [(eq? output-type 'uint8)
          (define sum (bvadd (eval (cpp-cast (input (* i 2)) 'uint16)) (eval (cpp-cast (input (+ (* i 2) 1)) 'uint16))))
          (define rounded (if round? (bvadd sum (bv 1 16)) sum))
          (cpp-cast (uint16_t (bvlshr rounded (bv 1 16))) 'uint8)]
         [(eq? output-type 'uint16)
          (define sum (bvadd (eval (cpp-cast (input (* i 2)) 'uint32)) (eval (cpp-cast (input (+ (* i 2) 1)) 'uint32))))
          (define rounded (if round? (bvadd sum (bv 1 32)) sum))
          (cpp-cast (uint32_t (bvashr rounded (bv 1 32))) 'uint16)]
         [(eq? output-type 'uint32)
          (define sum (bvadd (eval (cpp-cast (input (* i 2)) 'uint64)) (eval (cpp-cast (input (+ (* i 2) 1)) 'uint64))))
          (define rounded (if round? (bvadd sum (bv 1 64)) sum))
          (cpp-cast (uint64_t (bvashr rounded (bv 1 64))) 'uint32)]))]

    [(modulo-by-const sub-expr const-val)
     (define input (interpret sub-expr))
     (define den (interpret const-val))
     (lambda (i)
       (define v (input i))
       (cond
         [(int8_t? v) (mk-cpp-expr (bvsrem (eval v) (eval den)) 'int8)]
         [(int16_t? v) (mk-cpp-expr (bvsrem (eval v) (eval den)) 'int16)]
         [(int32_t? v) (mk-cpp-expr (bvsrem (eval v) (eval den)) 'int32)]
         [(uint8_t? v) (mk-cpp-expr (bvurem (eval v) (eval den)) 'uint8)]
         [(uint16_t? v) (mk-cpp-expr (bvurem (eval v) (eval den)) 'uint16)]
         [(uint32_t? v) (mk-cpp-expr (bvurem (eval v) (eval den)) 'uint32)]))]
    
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
                  [((uint32_t v0) (uint32_t v1)) (minu32 lhs rhs)]
                  [((int64_t v0) (int64_t v1)) (min64 lhs rhs)]
                  [((uint64_t v0) (uint64_t v1)) (minu64 lhs rhs)]))]

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
                  [((uint32_t v0) (uint32_t v1)) (maxu32 lhs rhs)]
                  [((int64_t v0) (int64_t v1)) (max64 lhs rhs)]
                  [((uint64_t v0) (uint64_t v1)) (maxu64 lhs rhs)]))]

    [(saturate sub-expr round? output-type)
     (define input (interpret sub-expr))
     (lambda (i)
       (define v (input i))
       (define satF (get-sat-fn output-type))
       (define shiftF (if (signed-expr? v) bvashr bvlshr))
       (define shift (cond [(eq? (expr-bw v) 16) (bv 8 16)] [(eq? (expr-bw v) 32) (bv 16 32)] [(eq? (expr-bw v) 64) (bv 32 64)]))
       (define offset (cond [(eq? (expr-bw v) 16) (bv 128 16)] [(eq? (expr-bw v) 32) (bv 32768 32)] [(eq? (expr-bw v) 64) (bv 2147483648 64)]))
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

    [(select sub-expr0 sub-expr1 sub-expr2)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (define input2 (interpret sub-expr2))
     (lambda (i) (if (eval (input0 i)) (input1 i) (input2 i)))]
    
    [(less-than sub-expr0 sub-expr1)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs (input1 i))
       (destruct* (lhs rhs)
         [((uint8_t v0) (uint8_t v1)) (uint1_t (bvult v0 v1))]
         [((uint16_t v0) (uint16_t v1)) (uint1_t (bvult v0 v1))]
         [((uint32_t v0) (uint32_t v1)) (uint1_t (bvult v0 v1))]
         [((int8_t v0) (int8_t v1)) (uint1_t (bvslt v0 v1))]
         [((int16_t v0) (int16_t v1)) (uint1_t (bvslt v0 v1))]
         [((int32_t v0) (int32_t v1)) (uint1_t (bvslt v0 v1))]))]

    [(less-than-eq sub-expr0 sub-expr1)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs (input1 i))
       (destruct* (lhs rhs)
         [((uint8_t v0) (uint8_t v1)) (uint1_t (bvule v0 v1))]
         [((uint16_t v0) (uint16_t v1)) (uint1_t (bvule v0 v1))]
         [((uint32_t v0) (uint32_t v1)) (uint1_t (bvule v0 v1))]
         [((int8_t v0) (int8_t v1)) (uint1_t (bvsle v0 v1))]
         [((int16_t v0) (int16_t v1)) (uint1_t (bvsle v0 v1))]
         [((int32_t v0) (int32_t v1)) (uint1_t (bvsle v0 v1))]))]

    [(bitwise-and sub-expr0 sub-expr1)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs (input1 i))
       (destruct* (lhs rhs)
         [((uint8_t v0) (uint8_t v1)) (uint8_t (bvand v0 v1))]
         [((uint16_t v0) (uint16_t v1)) (uint16_t (bvand v0 v1))]
         [((uint32_t v0) (uint32_t v1)) (uint32_t (bvand v0 v1))]
         [((uint64_t v0) (uint64_t v1)) (uint64_t (bvand v0 v1))]
         [((int8_t v0) (int8_t v1)) (int8_t (bvand v0 v1))]
         [((int16_t v0) (int16_t v1)) (int16_t (bvand v0 v1))]
         [((int32_t v0) (int32_t v1)) (int32_t (bvand v0 v1))]
         [((int64_t v0) (int64_t v1)) (int64_t (bvand v0 v1))]))]
    
    [(vs-frac-mpy sub-expr sca round?)
     (define input (interpret sub-expr))
     (define multiplier (interpret sca))
     (lambda (i)
       (define v1 (cpp-cast (input i) 'int64))
       (define v2 (cpp-cast multiplier 'int64))
       (define mpy (bvmul (eval v1) (eval v2)))
       (define rnd (if round? (bvadd mpy (bv #x40000000 64)) mpy))
       (define shift (bvashr rnd (bv 31 64)))
       (sat32 (int64_t shift)))]

    [(vs-mpy-hh sub-expr sca round?)
     (define input (interpret sub-expr))
     (define multiplier (interpret sca))
     (lambda (i)
       (define v1 (cpp-cast (input i) 'int64))
       (define v2 (cpp-cast multiplier 'int64))
       (define mpy (bvmul (eval v1) (eval v2)))
       (define dbl (bvshl mpy (bv 1 64)))
       (define rnd (if round? (bvadd dbl (bv #x8000 64)) dbl))
       (define res (sat32 (int64_t rnd)))
       (int16_t (extract 31 16 (eval res))))]

    [(vv-mpy-hh-rnd sub-expr)
     (define input (interpret sub-expr))
     (lambda (i)
       (define v1 (cpp-cast (input (* i 2)) 'int64))
       (define v2 (cpp-cast (input (+ (* i 2) 1)) 'int64))
       (define mpy (bvmul (eval v1) (eval v2)))
       (define dbl (bvshl mpy (bv 1 64)))
       (define rnd (bvadd dbl (bv #x8000 64)))
       (define res (sat32 (int64_t rnd)))
       (int16_t (extract 31 16 (eval res))))]

    [(vs-shift-left sub-expr sca)
     (define input0 (interpret sub-expr))
     (define input1 (interpret sca))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs input1)
       (destruct* (lhs rhs)
         [((uint8_t v0) (uint8_t v1)) (uint8_t (bvshl v0 v1))]
         [((uint16_t v0) (uint16_t v1)) (uint16_t (bvshl v0 v1))]
         [((uint32_t v0) (uint32_t v1)) (uint32_t (bvshl v0 v1))]
         [((int8_t v0) (int8_t v1)) (int8_t (bvshl v0 v1))]
         [((int16_t v0) (int16_t v1)) (int16_t (bvshl v0 v1))]
         [((int32_t v0) (int32_t v1)) (int32_t (bvshl v0 v1))]))]
    
    [(vv-shift-left sub-expr0 sub-expr1)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs (input1 i))
       (destruct* (lhs rhs)
         [((uint8_t v0) (uint8_t v1)) (uint8_t (bvshl v0 v1))]
         [((uint16_t v0) (uint16_t v1)) (uint16_t (bvshl v0 v1))]
         [((uint32_t v0) (uint32_t v1)) (uint32_t (bvshl v0 v1))]
         [((int8_t v0) (int8_t v1)) (int8_t (bvshl v0 v1))]
         [((int16_t v0) (int16_t v1)) (int16_t (bvshl v0 v1))]
         [((int32_t v0) (int32_t v1)) (int32_t (bvshl v0 v1))]))]
    
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
                             (eval (cpp-cast (input (* i 2)) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 2) 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type))))]
            [(eq? width 3) (bvadd
                            (bvmul
                             (eval (cpp-cast (input (* i 3)) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 3) 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 3) 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type))))]
            [(eq? width 4) (bvadd
                            (bvmul
                             (eval (cpp-cast (input (* i 4)) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 4) 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 4) 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 4) 3)) output-type))
                             (eval (cpp-cast (list-ref weights 3) output-type))))]
            [(eq? width 5) (bvadd
                            (bvmul
                             (eval (cpp-cast (input (* i 5)) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 5) 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 5) 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 5) 3)) output-type))
                             (eval (cpp-cast (list-ref weights 3) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 5) 4)) output-type))
                             (eval (cpp-cast (list-ref weights 4) output-type))))]
            [(eq? width 6) (bvadd
                            (bvmul
                             (eval (cpp-cast (input (* i 6)) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 6) 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 6) 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 6) 3)) output-type))
                             (eval (cpp-cast (list-ref weights 3) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 6) 4)) output-type))
                             (eval (cpp-cast (list-ref weights 4) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 6) 5)) output-type))
                             (eval (cpp-cast (list-ref weights 5) output-type))))]
            [(eq? width 7) (bvadd
                            (bvmul
                             (eval (cpp-cast (input (* i 7)) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 7) 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 7) 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 7) 3)) output-type))
                             (eval (cpp-cast (list-ref weights 3) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 7) 4)) output-type))
                             (eval (cpp-cast (list-ref weights 4) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 7) 5)) output-type))
                             (eval (cpp-cast (list-ref weights 5) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 7) 6)) output-type))
                             (eval (cpp-cast (list-ref weights 6) output-type))))]
            [(eq? width 8) (bvadd
                            (bvmul
                             (eval (cpp-cast (input (* i 8)) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 8) 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 8) 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 8) 3)) output-type))
                             (eval (cpp-cast (list-ref weights 3) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 8) 4)) output-type))
                             (eval (cpp-cast (list-ref weights 4) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 8) 5)) output-type))
                             (eval (cpp-cast (list-ref weights 5) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 8) 6)) output-type))
                             (eval (cpp-cast (list-ref weights 6) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 8) 7)) output-type))
                             (eval (cpp-cast (list-ref weights 7) output-type))))]
            [(eq? width 9) (bvadd
                            (bvmul
                             (eval (cpp-cast (input (* i 9)) output-type))
                             (eval (cpp-cast (list-ref weights 0) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 9) 1)) output-type))
                             (eval (cpp-cast (list-ref weights 1) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 9) 2)) output-type))
                             (eval (cpp-cast (list-ref weights 2) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 9) 3)) output-type))
                             (eval (cpp-cast (list-ref weights 3) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 9) 4)) output-type))
                             (eval (cpp-cast (list-ref weights 4) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 9) 5)) output-type))
                             (eval (cpp-cast (list-ref weights 5) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 9) 6)) output-type))
                             (eval (cpp-cast (list-ref weights 6) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 9) 7)) output-type))
                             (eval (cpp-cast (list-ref weights 7) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 9) 8)) output-type))
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

    [(vv-mpy-add sub-expr width output-type saturate?)
     (define input (interpret sub-expr))
     (lambda (i)
       (define out
         (mk-cpp-expr
          (cond
            [(eq? width 1) (bvmul
                            (eval (cpp-cast (input (* i 2)) output-type))
                            (eval (cpp-cast (input (+ (* i 2) 1)) output-type)))]
            [(eq? width 2) (bvadd
                            (bvmul
                             (eval (cpp-cast (input (* i 4)) output-type))
                             (eval (cpp-cast (input (+ (* i 4) 1)) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 4) 2)) output-type))
                             (eval (cpp-cast (input (+ (* i 4) 3)) output-type))))]
            [(eq? width 3) (bvadd
                            (bvmul
                             (eval (cpp-cast (input (* i 6)) output-type))
                             (eval (cpp-cast (input (+ (* i 6) 1)) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 6) 2)) output-type))
                             (eval (cpp-cast (input (+ (* i 6) 3)) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 6) 4)) output-type))
                             (eval (cpp-cast (input (+ (* i 6) 5)) output-type))))]
            [(eq? width 4) (bvadd
                            (bvmul
                             (eval (cpp-cast (input (* i 8)) output-type))
                             (eval (cpp-cast (input (+ (* i 8) 1)) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 8) 2)) output-type))
                             (eval (cpp-cast (input (+ (* i 8) 3)) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 8) 4)) output-type))
                             (eval (cpp-cast (input (+ (* i 8) 5)) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 8) 6)) output-type))
                             (eval (cpp-cast (input (+ (* i 8) 7)) output-type))))]
            [(eq? width 5) (bvadd
                            (bvmul
                             (eval (cpp-cast (input (* i 10)) output-type))
                             (eval (cpp-cast (input (+ (* i 10) 1)) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 10) 2)) output-type))
                             (eval (cpp-cast (input (+ (* i 10) 3)) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 10) 4)) output-type))
                             (eval (cpp-cast (input (+ (* i 10) 5)) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 10) 6)) output-type))
                             (eval (cpp-cast (input (+ (* i 10) 7)) output-type)))
                            (bvmul
                             (eval (cpp-cast (input (+ (* i 10) 8)) output-type))
                             (eval (cpp-cast (input (+ (* i 10) 9)) output-type))))])
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
    [(eq? type 'int64) sat64]
    [(eq? type 'uint8) satu8]
    [(eq? type 'uint16) satu16]
    [(eq? type 'uint32) satu32]
    [(eq? type 'uint64) satu64]))

(define (get-subexprs ir-expr)
  (destruct ir-expr
    [(load-data live-data gather-tbl) '()]
    [(broadcast value) '()]
    [(build-vec base stride len) '()]

    [(combine sub-expr0 sub-expr1 read-tbl) (list sub-expr0 sub-expr1)]
    
    [(cast sub-expr type) (list sub-expr)]

    [(vs-mpy-add sub-expr weight-matrix output-type saturate?) (list sub-expr)]
    [(vs-mpy-add-acc acc-expr sub-expr weight-matrix output-type saturate?) (list acc-expr sub-expr)]
    [(vv-mpy-add sub-expr width output-type saturate?) (list sub-expr)]

    [(vs-mpy-hh sub-expr sca round?) (list sub-expr)]
    [(vv-mpy-hh-rnd sub-expr) (list sub-expr)]
    
    [(vs-frac-mpy sub-expr sca round?) (list sub-expr)]

    [(vs-shift-left sub-expr sca) (list sub-expr)]
    [(vv-shift-left sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]

    [(add-const sub-expr const-val output-type saturate?) (list sub-expr)]
    
    [(shift-right sub-expr const-val round? saturate? arithmetic? output-type) (list sub-expr)]
    [(divide-by-const sub-expr const-val) (list sub-expr)]
    [(vs-divide sub-expr sca-val output-type) (list sub-expr)]
    [(average sub-expr round? output-type) (list sub-expr)]
    
    [(modulo-by-const sub-expr const-val) (list sub-expr)]
    
    [(maximum sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    [(minimum sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    [(saturate sub-expr round? output-type) (list sub-expr)]
    
    [(abs-diff sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    
    [(select sub-expr0 sub-expr1 sub-expr2) (list sub-expr0 sub-expr1 sub-expr2)]
    [(less-than sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    [(less-than-eq sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]

    [(bitwise-and sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    
    [_ (error "NYI: Extracing sub-expression for IR Expr:" ir-expr)]))

(define (instr-count ir-expr)
  (destruct ir-expr
    [(load-data live-data gather-tbl) 1]
    [(broadcast value) 1]
    [(build-vec base stride len) 1]

    [(combine sub-expr0 sub-expr1 read-tbl) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    
    [(cast sub-expr type) (+ (instr-count sub-expr) 1)]

    [(vs-mpy-add sub-expr weight-matrix output-type saturate?) (+ (instr-count sub-expr) 1)]
    [(vs-mpy-add-acc acc-expr sub-expr weight-matrix output-type saturate?) (+ (instr-count acc-expr) (instr-count sub-expr) 1)]
    [(vv-mpy-add sub-expr width output-type saturate?) (+ (instr-count sub-expr) 1)]

    [(vs-mpy-hh sub-expr sca round?) (+ (instr-count sub-expr) 1)]
    [(vv-mpy-hh-rnd sub-expr) (+ (instr-count sub-expr) 1)]
    
    [(vs-frac-mpy sub-expr sca round?) (+ (instr-count sub-expr) 1)]

    [(vs-shift-left sub-expr sca) (+ (instr-count sub-expr) 1)]
    [(vv-shift-left sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]

    [(add-const sub-expr const-val output-type saturate?) (+ (instr-count sub-expr) 1)]
    
    [(shift-right sub-expr const-val round? saturate? arithmetic? output-type) (+ (instr-count sub-expr) 1)]
    [(divide-by-const sub-expr const-val) (+ (instr-count sub-expr) 1)]
    [(vs-divide sub-expr scalar-val output-type) (+ (instr-count sub-expr) 1)]
    [(average sub-expr round? output-type) (+ (instr-count sub-expr) 1)]
    
    [(modulo-by-const sub-expr const-val) (+ (instr-count sub-expr) 1)]
    
    [(maximum sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    [(minimum sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    [(saturate sub-expr round? output-type) (+ (instr-count sub-expr) 1)]
    
    [(abs-diff sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    
    [(select sub-expr0 sub-expr1 sub-expr2) (+ (instr-count sub-expr0) (instr-count sub-expr1) (instr-count sub-expr2) 1)]
    [(less-than sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    [(less-than-eq sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]

    [(bitwise-and sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    
    [_ (error "NYI: Extracing sub-expression for IR Expr:" ir-expr)]))