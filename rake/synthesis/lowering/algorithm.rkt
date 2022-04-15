#lang rosette/safe

(require
  (only-in racket/base values)
  rosette/lib/destruct
  rake/internal/error
  rake/hvx/ast/types
  rake/hvx/ir/instructions
  rake/synthesis/lowering/hvx/grammar
  rake/synthesis/lowering/arm/grammar
  rake/synthesis/lowering/x86/grammar
  rake/synthesis/lowering/hvx/synthesizer
  rake/synthesis/lowering/arm/synthesizer
  rake/synthesis/lowering/x86/synthesizer
)

(require (only-in racket/base exit))

(provide synthesize-hvx-template synthesize-arm-template synthesize-x86-template)

(define (synthesize-hvx-template halide-expr ir-expr hvx-sub-exprs output-layout value-bounds translation-history lowering-algo cost-ub)
  (cond
    [(eq? lowering-algo 'enumerative)
      (display "Lowering IR to HVX...\n")
      (display "====================\n\n")
      (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))

      (define candidates (get-hvx-grammar halide-expr ir-expr hvx-sub-exprs output-layout cost-ub))
      
      (define-values (successful? hvx-template)
        (hvx:synthesize-translation candidates halide-expr hvx-sub-exprs value-bounds translation-history))
      
      (cond
        [successful?
          (display "\nSuccessfully found an equivalent HVX template.\n\n")
          (display (format "~a\n" (pretty-format (car hvx-template))))
          (display "\nSynthesis time: 0 seconds\n\n")
          (values #t (car hvx-template) (cdr hvx-template))]
        [else
          (display "Failed to synthesize template.\n\n")
          (values #f (void) 0)])]
    [else (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['enumerative]" lowering-algo))]))

(define (synthesize-arm-template halide-expr ir-expr arm-sub-exprs value-bounds translation-history lowering-algo cost-ub)
  (cond
    [(eq? lowering-algo 'enumerative)
      (display "Lowering IR to ARM...\n")
      (display "====================\n\n")
      (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))

      (define start-time (current-seconds))
      (define candidates (get-arm-grammar halide-expr ir-expr arm-sub-exprs cost-ub))
      (define runtime (- (current-seconds) start-time))

      (display (format "Template candidates: ~a\n" (length candidates)))
      (display (format "Template enumeration time: ~a seconds\n\n" runtime))
      
      (define-values (successful? arm-template)
        (arm:synthesize-translation candidates halide-expr arm-sub-exprs value-bounds translation-history))
      
      (cond
        [successful?
          (display "\nSuccessfully found an equivalent ARM template.\n\n")
          (display (format "~a\n" (pretty-format (car arm-template))))
          (display "\nSynthesis time: 0 seconds\n\n")
          (values #t (car arm-template) (cdr arm-template))]
        [else
          (display "Failed to synthesize template.\n\n")
          (values #f (void) 0)])]
    [else (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['enumerative]" lowering-algo))]))

(define (synthesize-x86-template halide-expr ir-expr x86-sub-exprs output-layout value-bounds translation-history lowering-algo cost-ub)
  (cond
    [(eq? lowering-algo 'enumerative)
      (display "Lowering IR to x86...\n")
      (display "====================\n\n")
      (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))
      ; (display (format "sub-exprs: \n\n~a\n\n" (pretty-format x86-sub-exprs)))

      (define start-time (current-seconds))
      (define candidates (get-x86-grammar halide-expr ir-expr x86-sub-exprs output-layout cost-ub))
      (define runtime (- (current-seconds) start-time))

      (display (format "Template candidates: ~a\n" (length candidates)))
      (display (format "Template enumeration time: ~a seconds\n\n" runtime))
      
      (define-values (successful? x86-template)
        (x86:synthesize-translation candidates halide-expr x86-sub-exprs value-bounds translation-history))
      
      (display "Finished synthesizing translation\n")

      (cond
        [successful?
          (display "\nSuccessfully found an equivalent x86 template.\n\n")
          (display (format "~a\n" (pretty-format (car x86-template))))
          (display "\nSynthesis time: 0 seconds\n\n")
          (values #t (car x86-template) (cdr x86-template))]
        [else
          (display "Failed to synthesize template.\n\n")
          (values #f (void) 0)])]
    [else (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['enumerative]" lowering-algo))]))
