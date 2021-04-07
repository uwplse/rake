#lang rosette

(require rake/cpp/types)
(require rake/cpp/cast)

(require rake/halide/ir/interpreter)

(require rake/hvx/interpreter)
(require rake/hvx/ast/types)

(require rake/synthesis/spec)
(require rake/synthesis/ir-expr-synthesizer)
(require rake/synthesis/hvx-expr-synthesizer)
(require rake/synthesis/arm-expr-synthesizer)
(require rake/synthesis/verifier)

(define (synthesize-hvx spec [spec-lang 'halide-ir] [lifting-algo 'greedy] [lowering-algo 'enumerative] [swizzling-algo 'enumerative])
  (cond
    [(eq? spec-lang 'halide-ir)
     (define halide-expr (synthesis-spec-expr spec))
     (define halide-expr-axioms (synthesis-spec-axioms spec))
     
     (define-values (lifting-success? ir-expr ir-expr-sol ir-annotations)
       (synthesize-ir-expr halide-expr halide-expr-axioms lifting-algo))

     (cond
       [lifting-success?
        ;; Synthesize equivalent HVX expression
        (define-values (successful? hvx-expr)
          (synthesize-hvx-expr halide-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations lowering-algo swizzling-algo))

        (set! hvx-expr (unpack-if-needed hvx-expr halide-expr))

        (define verifies? #f)
        (when successful?
          ;; Full expr verification
          (set! verifies? #t);(verify-equiv? halide-expr hvx-expr (symbolics halide-expr) halide-expr-axioms))

          (if verifies?
              (begin (display "Synthesized solution is correct.\n\n") hvx-expr)
              (begin (display "Synthesized solution is incorrect.\n\n") #f)))

        ;(when (not verifies?) (exit))

        hvx-expr]
       [else (error (format "Could not lift Halide expression to HVX IR."))])]

    [else (error (format "Input specification is provided in a language Rake currently does not support: '~a. Supported IRs: ['halide-ir]" spec-lang))]))

(define (synthesize-arm spec [spec-lang 'halide-ir] [lifting-algo 'greedy] [lowering-algo 'enumerative] [swizzling-algo 'enumerative])
  (cond
    [(eq? spec-lang 'halide-ir)
     (define halide-expr (synthesis-spec-expr spec))
     (define halide-expr-axioms (synthesis-spec-axioms spec))
     
     (define-values (lifting-success? ir-expr ir-expr-sol)
       (synthesize-ir-expr halide-expr halide-expr-axioms lifting-algo))

     (when lifting-success?
       ;; Synthesize equivalent ARM expression
       (define-values (successful? arm-expr)
         (synthesize-arm-expr halide-expr halide-expr-axioms ir-expr ir-expr-sol lowering-algo swizzling-algo))

       (define verifies? #f)
       (when successful?
         ;; Full expr verification
         (set! verifies? #t);(verify-equiv? halide-expr arm-expr (symbolics halide-expr) halide-expr-axioms))

         (if verifies?
             (begin (display "Synthesized solution is correct.\n\n") arm-expr)
             (begin (display "Synthesized solution is incorrect.\n\n") #f)))

       (when (not verifies?) (exit))

       arm-expr)]

    [else (error (format "Input specification is provided in a language Rake currently does not support: '~a. Supported IRs: ['halide-ir]" spec-lang))]))

(define (unpack-if-needed hvx-expr halide-expr)
  (define bw-o-type (bw (type ((interpret-halide halide-expr) 0))))
  (define bw-s-type (bw (elem-type (hvx-type (interpret-hvx hvx-expr)))))
  (cond
    [(eq? bw-o-type bw-s-type) hvx-expr]
    [(eq? bw-o-type (* 2 bw-s-type))
     (define unpacked-hvx-expr
       (cond
         [(hvx-pair? (interpret-hvx hvx-expr)) (let-expr 'v0 hvx-expr (list (vunpack (lo 'v0)) (vunpack (hi 'v0))))]
         [else (vunpack 'v0)]))
     unpacked-hvx-expr]
    [else
     (error "NYI: Expression unpacking when the required type is more than twice as wide.")]))

(provide synthesize-hvx synthesize-arm)