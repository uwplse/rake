#lang rosette

(require rake/util)

(require rake/halide/ir/types)
(require rake/halide/ir/analysis)
(require rake/halide/ir/interpreter)

(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)
(require rake/hvx/cost-model)
(require rake/hvx/interpreter)

(require rake/synthesis/ir)
(require rake/synthesis/spec)
(require rake/synthesis/grammar/ir)
(require rake/synthesis/grammar/hvx)

(define MC_BND 1)

(define (synthesize-hvx spec [spec-lang 'halide-ir])
  (cond
    [(eq? spec-lang 'halide-ir)
     (define halide-expr (synthesis-spec-expr spec))
     (define halide-expr-axioms (synthesis-spec-axioms spec))
     
     ;; Extract the set of buffer reads
     (define buff-reads (extract-buf-reads-hal halide-expr))

     ;(define abstracted-buff-reads (abstract-arr-accesses buff-reads))
     
     ;; Extract the set of constant multiplication factors
     (define add-consts (set->list (list->set (extract-add-consts-hal halide-expr))))
     (define sub-consts (set->list (list->set (extract-sub-consts-hal halide-expr))))
     (define mul-consts (set->list (list->set (extract-mul-consts-hal halide-expr))))
     (define div-consts (set->list (list->set (extract-div-consts-hal halide-expr))))

     ;; Extract the set of live ops
     (define live-ops (list->set (extract-live-ops-hal halide-expr)))

     ;; Define context
     (define halide-expr-ctx (symbolics halide-expr))
     
     ;; Define the specification for synthesizing equiv expr in our IR
     (define ir-spec (ir-expr-spec halide-expr (symbolics halide-expr) halide-expr-axioms buff-reads live-ops add-consts sub-consts mul-consts div-consts))
    
     ;; Synthesize equivalent expression in IR
     (init-ir-grammar-generator)
     (define stage1_res (synthesize-ir-expr ir-spec))

     (when (not (void? stage1_res))
       (define ir-expr (car stage1_res))
       (define ir-expr-sol (cdr stage1_res))

       ;; Define the ir specification for stage 1
       (define hvx-spec (hvx-expr-spec ir-expr ir-expr-sol halide-expr-ctx halide-expr-axioms))

       ;; Synthesize equivalent HVX expression for each Op in the IR
       (define hvx-expr (synthesize-hvx-expr hvx-spec))

       (when (not (unsat? hvx-expr))
       
         ;; Full verification
         (if (verify-equiv? halide-expr hvx-expr halide-expr-ctx halide-expr-axioms)
             (begin (display "Synthesized solution is correct.\n\n") hvx-expr)
             (begin (display "Synthesized solution is incorrect.\n\n") #f))))]

    [else (error "Input specification is provided in a language I don't understand:" spec-lang)]))

(require rake/cpp/types)
(require rosette/lib/synthax)

;; Define incremental synthesis loop for ir-expr generation
(define (synthesize-ir-expr spec)
  (if (not (ir-instr-limit-exceeded?))
      (begin
        (display "Generating IR Grammar...\n")
        (display "========================\n")
        (debug (format "Number of instructions: ~a\n" (ir-instr-bnd)))
        (debug (format "Saturation arithmetic: ~a\n" (if (ir-sat-arith?) "Enabled" "Disabled")))
        (debug (format "Set of operators: ~a\n\n" (if (ir-specialized-ops?) "Specialized" "Full")))

        ;; Generate a specialized grammar based on 
        (define ??ir-grammar (generate-ir-grammar spec))
        (define synthesized-expr (??ir-grammar))
        (define orig-expr (ir-expr-spec-expr spec))

        (define VEC_LANES (num-elems-hal orig-expr))   
        
        ;; Verification conditions
        (define (bounded-eq? oe se lanes)
          (for ([i lanes])
            (set-curr-cn-ir i)
            (assert (eq? (oe i) (elem-ir se i)))
            (set-curr-cn-ir (+ i (/ VEC_LANES 2) 1))
            (assert (eq? (oe (+ i (/ VEC_LANES 2) 1)) (elem-ir se (+ i (/ VEC_LANES 2) 1))))))
        
        (display "Searching...\n")``
        (display "============\n")

        ;; Synthesize expression
        (clear-asserts!)
        (for ([axiom (ir-expr-spec-axioms spec)]) (assert axiom))
        (define st (current-seconds))
        (define sol (synthesize #:forall (ir-expr-spec-ctx spec)
                                #:guarantee (bounded-eq? (interpret-halide orig-expr) (interpret-ir synthesized-expr) MC_BND)))
        (define runtime (- (current-seconds) st))

        (if (eq? sol (unsat))
            (begin
              (display "Failed to find an equivalent IR expression.\n\n")
              (debug (format "Synthesis time: ~a seconds\n\n" runtime))
              (increment-ir-instr-bnd)
              (synthesize-ir-expr spec))
            (begin
              (display "Successfully found an equivalent IR expression.\n\n")
              (debug (format "~a\n\n" (evaluate synthesized-expr sol)))
              (debug (format "Synthesis time: ~a seconds\n\n" runtime))
              (cons (evaluate synthesized-expr sol) sol))))
      (begin
        (display "Maximum instruction bound reached. Giving up.\n\n")
        (void))))

(define (synthesize-hvx-expr spec)
  (define ir-expr (hvx-expr-spec-expr spec))
  (define ir-expr-sol (hvx-expr-spec-sol spec))
  (define ir-expr-ctx (hvx-expr-spec-ctx spec))
  (define ir-expr-axioms (hvx-expr-spec-axioms spec))
  
  (match ir-expr
    [(packhi sub-expr signed?)
     (begin
       (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms))
       (define hvx-sub-expr (synthesize-hvx-expr hvx-sub-spec))
       (display "Lifting IR to HVX...\n")
       (display "====================\n")
       (display (format "IR Operation: ~a\n\n" ir-expr))
       (reset-hvx-instr-bnd)
       (synthesize-equiv-hvx spec sub-expr hvx-sub-expr))]
    
    [(arith-shift-right sub-expr n round? outputType)
     (begin
       (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms))
       (define hvx-sub-expr (synthesize-hvx-expr hvx-sub-spec))
       (display "Lifting IR to HVX...\n")
       (display "====================\n")
       (display (format "IR Operation: ~a\n\n" ir-expr))
       (reset-hvx-instr-bnd)
       (synthesize-equiv-hvx spec sub-expr hvx-sub-expr))]

    [(convolve sub-expr kernel saturateFunc outputType)
     (begin
       (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms))
       (define hvx-sub-expr (synthesize-hvx-expr hvx-sub-spec))
       (display "Lifting IR to HVX...\n")
       (display "====================\n")
       (display (format "IR Operation: ~a\n\n" ir-expr))
       (reset-hvx-instr-bnd)
       (synthesize-equiv-hvx spec sub-expr hvx-sub-expr))]

    [(load-data opts) (gather* opts)]

    [_ (println "NYI")]))

;; Define modular synthesis loop for HVX expression generation
(define (synthesize-equiv-hvx spec sub-expr hvx-sub-expr)
  (if (not (hvx-instr-limit-exceeded?))
      (begin
        (display "Generating HVX Grammar...\n")
        (display "=========================\n")
        (debug (format "Number of instructions: ~a\n" (hvx-instr-bnd)))
        (debug (format "Set of instructions: Specialized\n\n"))

        (define ??hvx-expr-grm (generate-hvx-grammar (hvx-expr-spec-expr spec) sub-expr hvx-sub-expr))
        (define st (current-seconds))
        (define res (synthesize-optimal spec ??hvx-expr-grm basic-expr-cost hvx-sub-expr))
        
        (if (eq? res (unsat))
            (begin
              (display "Failed to find an equivalent HVX expression.\n\n")
              (increment-hvx-instr-bnd)
              (synthesize-equiv-hvx spec sub-expr hvx-sub-expr))
            res))
      (begin
        (display "Maximum instruction bound reached. Giving up.\n\n")
        (exit)
        (void))))

(define (synthesize-optimal spec ??hvx-expr-grm cost-model hvx-sub-expr [curr-best-sol (void)])
  (define ir-expr (hvx-expr-spec-expr spec))
  (define ir-expr-sol (hvx-expr-spec-sol spec))
  (define ir-expr-ctx (hvx-expr-spec-ctx spec))
  (define ir-expr-axioms (hvx-expr-spec-axioms spec))

  (define synthesized-hvx-expr (??hvx-expr-grm))

  (define (bounded-eq? oe se lanes)    
    (for ([i lanes])
      (cond
        [(hvx-pair? se)
         (set-curr-cn-ir i)
         (set-curr-cn-hvx i)
         (assert (eq? (evaluate (elem-ir oe i) ir-expr-sol) (v0-elem-hvx se i)))
         (set-curr-cn-ir (+ i 1))
         (set-curr-cn-hvx (+ i 1))
         (assert (eq? (evaluate (elem-ir oe (+ i 1)) ir-expr-sol) (v1-elem-hvx se (+ i 1))))]
        [else
         (set-curr-cn-ir i)
         (set-curr-cn-hvx i)
         (assert (eq? (evaluate (elem-ir oe i) ir-expr-sol) (elem-hvx se i)))
         (set-curr-cn-ir (+ i 1))
         (set-curr-cn-hvx (+ i 1))
         (assert (eq? (evaluate (elem-ir oe (+ i 1)) ir-expr-sol) (elem-hvx se (+ i 1))))])))

  (define curr-best-cost (if (void? curr-best-sol) +inf.0 (cost-model curr-best-sol)))

  (clear-asserts!)
  (for ([axiom ir-expr-axioms]) (assert axiom))
  (define st (current-seconds))
  (define sol (synthesize #:forall ir-expr-ctx
                          #:guarantee (begin
                                       (bounded-eq? (interpret-ir ir-expr) (interpret-hvx synthesized-hvx-expr) MC_BND)
                                       (when (not (eq? curr-best-cost +inf.0)) (assert (< (cost-model synthesized-hvx-expr) curr-best-cost))))))
  (define runtime (- (current-seconds) st))

  (cond
    [(unsat? sol) (cond
                    [(void? curr-best-sol) sol]
                    [else (display (format "Failed to find an equivalent HVX expression with cost lower than ~a.\n\n" curr-best-cost))
                          (debug (format "Synthesis time: ~a seconds\n\n" runtime))
                          curr-best-sol])]
    [else (display "Successfully found an equivalent HVX expression.\n\n")
          (debug (format "~a\n\n" (evaluate synthesized-hvx-expr sol)))
          (debug (format "Expression cost: ~a\n\n" (cost-model (evaluate synthesized-hvx-expr sol))))
          (debug (format "Synthesis time: ~a seconds\n\n" runtime))
          (display "Searching for a more optimal solution...\n\n")
          (synthesize-optimal spec ??hvx-expr-grm cost-model hvx-sub-expr (evaluate synthesized-hvx-expr sol))]))

(define (verify-equiv? halide-spec hvx-expr ctx axioms)
  (display "Verifying expression equivalence over full-length vectors...\n")
  (display "============================================================\n")

  (define VEC_LANES (num-elems-hal halide-spec))

  ;; The visitor clones each node in the AST, converting it from a graph to a tree
  (define (iden node) node)
  (set! hvx-expr (visit-hvx hvx-expr iden))

  (define interpreted-s-expr (interpret-hvx hvx-expr))
  (define interpreted-o-expr (interpret-halide halide-spec))

  ;; Verify multiple lanes at once (Slower...takes 1554 seconds (128 lanes) for baseline gaussian stage 2 example)
  (define (equiv-output? oe se)
    (for ([lane 8])
      (cond
        [(hvx-pair? se)
         (set-curr-cn-hvx lane)
         (assert (eq? (oe lane) (v0-elem-hvx se lane)))]
        [else
         (set-curr-cn-hvx lane)
         (assert (eq? (oe lane) (elem-hvx se lane)))])))
  
  (clear-asserts!)
  (for ([axiom axioms]) (assert axiom))
  (define st (current-seconds))
  (define sol (synthesize #:forall ctx
                          #:guarantee (equiv-output? interpreted-o-expr interpreted-s-expr)))
  (define runtime (- (current-seconds) st))
  (define correct? (not (unsat? sol)))

  ;; Verify all lanes incrementally (Faster...takes 30 seconds for baseline gaussian stage 2 example)
  (define (lane-eq? oe se lane)
    (cond
      [(hvx-pair? se)
       (set-curr-cn-hvx lane)
       (assert (eq? (oe lane) (v0-elem-hvx se lane)))]
      [else
       (set-curr-cn-hvx lane)
       (assert (eq? (oe lane) (elem-hvx se lane)))]))
  
  (define sols (list))
  (clear-asserts!)
  (for ([axiom axioms]) (assert axiom))
  (set! st (current-seconds))
  (for ([lane VEC_LANES])
    (set-curr-cn-hvx lane)
    (define sol (synthesize #:forall ctx
                            #:guarantee (lane-eq? interpreted-o-expr interpreted-s-expr lane)))
    (set! sols (append sols (list sol))))
  (set! runtime (- (current-seconds) st))
  (set! correct? (and correct? (eq? (vec-len halide-spec) (num-elems-hvx interpreted-s-expr)) (not (for/or ([sol sols]) (unsat? sol)))))
  
  ;; Print solution
  (debug (format "Verification time: ~a seconds\n\n" runtime))

  correct?)

;; We can simplify our verification query by replacing each array access as a unique symbolic variable.
;; This allows z3 to not reason about the indexing expressions.
;; Currently, I am assuming that if two indexing expression generated by Halide are *syntactically* different, then they access
;; different points of the array. If this assumption is incorrect, we can easily make a z3 query to confirm this assumption before
;; applying the simplification.
(define abstractions (make-hash))

(define (abstract-arr-accesses buff-reads)
  (for/list ([lane-buff-reads buff-reads])
    (for/list ([buff-read lane-buff-reads])
      (define v (eval buff-read))
      (define t (type buff-read))
      (define bits (bw buff-read))
      (when (not (hash-has-key? abstractions v))
        (define-symbolic* arr-read (bitvector bits))
        (hash-set! abstractions v (mk-typed-expr arr-read t)))
      (hash-ref abstractions v))))

(define (replace-arr-accesses expr)
  (match expr
    [(int8_t v) (int8_t (replace-arr-accesses v))]
    [(int16_t v) (int16_t (replace-arr-accesses v))]
    [(int32_t v) (int32_t (replace-arr-accesses v))]
    [(uint8_t v) (uint8_t (replace-arr-accesses v))]
    [(uint16_t v) (uint16_t (replace-arr-accesses v))]
    [(uint32_t v) (uint32_t (replace-arr-accesses v))]

    [(expression op operands ...)

     ;; Silly workaround -- ask rosette folks how to do this properly
     (define-symbolic hack (~> integer? (bitvector 16)))
     (define hack2 (hack 0))
     (define app (match hack2 [(expression op2 ops2 ...) op2]))

     (cond
       [(eq? op bvadd) (foldr bvadd (replace-arr-accesses (car operands)) (for/list ([operand (cdr operands)]) (replace-arr-accesses operand)))]
       [(eq? op bvmul) (foldr bvmul (replace-arr-accesses (car operands)) (for/list ([operand (cdr operands)]) (replace-arr-accesses operand)))]
       [(eq? op bvsdiv) (bvsdiv (replace-arr-accesses (list-ref operands 0)) (replace-arr-accesses (list-ref operands 1)))]
       [(eq? op bvudiv) (bvudiv (replace-arr-accesses (list-ref operands 0)) (replace-arr-accesses (list-ref operands 1)))]
       [(eq? op extract) (extract (list-ref operands 0) (list-ref operands 1) (replace-arr-accesses (list-ref operands 3)))]
       [(eq? op zero-extend) (zero-extend (replace-arr-accesses (list-ref operands 0)) (list-ref operands 1))]
       [(eq? op app) (eval (hash-ref abstractions expr))]
       [else (error "NYI: abstract array accesses for" expr)])]
     
    [_ expr]))

(provide synthesize-hvx)