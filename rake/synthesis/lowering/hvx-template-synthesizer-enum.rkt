#lang rosette

(require racket/engine)

(require rake/util)

(require rake/synthesis/ir)
(require rake/synthesis/spec)
(require rake/synthesis/grammar/hvx)

(require rake/hvx/ast/types)
(require rake/hvx/cost-model)
(require rake/hvx/interpreter)
(require rake/hvx/comparator)

(define MC_BND 1)

(define cache (make-hash))
(define ranked-candidates (make-hash))

(define total-synth-time 0)

(define (synthesize-hvx-template spec ir-to-hvx)
  (define ir-expr (hvx-expr-spec-expr spec))
  (define ir-expr-sol (hvx-expr-spec-sol spec))
  (define ir-expr-ctx (hvx-expr-spec-ctx spec))
  (define ir-expr-axioms (hvx-expr-spec-axioms spec))
  (define ir-expr-invalid-sketches (hvx-expr-spec-invalid-sketches spec))
  (define discarded-sols (for/list ([inv-sk ir-expr-invalid-sketches] #:when (hash-has-key? inv-sk ir-expr)) (hash-ref inv-sk ir-expr)))
  
  (define hvx-expr
    (match ir-expr
      [(packhi sub-expr signed?)
       (begin
         (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
         (define hvx-sub-expr (synthesize-hvx-template hvx-sub-spec ir-to-hvx))
         
         (display "Lifting IR to HVX...\n")
         (display "====================\n\n")
         (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))

         (reset-hvx-instr-bnd)
         (synthesize-equiv-hvx spec sub-expr hvx-sub-expr discarded-sols))]
    
      [(arith-shift-right sub-expr n round? outputType)
       (begin
         (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
         (define hvx-sub-expr (synthesize-hvx-template hvx-sub-spec ir-to-hvx))
       
         (display "Lifting IR to HVX...\n")
         (display "====================\n\n")
         (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))

         (reset-hvx-instr-bnd)
         (synthesize-equiv-hvx spec sub-expr hvx-sub-expr discarded-sols))]

      [(convolve sub-expr kernel saturateFunc outputType)
       (begin
         (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
         (define hvx-sub-expr (synthesize-hvx-template hvx-sub-spec ir-to-hvx))
         
         (display "Lifting IR to HVX...\n")
         (display "====================\n\n")
         (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))

         ;; If not already available, enumerate ranked candidate translations
         (when (not (hash-has-key? ranked-candidates ir-expr))
           (hash-set! ranked-candidates ir-expr (enumerate-hvx-exprs (hvx-expr-spec-expr spec) hvx-sub-expr)))

         (synthesize-equiv-hvx-enum spec outputType hvx-sub-expr (hash-ref ranked-candidates ir-expr) discarded-sols))]

      [(cast sub-expr type)
       (begin
         (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
         (define hvx-sub-expr (synthesize-hvx-template hvx-sub-spec ir-to-hvx))
         
         (display "Lifting IR to HVX...\n")
         (display "====================\n\n")
         (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))
         
         (reset-hvx-instr-bnd)
         (synthesize-equiv-hvx spec sub-expr hvx-sub-expr discarded-sols))]

      [(load-data opts)
       (begin
         (display "Lifting IR to HVX...\n")
         (display "====================\n\n")
         (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))
         (define hvx-expr (gather* opts))
         (display "Successfully found an equivalent HVX expression.\n\n")
         (debug (format "~a\n" (pretty-format hvx-expr)))
         (debug (format "Synthesis time: 0 seconds\n"))
         hvx-expr)]

      [_ (error "NYI")]))

  (hash-set! ir-to-hvx ir-expr hvx-expr)
  hvx-expr)

;; Define enumerative synthesis loop for HVX exppression generation
(define (synthesize-equiv-hvx-enum spec output-type hvx-sub-expr ranked-candidates-exprs discarded-sols)
  (define ir-expr (hvx-expr-spec-expr spec))
  (define ir-expr-sol (hvx-expr-spec-sol spec))
  (define ir-expr-ctx (hvx-expr-spec-ctx spec))
  (define ir-expr-axioms (hvx-expr-spec-axioms spec))
  
  (define (bounded-eq? oe se lanes)
    (for ([i lanes])
      (cond
        [(hvx-pair? se)
         (set-curr-cn-ir i)
         (set-curr-cn-hvx i)
         (assert (eq? (evaluate (elem-ir oe i) ir-expr-sol) (v0-elem-hvx se i)))
         (set-curr-cn-ir (+ i 1))
         (set-curr-cn-hvx (+ i 1))
         (assert (eq? (evaluate (elem-ir oe (+ i 1)) ir-expr-sol) (v1-elem-hvx se i)))
         ;(set-curr-cn-ir (+ i 2))
         ;(set-curr-cn-hvx (+ i 2))
         ;(assert (eq? (evaluate (elem-ir oe (+ i 2)) ir-expr-sol) (v1-elem-hvx se (+ i 2))))
         ]
        [else
         (set-curr-cn-ir i)
         (set-curr-cn-hvx i)
         (assert (eq? (evaluate (elem-ir oe i) ir-expr-sol) (elem-hvx se i)))
         (set-curr-cn-ir (+ i 1))
         (set-curr-cn-hvx (+ i 1))
         (assert (eq? (evaluate (elem-ir oe (+ i 1)) ir-expr-sol) (elem-hvx se (+ i 1))))])))
  (define (find-next-impl candidate-hvx-exprs)
    (cond
      [(empty? candidate-hvx-exprs) (unsat)]
      [else 
       (define candidate-expr (first candidate-hvx-exprs))
       (cond
         [(hash-has-key? cache candidate-expr) (find-next-impl (rest candidate-hvx-exprs))]
         [else
          (hash-clear! hvx-gather-tables)
          (hash-clear! hvx-gather-types)
          
          (define original-expr (interpret-ir ir-expr))
          (define synthesized-expr (interpret-hvx candidate-expr))

          (define synthesizer
            (engine
             (λ (_)
               (define st (current-milliseconds))
               (define sol (synthesize #:forall ir-expr-ctx
                                       #:guarantee (begin
                                                     (bounded-eq? original-expr synthesized-expr MC_BND)
                                                     (for ([discarded-sol discarded-sols])
                                                       (assert (not (equal-expr-hvx? discarded-sol candidate-expr)))))))
               ;(hash-set! cache candidate-expr sol)
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
             (find-next-impl (rest candidate-hvx-exprs))]
            [(unsat? sol)
             (hash-set! cache candidate-expr sol)
             (find-next-impl (rest candidate-hvx-exprs))]
            [else
             (display "\nSuccessfully found an equivalent HVX expression.\n\n")
             (pretty-print (evaluate candidate-expr sol))
             (display "\n")
             (evaluate candidate-expr sol)])])]))

  (define (search-candidates sorted-costs ranked-candidates-exprs)
    (cond
      [(empty? sorted-costs)
       (display "\nFailed to find an equivalent HVX expression -- Search space exhausted.\n\n")
       (display (format "Total synthesis time: ~a" total-synth-time))
       (exit)
       (unsat)]
      [else 
       (define cost (first sorted-costs))
       (display (format "\nScanning expressions with cost: ~a\n\n" cost))
       (define hvx-impl (find-next-impl (set->list (hash-ref ranked-candidates-exprs cost))))
       (cond
         [(unsat? hvx-impl) (search-candidates (rest sorted-costs) ranked-candidates-exprs)]
         [else hvx-impl])]))

  (display "Enumerating HVX Expressions...\n")
  
  (define sorted-costs (sort (hash-keys ranked-candidates-exprs) <))
  
  (clear-asserts!)
  (for ([axiom ir-expr-axioms]) (assert axiom))
  (search-candidates sorted-costs ranked-candidates-exprs))

;; Define incremental synthesis loop for HVX expression generation
(define (synthesize-equiv-hvx spec sub-expr hvx-sub-expr discarded-sols)
  (if (not (hvx-instr-limit-exceeded?))
      (begin
        (display "Generating HVX Grammar...\n")
        (debug (format "Number of instructions: ~a" (hvx-instr-bnd)))
        (debug (format "Set of instructions: Specialized\n"))
        
        (define ??hvx-expr-grm (generate-hvx-grammar (hvx-expr-spec-expr spec) sub-expr hvx-sub-expr))
        (define res (synthesize-optimal spec ??hvx-expr-grm basic-expr-cost hvx-sub-expr discarded-sols))
        
        (if (eq? res (unsat))
            (begin
              (increment-hvx-instr-bnd)
              (synthesize-equiv-hvx spec sub-expr hvx-sub-expr discarded-sols))
            res))
      (begin
        (display "Maximum instruction bound reached. Giving up.\n\n")
        (exit)
        (void))))

(define (synthesize-optimal spec ??hvx-expr-grm cost-model hvx-sub-expr discarded-sols [curr-best-sol (void)])
  (define ir-expr (hvx-expr-spec-expr spec))
  (define ir-expr-sol (hvx-expr-spec-sol spec))
  (define ir-expr-ctx (hvx-expr-spec-ctx spec))
  (define ir-expr-axioms (hvx-expr-spec-axioms spec))

  (define synthesized-hvx-expr (??hvx-expr-grm))

;  (println synthesized-hvx-expr)
;  (println discarded-sols)
;
;  (set-curr-cn-ir 0)
;  (set-curr-cn-hvx 0)
;
;  (println (evaluate (elem-ir (interpret-ir ir-expr) 0) ir-expr-sol))
;  (println (elem-hvx (interpret-hvx synthesized-hvx-expr) 0))
;
;  (set-curr-cn-ir 1)
;  (set-curr-cn-hvx 1)
;
;  (println (evaluate (elem-ir (interpret-ir ir-expr) 1) ir-expr-sol))
;  (println (elem-hvx (interpret-hvx synthesized-hvx-expr) 1))
;
;  (exit)
  
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
                                       (when (not (eq? curr-best-cost +inf.0)) (assert (< (cost-model synthesized-hvx-expr) curr-best-cost)))
                                       (for ([discarded-sol discarded-sols])
                                         (assert (not (equal-expr-hvx? discarded-sol synthesized-hvx-expr)))))))
  (define runtime (- (current-seconds) st))

  (cond
    [(unsat? sol) (cond
                    [(void? curr-best-sol) (display "Failed to find an equivalent HVX expression.\n\n")
                                           (debug (format "Synthesis time: ~a seconds\n" runtime))
                                           sol]
                    [else (display (format "Failed to find an equivalent HVX expression with cost lower than ~a.\n\n" curr-best-cost))
                          (debug (format "Synthesis time: ~a seconds\n" runtime))
                          curr-best-sol])]
    [else (display "Successfully found an equivalent HVX expression.\n\n")
          (debug (format "~a\n" (pretty-format (evaluate synthesized-hvx-expr sol))))
          (debug (format "Expression cost: ~a\n" (cost-model (evaluate synthesized-hvx-expr sol))))
          (debug (format "Synthesis time: ~a seconds\n" runtime))
          (display "Searching for a more optimal solution...\n\n")
          (synthesize-optimal spec ??hvx-expr-grm cost-model hvx-sub-expr discarded-sols (evaluate synthesized-hvx-expr sol))]))

(provide (rename-out [synthesize-hvx-template synthesize-hvx-template-enum]))