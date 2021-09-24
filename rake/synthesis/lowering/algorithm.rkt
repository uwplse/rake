#lang rosette/safe

(require
  (only-in racket/base values)
  rosette/lib/destruct
  rake/internal/error
  rake/hvx/ast/types
  rake/hvx/ir/instructions
  rake/synthesis/lowering/grammar/hvx
  rake/synthesis/lowering/synthesizer)

(require (only-in racket/base exit))

(provide synthesize-hvx-template)

(define (synthesize-hvx-template halide-expr ir-expr hvx-sub-exprs value-bounds translation-history lowering-algo cost-ub)
  (cond
    [(eq? lowering-algo 'enumerative)
      (display "Lowering IR to HVX...\n")
      (display "====================\n\n")
      (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))

      (define candidates (get-hvx-grammar halide-expr ir-expr hvx-sub-exprs cost-ub))
      
      (define-values (successful? hvx-template)
        (synthesize-translation candidates halide-expr hvx-sub-exprs value-bounds translation-history))
      
      (cond
        [successful?
          (display "\nSuccessfully found an equivalent HVX template.\n\n")
          (display (format "~a\n" (pretty-format (car hvx-template))))
          (display "\nSynthesis time: 0 seconds\n\n")
          (values #t (car hvx-template) (cdr hvx-template))]
        [else
          (display "Failed to synthesize template.\n\n")
          (values #f (void) 0 )])]
    [else (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['enumerative]" lowering-algo))]))