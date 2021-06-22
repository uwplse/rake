#lang rosette/safe

(require
  (only-in racket/base)
  rosette/lib/destruct
  rake/internal/error
  rake/hvx/ast/types
  rake/hvx/ir/instructions
  rake/synthesis/lowering/grammar
  rake/synthesis/lowering/synthesizer)

(require (only-in racket/base exit))

(provide synthesize-hvx-template)

(define (synthesize-hvx-template halide-expr ir-expr hvx-sub-exprs value-bounds translation-history lowering-algo)
  (cond
    [(eq? lowering-algo 'enumerative)
      (display "Lowering IR to HVX...\n")
      (display "====================\n\n")
      (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))

      (define candidates (get-hvx-grammar halide-expr ir-expr hvx-sub-exprs))
      
      (define-values (successful? hvx-template) (synthesize-translation candidates halide-expr hvx-sub-exprs value-bounds translation-history))
      (cond
        [successful?
          (display "\nSuccessfully found an equivalent HVX template.\n\n")
          (display (format "~a\n" (pretty-format hvx-template)))
          (display (format "\nSynthesis time: 0 seconds\n\n"))
          hvx-template]
        [else (error "Failed to synthesize template for ir expr:" ir-expr)])]
    [else (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['enumerative]" lowering-algo))]))