#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/destruct
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/hvx/ir/instructions)

(provide
 (rename-out [visit hvx-ir:visit])
 (rename-out [instr-count hvx-ir:instr-count])
 (rename-out [get-subexprs hvx-ir:get-subexprs])
 (rename-out [set-cn hvx-ir:set-cn])
 (rename-out [elem-type hvx-ir:elem-type])
 (rename-out [elem-type^ hvx-ir:elem-type^])
 (rename-out [interpret hvx-ir:interpret]))

(define curr-cn 0)
(define (set-cn v) (set! curr-cn v))

(define (elem-type expr)
  (define e (interpret expr))
  (define a (cpp:type (e 0)))
  (define b (cpp:type (e 1)))
  (if (< (cpp:type-bw a) (cpp:type-bw b)) a b))

(define (elem-type^ expr)
  (define e (interpret expr))
  (define a (cpp:type (e 0)))
  (define b (cpp:type (e 1)))
  (if (< (cpp:type-bw a) (cpp:type-bw b)) b a))

(define (interpret p)
  (destruct p

    ;;;;;;;;;;;;;;;;;;;; Scalar Halide Expressions ;;;;;;;;;;;;;;;;;;;;;

    [(var-lookup var val) (interpret val)]
            
    [(sca-cast sca type) (cpp:cast (interpret sca) type)]
            
    [(sca-add v1 v2) (halide:do-add (interpret v1) (interpret v2))]
    [(sca-sub v1 v2) (halide:do-sub (interpret v1) (interpret v2))]
    [(sca-mul v1 v2) (halide:do-mul (interpret v1) (interpret v2))]
    [(sca-div v1 v2) (halide:do-div (interpret v1) (interpret v2))]
    [(sca-mod v1 v2) (halide:do-mod (interpret v1) (interpret v2))]
    [(sca-min v1 v2) (halide:do-min (interpret v1) (interpret v2))]
    [(sca-max v1 v2) (halide:do-max (interpret v1) (interpret v2))]

    [(sca-if v1 v2 v3) (halide:do-if (interpret v1) (interpret v2) (interpret v3))]
    [(sca-eq v1 v2) (halide:do-eq (interpret v1) (interpret v2))]
    [(sca-lt v1 v2) (halide:do-lt (interpret v1) (interpret v2))]
    [(sca-le v1 v2) (halide:do-le (interpret v1) (interpret v2))]

    [(sca-abs v1) (halide:do-abs (interpret v1))]
    [(sca-absd v1 v2) (halide:do-absd (interpret v1) (interpret v2))]
    [(sca-shl v1 v2) (halide:do-shl (interpret v1) (interpret v2))]
    [(sca-shr v1 v2) (halide:do-shr (interpret v1) (interpret v2))]
    [(sca-clz v1) (halide:do-clz (interpret v1))]

    [(sca-bwand v1 v2) (halide:do-bwand (interpret v1) (interpret v2))]

    [(load-sca buf idx) (halide:buffer-ref (interpret buf) (interpret idx))]

    ;;;;;;;;;;;;;;
            
    [(abstr-ir-expr orig-expr abstr-vals) (lambda (i) (halide:buffer-ref abstr-vals i))]
            
    [(broadcast value) (lambda (i) (interpret value))]

    [(build-vec base stride len)
     (define b (interpret base))
     (define s (interpret stride))
     (lambda (i)
       (mk-cpp-expr
        (bvadd
         (cpp:eval b)
         (bvmul (cpp:eval s) (integer->bitvector i (bitvector (cpp:expr-bw s)))))
        (cpp:type b)))]
            
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
     (lambda (i) (cpp:cast (input i) type))]

    [(add-const sub-expr const-val output-type saturate?)
     (define input (interpret sub-expr))
     (define c (cpp:eval (cpp:cast (interpret const-val) output-type)))
     (define satF (get-sat-fn output-type))
     (cond
       [saturate? (lambda (i) (satF (int64_t (bvadd (cpp:eval (cpp:cast (input i) 'int64)) (cpp:eval (cpp:cast (interpret const-val) 'int64))))))]
       [else (lambda (i) (mk-cpp-expr (bvadd (cpp:eval (cpp:cast (input i) output-type)) c) output-type))])]

    [(vs-shift-right sub-expr shift round? saturate? arithmetic? output-type)
     (define input (interpret sub-expr))
     (define n (interpret shift))
     (define satF (get-sat-fn output-type))
     (define shiftF (if arithmetic? bvashr bvlshr))
     (cond
       [round?
        (lambda (i)
          (define val (input i))
          (define shift (if (eq? (cpp:expr-bw n) (cpp:expr-bw val)) n (cpp:cast n (cpp:type val))))
          (define zero (cpp:cast (int8_t (bv 0 8)) (cpp:type val)))
          (define one (cpp:cast (int8_t (bv 1 8)) (cpp:type val)))
        
          (define shr_1 (shiftF (cpp:eval val) (cpp:eval shift)))
          (define shr_2 (shiftF (cpp:eval val) (bvsub (cpp:eval shift) (cpp:eval one))))
          (define rnd (bvand shr_2 (if ((if (cpp:signed-expr? shift) bvslt bvult) (cpp:eval zero) (cpp:eval shift)) (cpp:eval one) (cpp:eval zero))))
          (define res (bvadd shr_1 rnd))
          (define saturated_v (if saturate? (satF (mk-cpp-expr res (cpp:type val))) (mk-cpp-expr res output-type)))
          saturated_v)]
       [else
        (lambda(i)
          (define v (input i))
          (define shifted_v (shiftF (cpp:eval v) (cpp:eval (cpp:cast n (cpp:type v)))))
          (define saturated_v (if saturate? (satF (mk-cpp-expr shifted_v (cpp:type v))) (cpp:cast (mk-cpp-expr shifted_v (cpp:type v)) output-type)))
          saturated_v)])]

    [(vv-shift-right sub-expr0 sub-expr1 round? arithmetic?)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (define shiftF (if arithmetic? bvashr bvlshr))
     (cond
       [round?
        (lambda(i)
          (define val (input0 i))
          (define shift (input1 i))
          (define zero (cpp:cast (int8_t (bv 0 8)) (cpp:type val)))
          (define one (cpp:cast (int8_t (bv 1 8)) (cpp:type val)))

          (define shr_1 (shiftF (cpp:eval val) (cpp:eval shift)))
          (define shr_2 (shiftF (cpp:eval val) (bvsub (cpp:eval shift) (cpp:eval one))))
          (define rnd (bvand shr_2 (if ((if (cpp:signed-expr? shift) bvslt bvult) (cpp:eval zero) (cpp:eval shift)) (cpp:eval one) (cpp:eval zero))))
          (define res (bvadd shr_1 rnd))
          (mk-cpp-expr res (cpp:type val)))]
       [else
        (lambda(i)
          (define v0 (input0 i))
          (define v1 (input1 i))
          (mk-cpp-expr (shiftF (cpp:eval v0) (cpp:eval v1)) (cpp:type v0)))])]

    [(divide-by-const sub-expr const-val)
     (define input (interpret sub-expr))
     (define den (interpret const-val))
     (lambda (i)
       (define v (input i))
       (cond
         [(int8_t? v) (mk-cpp-expr (bvsdiv (cpp:eval v) (cpp:eval den)) 'int8)]
         [(int16_t? v) (mk-cpp-expr (bvsdiv (cpp:eval v) (cpp:eval den)) 'int16)]
         [(uint8_t? v) (mk-cpp-expr (bvudiv (cpp:eval v) (cpp:eval den)) 'uint8)]
         [(uint16_t? v) (mk-cpp-expr (bvudiv (cpp:eval v) (cpp:eval den)) 'uint16)]))]

    [(vs-divide sub-expr sca-val output-type)
     (define input (interpret sub-expr))
     (define den (interpret sca-val))
     (lambda (i)
       (define v (input i))
       (cond
         [(int8_t? v) (cpp:euclidean-div v den output-type)]
         [(int16_t? v) (cpp:euclidean-div v den output-type)]
         [(int32_t? v) (cpp:euclidean-div v den output-type)]
         [(uint8_t? v) (cpp:euclidean-div v den output-type)]
         [(uint16_t? v) (cpp:euclidean-div v den output-type)]
         [(uint32_t? v) (cpp:euclidean-div v den output-type)]))]
    
    [(average sub-expr round? output-type)
     (define input (interpret sub-expr))
     (lambda (i)
       (cond
         [(eq? output-type 'int8)
          (define sum (bvadd (cpp:eval (cpp:cast (input (* i 2)) 'int16)) (cpp:eval (cpp:cast (input (+ (* i 2) 1)) 'int16))))
          (define rounded (if round? (bvadd sum (bv 1 16)) sum))
          (cpp:cast (int16_t (bvashr rounded (bv 1 16))) 'int8)]
         [(eq? output-type 'int16)
          (define sum (bvadd (cpp:eval (cpp:cast (input (* i 2)) 'int32)) (cpp:eval (cpp:cast (input (+ (* i 2) 1)) 'int32))))
          (define rounded (if round? (bvadd sum (bv 1 32)) sum))
          (cpp:cast (int32_t (bvashr rounded (bv 1 32))) 'int16)]
         [(eq? output-type 'int32)
          (define sum (bvadd (cpp:eval (cpp:cast (input (* i 2)) 'int64)) (cpp:eval (cpp:cast (input (+ (* i 2) 1)) 'int64))))
          (define rounded (if round? (bvadd sum (bv 1 64)) sum))
          (cpp:cast (int64_t (bvashr rounded (bv 1 64))) 'int32)]
         [(eq? output-type 'uint8)
          (define sum (bvadd (cpp:eval (cpp:cast (input (* i 2)) 'uint16)) (cpp:eval (cpp:cast (input (+ (* i 2) 1)) 'uint16))))
          (define rounded (if round? (bvadd sum (bv 1 16)) sum))
          (cpp:cast (uint16_t (bvlshr rounded (bv 1 16))) 'uint8)]
         [(eq? output-type 'uint16)
          (define sum (bvadd (cpp:eval (cpp:cast (input (* i 2)) 'uint32)) (cpp:eval (cpp:cast (input (+ (* i 2) 1)) 'uint32))))
          (define rounded (if round? (bvadd sum (bv 1 32)) sum))
          (cpp:cast (uint32_t (bvashr rounded (bv 1 32))) 'uint16)]
         [(eq? output-type 'uint32)
          (define sum (bvadd (cpp:eval (cpp:cast (input (* i 2)) 'uint64)) (cpp:eval (cpp:cast (input (+ (* i 2) 1)) 'uint64))))
          (define rounded (if round? (bvadd sum (bv 1 64)) sum))
          (cpp:cast (uint64_t (bvashr rounded (bv 1 64))) 'uint32)]))]

    [(modulo-by-const sub-expr const-val)
     (define input (interpret sub-expr))
     (define den (interpret const-val))
     (lambda (i)
       (define v (input i))
       (cond
         [(int8_t? v) (mk-cpp-expr (bvsrem (cpp:eval v) (cpp:eval den)) 'int8)]
         [(int16_t? v) (mk-cpp-expr (bvsrem (cpp:eval v) (cpp:eval den)) 'int16)]
         [(int32_t? v) (mk-cpp-expr (bvsrem (cpp:eval v) (cpp:eval den)) 'int32)]
         [(uint8_t? v) (mk-cpp-expr (bvurem (cpp:eval v) (cpp:eval den)) 'uint8)]
         [(uint16_t? v) (mk-cpp-expr (bvurem (cpp:eval v) (cpp:eval den)) 'uint16)]
         [(uint32_t? v) (mk-cpp-expr (bvurem (cpp:eval v) (cpp:eval den)) 'uint32)]))]
    
    [(minimum sub-expr0 sub-expr1)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs (input1 i))
       (destruct* (lhs rhs)
                  [((int8_t v0) (int8_t v1)) (cpp:min8 lhs rhs)]
                  [((uint8_t v0) (uint8_t v1)) (cpp:minu8 lhs rhs)]
                  [((int16_t v0) (int16_t v1)) (cpp:min16 lhs rhs)]
                  [((uint16_t v0) (uint16_t v1)) (cpp:minu16 lhs rhs)]
                  [((int32_t v0) (int32_t v1)) (cpp:min32 lhs rhs)]
                  [((uint32_t v0) (uint32_t v1)) (cpp:minu32 lhs rhs)]
                  [((int64_t v0) (int64_t v1)) (cpp:min64 lhs rhs)]
                  [((uint64_t v0) (uint64_t v1)) (cpp:minu64 lhs rhs)]))]

    [(maximum sub-expr0 sub-expr1)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs (input1 i))
       (destruct* (lhs rhs)
                  [((int8_t v0) (int8_t v1)) (cpp:max8 lhs rhs)]
                  [((uint8_t v0) (uint8_t v1)) (cpp:maxu8 lhs rhs)]
                  [((int16_t v0) (int16_t v1)) (cpp:max16 lhs rhs)]
                  [((uint16_t v0) (uint16_t v1)) (cpp:maxu16 lhs rhs)]
                  [((int32_t v0) (int32_t v1)) (cpp:max32 lhs rhs)]
                  [((uint32_t v0) (uint32_t v1)) (cpp:maxu32 lhs rhs)]
                  [((int64_t v0) (int64_t v1)) (cpp:max64 lhs rhs)]
                  [((uint64_t v0) (uint64_t v1)) (cpp:maxu64 lhs rhs)]))]

    [(saturate sub-expr round? output-type)
     (define input (interpret sub-expr))
     (lambda (i)
       (define v (input i))
       (define satF (get-sat-fn output-type))
       (define shiftF (if (cpp:signed-expr? v) bvashr bvlshr))
       (define shift (cond [(eq? (cpp:expr-bw v) 16) (bv 8 16)] [(eq? (cpp:expr-bw v) 32) (bv 16 32)] [(eq? (cpp:expr-bw v) 64) (bv 32 64)]))
       (define offset (cond [(eq? (cpp:expr-bw v) 16) (bv 128 16)] [(eq? (cpp:expr-bw v) 32) (bv 32768 32)] [(eq? (cpp:expr-bw v) 64) (bv 2147483648 64)]))
       (define rounded (if round? (shiftF (bvadd (cpp:eval v) offset) shift) (cpp:eval v)))
       (satF (mk-cpp-expr rounded (cpp:type v))))]

    [(absolute sub-expr)
     (define input (interpret sub-expr))
     (lambda (i)
       (define val (input i))
       (destruct val
         [(uint8_t v0) (uint8_t (if (bvuge v0 (bv 0 8)) v0 (bvmul v0 (bv -1 8))))]
         [(uint16_t v0) (uint16_t (if (bvuge v0 (bv 0 16)) v0 (bvmul v0 (bv -1 16))))]
         [(uint32_t v0) (uint32_t (if (bvuge v0 (bv 0 32)) v0 (bvmul v0 (bv -1 32))))]
         [(int8_t v0) (int8_t (if (bvsge v0 (bv 0 8)) v0 (bvmul v0 (bv -1 8))))]
         [(int16_t v0) (int16_t (if (bvsge v0 (bv 0 16)) v0 (bvmul v0 (bv -1 16))))]
         [(int32_t v0) (int32_t (if (bvsge v0 (bv 0 32)) v0 (bvmul v0 (bv -1 32))))]))]
    
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
         [((int8_t v0) (int8_t v1)) (uint8_t (if (bvsle v0 v1) (bvsub v1 v0) (bvsub v0 v1)))]
         [((int16_t v0) (int16_t v1)) (uint16_t (if (bvsle v0 v1) (bvsub v1 v0) (bvsub v0 v1)))]
         [((int32_t v0) (int32_t v1)) (uint32_t (if (bvsle v0 v1) (bvsub v1 v0) (bvsub v0 v1)))]))]

    [(select sub-expr0 sub-expr1 sub-expr2)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (define input2 (interpret sub-expr2))
     (lambda (i) (if (cpp:eval (input0 i)) (input1 i) (input2 i)))]
    
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

    [(is-equal sub-expr0 sub-expr1)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (lambda (i)
       (define lhs (input0 i))
       (define rhs (input1 i))
       (destruct* (lhs rhs)
         [((uint8_t v0) (uint8_t v1)) (uint1_t (bveq v0 v1))]
         [((uint16_t v0) (uint16_t v1)) (uint1_t (bveq v0 v1))]
         [((uint32_t v0) (uint32_t v1)) (uint1_t (bveq v0 v1))]
         [((int8_t v0) (int8_t v1)) (uint1_t (bveq v0 v1))]
         [((int16_t v0) (int16_t v1)) (uint1_t (bveq v0 v1))]
         [((int32_t v0) (int32_t v1)) (uint1_t (bveq v0 v1))]))]

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

    [(count-leading-zeroes sub-expr)
     (define input (interpret sub-expr))
     (lambda (i)
       (define val (input i))
       (destruct val
         [(int32_t v0) (cpp:clz32 val)]))]
    
    [(vs-frac-mpy sub-expr sca round?)
     (define input (interpret sub-expr))
     (define multiplier (interpret sca))
     (lambda (i)
       (define v1 (cpp:cast (input i) 'int64))
       (define v2 (cpp:cast multiplier 'int64))
       (define mpy (bvmul (cpp:eval v1) (cpp:eval v2)))
       (define rnd (if round? (bvadd mpy (bv #x40000000 64)) mpy))
       (define shift (bvashr rnd (bv 31 64)))
       (cpp:sat32 (int64_t shift)))]

    [(vv-frac-mpy sub-expr0 sub-expr1 round?)
     (define input0 (interpret sub-expr0))
     (define input1 (interpret sub-expr1))
     (lambda (i)
       (define v1 (cpp:cast (input0 i) 'int64))
       (define v2 (cpp:cast (input1 i) 'int64))
       (define mpy (bvmul (cpp:eval v1) (cpp:eval v2)))
       (define shr_1 (bvashr mpy (bv 31 64)))
       (define shr_2 (bvashr mpy (bv 30 64)))
       (define rnd (bvand shr_2 (bv 1 64)))
       (define res (bvadd shr_1 rnd))
       (cpp:sat32 (int64_t res)))]

    [(vs-mpy-hh sub-expr sca round?)
     (define input (interpret sub-expr))
     (define multiplier (interpret sca))
     (lambda (i)
       (define v1 (cpp:cast (input i) 'int64))
       (define v2 (cpp:cast multiplier 'int64))
       (define mpy (bvmul (cpp:eval v1) (cpp:eval v2)))
       (define dbl (bvshl mpy (bv 1 64)))
       (define rnd (if round? (bvashr (bvadd dbl (bv #x8000 64)) (bv 16 64)) dbl))
       (define res (cpp:sat32 (int64_t rnd)))
       (cpp:sat16 res))]

    [(vv-mpy-hh-rnd sub-expr)
     (define input (interpret sub-expr))
     (lambda (i)
       (define v1 (cpp:cast (input (* i 2)) 'int32))
       (define v2 (cpp:cast (input (+ (* i 2) 1)) 'int32))
       (define mpy (bvmul (cpp:eval v1) (cpp:eval v2)))
       (define prm (cpp:cast (int32_t mpy) 'int64))
       (define dbl (bvshl (cpp:eval prm) (bv 1 64)))
       (define rnd (bvadd dbl (bv #x8000 64)))
       (define res (cpp:sat32 (int64_t rnd)))
       (int16_t (extract 31 16 (cpp:eval res))))]

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
         [((uint8_t v0) (int8_t v1)) (uint8_t (bvshl v0 v1))]
         [((uint16_t v0) (int16_t v1)) (uint16_t (bvshl v0 v1))]
         [((uint32_t v0) (int32_t v1)) (uint32_t (bvshl v0 v1))]
         [((int8_t v0) (int8_t v1)) (int8_t (bvshl v0 v1))]
         [((int16_t v0) (int16_t v1)) (int16_t (bvshl v0 v1))]
         [((int32_t v0) (int32_t v1)) (int32_t (bvshl v0 v1))]
         [((int8_t v0) (uint8_t v1)) (int8_t (bvshl v0 v1))]
         [((int16_t v0) (uint16_t v1)) (int16_t (bvshl v0 v1))]
         [((int32_t v0) (uint32_t v1)) (int32_t (bvshl v0 v1))]))]
    
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
     (define interm-type (if saturate? 'int64 output-type))
     (set! weights (map interpret weights))
     (lambda (i)
       (define out
         (mk-cpp-expr
          (cond
            [(eq? width 1) (bvmul
                            (cpp:eval (cpp:cast (input i) interm-type))
                            (cpp:eval (cpp:cast (list-ref weights 0) interm-type)))]
            [(eq? width 2) (bvadd
                            (bvmul
                             (cpp:eval (cpp:cast (input (* i 2)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 0) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 2) 1)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 1) interm-type))))]
            [(eq? width 3) (bvadd
                            (bvmul
                             (cpp:eval (cpp:cast (input (* i 3)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 0) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 3) 1)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 1) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 3) 2)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 2) interm-type))))]
            [(eq? width 4) (bvadd
                            (bvmul
                             (cpp:eval (cpp:cast (input (* i 4)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 0) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 4) 1)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 1) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 4) 2)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 2) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 4) 3)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 3) interm-type))))]
            [(eq? width 5) (bvadd
                            (bvmul
                             (cpp:eval (cpp:cast (input (* i 5)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 0) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 5) 1)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 1) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 5) 2)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 2) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 5) 3)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 3) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 5) 4)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 4) interm-type))))]
            [(eq? width 6) (bvadd
                            (bvmul
                             (cpp:eval (cpp:cast (input (* i 6)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 0) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 6) 1)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 1) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 6) 2)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 2) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 6) 3)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 3) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 6) 4)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 4) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 6) 5)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 5) interm-type))))]
            [(eq? width 7) (bvadd
                            (bvmul
                             (cpp:eval (cpp:cast (input (* i 7)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 0) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 7) 1)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 1) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 7) 2)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 2) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 7) 3)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 3) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 7) 4)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 4) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 7) 5)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 5) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 7) 6)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 6) interm-type))))]
            [(eq? width 8) (bvadd
                            (bvmul
                             (cpp:eval (cpp:cast (input (* i 8)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 0) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 8) 1)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 1) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 8) 2)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 2) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 8) 3)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 3) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 8) 4)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 4) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 8) 5)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 5) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 8) 6)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 6) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 8) 7)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 7) interm-type))))]
            [(eq? width 9) (bvadd
                            (bvmul
                             (cpp:eval (cpp:cast (input (* i 9)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 0) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 9) 1)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 1) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 9) 2)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 2) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 9) 3)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 3) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 9) 4)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 4) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 9) 5)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 5) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 9) 6)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 6) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 9) 7)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 7) interm-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 9) 8)) interm-type))
                             (cpp:eval (cpp:cast (list-ref weights 8) interm-type))))])
          interm-type))
       
       (if saturate?
           (cond
             [(eq? output-type 'int8) (cpp:sat8 out)]
             [(eq? output-type 'int16) (cpp:sat16 out)]
             [(eq? output-type 'int32) (cpp:sat32 out)]
             [(eq? output-type 'uint8) (cpp:satu8 out)]
             [(eq? output-type 'uint16) (cpp:satu16 out)]
             [(eq? output-type 'uint32) (cpp:satu32 out)])
           out))]

    [(vv-mpy-add sub-expr width output-type saturate?)
     (define input (interpret sub-expr))
     (lambda (i)
       (define out
         (mk-cpp-expr
          (cond
            [(eq? width 1) (bvmul
                            (cpp:eval (cpp:cast (input (* i 2)) output-type))
                            (cpp:eval (cpp:cast (input (+ (* i 2) 1)) output-type)))]
            [(eq? width 2) (bvadd
                            (bvmul
                             (cpp:eval (cpp:cast (input (* i 4)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 4) 1)) output-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 4) 2)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 4) 3)) output-type))))]
            [(eq? width 3) (bvadd
                            (bvmul
                             (cpp:eval (cpp:cast (input (* i 6)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 6) 1)) output-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 6) 2)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 6) 3)) output-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 6) 4)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 6) 5)) output-type))))]
            [(eq? width 4) (bvadd
                            (bvmul
                             (cpp:eval (cpp:cast (input (* i 8)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 8) 1)) output-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 8) 2)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 8) 3)) output-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 8) 4)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 8) 5)) output-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 8) 6)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 8) 7)) output-type))))]
            [(eq? width 5) (bvadd
                            (bvmul
                             (cpp:eval (cpp:cast (input (* i 10)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 10) 1)) output-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 10) 2)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 10) 3)) output-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 10) 4)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 10) 5)) output-type)))
                            (bvmul
                             (cpp:eval (cpp:cast (input (+ (* i 10) 6)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 10) 7)) output-type)))
                            (cpp:eval (cpp:cast (input (+ (* i 10) 8)) output-type)))])
          output-type))
       
       (if saturate?
           (cond
             [(eq? output-type 'int8) (cpp:sat8 out)]
             [(eq? output-type 'int16) (cpp:sat16 out)]
             [(eq? output-type 'int32) (cpp:sat32 out)]
             [(eq? output-type 'uint8) (cpp:satu8 out)]
             [(eq? output-type 'uint16) (cpp:satu16 out)]
             [(eq? output-type 'uint32) (cpp:satu32 out)])
           out))]

    [(vv-mpy-add-acc acc-expr sub-expr width output-type saturate?)
     (define acc (interpret acc-expr))
     (define input (interpret sub-expr))
     (lambda (i)
       (define out
         (mk-cpp-expr
          (bvadd
           (cpp:eval (cpp:cast (acc i) output-type))
           (cond
             [(eq? width 1) (bvmul
                             (cpp:eval (cpp:cast (input (* i 2)) output-type))
                             (cpp:eval (cpp:cast (input (+ (* i 2) 1)) output-type)))]
             [(eq? width 2) (bvadd
                             (bvmul
                              (cpp:eval (cpp:cast (input (* i 4)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 4) 1)) output-type)))
                             (bvmul
                              (cpp:eval (cpp:cast (input (+ (* i 4) 2)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 4) 3)) output-type))))]
             [(eq? width 3) (bvadd
                             (bvmul
                              (cpp:eval (cpp:cast (input (* i 6)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 6) 1)) output-type)))
                             (bvmul
                              (cpp:eval (cpp:cast (input (+ (* i 6) 2)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 6) 3)) output-type)))
                             (bvmul
                              (cpp:eval (cpp:cast (input (+ (* i 6) 4)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 6) 5)) output-type))))]
             [(eq? width 4) (bvadd
                             (bvmul
                              (cpp:eval (cpp:cast (input (* i 8)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 8) 1)) output-type)))
                             (bvmul
                              (cpp:eval (cpp:cast (input (+ (* i 8) 2)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 8) 3)) output-type)))
                             (bvmul
                              (cpp:eval (cpp:cast (input (+ (* i 8) 4)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 8) 5)) output-type)))
                             (bvmul
                              (cpp:eval (cpp:cast (input (+ (* i 8) 6)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 8) 7)) output-type))))]
             [(eq? width 5) (bvadd
                             (bvmul
                              (cpp:eval (cpp:cast (input (* i 10)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 10) 1)) output-type)))
                             (bvmul
                              (cpp:eval (cpp:cast (input (+ (* i 10) 2)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 10) 3)) output-type)))
                             (bvmul
                              (cpp:eval (cpp:cast (input (+ (* i 10) 4)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 10) 5)) output-type)))
                             (bvmul
                              (cpp:eval (cpp:cast (input (+ (* i 10) 6)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 10) 7)) output-type)))
                             (bvmul
                              (cpp:eval (cpp:cast (input (+ (* i 10) 8)) output-type))
                              (cpp:eval (cpp:cast (input (+ (* i 10) 9)) output-type))))]))
          output-type))
       
       (if saturate?
           (cond
             [(eq? output-type 'int8) (cpp:sat8 out)]
             [(eq? output-type 'int16) (cpp:sat16 out)]
             [(eq? output-type 'int32) (cpp:sat32 out)]
             [(eq? output-type 'uint8) (cpp:satu8 out)]
             [(eq? output-type 'uint16) (cpp:satu16 out)]
             [(eq? output-type 'uint32) (cpp:satu32 out)])
           out))]

    [_ p]))

(define (get-sat-fn type)
  (cond
    [(eq? type 'int8) cpp:sat8]
    [(eq? type 'int16) cpp:sat16]
    [(eq? type 'int32) cpp:sat32]
    [(eq? type 'int64) cpp:sat64]
    [(eq? type 'uint8) cpp:satu8]
    [(eq? type 'uint16) cpp:satu16]
    [(eq? type 'uint32) cpp:satu32]
    [(eq? type 'uint64) cpp:satu64]))

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
    [(vv-mpy-add-acc acc-expr sub-expr width output-type saturate?) (list acc-expr sub-expr)]

    [(vs-mpy-hh sub-expr sca round?) (list sub-expr)]
    [(vv-mpy-hh-rnd sub-expr) (list sub-expr)]
    
    [(vs-frac-mpy sub-expr sca round?) (list sub-expr)]
    [(vv-frac-mpy sub-expr0 sub-expr1 round?) (list sub-expr0 sub-expr1)]

    [(vs-shift-left sub-expr sca) (list sub-expr)]
    [(vv-shift-left sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]

    [(add-const sub-expr const-val output-type saturate?) (list sub-expr)]
    
    [(vs-shift-right sub-expr const-val round? saturate? arithmetic? output-type) (list sub-expr)]
    [(vv-shift-right sub-expr0 sub-expr1 round? arithmetic?) (list sub-expr0 sub-expr1)]
    
    [(divide-by-const sub-expr const-val) (list sub-expr)]
    [(vs-divide sub-expr sca-val output-type) (list sub-expr)]
    [(average sub-expr round? output-type) (list sub-expr)]
    
    [(modulo-by-const sub-expr const-val) (list sub-expr)]
    
    [(maximum sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    [(minimum sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    [(saturate sub-expr round? output-type) (list sub-expr)]

    [(absolute sub-expr) (list sub-expr)]
    [(abs-diff sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    
    [(select sub-expr0 sub-expr1 sub-expr2) (list sub-expr0 sub-expr1 sub-expr2)]
    [(is-equal sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    [(less-than sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    [(less-than-eq sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]

    [(bitwise-and sub-expr0 sub-expr1) (list sub-expr0 sub-expr1)]
    [(count-leading-zeroes sub-expr) (list sub-expr)]
    
    [_ (error "NYI: Extracing sub-expression for IR Expr:" ir-expr)]))

(define (instr-count ir-expr)
  (destruct ir-expr
    [(load-data live-data gather-tbl) 0]
    [(broadcast value) 1]
    [(build-vec base stride len) 1]

    [(combine sub-expr0 sub-expr1 read-tbl) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    
    [(cast sub-expr type) (+ (instr-count sub-expr) 1)]

    [(vs-mpy-add sub-expr weight-matrix output-type saturate?) (+ (instr-count sub-expr) 1)]
    [(vs-mpy-add-acc acc-expr sub-expr weight-matrix output-type saturate?) (+ (instr-count acc-expr) (instr-count sub-expr) 1)]
    [(vv-mpy-add sub-expr width output-type saturate?) (+ (instr-count sub-expr) 1)]
    [(vv-mpy-add-acc acc-expr sub-expr width output-type saturate?) (+ (instr-count acc-expr) (instr-count sub-expr) 1)]

    [(vs-mpy-hh sub-expr sca round?) (+ (instr-count sub-expr) 1)]
    [(vv-mpy-hh-rnd sub-expr) (+ (instr-count sub-expr) 1)]
    
    [(vs-frac-mpy sub-expr sca round?) (+ (instr-count sub-expr) 1)]
    [(vv-frac-mpy sub-expr0 sub-expr1 round?) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]

    [(vs-shift-left sub-expr sca) (+ (instr-count sub-expr) 1)]
    [(vv-shift-left sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]

    [(add-const sub-expr const-val output-type saturate?) (+ (instr-count sub-expr) 1)]
    
    [(vs-shift-right sub-expr const-val round? saturate? arithmetic? output-type) (+ (instr-count sub-expr) 1)]
    [(vv-shift-right sub-expr0 sub-expr1 round? arithmetic?) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    
    [(divide-by-const sub-expr const-val) (+ (instr-count sub-expr) 1)]
    [(vs-divide sub-expr scalar-val output-type) (+ (instr-count sub-expr) 1)]
    [(average sub-expr round? output-type) (+ (instr-count sub-expr) 1)]
    
    [(modulo-by-const sub-expr const-val) (+ (instr-count sub-expr) 1)]
    
    [(maximum sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    [(minimum sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    [(saturate sub-expr round? output-type) (+ (instr-count sub-expr) 1)]

    [(absolute sub-expr) (+ (instr-count sub-expr) 1)]
    [(abs-diff sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    
    [(select sub-expr0 sub-expr1 sub-expr2) (+ (instr-count sub-expr0) (instr-count sub-expr1) (instr-count sub-expr2) 1)]
    [(is-equal sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    [(less-than sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    [(less-than-eq sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]

    [(bitwise-and sub-expr0 sub-expr1) (+ (instr-count sub-expr0) (instr-count sub-expr1) 1)]
    [(count-leading-zeroes sub-expr) (+ (instr-count sub-expr) 1)]
    
    [_ (error "NYI: Extracing sub-expression for IR Expr:" ir-expr)]))

(define (visit ir-expr handler)
  (destruct ir-expr
    [(load-data live-data gather-tbl) (handler ir-expr)]
    [(broadcast value) (handler ir-expr)]
    [(build-vec base stride len) (handler ir-expr)]

    [(combine sub-expr0 sub-expr1 read-tbl) (handler (combine (ir-node-id ir-expr) (visit sub-expr0 handler) (visit sub-expr1 handler) read-tbl))]
    
    [(cast sub-expr type) (handler (cast (ir-node-id ir-expr) (visit sub-expr handler) type))]

    [(vs-mpy-add sub-expr weight-matrix output-type saturate?) (handler (vs-mpy-add (ir-node-id ir-expr) (visit sub-expr handler) weight-matrix output-type saturate?))]
    [(vs-mpy-add-acc acc-expr sub-expr weight-matrix output-type saturate?) (handler (vs-mpy-add-acc (ir-node-id ir-expr) (visit sub-expr handler) weight-matrix output-type saturate?))]
    [(vv-mpy-add sub-expr width output-type saturate?) (handler (vv-mpy-add (ir-node-id ir-expr) (visit sub-expr handler) width output-type saturate?))]
    [(vv-mpy-add-acc acc-expr sub-expr width output-type saturate?) (handler (vv-mpy-add-acc (ir-node-id ir-expr) (visit acc-expr handler) (visit sub-expr handler) width output-type saturate?))]

    [(vs-mpy-hh sub-expr sca round?) (handler (vs-mpy-hh (ir-node-id ir-expr) (visit sub-expr handler) sca round?))]
    [(vv-mpy-hh-rnd sub-expr) (handler (vv-mpy-hh-rnd (ir-node-id ir-expr) (visit sub-expr handler)))]
    
    [(vs-frac-mpy sub-expr sca round?) (handler (vs-frac-mpy (ir-node-id ir-expr) (visit sub-expr handler) sca round?))]
    [(vv-frac-mpy sub-expr0 sub-expr1 round?) (handler (vv-frac-mpy (ir-node-id ir-expr) (visit sub-expr0 handler) (visit sub-expr1 handler) round?))]

    [(vs-shift-left sub-expr sca) (handler (vs-shift-left (ir-node-id ir-expr) (visit sub-expr handler) sca))]
    [(vv-shift-left sub-expr0 sub-expr1) (handler (vv-shift-left (ir-node-id ir-expr) (visit sub-expr0 handler) (visit sub-expr1 handler)))]

    [(add-const sub-expr const-val output-type saturate?) (handler (add-const (ir-node-id ir-expr) (visit sub-expr handler)  const-val output-type saturate?))]
    
    [(vs-shift-right sub-expr const-val round? saturate? arithmetic? output-type) (handler (vs-shift-right (ir-node-id ir-expr) (visit sub-expr handler) const-val round? saturate? arithmetic? output-type))]
    [(vv-shift-right sub-expr0 sub-expr1 round? arithmetic?) (handler (vv-shift-right (ir-node-id ir-expr) (visit sub-expr0 handler) (visit sub-expr1 handler) round? arithmetic?))]
    
    [(divide-by-const sub-expr const-val) (handler (divide-by-const (ir-node-id ir-expr) (visit sub-expr handler) const-val))]
    [(vs-divide sub-expr scalar-val output-type) (handler (vs-divide (ir-node-id ir-expr) (visit sub-expr handler) scalar-val output-type))]
    [(average sub-expr round? output-type) (handler (average (ir-node-id ir-expr) (visit sub-expr handler) round? output-type))]
    
    [(modulo-by-const sub-expr const-val) (handler (modulo-by-const (ir-node-id ir-expr) (visit sub-expr handler) const-val))]
    
    [(maximum sub-expr0 sub-expr1) (handler (maximum (ir-node-id ir-expr) (visit sub-expr0 handler) (visit sub-expr1 handler)))]
    [(minimum sub-expr0 sub-expr1) (handler (minimum (ir-node-id ir-expr) (visit sub-expr0 handler) (visit sub-expr1 handler)))]
    [(saturate sub-expr round? output-type) (handler (saturate (ir-node-id ir-expr) (visit sub-expr handler) round? output-type))]
    
    [(absolute sub-expr) (handler (absolute (ir-node-id ir-expr) (visit sub-expr handler)))]
    [(abs-diff sub-expr0 sub-expr1) (handler (abs-diff (ir-node-id ir-expr) (visit sub-expr0 handler) (visit sub-expr1 handler)))]
    
    [(select sub-expr0 sub-expr1 sub-expr2) (handler (select (ir-node-id ir-expr) (visit sub-expr0 handler) (visit sub-expr1 handler) (visit sub-expr2 handler)))]
    [(is-equal sub-expr0 sub-expr1) (handler (is-equal (ir-node-id ir-expr) (visit sub-expr0 handler) (visit sub-expr1 handler)))]
    [(less-than sub-expr0 sub-expr1) (handler (less-than (ir-node-id ir-expr) (visit sub-expr0 handler) (visit sub-expr1 handler)))]
    [(less-than-eq sub-expr0 sub-expr1) (handler (less-than-eq (ir-node-id ir-expr) (visit sub-expr0 handler) (visit sub-expr1 handler)))]

    [(bitwise-and sub-expr0 sub-expr1) (handler (bitwise-and (ir-node-id ir-expr) (visit sub-expr0 handler) (visit sub-expr1 handler)))]
    [(count-leading-zeroes sub-expr) (handler (count-leading-zeroes (ir-node-id ir-expr) (visit sub-expr handler)))]

    [(abstr-ir-expr orig-expr abstr-vals) (handler ir-expr)]
    
    [_ (error "NYI: Visitor for IR Expr:" ir-expr)]))