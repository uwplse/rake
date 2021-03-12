#lang rosette

(require racket/engine)

(require rake/util)

(require rake/synthesis/ir)
(require rake/synthesis/spec)
(require rake/synthesis/grammar/arm)

(require rake/arm/ast/types)
(require rake/arm/cost-model)
(require rake/arm/interpreter)
(require rake/arm/comparator)

(define MC_BND 1)

(define cache (make-hash))
(define ranked-candidates (make-hash))

(define total-synth-time 0)

(define (synthesize-arm-template spec ir-to-arm)
  (define ir-expr (arm-expr-spec-expr spec))
  (define ir-expr-sol (arm-expr-spec-sol spec))
  (define ir-expr-ctx (arm-expr-spec-ctx spec))
  (define ir-expr-axioms (arm-expr-spec-axioms spec))
  (define ir-expr-invalid-sketches (arm-expr-spec-invalid-sketches spec))
  (define discarded-sols (for/list ([inv-sk ir-expr-invalid-sketches] #:when (hash-has-key? inv-sk ir-expr)) (hash-ref inv-sk ir-expr)))
  
  (define arm-expr
    (match ir-expr
;      [(packhi sub-expr signed?)
;       (begin
;         (define arm-sub-spec (arm-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
;         (define arm-sub-expr (synthesize-arm-template arm-sub-spec ir-to-arm))
;         
;         (display "Lifting IR to arm...\n")
;         (display "====================\n\n")
;         (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))
;
;         (reset-arm-instr-bnd)
;         (synthesize-equiv-arm spec sub-expr arm-sub-expr discarded-sols))]
;    
;      [(arith-shift-right sub-expr n round? outputType)
;       (begin
;         (define arm-sub-spec (arm-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
;         (define arm-sub-expr (synthesize-arm-template arm-sub-spec ir-to-arm))
;       
;         (display "Lifting IR to arm...\n")
;         (display "====================\n\n")
;         (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))
;
;         (reset-arm-instr-bnd)
;         (synthesize-equiv-arm spec sub-expr arm-sub-expr discarded-sols))]

      [(convolve sub-expr kernel saturateFunc outputType)
       (begin
         (define arm-sub-spec (arm-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
         (define arm-sub-expr (synthesize-arm-template arm-sub-spec ir-to-arm))
         
         (display "Lifting IR to ARM...\n")
         (display "====================\n\n")
         (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))

         ;; If not already available, enumerate ranked candidate translations
         (when (not (hash-has-key? ranked-candidates ir-expr))
           (hash-set! ranked-candidates ir-expr (enumerate-arm-exprs (arm-expr-spec-expr spec) arm-sub-expr)))

         (synthesize-equiv-arm-enum spec outputType arm-sub-expr (hash-ref ranked-candidates ir-expr) discarded-sols))]

;      [(cast sub-expr type)
;       (begin
;         (define arm-sub-spec (arm-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
;         (define arm-sub-expr (synthesize-arm-template arm-sub-spec ir-to-arm))
;         
;         (display "Lifting IR to arm...\n")
;         (display "====================\n\n")
;         (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))
;         
;         (reset-arm-instr-bnd)
;         (synthesize-equiv-arm spec sub-expr arm-sub-expr discarded-sols))]

      [(load-data opts)
       (begin
         (display "Lifting IR to ARM...\n")
         (display "====================\n\n")
         (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))
         (define arm-expr (gather* opts))
         (display "Successfully found an equivalent ARM expression.\n\n")
         (debug (format "~a\n" (pretty-format arm-expr)))
         (debug (format "Synthesis time: 0 seconds\n"))
         arm-expr)]

      [_ (error "NYI")]))

  (hash-set! ir-to-arm ir-expr arm-expr)
  arm-expr)

;; Define enumerative synthesis loop for ARM exppression generation
(define (synthesize-equiv-arm-enum spec output-type arm-sub-expr ranked-candidates-exprs discarded-sols)
  (define ir-expr (arm-expr-spec-expr spec))
  (define ir-expr-sol (arm-expr-spec-sol spec))
  (define ir-expr-ctx (arm-expr-spec-ctx spec))
  (define ir-expr-axioms (arm-expr-spec-axioms spec))
  
  (define (bounded-eq? oe se lanes)
    #t)
  
  (define (find-next-impl candidate-arm-exprs)
    (cond
      [(empty? candidate-arm-exprs) (unsat)]
      [else 
       (define candidate-expr (first candidate-arm-exprs))
       (cond
         [(hash-has-key? cache candidate-expr) (find-next-impl (rest candidate-arm-exprs))]
         [else
          ;(hash-clear! arm-gather-tables)
          ;(hash-clear! arm-gather-types)
          
          (define original-expr (interpret-ir ir-expr))
          (define synthesized-expr (interpret-arm candidate-expr))

          (define synthesizer
            (engine
             (λ (_)
               (define st (current-milliseconds))
               (define sol (synthesize #:forall ir-expr-ctx
                                       #:guarantee (begin
                                                     (bounded-eq? original-expr synthesized-expr MC_BND)
                                                     (for ([discarded-sol discarded-sols])
                                                       (assert (not (equal-expr-arm? discarded-sol candidate-expr)))))))
               (define runtime (- (current-milliseconds) st))
               (display (format "Synthesis time: ~ams\n" runtime))
               (set! total-synth-time (+ total-synth-time runtime))
               
               sol)))

          (engine-run 600000 synthesizer)
          
          (define sol (engine-result synthesizer))

          (cond
            [(eq? sol #f)
             (display (format "Time-out: 10mins\n"))
             (hash-set! cache candidate-expr (unsat))
             (find-next-impl (rest candidate-arm-exprs))]
            [(unsat? sol)
             (hash-set! cache candidate-expr sol)
             (find-next-impl (rest candidate-arm-exprs))]
            [else
             (display "\nSuccessfully found an equivalent arm expression.\n\n")
             (pretty-print (evaluate candidate-expr sol))
             (display "\n")
             (evaluate candidate-expr sol)])])]))

  (define (search-candidates sorted-costs ranked-candidates-exprs)
    (cond
      [(empty? sorted-costs)
       (display "\nFailed to find an equivalent ARM expression -- Search space exhausted.\n\n")
       (display (format "Total synthesis time: ~a" total-synth-time))
       (exit)
       (unsat)]
      [else 
       (define cost (first sorted-costs))
       (display (format "\nScanning expressions with cost: ~a\n\n" cost))
       (define arm-impl (find-next-impl (set->list (hash-ref ranked-candidates-exprs cost))))
       (cond
         [(unsat? arm-impl) (search-candidates (rest sorted-costs) ranked-candidates-exprs)]
         [else arm-impl])]))

  (display "Enumerating ARM Expressions...\n")
  
  (define sorted-costs (sort (hash-keys ranked-candidates-exprs) <))
  
  (clear-asserts!)
  (for ([axiom ir-expr-axioms]) (assert axiom))
  (search-candidates sorted-costs ranked-candidates-exprs))

;;; Define incremental synthesis loop for arm expression generation
;(define (synthesize-equiv-arm spec sub-expr arm-sub-expr discarded-sols)
;  (if (not (arm-instr-limit-exceeded?))
;      (begin
;        (display "Generating arm Grammar...\n")
;        (debug (format "Number of instructions: ~a" (arm-instr-bnd)))
;        (debug (format "Set of instructions: Specialized\n"))
;        
;        (define ??arm-expr-grm (generate-arm-grammar (arm-expr-spec-expr spec) sub-expr arm-sub-expr))
;        (define res (synthesize-optimal spec ??arm-expr-grm basic-expr-cost arm-sub-expr discarded-sols))
;        
;        (if (eq? res (unsat))
;            (begin
;              (increment-arm-instr-bnd)
;              (synthesize-equiv-arm spec sub-expr arm-sub-expr discarded-sols))
;            res))
;      (begin
;        (display "Maximum instruction bound reached. Giving up.\n\n")
;        (exit)
;        (void))))
;
;(define (synthesize-optimal spec ??arm-expr-grm cost-model arm-sub-expr discarded-sols [curr-best-sol (void)])
;  (define ir-expr (arm-expr-spec-expr spec))
;  (define ir-expr-sol (arm-expr-spec-sol spec))
;  (define ir-expr-ctx (arm-expr-spec-ctx spec))
;  (define ir-expr-axioms (arm-expr-spec-axioms spec))
;
;  (define synthesized-arm-expr (??arm-expr-grm))
;  
;  (define (bounded-eq? oe se lanes)
;    (for ([i lanes])
;      (cond
;        [(arm-pair? se)
;         (set-curr-cn-ir i)
;         (set-curr-cn-arm i)
;         (assert (eq? (evaluate (elem-ir oe i) ir-expr-sol) (v0-elem-arm se i)))
;         (set-curr-cn-ir (+ i 1))
;         (set-curr-cn-arm (+ i 1))
;         (assert (eq? (evaluate (elem-ir oe (+ i 1)) ir-expr-sol) (v1-elem-arm se (+ i 1))))]
;        [else
;         (set-curr-cn-ir i)
;         (set-curr-cn-arm i)
;         (assert (eq? (evaluate (elem-ir oe i) ir-expr-sol) (elem-arm se i)))
;         (set-curr-cn-ir (+ i 1))
;         (set-curr-cn-arm (+ i 1))
;         (assert (eq? (evaluate (elem-ir oe (+ i 1)) ir-expr-sol) (elem-arm se (+ i 1))))])))
;
;  (define curr-best-cost (if (void? curr-best-sol) +inf.0 (cost-model curr-best-sol)))
;
;  (clear-asserts!)
;  (for ([axiom ir-expr-axioms]) (assert axiom))
;  (define st (current-seconds))
;  (define sol (synthesize #:forall ir-expr-ctx
;                          #:guarantee (begin
;                                       (bounded-eq? (interpret-ir ir-expr) (interpret-arm synthesized-arm-expr) MC_BND)
;                                       (when (not (eq? curr-best-cost +inf.0)) (assert (< (cost-model synthesized-arm-expr) curr-best-cost)))
;                                       (for ([discarded-sol discarded-sols])
;                                         (assert (not (equal-expr-arm? discarded-sol synthesized-arm-expr)))))))
;  (define runtime (- (current-seconds) st))
;
;  (cond
;    [(unsat? sol) (cond
;                    [(void? curr-best-sol) (display "Failed to find an equivalent arm expression.\n\n")
;                                           (debug (format "Synthesis time: ~a seconds\n" runtime))
;                                           sol]
;                    [else (display (format "Failed to find an equivalent arm expression with cost lower than ~a.\n\n" curr-best-cost))
;                          (debug (format "Synthesis time: ~a seconds\n" runtime))
;                          curr-best-sol])]
;    [else (display "Successfully found an equivalent arm expression.\n\n")
;          (debug (format "~a\n" (pretty-format (evaluate synthesized-arm-expr sol))))
;          (debug (format "Expression cost: ~a\n" (cost-model (evaluate synthesized-arm-expr sol))))
;          (debug (format "Synthesis time: ~a seconds\n" runtime))
;          (display "Searching for a more optimal solution...\n\n")
;          (synthesize-optimal spec ??arm-expr-grm cost-model arm-sub-expr discarded-sols (evaluate synthesized-arm-expr sol))]))

(provide (rename-out [synthesize-arm-template synthesize-arm-template-enum]))