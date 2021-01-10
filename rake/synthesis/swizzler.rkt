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

(require rake/synthesis/grammar/swizzle)

(define (synthesize-swizzles halide-spec hvx-expr-sketch ctx axioms [mode 'incremental])
  (display "Synthesizing Data Swizzle Spec...\n")
  (display "=================================\n\n")

  (display "Synthesizing spec...\n\n")

  ;; The visitor clones each node in the AST, converting it from a graph to a tree
  (define next-id 0)
  (define (iden node)
    (match node
      [(gather* opts) (set! next-id (add1 next-id)) (gather opts next-id)]
      [_ node]))
  (set! hvx-expr-sketch (visit-hvx hvx-expr-sketch iden))

  ;; Synthesize a hash-table spec
  (define-values (sketch-is-correct? hvx-expr-spec) (synthesize-swizzle-spec halide-spec hvx-expr-sketch axioms ctx))

  ;; Synthesize instructions
  (when sketch-is-correct?
    (display "Synthesizing Swizzle implementations...\n")
    (display "=======================================\n\n")

    (define starting-vecs (extract-loads-as-hvx-vecs halide-spec))
    
    (cond
      [(eq? mode 'one-shot) (synthesize-impl-oneshot starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx)]
      [(eq? mode 'incremental) (synthesize-impl-incremental starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx)])))

(define (synthesize-swizzle-spec halide-spec hvx-expr-sketch axioms ctx)
  (define VEC_LANES (num-elems-hal halide-spec))
  
  (hash-clear! hvx-gather-tables)
  (define interpreted-s-expr (interpret-hvx hvx-expr-sketch))
  (define interpreted-o-expr (interpret-halide halide-spec))

  ;; Synthesize spec hash-table, one lane at a time
  (define (lane-eq? oe se lane)
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
    (define sol (synthesize #:forall ctx
                            #:guarantee (lane-eq? interpreted-o-expr interpreted-s-expr lane)))
    (set! sols (append sols (list sol))))
  (define runtime (- (current-seconds) st))
  
  (define correct? (not (for/or ([sol sols]) (unsat? sol))))

  (display (if correct? "Successfull!\n\n" "Failed.\n\n"))
  (display (format "Synthesis time: ~a seconds\n\n" runtime))

  (define hvx-expr-spec (void))
  (when correct?
    ;; Prepare synthesis spec
    (define tbls (set->list (list->set (flatten (for/list ([sol sols]) (hash-keys (model sol)))))))
    (define (repl-gather-with-swizzle-spec node)
      (match node
        [(gather opts gid)
         (define gather-tbls (hash-ref hvx-gather-tables gid))
         (define oType (evaluate (hash-ref hvx-gather-types gid) (list-ref sols 0)))
         (cond
           [(and (set-member? tbls (car gather-tbls)) (set-member? tbls (cdr gather-tbls)))
            (serve-vec-pair (car gather-tbls) (cdr gather-tbls) oType  opts sols)]
           [(and (set-member? tbls (car gather-tbls)))
            (serve-vec (car gather-tbls) oType opts sols)])]
        [_ node]))
    (set! hvx-expr-spec (visit-hvx hvx-expr-sketch repl-gather-with-swizzle-spec)))
  
  (values correct? hvx-expr-spec))

(define (hvx-vec-eq? oe se)
  (define N (num-elems-hvx se))
  (cond
    [(hvx-pair? se)
     (for ([lane 2])
       (set-curr-cn-hvx lane)
       (assert (eq? (v0-elem-hvx oe lane) (v0-elem-hvx se lane))))
     (for ([lane (in-range (- (quotient N 2) 2) (quotient N 2))])
       (set-curr-cn-hvx lane)
       (assert (eq? (v0-elem-hvx oe lane) (v0-elem-hvx se lane))))
     (for ([lane (in-range (quotient N 2) (+ (quotient N 2) 2))])
       (set-curr-cn-hvx lane)
       (assert (eq? (v1-elem-hvx oe (- lane (quotient N 2))) (v1-elem-hvx se (- lane (quotient N 2))))))
     (for ([lane (in-range (- N 2) N)])
       (set-curr-cn-hvx lane)
       (assert (eq? (v1-elem-hvx oe (- lane (quotient N 2))) (v1-elem-hvx se (- lane (quotient N 2))))))]
    [else
     (for ([lane 2])
       (set-curr-cn-hvx lane)
       (assert (eq? (elem-hvx oe lane) (elem-hvx se lane))))
     (for ([lane (in-range 63 65)])
       (set-curr-cn-hvx lane)
       (assert (eq? (elem-hvx oe lane) (elem-hvx se lane))))
     (for ([lane (in-range (- N 2) N)])
       (set-curr-cn-hvx lane)
       (assert (eq? (elem-hvx oe lane) (elem-hvx se lane))))]))

(define (synthesize-impl-oneshot starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx)
  ;; Replace all swizzle nodes with swizzle grammar
  (define (repl-gather-with-swizzle-grm node)
    (match node
      [(gather opts gid) (??hvx-swizzle-expr starting-vecs)]
      [_ node]))
  (define hvx-expr-grm (visit-hvx hvx-expr-sketch repl-gather-with-swizzle-grm))  

  (define interpreted-o-expr (interpret-hvx hvx-expr-spec))
  (define interpreted-f-expr (interpret-hvx hvx-expr-grm))
    
  (clear-asserts!)
  (for ([axiom axioms]) (assert axiom))
  (define st (current-seconds))
  (define sol (synthesize #:forall ctx
                          #:guarantee (hvx-vec-eq? interpreted-o-expr interpreted-f-expr)))
  (println (unsat? sol))
  (define runtime (- (current-seconds) st))

  (display (format "~a\n" (evaluate hvx-expr-grm sol)))
    
  (display (format "\nSwizzle Synthesis time: ~a seconds\n\n" runtime))
  
  (if (unsat? sol) sol (evaluate hvx-expr-grm sol)))

(define (synthesize-impl-incremental starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx)
  ;; Extract set of swizzle nodes to be synthesized
  (define swizzle-nodes (list))
  (define (register-gather-node node)
    (match node
      [(gather opts gid) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
      [_ node]))
  (visit-hvx hvx-expr-sketch register-gather-node)
    
  ;; Synthesize an implementation for each swizzle node incrementally
  (dynamically-synthesize-swizzle-nodes swizzle-nodes starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx (list)))

(define (dynamically-synthesize-swizzle-nodes swizzle-nodes starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx discarded-sols)
  (cond
    [(empty? swizzle-nodes)
     (display "Implementations found for all swizzle nodes! Wohoo!\n\n")
     (display (format "Final expression: \n\n~a\n\n" (pretty-format hvx-expr-sketch)))
     (values #t hvx-expr-sketch)]
    [else
     ;; Synthesize an implementation for the first node in the list 
     (define swizzle-node (first swizzle-nodes))
  
     (display (format "## Swizzle node id: ~a\n\n" (gather-id swizzle-node)))
  
     (reset-swizzle-instr-bnd)
     (define-values (node-impl-found? updated-hvx-expr-sketch)
       (synthesize-swizzle-impl swizzle-node starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx discarded-sols))
  
     (cond
       [node-impl-found?
        (define-values (successful? complete-expr)
          (dynamically-synthesize-swizzle-nodes (cdr swizzle-nodes) starting-vecs updated-hvx-expr-sketch hvx-expr-spec axioms ctx (list)))
        (cond
          [successful? (values #t complete-expr)]
          [else
           (display (format "\nBacktracking. Attempting to synthesize a different implementation for swizzle node with id: ~a\n\n" (gather-id swizzle-node)))
           (dynamically-synthesize-swizzle-nodes swizzle-nodes starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx (append (list updated-hvx-expr-sketch) discarded-sols))])]
       [else (values #f (unsat))])]))

(define (synthesize-swizzle-impl swizzle-node starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx discarded-sols)
  (if (swizzle-instr-bnd-exceeded?)
      (begin
        (display "Max instruction bound exceeded.\n")
        (values #f (unsat)))
      (begin
        (display (format "Number of instructions allowed: ~a\n\n" (get-swizzle-instr-bnd)))
            
        ;; Replace swizzle node with swizzle grammar
        (define (repl-gather-with-swizzle-grm node)
          (match node
            [(gather opts gid) (if (equal? gid (gather-id swizzle-node)) (??hvx-swizzle-expr starting-vecs) node)]
            [_ node]))
        (define hvx-expr-grm (visit-hvx hvx-expr-sketch repl-gather-with-swizzle-grm))

        (define interpreted-o-expr (interpret-hvx hvx-expr-spec))
        (define interpreted-f-expr (interpret-hvx hvx-expr-grm))

        ;(pretty-print hvx-expr-grm)
;
;        (set-curr-cn-hvx 0)
;        (pretty-print (elem-hvx interpreted-o-expr 0))
;        (pretty-print (elem-hvx interpreted-f-expr 0))
;        (set-curr-cn-hvx 64)
;        (pretty-print (elem-hvx interpreted-o-expr 64))
;        (pretty-print (elem-hvx interpreted-f-expr 64))

        (clear-asserts!)
        (for ([axiom axioms]) (assert axiom))
        (define st (current-seconds))
        (define sol (synthesize #:forall ctx
                                #:guarantee (begin
                                              (hvx-vec-eq? interpreted-o-expr interpreted-f-expr)
                                              (for ([discarded-sol discarded-sols])
                                                (assert (not (equal-hvx? discarded-sol hvx-expr-grm)))))))
        (define runtime (- (current-seconds) st))
        
        (cond
          [(unsat? sol)
           (display "Could not find implementation. Increasing recursive bound.\n\n")
           (display (format "Synthesis time: ~a seconds\n\n" runtime))
           (incr-swizzle-instr-bnd)
           (synthesize-swizzle-impl swizzle-node starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx discarded-sols)]
          [else
           (display "Swizzle node implementation found!\n\n")
           (display (format "~a\n\n" (pretty-format (evaluate hvx-expr-grm sol))))
           (display (format "Synthesis time: ~a seconds\n\n" runtime))
           (values #t (evaluate hvx-expr-grm sol))]))))

(define (equal-hvx? expr1 expr2)
  ;(display (format "Comparing ~a with ~a\n\n" expr1 expr2))
  (match (cons expr1 expr2)
    [(cons (vmpy-acc Vdd0 Vu0 Rt0) (vmpy-acc Vdd1 Vu1 Rt1)) (and (equal-hvx? Vdd0 Vdd1) (equal-hvx? Vu0 Vu1) (equal-hvx? Rt0 Rt1))]
    [(cons (vmpa-acc Vdd0 Vuu0 Rt0) (vmpa-acc Vdd1 Vuu1 Rt1)) (and (equal-hvx? Vdd0 Vdd1) (equal-hvx? Vuu0 Vuu1) (equal-hvx? Rt0 Rt1))]
    [(cons (vmpa Vuu0 Rt0) (vmpa Vuu1 Rt1)) (and (equal-hvx? Vuu0 Vuu1) (equal-hvx? Rt0 Rt1))]

    ;; Compare Swizzles
    [(cons (vshuff Vu0) (vshuff Vu1)) (equal-hvx? Vu0 Vu1)]
    [(cons (gather _ _) (gather _ _)) #t]
    
    ;; Compare scalar registers
    [(cons (cons (int8_t v0) (int8_t v1)) (cons (int8_t v2) (int8_t v3))) (and (equal? v0 v2) (equal? v1 v3))]
    
    [_ (equal? expr1 expr2)]))
  
;    (define (vec-eq? oe se)
;      (define N (num-elems-hvx se))
;      (cond
;        [(hvx-pair? se)
;         (for ([lane 4])
;           (assert (eq? (oe lane) (v0-elem-hvx se lane))))
;         (for ([lane (in-range (- (quotient N 2) 4) (quotient N 2))])
;           (assert (eq? (oe lane) (v0-elem-hvx se lane))))
;         (for ([lane (in-range (quotient N 2) (+ (quotient N 2) 4))])
;           (assert (eq? (oe lane) (v1-elem-hvx se (- lane (quotient N 2))))))
;         (for ([lane (in-range (- N 4) N)])
;           (assert (eq? (oe lane) (v1-elem-hvx se (- lane (quotient N 2))))))]
;        [else
;         (for ([lane 4])
;           (assert (eq? (oe lane) (elem-hvx se lane))))
;         (for ([lane (in-range (- N 4) N)])
;           (assert (eq? (oe lane) (elem-hvx se lane))))]))

;  (define (vec-eq? oe se lane)
;    (cond
;      [(u8x128? se)
;       (set-si-curr-cn lane)
;       (assert (eq? (elem-hvx oe lane) (elem-hvx se lane)))]
;      [(i16x64x2? se)
;       (set-si-curr-cn lane)
;       (assert (eq? (v0-elem-hvx oe lane) (v0-elem-hvx se lane)))
;       (assert (eq? (v1-elem-hvx oe lane) (v1-elem-hvx se lane)))]
;      [else (assert #f)]))


;       (define gather-tbls (hash-ref hvx-gather-tables gid))
;       (define oType (evaluate (hash-ref hvx-gather-types gid) (list-ref sols 0)))
;       (cond
;[(and (set-member? tbls (car gather-tbls)) (set-member? tbls (cdr gather-tbls)))
;          (serve-vec-pair (car gather-tbls) (cdr gather-tbls) oType  opts sols)]
;         [(and (set-member? tbls (car gather-tbls)))
;          (serve-vec (car gather-tbls) oType opts sols)])]


;; Extract the set of buffer reads
;(set! mem-map (encode-data halide-spec))

;(define (encode-data p)
;  (define buff-reads (extract-buf-reads-hal p))
;  (set! buff-reads (set->list (list->set (flatten buff-reads))))
;  (define id -1)
;  (for ([buff-read buff-reads])
;    (set! id (add1 id))
;    (define read-id (format "var~a" id))
;    (hash-set! mem-map buff-read (mk-typed-expr read-id (type buff-read)))
;    (hash-set! mem-map-r (mk-typed-expr read-id (type buff-read)) buff-read))
;  mem-map)

;; Types
;(struct serve-vec (vec type opts sols))
;(struct serve-vec-pair (v0 v1 type opts sols))
;(struct ??gen-vec (vec))
;
;;; Ops
;(struct si-add (v1 v2) #:transparent)
;(struct si-mul (v1 v2) #:transparent)
;
;(struct si-cast (v otype) #:transparent)
;(struct si-sat8 (v) #:transparent)
;(struct si-sat16 (v) #:transparent)
;(struct si-sat32 (v) #:transparent)
;(struct si-satu8 (v) #:transparent)
;(struct si-satu16 (v) #:transparent)
;(struct si-satu32 (v) #:transparent)
;
;;; Check if expressions are equal
;(define (si-eq-expr? e1 e2)
;  (match (cons e1 e2)
;    [(cons (int8_t val) (int8_t val2)) (si-eq-expr? val val2)]
;    [(cons (int16_t val) (int16_t val2)) (si-eq-expr? val val2)]
;    [(cons (int32_t val) (int32_t val2)) (si-eq-expr? val val2)]
;    [(cons (uint8_t val) (uint8_t val2)) (si-eq-expr? val val2)]
;    [(cons (uint16_t val) (uint16_t val2)) (si-eq-expr? val val2)]
;    [(cons (uint32_t val) (uint32_t val2)) (si-eq-expr? val val2)]
;
;    [(cons (si-sat8 val) (si-sat8 val2)) (si-eq-expr? val val2)]
;    [(cons (si-sat16 val) (si-sat16 val2)) (si-eq-expr? val val2)]
;    [(cons (si-sat32 val) (si-sat32 val2)) (si-eq-expr? val val2)]
;    [(cons (si-satu8 val) (si-satu8 val2)) (si-eq-expr? val val2)]
;    [(cons (si-satu16 val) (si-satu16 val2)) (si-eq-expr? val val2)]
;    [(cons (si-satu32 val) (si-satu32 val2)) (si-eq-expr? val val2)]
;
;    [(cons (si-cast val type) (si-cast val2 type2)) (and (eq? type type2) (si-eq-expr? val val2))]
;
;    [(cons (si-add v1 v2) (si-add v3 v4)) (or (and (si-eq-expr? v1 v3) (si-eq-expr? v2 v4)) (and (si-eq-expr? v1 v4) (si-eq-expr? v2 v3)))]
;
;    [_ (eq? e1 e2)]))
;    ;[_ (error "NYI" e1 e2)]))

;(define si-curr-cn 0)
;(define (set-si-curr-cn v) (set! si-curr-cn v))
;
;(define mem-map (make-hash))
;(define mem-map-r (make-hash))
;
;(define (get-vec-type buf)
;  (match (hash-ref type-dict buf)
;    ['int8 i8x128]
;    ['int16 i16x64]
;    ['int32 i32x32]
;    ['uint8 u8x128]
;    ['uint16 u16x64]
;    ['uint32 u32x32]))
;
;(define (get-vecp-type buf)
;  (match (hash-ref type-dict buf)
;    ['int8 i8x128x2]
;    ['int16 i16x64x2]
;    ['int32 i32x32x2]
;    ['uint8 u8x128x2]
;    ['uint16 u16x64x2]
;    ['uint32 u32x32x2]))
;
;(define (get-offset buf)
;  (match (hash-ref type-dict buf)
;    ['int8 128]
;    ['uint8 128]
;    ['int16 64]
;    ['uint16 64]
;    ['int32 32]
;    ['uint32 32]))
;
;;; HVX Interpreter
;(define (interpret p)
;  
;  (match p
;    ;;;;;;;;;;;;;;;;; Instructions for vector creation ;;;;;;;;;;;;;;;
;    
;    [(serve-vec vec otype opts sols)
;     (otype
;      (lambda (i)
;        (hash-ref
;         mem-map
;         (list-ref
;          (filter (lambda(v) (eq? (type v) (elem-type otype))) (list-ref opts si-curr-cn))
;          ((evaluate vec (list-ref sols si-curr-cn)) i)))))]
;    
;    [(serve-vec-pair v0 v1 otype opts sols)
;     (otype
;      (lambda (i)
;        (hash-ref
;         mem-map
;         (list-ref
;          (filter (lambda(v) (eq? (type v) (elem-type otype))) (list-ref opts si-curr-cn))
;          ((evaluate v0 (list-ref sols si-curr-cn)) i))))
;      (lambda (i)
;        (hash-ref
;         mem-map
;         (list-ref
;          (filter (lambda(v) (eq? (type v) (elem-type otype))) (list-ref opts si-curr-cn))
;          ((evaluate v1 (list-ref sols si-curr-cn)) i)))))]
;
;    [(vread buf loc) ((get-vec-type buf) (lambda (i) (hash-ref mem-map (get buf (+ loc i)))))]
;    [(vreadp buf loc)
;     (println (get-vecp-type buf))
;     (println (get-offset buf))
;     (println ((get-vecp-type buf) (lambda (i) (get buf (+ loc i))) (lambda (i) (get buf (+ loc i (get-offset buf))))))
;     ((get-vecp-type buf) (lambda (i) (get buf (+ loc i))) (lambda (i) (get buf (+ loc i (get-offset buf)))))
;     ]
;    ;;[(??gen-vec vec type) (type (lambda (i) (hash-ref vec i)))]
;
;    ;;;;;;;;;;;;;;;; Instructions for data processing ;;;;;;;;;;;;;;;;
;    
;    ;; Addition (non-widening) -- carry variants currently not supported
;    [(vadd Vu Vv sat?)
;     (match (list (interpret Vu) (interpret Vv))
;       ;; Saturating for signed types is optional
;       [(list (i8x128 lhs) (i8x128 rhs)) (i8x128 (lambda (i) (if sat? (add-sat (lhs i) (rhs i) 'int8) (add (lhs i) (rhs i) 'int8))))]
;       [(list (i16x64 lhs) (i16x64 rhs)) (i16x64 (lambda (i) (if sat? (add-sat (lhs i) (rhs i) 'int16) (add (lhs i) (rhs i) 'int16))))]
;       [(list (i32x32 lhs) (i32x32 rhs)) (i32x32 (lambda (i) (if sat? (add-sat (lhs i) (rhs i) 'int32) (add (lhs i) (rhs i) 'int32))))]
;
;       ;; Always saturate for unsigned types
;       [(list (u8x128 lhs) (i8x128 rhs)) (u8x128 (lambda (i) (add-sat (lhs i) (rhs i) 'uint8)))]
;       [(list (u8x128 lhs) (u8x128 rhs)) (u8x128 (lambda (i) (add-sat (lhs i) (rhs i) 'uint8)))]
;       [(list (u16x64 lhs) (u16x64 rhs)) (u16x64 (lambda (i) (add-sat (lhs i) (rhs i) 'uint16)))]
;       [(list (u32x32 lhs) (u32x32 rhs)) (u32x32 (lambda (i) (add-sat (lhs i) (rhs i) 'uint32)))]
;       
;       ;; Saturating for signed types is optional
;       [(list (i8x128x2 lhs-v0 lhs-v1) (i8x128x2 rhs-v0 rhs-v1))
;        (i8x128x2
;         (lambda (i) (if sat? (add-sat (lhs-v0 i) (rhs-v0 i) 'int8) (add (lhs-v0 i) (rhs-v0 i) 'int8)))
;         (lambda (i) (if sat? (add-sat (lhs-v1 i) (rhs-v1 i) 'int8) (add (lhs-v1 i) (rhs-v1 i) 'int8))))]
;       [(list (i16x64x2 lhs-v0 lhs-v1) (i16x64x2 rhs-v0 rhs-v1))
;        (i16x64x2
;         (lambda (i) (if sat? (add-sat (lhs-v0 i) (rhs-v0 i) 'int16) (add (lhs-v0 i) (rhs-v0 i) 'int16)))
;         (lambda (i) (if sat? (add-sat (lhs-v1 i) (rhs-v1 i) 'int16) (add (lhs-v1 i) (rhs-v1 i) 'int16))))]
;       [(list (i32x32x2 lhs-v0 lhs-v1) (i32x32x2 rhs-v0 rhs-v1))
;        (i32x32x2
;         (lambda (i) (if sat? (add-sat (lhs-v0 i) (rhs-v0 i) 'int32) (add (lhs-v0 i) (rhs-v0 i) 'int32)))
;         (lambda (i) (if sat? (add-sat (lhs-v1 i) (rhs-v1 i) 'int32) (add (lhs-v1 i) (rhs-v1 i) 'int32))))]
;
;       ;; Always saturate for unsigned types
;       [(list (u8x128x2 lhs-v0 lhs-v1) (u8x128x2 rhs-v0 rhs-v1))
;        (i8x128x2
;         (lambda (i) (add-sat (lhs-v0 i) (rhs-v0 i) 'uint8))
;         (lambda (i) (add-sat (lhs-v1 i) (rhs-v1 i) 'uint8)))]
;       [(list (u16x64x2 lhs-v0 lhs-v1) (u16x64x2 rhs-v0 rhs-v1))
;        (i16x64x2
;         (lambda (i) (add-sat (lhs-v0 i) (rhs-v0 i) 'uint16))
;         (lambda (i) (add-sat (lhs-v1 i) (rhs-v1 i) 'uint16)))]
;       [(list (u32x32x2 lhs-v0 lhs-v1) (u32x32x2 rhs-v0 rhs-v1))
;        (i32x32x2
;         (lambda (i) (add-sat (lhs-v0 i) (rhs-v0 i) 'uint32))
;         (lambda (i) (add-sat (lhs-v1 i) (rhs-v1 i) 'uint32)))])]
;
;    ;; Vector-scalar multiplication (widening) with accumulation
;    [(vmpy-acc Vdd Vu Rt)
;     (define rhs (interpret Rt))
;     (match (list (interpret Vdd) (interpret Vu) rhs)
;       [(list (i16x64x2 acc-v0 acc-v1) (u8x128 lhs) (int8_t v))
;        (i16x64x2
;         (lambda (i) (int16_t (si-add (eval (acc-v0 i)) (eval (multiply (lhs (* i 2)) rhs 'int16)))))
;         (lambda (i) (int16_t (si-add (eval (acc-v1 i)) (eval (multiply (lhs (+ (* i 2) 1)) rhs 'int16))))))]       
;       [(list (u16x64x2 acc-v0 acc-v1) (u8x128 lhs) (uint8_t v))
;        (u16x64x2
;         (lambda (i) (uint16_t (si-add (eval (acc-v0 i)) (eval (multiply (lhs (* i 2)) rhs 'uint16)))))
;         (lambda (i) (uint16_t (si-add (eval (acc-v1 i)) (eval (multiply (lhs (+ (* i 2) 1)) rhs 'uint16))))))]       
;       [(list (u32x32x2 acc-v0 acc-v1) (u16x64 lhs) (uint16_t v))
;        (u32x32x2
;         (lambda (i) (uint32_t (si-add (eval (acc-v0 i)) (eval (multiply (lhs (* i 2)) rhs 'uint32)))))
;         (lambda (i) (uint32_t (si-add (eval (acc-v1 i)) (eval (multiply (lhs (+ (* i 2) 1)) rhs 'int'uint3216))))))]       
;       [(list (i32x32x2 acc-v0 acc-v1) (i16x64 lhs) (int16_t v))
;        (i32x32x2
;         (lambda (i) (int32_t (si-add (eval (acc-v0 i)) (eval (multiply (lhs (* i 2)) rhs 'int32)))))
;         (lambda (i) (int32_t (si-add (eval (acc-v1 i)) (eval (multiply (lhs (+ (* i 2) 1)) rhs 'int32))))))])]
;    
;    ;; Sum to vector-scalar multiplies
;    [(vmpa Vuu Rt)
;     (match (list (interpret Vuu) (interpret Rt))
;       [(list (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i16x64x2
;         (lambda (i) (multiply-add (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) 'int16))
;         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (+ (* i 2) 1)) (int8_t w2) 'int16)))]
;       [(list (u8x128x2 data-v0 data-v1) (cons (uint8_t w1) (uint8_t w2)))
;        (i16x64x2
;         (lambda (i) (multiply-add (data-v0 (* i 2)) (uint8_t w1) (data-v1 (* i 2)) (uint8_t w2) 'int16))
;         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (uint8_t w1) (data-v1 (+ (* i 2) 1)) (uint8_t w2) 'int16)))]
;       [(list (u16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i32x32x2
;         (lambda (i) (multiply-add (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) 'int32))
;         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (+ (* i 2) 1)) (int8_t w2) 'int32)))]
;       [(list (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i32x32x2
;         (lambda (i) (multiply-add (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) 'int32))
;         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (+ (* i 2) 1)) (int8_t w2) 'int32)))])]
;
;    ;; Sum two vector-scalar multiplies, accumulate into output register
;    [(vmpa-acc Vdd Vuu Rt)
;     (match (list (interpret Vdd) (interpret Vuu) (interpret Rt))
;       [(list (i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i16x64x2
;         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v0 i) 'int16))
;         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (+ (* i 2) 1)) (int8_t w2) (acc-v1 i) 'int16)))]
;       [(list (i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (cons (uint8_t w1) (uint8_t w2)))
;        (i16x64x2
;         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (uint8_t w1) (data-v1 (* i 2)) (uint8_t w2) (acc-v0 i) 'int16))
;         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (uint8_t w1) (data-v1 (+ (* i 2) 1)) (uint8_t w2) (acc-v1 i) 'int16)))]
;       [(list (i32x32x2 acc-v0 acc-v1) (u16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i32x32x2
;         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v0 i) 'int32))
;         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (+ (* i 2) 1)) (int8_t w2) (acc-v1 i) 'int32)))]
;       [(list (i32x32x2 acc-v0 acc-v1) (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i32x32x2
;         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v0 i) 'int32))
;         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (+ (* i 2) 1)) (int8_t w2) (acc-v1 i) 'int32)))])]
;    
;    ;; Reduce (via sum) two vector-scalar multiplies. Unlike vmpa, this is reduction within the vector.
;    ;; Saturates output for some input types
;    [(vdmpy Vu Rt)
;     (match (list (interpret Vu) (interpret Rt))
;       [(list (u8x128 data) (cons (int8_t w1) (int8_t w2))) (i16x64 (lambda (i) (multiply-add (data (* i 2)) (int8_t w1) (data (+ (* i 2) 1)) (int8_t w2) 'int16)))]
;       [(list (i16x64 data) (cons (int8_t w1) (int8_t w2))) (i32x32 (lambda (i) (multiply-add (data (* i 2)) (int8_t w1) (data (+ (* i 2) 1)) (int8_t w2) 'int32)))]
;       [(list (i16x64 data) (cons (int16_t w1) (int16_t w2))) (i32x32 (lambda (i) (do-si-sat32 (multiply-add (data (* i 2)) (int16_t w1) (data (+ (* i 2) 1)) (int16_t w2) 'int64))))]
;       [(list (i16x64 data) (cons (uint16_t w1) (uint16_t w2))) (i32x32 (lambda (i) (do-si-sat32 (multiply-add (data (* i 2)) (uint16_t w1) (data (+ (* i 2) 1)) (uint16_t w2) 'int64))))]
;       [(list (i16x64x2 data-v0 data-v1) (cons (int16_t w1) (int16_t w2))) (i32x32 (lambda (i) (do-si-sat32 (multiply-add (data-v0 (+ (* i 2) 1)) (int16_t w1) (data-v1 (* i 2)) (int16_t w2) 'int64))))]
;       [(list (i16x64x2 data-v0 data-v1) (cons (uint16_t w1) (uint16_t w2))) (i32x32 (lambda (i) (do-si-sat32 (multiply-add (data-v0 (+ (* i 2) 1)) (int16_t w1) (data-v1 (* i 2)) (int16_t w2) 'int64))))])]
;
;    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window
;    [(vdmpy-sw Vuu Rt)
;     (match (list (interpret Vuu) (interpret Rt))
;       [(list (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i16x64x2
;         (lambda (i) (multiply-add (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) 'int16))
;         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) 'int16)))]
;       [(list (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i32x32x2
;         (lambda (i) (multiply-add (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) 'int32))
;         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) 'int32)))])]
;
;    ;; Reduce (via sum) two vector-scalar multiplies with accumulation.
;    [(vdmpy-acc Vd Vu Rt)
;     (match (list (interpret Vd) (interpret Vu) (interpret Rt))
;       [(list (i16x64 acc) (u8x128 data) (cons (int8_t w1) (int8_t w2))) (i16x64 (lambda (i) (multiply-add-acc (data (* i 2)) (int8_t w1) (data (+ (* i 2) 1)) (int8_t w2) (acc i) 'int16)))]
;       [(list (i32x32 acc) (i16x64 data) (cons (int8_t w1) (int8_t w2))) (i32x32 (lambda (i) (multiply-add-acc (data (* i 2)) (int8_t w1) (data (+ (* i 2) 1)) (int8_t w2) (acc i) 'int32)))]
;       [(list (i32x32 acc) (i16x64 data) (cons (int16_t w1) (int16_t w2))) (i32x32 (lambda (i) (do-si-sat32 (multiply-add-acc (data (* i 2)) (int16_t w1) (data (+ (* i 2) 1)) (int16_t w2) (acc i) 'int64))))]
;       [(list (i32x32 acc) (i16x64 data) (cons (uint16_t w1) (uint16_t w2))) (i32x32 (lambda (i) (do-si-sat32 (multiply-add-acc (data (* i 2)) (uint16_t w1) (data (+ (* i 2) 1)) (uint16_t w2) (acc i) 'int64))))]
;       [(list (i32x32 acc) (i16x64x2 data-v0 data-v1) (cons (int16_t w1) (int16_t w2))) (i32x32 (lambda (i) (do-si-sat32 (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int16_t w1) (data-v1 (* i 2)) (int16_t w2) (acc i) 'int64))))]
;       [(list (i32x32 acc) (i16x64x2 data-v0 data-v1) (cons (uint16_t w1) (uint16_t w2))) (i32x32 (lambda (i) (do-si-sat32 (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int16_t w1) (data-v1 (* i 2)) (int16_t w2) (acc i) 'int64))))])]
;
;    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window with accumulate
;    [(vdmpy-sw-acc Vdd Vuu Rt)
;     (match (list (interpret Vdd) (interpret Vuu) (interpret Rt))
;       [(list (i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i16x64x2
;         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (acc-v0 i) 'int16))
;         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v1 i) 'int16)))]
;       [(list (i32x32x2 acc-v0 acc-v1) (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i32x32x2
;         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (acc-v0 i) 'int32))
;         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v1 i) 'int32)))])]
;    
;    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window with an additional accumulate
;    [(vtmpy Vuu Rt)
;     (match (list (interpret Vuu) (interpret Rt))
;       [(list (i8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i16x64x2
;         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int16))
;         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int16)))]
;       [(list (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i16x64x2
;         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int16))
;         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int16)))]
;       [(list (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i32x32x2
;         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int32))
;         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int32)))])]
;
;    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window with an additional accumulate.
;    ;; Also accumulate the output into the target register
;    [(vtmpy-acc Vdd Vuu Rt)
;     (match (list (interpret Vdd) (interpret Vuu) (interpret Rt))
;       [(list (i16x64x2 acc-v0 acc-v1) (i8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i16x64x2
;         (lambda (i) (int16_t (si-add (eval (acc-v0 i)) (eval (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int16)))))
;         (lambda (i) (int16_t (si-add (eval (acc-v1 i)) (eval (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int16))))))]
;       [(list (i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i16x64x2
;         (lambda (i) (int16_t (si-add (eval (acc-v0 i)) (eval (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int16)))))
;         (lambda (i) (int16_t (si-add (eval (acc-v1 i)) (eval (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int16))))))]
;       [(list (i32x32x2 acc-v0 acc-v1) (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i32x32x2
;         (lambda (i) (int32_t (si-add (eval (acc-v0 i)) (eval (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (data-v1 (* i 2)) 'int32)))))
;         (lambda (i) (int32_t (si-add (eval (acc-v1 i)) (eval (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (data-v1 (+ (* i 2) 1)) 'int32))))))])]
;    
;    [_ p]))
;
;;; Define commonly occuring scalar-computation patterns as funcs for re-usability and
;;; easier maintainability
;(define (do-si-cast val type) (mk-typed-expr (si-cast (eval val) type) type))
;(define (do-si-sat8 val) (mk-typed-expr (si-sat8 (eval val)) 'int8))
;(define (do-si-sat16 val) (mk-typed-expr (si-sat16 (eval val)) 'int16))
;(define (do-si-sat32 val) (mk-typed-expr (si-sat32 (eval val)) 'int32))
;(define (do-si-satu8 val) (mk-typed-expr (si-satu8 (eval val)) 'uint8))
;(define (do-si-satu16 val) (mk-typed-expr (si-satu16 (eval val)) 'uint16))
;(define (do-si-satu32 val) (mk-typed-expr (si-satu32 (eval val)) 'uint32))
;
;(define (add lhs rhs outT)
;  (mk-typed-expr (si-add (eval (do-si-cast lhs outT)) (eval (do-si-cast rhs outT))) outT))
;
;(define (add-acc acc lhs rhs outT)
;  (mk-typed-expr (si-add (eval acc) (eval (do-si-cast lhs outT)) (eval (do-si-cast rhs outT))) outT))
;
;(define (add-sat lhs rhs outT)
;  (match outT
;    ['int8 (do-si-sat8 (add lhs rhs 'int16))]
;    ['int16 (do-si-sat16 (add lhs rhs 'int32))]
;    ['int32 (do-si-sat32 (add lhs rhs 'int64))]
;    ['uint8 (if (int8_t? rhs) (do-si-satu8 (int16_t (si-add (eval (do-si-cast lhs 'int16)) (eval (do-si-cast rhs 'int16))))) (do-si-satu8 (add lhs rhs 'uint16)))]
;    ['uint16 (do-si-satu16 (add lhs rhs 'uint32))]
;    ['uint32 (do-si-satu32 (add lhs rhs 'uint64))]))
;
;(define (multiply lhs rhs outT)
;  (mk-typed-expr (si-mul (eval (do-si-cast lhs outT)) (eval (do-si-cast rhs outT))) outT))
;
;(define (multiply-add lhs w1 rhs w2 outT)
;  (mk-typed-expr
;   (si-add
;    (si-mul (eval (do-si-cast lhs outT)) (eval (do-si-cast w1 outT)))
;    (si-mul (eval (do-si-cast rhs outT)) (eval (do-si-cast w2 outT))))
;   outT))
;
;(define (multiply-add-acc lhs w1 rhs w2 acc outT)
;  (mk-typed-expr
;   (si-add
;    (eval (do-si-cast acc outT))
;    (si-add
;     (si-mul (eval (do-si-cast lhs outT)) (eval (do-si-cast w1 outT)))
;     (si-mul (eval (do-si-cast rhs outT)) (eval (do-si-cast w2 outT)))))
;   outT))

(provide synthesize-swizzles)