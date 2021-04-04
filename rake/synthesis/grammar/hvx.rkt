#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)
(require rosette/lib/match)

(require rake/util)
(require rake/cpp/types)
(require rake/cpp/cast)
(require rake/hvx/interpreter)
(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)
(require rake/hvx/cost-model)
(require rake/synthesis/ir)
(require rake/synthesis/swizzling/util)

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

(define (root-instr expr)
  (match expr
    ;[(let-expr var val body) (root-instr body)]
    
    [(vzxt Vu signed?) vzxt]
    [(vsxt Vu signed?) vsxt]
    [(vadd Vu Vv sat?) vadd]
    [(vadd-w Vu Vv) vadd-w]
    [(vadd-w-acc Vdd Vu Vv) vadd-w-acc]
    [(vmpy Vu Rt) vmpy]
    [(vmpyi Vu Rt) vmpyi]
    [(vmpye Vu Rt) vmpye]
    [(vmpy-acc Vdd Vu Rt) vmpy-acc]
    [(vmpyi-acc Vd Vu Rt) vmpyi-acc]
    [(vmpye-acc Vd Vu Rt) vmpye-acc]
    [(vmpa Vuu Rt signed?) vmpa]
    [(vmpa-acc Vdd Vuu Rt signed?) vmpa-acc]
    [(vdmpy Vu Rt) vdmpy]
    [(vdmpy-sw Vuu Rt) vdmpy-sw]
    [(vdmpy-acc Vd Vu Rt) vdmpy-acc]
    [(vdmpy-sw-acc Vdd Vuu Rt) vdmpy-sw-acc]
    [(vtmpy Vuu Rt signed?) vtmpy]
    [(vtmpy-acc Vdd Vuu Rt signed?) vtmpy-acc]
    [(vrmpy Vu Rt) vrmpy]
    [(vrmpy-acc Vd Vu Rt) vrmpy-acc]
    [(vrmpy-p Vuu Rt u1) vrmpy-p]
    [(vrmpy-p-acc Vdd Vuu Rt u1) vrmpy-p-acc]
    [_ (void)]))

(define (child-instr expr)
  (match expr
    ;[(let-expr var val body) (child-instr body)]
    
    [(vzxt Vu signed?) (root-instr Vu)]
    [(vsxt Vu signed?) (root-instr Vu)]
    [(vadd-w Vu Vv) (list (root-instr Vu) (root-instr Vv))]
    [(vmpy Vu Rt) (root-instr Vu)]
    [(vmpa Vuu Rt signed?) (root-instr Vuu)]
    [(vdmpy Vu Rt) (root-instr Vu)]
    [(vtmpy Vuu Rt signed?) (root-instr Vuu)]
    [(vrmpy Vu Rt) (root-instr Vu)]
    
    [(vadd-w-acc Vdd Vu Vv) (root-instr Vdd)]
    [(vmpy-acc Vdd Vu Rt) (root-instr Vdd)]
    [(vmpyi-acc Vd Vu Rt) (root-instr Vd)]
    [(vmpye-acc Vd Vu Rt) (root-instr Vd)]
    [(vmpa-acc Vdd Vuu Rt signed?) (root-instr Vdd)]
    [(vdmpy-acc Vd Vu Rt) (root-instr Vd)]
    [(vdmpy-sw-acc Vdd Vuu Rt) (root-instr Vdd)]
    [(vtmpy-acc Vdd Vuu Rt signed?) (root-instr Vdd)]
    [(vrmpy-acc Vd Vu Rt) (root-instr Vd)]
    [(vrmpy-p-acc Vdd Vuu Rt u1) (root-instr Vdd)]
    [_ (void)]))

(define (instr-order instr)
  (cond
    [(eq? instr let-expr) -1]
    [(eq? instr gather*) -1]
    [(eq? instr gather-vec) -1]
    [(eq? instr gather-vecp) -1]

    [(eq? instr abstr-sub-expr) -1]

    [(eq? instr vadd) 0]
    [(eq? instr vmpyi) 0]
    [(eq? instr vmpye) 0]
    [(eq? instr vasl) 0]

    [(eq? instr vmpyi-acc) 1]
    [(eq? instr vmpye-acc) 2]
    
    [(eq? instr vzxt) 0]
    [(eq? instr vsxt) 0]
    [(eq? instr vadd-w) 0]
    [(eq? instr vmpy) 0]
    [(eq? instr vmpa) 0]
    [(eq? instr vdmpy) 0]
    [(eq? instr vdmpy-sw) 0]
    [(eq? instr vtmpy) 0]

    [(eq? instr vadd-w-acc) 6]
    [(eq? instr vmpy-acc) 5]
    [(eq? instr vmpa-acc) 4]
    [(eq? instr vdmpy-acc) 3]
    [(eq? instr vdmpy-sw-acc) 2]
    [(eq? instr vtmpy-acc) 1]))

(define (max-unique-inputs expr)
  (match expr
    [(let-expr var val body) 1]
    
    [(vzxt Vu signed?) (max-unique-inputs Vu)]
    [(vsxt Vu signed?) (max-unique-inputs Vu)]
    [(vadd Vu Vv sat?) (+ (max-unique-inputs Vu) (max-unique-inputs Vv))]
    [(vadd-w Vu Vv) (+ (max-unique-inputs Vu) (max-unique-inputs Vv))]
    [(vadd-w-acc Vdd Vu Vv) (+ (max-unique-inputs Vdd) (max-unique-inputs Vu) (max-unique-inputs Vv))]
    [(vmpy Vu Rt) (max-unique-inputs Vu)]
    [(vmpyi Vu Rt)(max-unique-inputs Vu)]
    [(vmpye Vu Rt) (max-unique-inputs Vu)]
    [(vmpy-acc Vdd Vu Rt) (+ (max-unique-inputs Vdd) (max-unique-inputs Vu))]
    [(vmpyi-acc Vd Vu Rt) (+ (max-unique-inputs Vd) (max-unique-inputs Vu))]
    [(vmpye-acc Vd Vu Rt) (+ (max-unique-inputs Vd) (max-unique-inputs Vu))]
    [(vmpa Vuu Rt signed?) (* 2 (max-unique-inputs Vuu))]
    [(vmpa-acc Vdd Vuu Rt signed?) (+ (max-unique-inputs Vdd) (* 2 (max-unique-inputs Vuu)))]
    [(vdmpy Vu Rt) (* 2 (max-unique-inputs Vu))]
    [(vdmpy-sw Vuu Rt) (* 2 (max-unique-inputs Vuu))]
    [(vdmpy-acc Vd Vu Rt) (+ (max-unique-inputs Vd) (* 2 (max-unique-inputs Vu)))]
    [(vdmpy-sw-acc Vdd Vuu Rt) (+ (max-unique-inputs Vdd) (* 2 (max-unique-inputs Vuu)))]
    [(vtmpy Vuu Rt signed?) (* 3 (max-unique-inputs Vuu))]
    [(vtmpy-acc Vdd Vuu Rt signed?) (+ (max-unique-inputs Vdd) (* 3 (max-unique-inputs Vuu)))]
    [(vrmpy Vu Rt) (* 4 (max-unique-inputs Vu))]
    [(vrmpy-acc Vd Vu Rt) (+ (max-unique-inputs Vd) (* 4 (max-unique-inputs Vu)))]
    [(vrmpy-p Vuu Rt u1) (* 4 (max-unique-inputs Vuu))]
    [(vrmpy-p-acc Vdd Vuu Rt u1) (+ (max-unique-inputs Vdd) (* 4 (max-unique-inputs Vuu)))]
    
    [(gather* buff-opts) 1]
    [(gather-vec buff-opts) 1]
    [(gather-vecp buff-opts) 1]

    [(abstr-sub-expr _ _) 1]))

(define (enumerate-hvx-exprs ir-expr hvx-sub-expr)
  (define-values (isa weights)
    (match ir-expr
      [(convolve data kernel saturateFunc outputType)
       (values
        (if (eq? (type (elem-ir (interpret-ir data) 0)) outputType)
            (list vadd vmpyi vmpyi-acc vmpye vmpye-acc vasl)
            (list vzxt vsxt vmpy vmpy-acc vmpa vmpa-acc vdmpy vdmpy-acc vtmpy vtmpy-acc)) ;vdmpy-sw-acc vdmpy-sw ;vadd-w vadd-w-acc
        kernel)]
      [(convolve-acc acc data kernel saturateFunc outputType)
       (values
        (if (eq? (type (elem-ir (interpret-ir data) 0)) outputType)
            (list vadd vmpyi vmpyi-acc vmpye vmpye-acc vasl)
            (list vzxt vsxt vmpy vmpy-acc vmpa vmpa-acc vdmpy vdmpy-acc vtmpy vtmpy-acc)) ;vdmpy-sw-acc vdmpy-sw ;vadd-w vadd-w-acc
        kernel)]
      [_ (begin (println "NYI 0") (exit))]))
  
  (set! int-consts (set->list (list->set (weight-matrix-vals weights))))

  (define elemT (type (elem-ir (interpret-ir ir-expr) 0)))

  (define candidates (time (enumerate (enum-types elemT) isa hvx-sub-expr 4 20)))

  ;; Fill in param grammars
  (define (fill-arg-grammars node [pos -1])
    (match node
      [#t #t]
      [#f #f]
      ['bool (bool-const)]
      ['int8 (int8-const)]
      ['uint8 (uint8-const)]
      ['int16 (int16-const)]
      ['uint16 (uint16-const)]
      ['int8x2 (cons (int8-const) (int8-const))]
      ['uint8x2 (cons (uint8-const) (uint8-const))]
      ['int16x2 (cons (int16-const) (int16-const))]
      ['uint16x2 (cons (uint16-const) (uint16-const))]
      [_ node]))
  (set! candidates (for/set ([candidate candidates]) (visit-hvx candidate fill-arg-grammars)))

  ;; Uniquify gathers
  (set! candidates (for/set ([candidate candidates]) (if (gather*? candidate) candidate (specialize-gather*-nodes candidate))))

  ;; Rank em
  (define ranked-candidates (make-hash))
  (for ([candidate-expr candidates])
    (define candidate-expr-cost (basic-expr-cost candidate-expr))
    (when (not (hash-has-key? ranked-candidates candidate-expr-cost))
      (hash-set! ranked-candidates candidate-expr-cost (set)))
    (hash-set! ranked-candidates candidate-expr-cost (set-add (hash-ref ranked-candidates candidate-expr-cost) candidate-expr)))

  ;(for ([cost (hash-keys ranked-candidates)])
   ;(display (format "~a => ~a\n" cost (set-count (hash-ref ranked-candidates cost)))))
  
  ;; Pruning
  (define pruned-ranked-candidates (make-hash))
  (for ([cost (hash-keys ranked-candidates)])
    (define pruned-candidates (mutable-set))
    ;(display (format "~a => ~a\n" cost (set-count (hash-ref ranked-candidates cost))))

    ;; Based on instr ordering
    (for ([candidate (hash-ref ranked-candidates cost)])
      ;(pretty-print candidate)
      ;(pretty-print (interpret-hvx candidate))
      (define prune? #f)
      (define (check-instr-ordering node [pos -1])
        (define r-instr (root-instr node))
        (define c-instr (child-instr node))
        (define parent-order (instr-order r-instr))
        (cond
          [(list? c-instr)
           (for ([ci c-instr])
             (when (not (void? ci))
               (define child-order (instr-order ci))
               (when (or (> child-order parent-order) (eq? parent-order 0))
                 (set! prune? #t))))]
          [(not (void? c-instr))
           (define child-order (instr-order c-instr))
           (when (or (> child-order parent-order) (eq? parent-order 0))
             (set! prune? #t))])
        node)
      (visit-hvx candidate check-instr-ordering)

      ;; Pruning -- based on conv radius
      (define conv-radius-spec (if (convolve-acc? ir-expr) (add1 (weight-matrix-rad weights)) (weight-matrix-rad weights)))
      (define conv-radius-sk (max-unique-inputs candidate))

      (set! prune? (or prune? (not (eq? conv-radius-sk conv-radius-spec))))
      
      (when (not prune?)
        (set-add! pruned-candidates candidate)))
    ;(display (format "~a => ~a\n-----\n" cost (set-count pruned-candidates)))
    (hash-set! pruned-ranked-candidates cost pruned-candidates))

  (define ranked-sorted-pruned-candidates (make-hash))
  (for ([cost (hash-keys pruned-ranked-candidates)])
    (define unsorted-candidates (set->list (hash-ref pruned-ranked-candidates cost)))
    (define sorted-candidates (sort unsorted-candidates
       (lambda (e1 e2)
         (cond
           [(< (count-2mpy-instrs e1) (count-2mpy-instrs e2)) #t]
           [(> (count-2mpy-instrs e1) (count-2mpy-instrs e2)) #f]
           [else (< (count-vecR-instrs e1) (count-vecR-instrs e2))]))))
    (hash-set! ranked-sorted-pruned-candidates cost sorted-candidates))

  ;(pretty-print ranked-sorted-pruned-candidates)
  
  ranked-sorted-pruned-candidates)
  
;  (make-hash (list (cons 8 (set
;
;                            (specialize-gather*-nodes
;                             (vmpa-acc
;                              (vtmpy-acc
;                               (vtmpy-acc
;                                (vzxt hvx-sub-expr #t)
;                                hvx-sub-expr 
;                                (cons (int8_t (bv #x02 8)) (int8_t (bv #x04 8))) #t)
;                               hvx-sub-expr 
;                               (cons (int8_t (bv #x02 8)) (int8_t (bv #x01 8))) #t)
;                              hvx-sub-expr 
;                              (cons (int8_t (bv #x02 8)) (int8_t (bv #x02 8))) #t))
;                             
;;                            (specialize-gather*-nodes
;;                             (vmpa-acc
;;                              (vmpa-acc
;;                               (vmpa-acc
;;                                (vmpa-acc
;;                                 (vmpy
;;                                  hvx-sub-expr
;;                                  (int8-const))
;;                                 hvx-sub-expr
;;                                 (cons (int8-const) (int8-const)) #t)
;;                                hvx-sub-expr
;;                                (cons (int8-const) (int8-const)) #t)
;;                               hvx-sub-expr
;;                               (cons (int8-const) (int8-const)) #t)
;;                              hvx-sub-expr
;;                              (cons (int8-const) (int8-const)) #t))
;;                            
;;                            (vmpyi-acc
;;                             (vmpyi-acc
;;                              (vadd hvx-sub-expr hvx-sub-expr #f)
;;                              (vadd hvx-sub-expr hvx-sub-expr #f)
;;                              (int8_t (bv #x04 8)))
;;                             hvx-sub-expr
;;                             (int8_t (bv #x06 8)))
;                            
;                            )))))

(define database (make-hash))

(define (base-types expr)
  (cond
    [(gather*? expr) (for/fold ([res (set)]) ([br (list-ref (gather*-buff-reads expr) 0)]) (set-union res (enum-types (type br))))]
    [else (set (hvx-type (interpret-hvx expr)))]))

(define (enumerate types instr-set base-expr depth max-cost)
  (cond
    ;; Recursive base case
    [(<= depth 0)
     (cond
       [(cons? base-expr)
        (define base-expr-types (base-types (car base-expr)))
        (define res (if (set-empty? (set-intersect types base-expr-types)) (set) (set (car base-expr))))

        (set! base-expr-types (base-types (cdr base-expr)))
        (set! res (set-union res (if (set-empty? (set-intersect types base-expr-types)) (set) (set (cdr base-expr)))))

        res]
       [else
        (define base-expr-types (base-types base-expr))
        (if (set-empty? (set-intersect types base-expr-types)) (set) (set base-expr))])]
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
                   [4 (cartesian-product (list instr) (first arg-opts) (second arg-opts) (third arg-opts) (fourth arg-opts))]
                   [_ (error "NYI: enumeration instrs with the following number of args:" (length arg-opts))])))
              (set! sig-exprs (for/set ([sig-expr sig-exprs]) (match (length sig-expr)
                                                                [2 ((list-ref sig-expr 0) (list-ref sig-expr 1))]
                                                                [3 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2))]
                                                                [4 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2) (list-ref sig-expr 3))]
                                                                [5 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2) (list-ref sig-expr 3) (list-ref sig-expr 4))]
                                                                [_ (error "NYI. Sig-expr of size" (length sig-expr))])))
              (set! candidates (set-union candidates sig-exprs)))))

        ;(hash-set! database key candidates)
        ;candidates

        (define filtered-res (list->set (filter (lambda (e) (<= (basic-expr-cost e) max-cost)) (set->list candidates))))
        (hash-set! database key filtered-res)
        filtered-res
        
        ])]))

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
                    (vmpa u8t0 Rt #t)
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
                    (vmpa-acc i16t0 u8t0 Rt #t)
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
                        [(saturate data round? signedOut?)
                         (if round?
                             (get-hvx-rnd-sat-isa signedOut?)
                             (get-hvx-sat-isa signedOut?))]
                        [(packhi data signed?) (get-hvx-hi-isa signed?)]
                        [(abs-diff data1 data2) (get-hvx-absdiff-isa)]
                        [_ (begin (println "NYI") (exit))]))

  (cond
    [(pair? hvx-sub-expr)
     (define (??ir-expr)
       (define r0 (car hvx-sub-expr))
       (define r1 (cdr hvx-sub-expr))
       (define r2 (??hvx-instr (list r0 r1)))
       (define r3 (??hvx-instr (list r0 r1 r2)))
       (define r4 (??hvx-instr (list r0 r1 r2 r3)))
       (cond
         [(eq? curr-instr-bnd 1) (??hvx-instr (list r0 r1))]
         [(eq? curr-instr-bnd 2) r3]
         [(eq? curr-instr-bnd 3) r4]
         [else r4]))
     ??ir-expr]
    [else
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
     ??ir-expr]))

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
     
     (vmpa t1 Rt #t)
     (vmpa-acc t0 t1 Rt #t)

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
    (define t2 (lo t0))
    (define t3 (hi t0))
    (choose*
     (vasr-n t0 t1 i8-n round? (bool-const) signed?)
     (vdeal (vasr-n t0 t1 i8-n round? (bool-const) signed?))
     (let-expr 't0 t0 (vasr-n (hi 't0) (lo 't0) i8-n round? (bool-const) signed?))
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

;; HVX instructions for saturating
(define (get-hvx-sat-isa signedOut?)
  (define (??hvx-hi-instr registers)
    (define t0 (apply choose* registers))
    (define t1 (apply choose* registers))
    (choose*
     (vpack t0 t1 signedOut?)
     (vsat t0 t1)
     (let-expr 't2 t0 (vsat (hi 't2) (lo 't2)))
     (let-expr 't0 t0 (vpack (hi 't0) (lo 't0) signedOut?))))
  ??hvx-hi-instr)

(define (get-hvx-rnd-sat-isa signedOut?)
  (define (??hvx-hi-instr registers)
    (define t0 (apply choose* registers))
    (define t1 (apply choose* registers))
    (choose*
     (vround t0 t1 signedOut?)))
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

;; HVX instructions for abs diffing
(define (get-hvx-absdiff-isa)
  (define (??hvx-hi-instr registers)
    (define t0 (apply choose* registers))
    (define t1 (apply choose* registers))
    (choose*
     (vabsdiff t0 t1)
     (vabs t0 #f)
     (vsub t0 t1 #f)
     (let-expr 't0 t0
       (let-expr 't1 t1
         (vcombine
          (vabsdiff (lo 't0) (lo 't1))
          (vabsdiff (hi 't0) (hi 't1)))))
     ))
  ??hvx-hi-instr)

(provide hvx-instr-limit-exceeded? hvx-instr-bnd generate-hvx-grammar increment-hvx-instr-bnd reset-hvx-instr-bnd enumerate-hvx-exprs)
