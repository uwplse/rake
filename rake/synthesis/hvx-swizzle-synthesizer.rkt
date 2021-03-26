#lang rosette

(require rake/halide/ir/types)
(require rake/halide/ir/analysis)
(require rake/halide/ir/interpreter)

(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)
(require rake/hvx/interpreter)

(require rake/synthesis/grammar/swizzle)
(require rake/synthesis/swizzling/util)

(require rake/synthesis/swizzling/hvx-swizzle-synthesizer-naive)
(require rake/synthesis/swizzling/hvx-swizzle-synthesizer-incr)
(require rake/synthesis/swizzling/hvx-swizzle-synthesizer-enum)

(define (synthesize-hvx-swizzles halide-spec hvx-expr-sketch ctx axioms [swizzling-algo 'enumerative])
  ;(display "Synthesizing Data Swizzle Spec...\n")
  ;(display "=================================\n\n")
  
  ;(display "Synthesizing spec...\n\n")

  ;; Pre-processing. Replace gather* with gather-vec and gather-vecp
  (set! hvx-expr-sketch (specialize-gather*-nodes hvx-expr-sketch))

  ;; Synthesize a hash-table spec
  (define-values (sketch-is-correct? hvx-expr-spec)
    (values #t halide-spec));(synthesize-swizzle-spec halide-spec hvx-expr-sketch axioms ctx))

  ;; Add a swizzle at the end to allow the synthesizer to distribute data movement before
  ;; and after the computation
  (when (hvx-pair? (interpret-hvx hvx-expr-sketch))
    (set! hvx-expr-sketch (swizzle 0 hvx-expr-sketch)))
  
  ;; Synthesize instructions
  (cond
    [sketch-is-correct?
     (display "Synthesizing Swizzle implementations...\n")
     (display "=======================================\n\n")

     (define starting-vecs (extract-loads-as-hvx-vecs halide-spec))
    
     (match swizzling-algo
       ['naive (synthesize-hvx-swizzles-naive starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx)]
       ['incremental (synthesize-hvx-swizzles-incr starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx)]
       ['enumerative (synthesize-hvx-swizzles-enum starting-vecs hvx-expr-sketch hvx-expr-spec axioms ctx)]
       [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['naive, 'incremental, 'enumerative]" swizzling-algo))])]
    [else (values sketch-is-correct? (void))]))

(define (synthesize-swizzle-spec halide-spec hvx-expr-sketch axioms ctx)
  (define VEC_LANES (num-elems-hal halide-spec))

  (hash-clear! hvx-gather-tables)
  (hash-clear! hvx-gather-types)
  
  (define interpreted-s-expr (interpret-hvx hvx-expr-sketch))
  (define interpreted-o-expr (interpret-halide halide-spec))

  ;; Synthesize spec hash-table, one lane at a time
  (define sols (list))
  (clear-vc!)
  (for ([axiom axioms]) (assume axiom))
  (define st (current-seconds))

  (define lanes-used-in-synth (synthesis-vec-lanes interpreted-s-expr VEC_LANES))
  (for ([lane VEC_LANES])
    (cond
      [(member lane lanes-used-in-synth)
       (define sol (synthesize #:forall ctx
                               #:guarantee (lane-eq? interpreted-o-expr interpreted-s-expr lane)))
       (println sol)
       (set! sols (append sols (list sol)))]
      [else
       (set! sols (append sols (list (sat))))]))

  (define runtime (- (current-seconds) st))
  
  (define correct? (not (for/or ([sol sols]) (unsat? sol))))

  (display (if correct? "Successfull!\n\n" "Failed.\n\n"))
  (display (format "Synthesis time: ~a seconds\n\n" runtime))

  (define hvx-expr-spec (void))
  (when correct?
    ;; Prepare synthesis spec
    (define tbls (set->list (list->set (flatten (for/list ([sol sols]) (hash-keys (model sol)))))))
    (define (repl-gather-with-swizzle-spec node)
      (match node
        [(gather-vec opts)
         (define gid (hvx-ast-node-id node))
         (define gather-tbl (hash-ref hvx-gather-tables gid))
         (define oType (evaluate (hash-ref hvx-gather-types gid) (list-ref sols 0)))
         (serve-vec gather-tbl oType opts sols)]
        [(gather-vecp opts)
         (define gid (hvx-ast-node-id node))
         (define gather-tbls (hash-ref hvx-gather-tables gid))
         (define oType (evaluate (hash-ref hvx-gather-types gid) (list-ref sols 0)))
         (serve-vec-pair (car gather-tbls) (cdr gather-tbls) oType  opts sols)]
        [_ node]))
    (set! hvx-expr-spec (visit-hvx hvx-expr-sketch repl-gather-with-swizzle-spec)))

  (values correct? hvx-expr-spec))

(provide synthesize-hvx-swizzles)