#lang rosette/safe

(require
  ;; This file uses these rosette unsafe ops, but they should be fine
  (only-in racket/base values error sort for/list make-hash hash-has-key? hash-ref hash-set!)
  rake/internal/debug
  rake/halide
  rake/synthesis/spec
  rake/arm/ir/instructions
  rake/arm/ir/interpreter
  rake/hvx/ir/instructions
  rake/hvx/ir/interpreter
  rake/x86/ir/instructions
  rake/x86/ir/interpreter
  rake/synthesis/lifting/synthesizer/arm
  rake/synthesis/lifting/synthesizer/hvx
  rake/synthesis/lifting/synthesizer/x86
  rake/synthesis/lifting/grammar/hvx
  rake/synthesis/lifting/grammar/arm
  rake/synthesis/lifting/grammar/x86
  rake/synthesis/lifting/grammar/util
  rake/internal/counter)

(provide synthesize-ir-expr-greedy)

(define (synthesize-ir-expr-greedy ir-name spec)
  (cond
    [(eq? ir-name 'hvx-uberinstrs)
      (display "Lifting input expression to HVX IR...\n")
      (display "=====================================\n\n")

      ;; Init state
      (set! cache (make-hash))
      (set! annotations (make-hash))
      
      (define halide-expr (spec-expr spec))
      (define axioms (spec-axioms spec))
      (define context (symbolics halide-expr))
      (define uber-instrs hvx-uber-instructions)
      (define synthesize-fn synthesize-hvx-translation)
      (define instr-counter hvx-ir:instr-count)
      
      (define st (current-seconds))
      (define res (build-ir-expr halide-expr axioms uber-instrs synthesize-fn instr-counter ir-node-id context))
      (define runtime (- (current-seconds) st))

      (hash-set! annotations (ir-node-id res) halide-expr)
      
      (if (eq? res (unsat))
          (begin
            (display "Failed to find an equivalent IR expression.\n\n")
            (display (format "Synthesis time: ~a seconds\n\n" runtime))
            (values (void) (void) (void)))
          (begin
            (display "\nSuccessfully found an equivalent IR expression.\n\n")
            (pretty-print res)
            (display (format "\nSynthesis time: ~a seconds\n\n" runtime))
            (values res annotations (get-lifted-hvx-expr-bounds))))]
    [(eq? ir-name 'arm-uberinstrs)
      (display "Lifting input expression to ARM IR...\n")
      (display "=====================================\n\n")

      ;; Init state
      (set! cache (make-hash))
      (set! annotations (make-hash))
      
      (define halide-expr (spec-expr spec))
      (define axioms (spec-axioms spec))
      (define context (symbolics halide-expr))
      (define uber-instrs arm-uber-instructions)
      (define synthesize-fn synthesize-arm-translation)
      (define instr-counter arm-ir:instr-count)
      
      (define st (current-seconds))
      (define res (build-ir-expr halide-expr axioms uber-instrs synthesize-fn instr-counter arm-ir:ast-node-id context))
      (define runtime (- (current-seconds) st))

      (hash-set! annotations (arm-ir:ast-node-id res) halide-expr)
      
      (if (eq? res (unsat))
          (begin
            (display "Failed to find an equivalent IR expression.\n\n")
            (display (format "Synthesis time: ~a seconds\n\n" runtime))
            (values (void) (void) (void)))
          (begin
            (display "\nSuccessfully found an equivalent IR expression.\n\n")
            (pretty-print res)
            (display (format "\nSynthesis time: ~a seconds\n\n" runtime))
            (values res annotations (get-lifted-arm-expr-bounds))))]

    [(eq? ir-name 'x86-uberinstrs)
      (display "Lifting input expression to x86 IR...\n")
      (display "=====================================\n\n")

      ;; Init state
      (set! cache (make-hash))
      (set! annotations (make-hash))
      
      (define halide-expr (spec-expr spec))
      (define axioms (spec-axioms spec))
      (define context (symbolics halide-expr))
      (define uber-instrs x86-uber-instructions)
      (define synthesize-fn synthesize-x86-translation)
      (define instr-counter x86-ir:instr-count)
      
      (define st (current-seconds))
      (define res (build-ir-expr halide-expr axioms uber-instrs synthesize-fn instr-counter x86-ir:ast-node-id context))
      (define runtime (- (current-seconds) st))

      (hash-set! annotations (x86-ir:ast-node-id res) halide-expr)
      
      (if (eq? res (unsat))
          (begin
            (display "(x86) Failed to find an equivalent IR expression.\n\n")
            (display (format "Synthesis time: ~a seconds\n\n" runtime))
            (values (void) (void) (void)))
          (begin
            (display "\n(x86) Successfully found an equivalent IR expression.\n\n")
            (pretty-print res)
            (display (format "\nSynthesis time: ~a seconds\n\n" runtime))
            (values res annotations (get-lifted-x86-expr-bounds))))]

    [else
      (error (format "Unrecognized lifting target IR: '~a. Supported lifting IRs: ['hvx-uberinstr | 'arm-uberinstr | 'x86-uberinstr]" ir-name))]))

(define cache (make-hash))
(define annotations (make-hash))

(define (build-ir-expr halide-expr axioms uber-instrs synthesize-translation instr-counter get-node-id context)
  (define sub-exprs (halide:sub-exprs halide-expr))

  (cond
    ;; Have we lifted this halide-expr before?
    [(hash-has-key? cache halide-expr) (hash-ref cache halide-expr)]
    [else
     ;; Lift each sub-expr recursively
     (define lifted-sub-exprs
       (for/list ([sub-expr sub-exprs])
         (define ir-equiv (build-ir-expr sub-expr axioms uber-instrs synthesize-translation instr-counter get-node-id context))
         (hash-set! annotations (get-node-id ir-equiv) sub-expr)
         ir-equiv))

    (println "Building Expr:")
    (pretty-print halide-expr)

     ;; Step 1: Folding.
     ;; Can we fold the new node into the **existing** sequence of IR instructions?
     (define fold-templates (fold-into-subexprs lifted-sub-exprs lifted-sub-exprs halide-expr uber-instrs))
     (println "Fold templates")

     (pretty-print fold-templates)
     (display "here")
     (display fold-templates)
     (newline)
     (newline)
     
     ;; Can we fold the new node into a **modified** version of the existing IR
     ;; instruction sequence? We restrict modifications such that:
     ;; - At most 1 IR instruction will  be changed.
     ;; - 0 or more IR instructions may be removed
     ;; - We only explore changing or removing the last N instructions in the sequence (N=3 atm)
     (define repl-templates (repl-subexprs lifted-sub-exprs halide-expr uber-instrs))
     (println "Replace templates")
     (pretty-print repl-templates)

     ;(pretty-print repl-templates)

     ;; Explore folding templates in increasing cost (cost is defined as the number if IR instructions)
     (define sorted-templates
       (sort (append fold-templates repl-templates) (lambda (t1 t2) (< (instr-counter t1) (instr-counter t2)))))

     (define bounded-eq? (if (interleave? halide-expr) bounded-eq-1? bounded-eq-0?))
     (define-values (success? folded-ir-expr)
       (synthesize-translation sorted-templates halide-expr axioms context bounded-eq?))
      
      (println "Success?")
      (println success?)
      (println folded-ir-expr)
     
     (cond
       [success? (hash-set! cache halide-expr folded-ir-expr) folded-ir-expr]
       [else
        ;; Step 2: We extend the IR instruction sequence with a new instruction. As long as the
        ;; computation is expressible in HVX, this should not fail.
        (define-values (success? extended-ir-expr)
          (extend-subexprs lifted-sub-exprs halide-expr axioms uber-instrs synthesize-translation context))
        
        (println "Extended success?")
        (println success?)
        (pretty-print extended-ir-expr)

        (cond
          [success? (hash-set! cache halide-expr extended-ir-expr) extended-ir-expr]
          [else (error "synthesis\\lifting\\greedy-ir-lifted.rkt: FOLD-REPLACE-EXTEND algorithm failed to lift the halide expression:" halide-expr)])])]))

;; Folding IR expressions
(define (fold-into-subexprs lifted-sub-exprs lifted-sibling-exprs halide-expr uber-instrs)
  (cond
    [(empty? lifted-sub-exprs) '()]
    [else
     (append
      (fold-into-subexpr (first lifted-sub-exprs) lifted-sibling-exprs halide-expr uber-instrs)
      (fold-into-subexprs (rest lifted-sub-exprs) lifted-sibling-exprs halide-expr uber-instrs))]))

(define (fold-into-subexpr lifted-sub-expr lifted-sibling-exprs halide-expr uber-instrs)
  (define grm-generator (lifting-ir-fold-grammar uber-instrs))
  (define templates (grm-generator lifted-sub-expr lifted-sibling-exprs halide-expr 2))
  templates)

;; Updating IR expressions
(define (repl-subexprs lifted-sub-exprs halide-expr uber-instrs)
  (cond
    [(empty? lifted-sub-exprs) '()]
    [else
     (append
      (repl-subexpr (first lifted-sub-exprs) halide-expr uber-instrs)
      (repl-subexprs (rest lifted-sub-exprs) halide-expr uber-instrs))]))

(define (repl-subexpr lifted-sub-expr halide-expr uber-instrs)
  (define grm-generator (lifting-ir-repl-grammar uber-instrs))
  (define templates (grm-generator lifted-sub-expr halide-expr 3))
  templates)

;; Extending IR expressions
(define (extend-subexprs lifted-sub-exprs halide-expr axioms uber-instrs synthesize-translation context)
  (define grm-generator (lifting-ir-extend-grammar uber-instrs))
  (define templates (grm-generator lifted-sub-exprs halide-expr))
  (define bounded-eq? bounded-eq-0?)
  (synthesize-translation templates halide-expr axioms context bounded-eq?))

(define (bounded-eq-0? oe se)
  (for-each
   (lambda (lane)
     (set-curr-cn! lane)
     (assert (eq? (oe lane) (se lane))))
   (list 0)))

(define (bounded-eq-1? oe se)
  (for-each
   (lambda (lane)
     (set-curr-cn! lane)
     (assert (eq? (oe lane) (se lane))))
   (list 0 1)))