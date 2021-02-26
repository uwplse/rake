#lang rosette

(require rake/synthesis/spec)
(require rake/synthesis/ir-expr-synthesizer)
(require rake/synthesis/hvx-expr-synthesizer)
(require rake/synthesis/verifier)

(define (synthesize-hvx spec [spec-lang 'halide-ir] [lifting-algo 'greedy] [lowering-algo 'enumerative] [swizzling-algo 'enumerative])
  (cond
    [(eq? spec-lang 'halide-ir)
     (define halide-expr (synthesis-spec-expr spec))
     (define halide-expr-axioms (synthesis-spec-axioms spec))
     
     (define-values (lifting-success? ir-expr ir-expr-sol)
       (synthesize-ir-expr halide-expr halide-expr-axioms lifting-algo))

     (when lifting-success?
       ;; Synthesize equivalent HVX expression
       (define-values (successful? hvx-expr)
         (synthesize-hvx-expr halide-expr halide-expr-axioms ir-expr ir-expr-sol lowering-algo swizzling-algo))

       (define verifies? #f)
       (when successful?
         ;; Full expr verification
         (set! verifies? #t);(verify-equiv? halide-expr hvx-expr (symbolics halide-expr) halide-expr-axioms))

         (if verifies?
             (begin (display "Synthesized solution is correct.\n\n") hvx-expr)
             (begin (display "Synthesized solution is incorrect.\n\n") #f)))

       (when (not verifies?) (exit))

       hvx-expr)]

    [else (error (format "Input specification is provided in a language Rake currently does not support: '~a. Supported IRs: ['halide-ir]" spec-lang))]))

(provide synthesize-hvx)