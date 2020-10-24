#lang rosette

(require rake/util)

(require rake/cpp/types)
(require rake/cpp/cast)

(require rake/halide/ir/types)
(require rake/halide/ir/analysis)
(require rake/halide/ir/interpreter)

(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)
(require rake/hvx/interpreter)

(define (synthesize-swizzles halide-spec hvx-expr-sketch ctx axioms)
  (display "Synthesizing Data Swizzles...\n")
  (display "=============================\n\n")
  (display "Synthesizing spec...\n")

  (define VEC_LANES (num-elems-hal halide-spec))

  ;; The visitor clones each node in the AST, converting it from a graph to a tree
  (define (iden node) node)
  (set! hvx-expr-sketch (visit-hvx hvx-expr-sketch iden))

  (define interpreted-s-expr (interpret-hvx hvx-expr-sketch))
  (define interpreted-o-expr (interpret-halide halide-spec))

  (println (v0-elem-hvx interpreted-s-expr 0))
  
  ;; Synthesize spec hash-table, one lane at a time
  (define (lane-eq? oe se lane)
    (println se)
    (cond
      [(i16x64x2? se)
       (set-curr-cn-hvx lane)
       (when (<= 0 lane 63)
         (assert (eq? (oe lane) (v0-elem-hvx se lane))))
       (when (<= 64 lane 127)
         (assert (eq? (oe lane) (v1-elem-hvx se (- lane 64)))))]
      [else
       (set-curr-cn-hvx lane)
       (assert (eq? (oe lane) (elem-hvx se lane)))]))

  (define sols (list))
  (clear-asserts!)
  (for ([axiom axioms]) (assert axiom))
  (define st (current-seconds))
  (for ([lane VEC_LANES])
    (set-curr-cn-hvx lane)
    (define sol (synthesize #:forall ctx
                            #:guarantee (lane-eq? interpreted-o-expr interpreted-s-expr lane)))
    (println sol)
    (set! sols (append sols (list sol))))
  (define runtime (- (current-seconds) st))
  (define correct? (and (eq? (vec-len halide-spec) (num-elems-hvx interpreted-s-expr)) (not (for/or ([sol sols]) (unsat? sol)))))
  
  (display (if correct? "Successfull!\n\n" "Failed.\n"))
  (debug (format "Synthesis time: ~a seconds\n\n" runtime))

  ;(println (v0-elem-hvx (interpret hvx-expr-sketch) 0))
  
  ;(println (parse-swizzle-spec buff-reads sols))
  
  correct?)

;; Types
(struct serve-vec (vec type))
(struct serve-vec-pair (v0 v1 type))
(struct ??gen-vec (vec))

;; Ops
(struct si-add (v1 v2) #:transparent)
(struct si-mul (v1 v2) #:transparent)

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
    [(serve-vec-pair v0 v1 type) (type (lambda (i) (hash-ref v0 i)) (lambda (i) (hash-ref v1 i)))]

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

    ;; Reduce (via sum) two vector-scalar multiplies. Unlike vmpa, this is reduction within the vector.
    ;; Saturates output for some input types
    [(vdmpy Vu Rt)
     (match (list (interpret Vu) (interpret Rt))
       [(list (u8x128 data) (cons (int8_t w1) (int8_t w2))) (i16x64 (lambda (i) (multiply-add (data (* i 2)) (int8_t w1) (data (+ (* i 2) 1)) (int8_t w2) 'int16)))]
       [(list (i16x64 data) (cons (int8_t w1) (int8_t w2))) (i32x32 (lambda (i) (multiply-add (data (* i 2)) (int8_t w1) (data (+ (* i 2) 1)) (int8_t w2) 'int32)))]
       [(list (i16x64 data) (cons (int16_t w1) (int16_t w2))) (i32x32 (lambda (i) (do-si-sat32 (multiply-add (data (* i 2)) (int16_t w1) (data (+ (* i 2) 1)) (int16_t w2) 'int64))))]
       [(list (i16x64 data) (cons (uint16_t w1) (uint16_t w2))) (i32x32 (lambda (i) (do-si-sat32 (multiply-add (data (* i 2)) (uint16_t w1) (data (+ (* i 2) 1)) (uint16_t w2) 'int64))))]
       [(list (i16x64x2 data-v0 data-v1) (cons (int16_t w1) (int16_t w2))) (i32x32 (lambda (i) (do-si-sat32 (multiply-add (data-v0 (+ (* i 2) 1)) (int16_t w1) (data-v1 (* i 2)) (int16_t w2) 'int64))))]
       [(list (i16x64x2 data-v0 data-v1) (cons (uint16_t w1) (uint16_t w2))) (i32x32 (lambda (i) (do-si-sat32 (multiply-add (data-v0 (+ (* i 2) 1)) (int16_t w1) (data-v1 (* i 2)) (int16_t w2) 'int64))))])]

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
         (lambda (i) (int16_t (si-add (eval (acc-v0 i)) (eval (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int16)))))
         (lambda (i) (int16_t (si-add (eval (acc-v1 i)) (eval (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int16))))))]
       [(list (i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i16x64x2
         (lambda (i) (int16_t (si-add (eval (acc-v0 i)) (eval (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int16)))))
         (lambda (i) (int16_t (si-add (eval (acc-v1 i)) (eval (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int16))))))]
       [(list (i32x32x2 acc-v0 acc-v1) (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
        (i32x32x2
         (lambda (i) (int32_t (si-add (eval (acc-v0 i)) (eval (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int32)))))
         (lambda (i) (int32_t (si-add (eval (acc-v1 i)) (eval (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int32))))))])]
    
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

(define (multiply-add lhs w1 rhs w2 outT)
  (mk-typed-expr
   (si-add
    (si-mul (eval (do-si-cast lhs outT)) (eval (do-si-cast w1 outT)))
    (si-mul (eval (do-si-cast rhs outT)) (eval (do-si-cast w2 outT))))
   outT))

(define (multiply-add-acc lhs w1 rhs w2 acc outT)
  (mk-typed-expr
   (si-add
    (eval (do-si-cast acc outT))
    (si-add
     (si-mul (eval (do-si-cast lhs outT)) (eval (do-si-cast w1 outT)))
     (si-mul (eval (do-si-cast rhs outT)) (eval (do-si-cast w2 outT)))))
   outT))

(provide synthesize-swizzles)