#lang rosette

(require rake/util)

(require rake/halide/ir/types)
(require rake/halide/ir/analysis)
(require rake/halide/ir/interpreter)

(require rake/synthesis/ir)
(require rake/synthesis/spec)
(require rake/synthesis/grammar/ir)

(define MC_BND 1)

(define (synthesize-ir-expr-incr halide-expr halide-expr-axioms)
  ;; Extract the set of buffer reads
  (define buff-reads (extract-buf-reads-hal halide-expr))
  
  ;; Extract the sets of constants
  (define add-consts (set->list (list->set (extract-add-consts-hal halide-expr))))
  (define sub-consts (set->list (list->set (extract-sub-consts-hal halide-expr))))
  (define mul-consts (set->list (list->set (extract-mul-consts-hal halide-expr))))
  (define div-consts (set->list (list->set (extract-div-consts-hal halide-expr))))

  ;; Extract the set of live ops
  (define live-ops (list->set (extract-live-ops-hal halide-expr)))

  ;; Prepare spec
  (init-ir-grammar-generator)
  (define ir-spec (ir-expr-spec halide-expr (symbolics halide-expr) halide-expr-axioms buff-reads live-ops add-consts sub-consts mul-consts div-consts))

  ;; Call synthesizer
  (synthesize-ir-expr ir-spec))

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
        
        (display "Searching...\n")
        (display "============\n")

        ;; Synthesize expression
        (clear-vc!)
        (for ([axiom (ir-expr-spec-axioms spec)]) (assume axiom))
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

(provide synthesize-ir-expr-incr)