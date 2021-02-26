#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)
(require rosette/lib/match)

(require rake/util)
(require rake/cpp/types)
(require rake/cpp/cast)
(require rake/hvx/interpreter)
(require rake/hvx/ast/types)
(require rake/hvx/cost-model)
(require rake/synthesis/ir)

;; Grammar features
(define max-instr-bnd 3)
(define curr-instr-bnd 1)
(define saturation-arith? #f)
(define specialized-op-set #t)

;; Utility functions
(define (pow2? val) (if (<= (eval-to-int val) 0) #f (integer? (log (eval-to-int val) 2))))
(define (log2 val) (mk-typed-expr (bv (exact-round (log (eval-to-int val) 2)) (bw val)) (type val)))
(define (hvx-instr-limit-exceeded?) (> curr-instr-bnd max-instr-bnd))
(define (hvx-instr-bnd) curr-instr-bnd)

(define (increment-hvx-instr-bnd) (set! curr-instr-bnd (add1 curr-instr-bnd)))
(define (reset-hvx-instr-bnd) (set! curr-instr-bnd 1))

(define (init-hvx-grammar-generator [max-i-bnd 3])
  (set! max-instr-bnd max-i-bnd)
  (set! specialized-op-set #t)
  (set! saturation-arith? #f)
  (set! curr-instr-bnd 1))

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

(define (enumerate-hvx-exprs ir-expr hvx-sub-expr)
  
  (define-values (isa weights)
    (match ir-expr
      [(convolve data kernel saturateFunc outputType)
       (values
        (if (eq? (type (elem-ir (interpret-ir data) 0)) outputType)
            (list vadd vmpyi vmpyi-acc vmpye vmpye-acc vasl)
            (list vzxt vsxt vadd-w vadd-w-acc vmpy vmpy-acc vmpa vmpa-acc vdmpy vdmpy-sw vdmpy-acc vdmpy-sw-acc vtmpy vtmpy-acc))
        kernel)]
      [_ (begin (println "NYI") (exit))]))

  
  (set! int-consts (set->list (list->set (weight-matrix-vals weights))))

  (define elemT (type (elem-ir (interpret-ir ir-expr) 0)))
  
  (define candidates (enumerate (enum-types elemT) isa hvx-sub-expr 3))

  (define ranked-candidates (make-hash))
  (for ([candidate-expr candidates])
    (define candidate-expr-cost (basic-expr-cost candidate-expr))
    (when (not (hash-has-key? ranked-candidates candidate-expr-cost))
      (hash-set! ranked-candidates candidate-expr-cost (set)))
    (hash-set! ranked-candidates candidate-expr-cost (set-add (hash-ref ranked-candidates candidate-expr-cost) candidate-expr)))

;  (for ([cost (hash-keys ranked-candidates)])
;    (display (format "~a => ~a\n" cost (set-count (hash-ref ranked-candidates cost)))))
  
  ranked-candidates)

;  (make-hash (list (cons 6 (set
;
;                            (vmpyi-acc
;                             (vadd
;                              hvx-sub-expr
;                              (vmpyi-acc
;                               hvx-sub-expr
;                               hvx-sub-expr
;                               (int8_t (bv #x06 8)))
;                              #f)
;                             (vadd
;                              hvx-sub-expr
;                              hvx-sub-expr
;                              #f)
;                             (int8_t (bv #x04 8)))
;                               
;                            
;;                            (vmpyi-acc
;;                             (vmpyi-acc
;;                              (vadd hvx-sub-expr hvx-sub-expr #f)
;;                              (vadd hvx-sub-expr hvx-sub-expr #f)
;;                              (int8_t (bv #x04 8)))
;;                             hvx-sub-expr
;;                             (int8_t (bv #x06 8)))
;                            
;                            )))))

(define (enumerate types instr-set base-expr depth)
  (cond
    ;; Recursive base case
    [(<= depth 0)
     (define base-types
       (cond
         [(gather*? base-expr) (for/fold ([res (set)]) ([br (list-ref (gather*-buff-reads base-expr) 0)]) (set-union res (enum-types (type br))))]
         [else (enum-types (elem-type (interpret-hvx base-expr)))]))
     (if (set-empty? (set-intersect types base-types)) (set) (set base-expr))]
    ;[(<= depth 0) (if (set-empty? (set-intersect types (set 'u8x128 'u8x128x2))) (set) (set base-expr))]
    [else
     (define candidates (set))
     (set! candidates (set-union candidates (enumerate types instr-set base-expr (sub1 depth))))
     (for ([instr instr-set])
       (for ([sig (instr-forms instr)])
         (when (set-member? types (instr-sig-ret-val sig))
           (define arg-opts (list))
           (for ([arg (instr-sig-args sig)])
             (define opts (match arg
                            [#t (list #t)]
                            [#f (list #f)]
                            ['bool (list (bool-const))]
                            ['int8 (list (int8-const))]
                            ['uint8 (list (uint8-const))]
                            ['int16 (list (int16-const))]
                            ['uint16 (list (uint16-const))]
                            ['int8x2 (list (cons (int8-const) (int8-const)))]
                            ['uint8x2 (list (cons (uint8-const) (uint8-const)))]
                            ['int16x2 (list (cons (int16-const) (int16-const)))]
                            ['uint16x2 (list (cons (uint16-const) (uint16-const)))]
                            [_ (set->list (enumerate (set arg) instr-set base-expr (sub1 depth)))]))
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
     candidates]))

;(set-count (enumerate (set 'i16x64x2 'i16x64) (list vzxt vsxt vadd-w vadd-w-acc vmpy vmpy-acc vmpa vmpa-acc vdmpy vdmpy-sw vdmpy-acc vdmpy-sw-acc vtmpy vtmpy-acc) (gather* 1) 1))

(define (??hvx-expr out-types hvx-sub-expr weights depth)
  (if (<= depth 0)
      (begin
        (if (set-member? out-types 'uint8)
            hvx-sub-expr
            (void)))
      (begin
        (define expr-opts (list))        

        (when (set-member? out-types 'int16)

          (define u8t0 (??hvx-expr (set 'uint8) hvx-sub-expr weights (sub1 depth)))
          (define u8t1 (??hvx-expr (set 'uint8) hvx-sub-expr weights (sub1 depth)))

          (define i16t0 (??hvx-expr (set 'int16) hvx-sub-expr weights (sub1 depth)))

          (define (int-const) (cpp-cast (apply choose* (set->list (list->set (weight-matrix-vals weights)))) (choose* 'int8 'uint8)))
          
          (define c0 (int-const))
          (define c1 (int-const))
          (define Rt (cons c0 c1))
          (define Rt4 (list c0 c1 (int-const) (int-const)))

          (when (not (void? u8t0))
            (set! expr-opts
                  (append
                   expr-opts
                   (list
                    ;; Widening cast
                    (vzxt u8t0 #t)
                    (vsxt u8t0 #t)

                    ;; Addition
                    (vadd-w u8t0 u8t1)
                    
                    ;; Vec-Sca multiplies
                    (vmpy u8t0 c0)
                    (vmpa u8t0 Rt)
                    (vdmpy u8t0 Rt)
                    (vdmpy-sw u8t0 Rt)
                    (vtmpy u8t0 Rt)))))

          (when (and (not (void? u8t0)) (not (void? i16t0)))
            (set! expr-opts
                  (append
                   expr-opts
                   (list
                    (vadd-w-acc i16t0 u8t0 u8t1)
                    (vmpy-acc i16t0 u8t0 c0)     
                    (vmpa-acc i16t0 u8t0 Rt)
                    (vdmpy-acc i16t0 u8t0 Rt)
                    (vdmpy-sw-acc i16t0 u8t0 Rt)
                    (vtmpy-acc i16t0 u8t0 Rt)))))

          
          (when (not (void? i16t0))
            (set! expr-opts (append expr-opts (list i16t0)))))

        (when (set-member? out-types 'uint8)
          (define u8t0 (??hvx-expr (set 'uint8) hvx-sub-expr weights (sub1 depth)))
          (set! expr-opts (append expr-opts (list u8t0))))

        ;(display (format "Depth ~a\n" depth))
        ;(display (format "Out-types ~a\n\n" out-types))
        ;(println expr-opts)
        
        (if (> (length expr-opts) 0)
            (apply choose* expr-opts)
            (void)))))

(define (generate-hvx-grammar ir-expr sub-expr hvx-sub-expr)
  (define ??hvx-instr (match ir-expr
                        [(convolve data kernel saturateFunc outputType)
                         (if (eq? (type (elem-ir (interpret-ir sub-expr) 0)) outputType)
                             (get-hvx-conv-isa kernel)
                             (get-hvx-conv-w-isa kernel))]
                        [(arith-shift-right data n round? outputType) (get-hvx-asr-isa n round? outputType)]
                        [(cast data outType)
                         ;; Todo specialize based on type
                         ;(println (bw (elem-ir (interpret-ir sub-expr) 0)))
                         ;(println (bwT outType))
                         ;(println (type (elem-ir (interpret-ir sub-expr) 0)))
                         ;(println outType)
                         (get-hvx-upcast-isa type)]
                        [(packhi data signed?) (get-hvx-hi-isa signed?)]
                        [_ (begin (println "NYI") (exit))]))
  
  (define (??ir-expr)
    (define r0 hvx-sub-expr)
    (define r1 (??hvx-instr (list r0)))
    (define r2 (??hvx-instr (list r0 r1)))
    (define r3 (??hvx-instr (list r0 r1 r2)))
    (cond
      [(eq? curr-instr-bnd 1) (??hvx-instr (list r0))]
      [(eq? curr-instr-bnd 2) r2]
      [(eq? curr-instr-bnd 3) r3]
      [else r3]))
  ??ir-expr)

;; HVX instructions for synthesizing convolutions
(define (get-hvx-conv-isa weights)
  (define (int-const) (cpp-cast (apply choose* (set->list (list->set (weight-matrix-vals weights)))) (choose* 'int8 'uint8)))
  (define (shl-const) (cpp-cast (apply choose* (set->list (list->set (map log2 (filter pow2? (weight-matrix-vals weights)))))) 'int8))
  (define (??hvx-conv-instr registers)
    (define t0 (apply choose* registers))
    (define t1 (apply choose* registers))
    (define c0 (int-const))
    (choose*
     ;; Addition
     (vadd t0 t1 (bool-const))
     ;; Vec-Sca multiplies
     (vmpyi t0 c0)
     (vmpyi-acc t0 t1 c0)
     (vmpye t0 c0)
     (vmpye-acc t0 t1 c0)
     ;; Shift-left
     (vasl t0 (shl-const))
     ))
  ??hvx-conv-instr)

(define (get-hvx-conv-w-isa weights)
  (define (int-const) (cpp-cast (apply choose* (set->list (list->set (weight-matrix-vals weights)))) (choose* 'int8 'uint8)))
  (define (??hvx-conv-instr registers)
    (define t0 (apply choose* registers))
    (define t1 (apply choose* registers))
    (define t2 (apply choose* registers))
    (define c0 (int-const))
    (define c1 (int-const))
    (define Rt (cons c0 c1))
    (define Rt4 (list c0 c1 (int-const) (int-const)))
    (choose*
     ;; Widening cast
     (vzxt t0 (choose* #t #f))
     (vsxt t0 (choose* #t #f))

     ;; Addition
     (vadd-w t0 t1)
     (vadd-w-acc t0 t1 t2)

     ;; Vec-Sca multiplies
     (vmpy t0 c0)
     (vmpy-acc t0 t1 c0)
     
     (vmpa t1 Rt)
     (vmpa-acc t0 t1 Rt)

     (vdmpy t0 Rt)
     (vdmpy-sw t0 Rt)
     (vdmpy-acc t0 t1 Rt)
     (vdmpy-sw-acc t0 t1 Rt)

     (vtmpy t0 Rt)
     (vtmpy-acc t0 t1 Rt)

     ;(vrmpy t0 Rt4)
     ;(vrmpy-acc t0 t1 Rt4)

     ;(vrmpy-p t0 Rt4 (bool-const))
     ;(vrmpy-p-acc t0 t1 Rt4 (bool-const))
     ))
  ??hvx-conv-instr)

;; HVX instructions for arithmetic shift right
(define (get-hvx-asr-isa n round? outputType)
  (define signed? (unsignedT? outputType))
  (define i8-n (cpp-cast n 'int8))
  (define (??hvx-asr-instr registers)
    (define t0 (apply choose* registers))
    (define t1 (apply choose* registers))
    (choose*
     (vasr-n t0 t1 i8-n round? (bool-const) signed?)
     ))
  ??hvx-asr-instr)

;; HVX instructions for casting
(define (get-hvx-upcast-isa signed?)
  (define (??hvx-hi-instr registers)
    (define t0 (apply choose* registers))
    (choose*
     (vsxt t0 #t)
     (vzxt t0 #t)))
  ??hvx-hi-instr)

;; HVX instructions for extracting upper bits
(define (get-hvx-hi-isa signed?)
  (define (??hvx-hi-instr registers)
    (define t0 (apply choose* registers))
    (define t1 (apply choose* registers))
    (choose*
     (vshuffo-n t0 t1 signed?)
     (vpacko-n t0 t1 signed?)))
  ??hvx-hi-instr)

(provide hvx-instr-limit-exceeded? hvx-instr-bnd generate-hvx-grammar increment-hvx-instr-bnd reset-hvx-instr-bnd enumerate-hvx-exprs)