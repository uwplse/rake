#lang rosette

(require racket/engine)

(require rake/halide/ir/interpreter)

(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)
(require rake/hvx/interpreter)
(require rake/hvx/comparator)

(require rake/synthesis/grammar/swizzle)
(require rake/synthesis/swizzling/util)

(define cache (make-hash))
(define ranked-candidate-sets (make-hash))

(define offset 0)

(define (synthesize-hvx-swizzles-enum starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx [verif-offset 0])
  (hash-clear! cache)
  (hash-clear! ranked-candidate-sets)

  (set! offset verif-offset)
  
  ;; Extract set of swizzle nodes to be synthesized
  (define swizzle-nodes (list))
  (define (register-gather-node node)
    (match node
      [(gather-vec opts) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
      [(gather-vecp opts) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
      [(swizzle vec) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
      [_ node]))
  (visit-hvx hvx-expr-sketch register-gather-node)

  ;; Synthesize an implementation for each swizzle node incrementally
  (dynamically-synthesize-swizzle-nodes (reverse swizzle-nodes) starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx (list)))

(define (dynamically-synthesize-swizzle-nodes swizzle-nodes starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx discarded-sols)
  (cond
    [(empty? swizzle-nodes)
     (display "Implementations found for all swizzle nodes!\n\n")
     (display (format "Final expression: \n\n~a\n\n" (pretty-format hvx-expr-sketch)))
     (values #t hvx-expr-sketch)]
    [else
     ;; Synthesize an implementation for the first node in the list 
     (define swizzle-node (first swizzle-nodes))

     (define node-id (hvx-ast-node-id swizzle-node))
     
     (display (format "## Swizzle node id: ~a\n\n" node-id))

     (define-values (node-impl-found? updated-hvx-expr-sketch)
       (synthesize-swizzle-impl-enum swizzle-node starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx discarded-sols))
     
     (cond
       [node-impl-found?
        (define-values (successful? complete-expr)
          (dynamically-synthesize-swizzle-nodes (cdr swizzle-nodes) starting-vecs updated-hvx-expr-sketch hvx-expr-spec axioms ctx (list)))
        (cond
          [successful? (values #t complete-expr)]
          [else
           (display (format "Backtracking. Attempting to synthesize a different implementation for swizzle node with id: ~a\n\n" node-id))
           (hash-set! cache (hvx-ast-node-id (second swizzle-nodes)) (make-hash))
           (dynamically-synthesize-swizzle-nodes swizzle-nodes starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx (append (list updated-hvx-expr-sketch) discarded-sols))])]
       [else (values #f (unsat))])]))

(define (synthesize-swizzle-impl-enum swizzle-node starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx discarded-sols)
  (define target-node-id (hvx-ast-node-id swizzle-node))

  (define total-synth-time 0)

  (when (not (hash-has-key? cache target-node-id))
    (hash-set! cache target-node-id (make-hash)))
  
  (define enum-history (hash-ref cache target-node-id))
  
  (define (find-next-swizzle candidate-swizzle-exprs)
    (cond
      [(empty? candidate-swizzle-exprs) (unsat)]
      [else 
       (define candidate-swizzle (first candidate-swizzle-exprs))
       (cond
         [(and (hash-has-key? enum-history candidate-swizzle) (eq? (hash-ref enum-history candidate-swizzle) #f))
          (find-next-swizzle (rest candidate-swizzle-exprs))]
         [else
          ;(println candidate-swizzle)
          
          ;; Replace swizzle node with swizzle grammar
          (define (repl-gather-with-swizzle-grm node)
            (match node
              [(gather-vec opts) (if (equal? (hvx-ast-node-id node) target-node-id) candidate-swizzle node)]
              [(gather-vecp opts) (if (equal? (hvx-ast-node-id node) target-node-id) candidate-swizzle node)]
              [(swizzle vecs) (if (equal? (hvx-ast-node-id node) target-node-id) candidate-swizzle node)]
              [_ node]))
          (define hvx-expr-grm (visit-hvx hvx-expr-sketch repl-gather-with-swizzle-grm))

          ;(pretty-print hvx-expr-grm)
          
          (define interpreted-o-expr (interpret-halide hvx-expr-spec))
          (define VEC_LANES (num-elems-hvx (interpret-hvx hvx-expr-grm)))

          (define runtime 0)
          
          (define synthesizer
            (engine
             (λ (_)
               (clear-vc!)
               (for ([axiom axioms]) (assume axiom))
               (define st (current-milliseconds))
               (define lanes-used-in-synth (synthesis-vec-lanes (interpret-hvx hvx-expr-grm) VEC_LANES))
               (define-values (correct? hvx-expr-grm-updated)
                 (incr-lane-synthesis-loop interpreted-o-expr hvx-expr-grm ctx discarded-sols lanes-used-in-synth))

               (set! hvx-expr-grm hvx-expr-grm-updated)

               (set! runtime (- (current-milliseconds) st))
               (hash-set! enum-history candidate-swizzle correct?)

               (display (format "Synthesis time: ~ams\n" runtime))
               
               correct?)))

          (engine-run 10800000 synthesizer)

          (define correct? (engine-result synthesizer))
          (cond
            [(hash-has-key? enum-history candidate-swizzle)
             (set! total-synth-time (+ total-synth-time runtime))]
            [else
             (display (format "Synthesizer timed out after: 10mins\n"))
             (hash-set! enum-history candidate-swizzle #f)
             (set! total-synth-time (+ total-synth-time 300000))])
          
          (cond
            [correct?
             (pretty-print hvx-expr-grm)
             (display "\nSuccessfully found a swizzle implementation.\n")
             (display "\n")
             hvx-expr-grm]
            [else
             (hash-set! enum-history candidate-swizzle #f)
             (find-next-swizzle (rest candidate-swizzle-exprs))])])]))

  (define (search-candidates sorted-costs ranked-candidates)
    (cond
      [(empty? sorted-costs)
       (display "\nFailed to find a swizzle implementation -- Search space exhausted.\n\n")
       (display (format "Total synthesis time: ~ams\n\n" total-synth-time))
       (values #f (unsat))]
      [else 
       (define cost (first sorted-costs))
       (display (format "\nScanning swizzle templates with cost: ~a\n\n" cost))
       (define swizzle-impl (find-next-swizzle (set->list (hash-ref ranked-candidates cost))))
       (cond
         [(unsat? swizzle-impl) (search-candidates (rest sorted-costs) ranked-candidates)]
         [else (values #t swizzle-impl)])]))

  (display "Enumerating Swizzle Expressions...\n")

  (define load-idxs (make-hash))
  (for ([vec-load starting-vecs])
    (define key (car vec-load))
    (define val (cdr vec-load))
    (if
     (hash-has-key? load-idxs key)
     (hash-set! load-idxs key (append (hash-ref load-idxs key) (list val)))
     (hash-set! load-idxs key (list val))))
  
  (when (not (hash-has-key? ranked-candidate-sets target-node-id))
    (hash-set!
       ranked-candidate-sets
       target-node-id
       (cond
         [(swizzle? swizzle-node)
          (enumerate-hvx-swizzle-exprs
           (hvx-type (interpret-hvx swizzle-node))
           (list lo hi vinterleave vcombine vshuff vshuffe vshuffo vshuffoe vdeal vdeale valign vror vtranspose vpacke vpacko vunpack)
           (list (swizzle-vec hvx-expr-sketch)))]
         [else
          (enumerate-hvx-gather-exprs
           (hvx-type (interpret-hvx swizzle-node))
           (list lo hi vinterleave vshuff vshuffe vshuffo vshuffoe vcombine vdeal vdeale valign vror vtranspose vpacke vpacko vunpack)
           load-idxs
           3)])))
  
  (define ranked-candidates (hash-ref ranked-candidate-sets target-node-id))
  
  (define sorted-costs (sort (hash-keys ranked-candidates) <))
  
  (clear-vc!)
  (for ([axiom axioms]) (assume axiom))
  (search-candidates sorted-costs ranked-candidates))

(define (incr-lane-synthesis-loop interpreted-o-expr hvx-expr-grm ctx discarded-sols lanes-used-in-synth)
  (cond
    [(empty? lanes-used-in-synth) (values #t hvx-expr-grm)]
    [else
     (define lane (first lanes-used-in-synth))
     ;(display (format "Checking lane ~a\n" lane))

     (define interpreted-f-expr (interpret-hvx hvx-expr-grm))

     ;(println (interpreted-o-expr (+ offset 0)))
     ;(set-curr-cn-hvx 0)
     ;(println (elem-hvx interpreted-f-expr 0))
     
     (define sol (synthesize #:forall ctx
                             #:guarantee (begin
                                           (lane-eq? interpreted-o-expr interpreted-f-expr lane offset)
                                           (for ([discarded-sol discarded-sols])
                                             (assert (not (equal-expr-hvx? discarded-sol hvx-expr-grm)))))))
     (cond
       [(unsat? sol) (values #f hvx-expr-grm)]
       [(unknown? sol) (values #f hvx-expr-grm)]
       [(sat? sol)
        (define hvx-expr-grm-updated (evaluate hvx-expr-grm sol))
        ;(pretty-print hvx-expr-grm-updated)
        (define-values (correct? updated-hvx-expr-grm)
          (incr-lane-synthesis-loop interpreted-o-expr hvx-expr-grm-updated ctx discarded-sols (rest lanes-used-in-synth)))
        (cond
          [correct? (values correct? updated-hvx-expr-grm)]
          [else (incr-lane-synthesis-loop interpreted-o-expr hvx-expr-grm ctx (append discarded-sols (list hvx-expr-grm-updated)) lanes-used-in-synth)])]
       [else
        (error "Unexpected solver output:" sol)])]))

(provide synthesize-hvx-swizzles-enum)
