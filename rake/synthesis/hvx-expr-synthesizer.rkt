#lang rosette

(require rake/util)

(require rake/synthesis/ir)
(require rake/synthesis/spec)
(require rake/synthesis/grammar/hvx)

(require rake/hvx/ast/types)
(require rake/hvx/cost-model)
(require rake/hvx/interpreter)

(define MC_BND 1)

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

    [(cast sub-expr type)
     (begin
       (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms))
       (define hvx-sub-expr (synthesize-hvx-expr hvx-sub-spec))
       (display "Lifting IR to HVX...\n")
       (display "====================\n")
       (display (format "IR Operation: ~a\n\n" ir-expr))
       (reset-hvx-instr-bnd)
       (synthesize-equiv-hvx spec sub-expr hvx-sub-expr))]

    [(load-data opts)
     (begin
       (display "Lifting IR to HVX...\n")
       (display "====================\n")
       (display (format "IR Operation: ~a\n\n" ir-expr))
       (define hvx-expr (gather* opts))
       (display "Successfully found an equivalent HVX expression.\n\n")
       (debug (format "~a\n\n" hvx-expr))
       (debug (format "Synthesis time: 0 seconds\n\n"))
       hvx-expr)]

    [_ (error "NYI")]))

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

(provide synthesize-hvx-expr)
 ;(except-out (all-defined-out) interpret set-curr-cn curr-cn elem) (rename-out [interpret interpret-ir] [set-curr-cn set-curr-cn-ir] [elem elem-ir]))