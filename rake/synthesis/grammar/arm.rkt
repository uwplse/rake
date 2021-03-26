#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)
(require rosette/lib/match)

(require rake/util)
(require rake/cpp/types)
(require rake/cpp/cast)
(require rake/hvx/interpreter)
(require rake/arm/ast/types)
(require rake/arm/ast/visitor)
(require rake/arm/cost-model)
(require rake/synthesis/ir)

;; Utility functions
(define (pow2? val) (if (<= (eval-to-int val) 0) #f (integer? (log (eval-to-int val) 2))))
(define (log2 val) (mk-typed-expr (bv (exact-round (log (eval-to-int val) 2)) (bw val)) (type val)))

(define int-consts (set))
(define (bool-const) (define-symbolic* b boolean?) b)
(define (int8-const) (cpp-cast (apply choose* int-consts) 'int8))
(define (uint8-const) (cpp-cast (apply choose* int-consts) 'uint8))
(define (int16-const) (cpp-cast (apply choose* int-consts) 'int16))
(define (uint16-const) (cpp-cast (apply choose* int-consts) 'uint16))

(define (enum-types t)
  (match t
    ['int8   (set 'i8x128 'i8x128x2)]
    ['int16  (set 'i16x64 'i16x64x2)]
    ['int32  (set 'i32x32 'i32x32x2)]
    ['uint8  (set 'u8x128 'u8x128x2)]
    ['uint16 (set 'u16x64 'u16x64x2)]
    ['uint32 (set 'u32x32 'u32x32x2)]))

(define (enumerate-arm-exprs ir-expr hvx-sub-expr)
  (define-values (isa weights)
    (match ir-expr
      [(convolve data kernel saturateFunc outputType)
       (values
        (if (eq? (type (elem-ir (interpret-ir data) 0)) outputType)
            (list )
            (list ))
        kernel)]
      [_ (begin (println "NYI") (exit))]))
  
  (set! int-consts (set->list (list->set (weight-matrix-vals weights))))

  (define elemT (type (elem-ir (interpret-ir ir-expr) 0)))
  
  (define candidates (time (enumerate (enum-types elemT) isa hvx-sub-expr 3 15)))

  (exit)
  
  candidates)
  
(define database (make-hash))

(define (enumerate types instr-set base-expr depth max-cost)
  (cond
    ;; Recursive base case
    [(<= depth 0)
     (define base-types
       (cond
         [(gather*? base-expr) (for/fold ([res (set)]) ([br (list-ref (gather*-buff-reads base-expr) 0)]) (set-union res (enum-types (type br))))]
         ;[else (enum-types (elem-type (interpret-hvx base-expr)))]
         ))
     (if (set-empty? (set-intersect types base-types)) (set) (set base-expr))]
    ;[(<= depth 0) (if (set-empty? (set-intersect types (set 'u8x128 'u8x128x2))) (set) (set base-expr))]
    [else
     (define key (list types instr-set base-expr depth))
     (cond
       [(hash-has-key? database key) (hash-ref database key)]
       [else
        (define candidates (set))
        (set! candidates (set-union candidates (enumerate types instr-set base-expr (sub1 depth) max-cost)))
        (for ([instr instr-set])
          (for ([sig (instr-forms instr)])
            (when (set-member? types (instr-sig-ret-val sig))
              (define arg-opts (list))
              (for ([arg (instr-sig-args sig)])
                (define opts (match arg
                               [#t (list #t)]
                               [#f (list #f)]
                               ['bool (list 'bool)]
                               ['int8 (list 'int8)]
                               ['uint8 (list 'uint8)]
                               ['int16 (list 'int16)]
                               ['uint16 (list 'uint16)]
                               ['int8x2 (list 'int8x2)]
                               ['uint8x2 (list 'uint8x2)]
                               ['int16x2 (list 'int16x2)]
                               ['uint16x2 (list 'uint16x2)]
                               [_ (set->list (enumerate (set arg) instr-set base-expr (sub1 depth) max-cost))]))
                (set! arg-opts (append arg-opts (list opts))))
              (define sig-exprs
                (list->set
                 (match (length arg-opts)
                   [1 (cartesian-product (list instr) (first arg-opts))]
                   [2 (cartesian-product (list instr) (first arg-opts) (second arg-opts))]
                   [3 (cartesian-product (list instr) (first arg-opts) (second arg-opts) (third arg-opts))]
                   [_ (error "NYI: enumeration instrs with the following number of args:" (length arg-opts))])))
              (set! sig-exprs (for/set ([sig-expr sig-exprs]) (match (length sig-expr)
                                                                [2 ((list-ref sig-expr 0) (list-ref sig-expr 1))]
                                                                [3 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2))]
                                                                [4 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2) (list-ref sig-expr 3))]
                                                                [_ (error "NYI. Sig-expr of size" (length sig-expr))])))
              (set! candidates (set-union candidates sig-exprs)))))
        ;(hash-set! database key candidates)
        ;candidates

        (define filtered-res (list->set (filter (lambda (e) (<= (basic-expr-cost e) max-cost)) (set->list candidates))))
        (hash-set! database key filtered-res)
        filtered-res
        
        ])]))

(provide enumerate-arm-exprs)