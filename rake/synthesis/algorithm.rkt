#lang rosette

(require rake/synthesis/spec)
(require rake/synthesis/greedy-ir-lifter)
(require rake/synthesis/incremental-ir-lifter)
(require rake/synthesis/hvx-expr-synthesizer)
(require rake/synthesis/verifier)
(require rake/synthesis/swizzler)
(require rake/hvx/codegen/llvm)

(define (synthesize-hvx spec [spec-lang 'halide-ir] [lifting-algo 'greedy])
  (cond
    [(eq? spec-lang 'halide-ir)
     (define halide-expr (synthesis-spec-expr spec))
     (define halide-expr-axioms (synthesis-spec-axioms spec))
     
     (define stage1-res
       (cond
         [(eq? lifting-algo 'incremental) (synthesize-ir-expr-incr halide-expr halide-expr-axioms)]
         [(eq? lifting-algo 'greedy) (synthesize-ir-expr-greedy halide-expr halide-expr-axioms)]))

     (when (not (void? stage1-res))
       (define ir-expr (car stage1-res))
       (define ir-expr-sol (cdr stage1-res))

       ;; Define the ir specification for stage 1
       (define hvx-spec (hvx-expr-spec ir-expr ir-expr-sol (symbolics halide-expr) halide-expr-axioms))

       ;; Synthesize equivalent HVX expression for each Op in the IR
       (define hvx-expr-sketch (synthesize-hvx-expr hvx-spec))

       ;; Synthesize data-movement
       (define hvx-expr (synthesize-swizzles halide-expr hvx-expr-sketch (symbolics halide-expr) halide-expr-axioms))

       (define gen-code #f)
       (when (not (unsat? hvx-expr))
         ;; Full expr verification
         (set! gen-code (verify-equiv? halide-expr hvx-expr (symbolics halide-expr) halide-expr-axioms))

         (if gen-code
             (begin (display "Synthesized solution is correct.\n\n") hvx-expr)
             (begin (display "Synthesized solution is incorrect.\n\n") #f)))

       (when gen-code
         (println (llvm_codegen hvx-expr))))
     ]

    [else (error "Input specification is provided in a language I don't understand:" spec-lang)]))

(provide synthesize-hvx)