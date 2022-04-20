#lang rosette

(require
  (only-in rosette/base/core/term @app)
  (only-in racket/base for/list values for)
  (only-in racket/base make-hash hash-set! hash-has-key? hash-ref hash-ref!)
  (only-in racket/set list->set set->list set-subtract)
  (only-in racket/list range cartesian-product)
  rake/internal/counter
  rake/internal/error
  rake/internal/log
  rosette/lib/destruct
  ;rosette/lib/match
  ; rake/synthesis/swizzling/grammar
  ; rake/synthesis/swizzling/synthesizer
  rake/cpp
  rake/halide
  rake/arm/ast/types
  rake/arm/ast/visitor
  rake/arm/ast/interpreter
  rake/arm/ast/analysis
  rake/synthesis/lowering/arm/util
)

(provide synthesize-arm-swizzles)

(define (synthesize-arm-swizzles halide-expr arm-template swizzle-budget swizzling-algo arm-sub-exprs value-bounds translation-history [tile-id 1] [num-tiles 1])
  (cond
    [(eq? swizzling-algo 'enumerative)
      (display (format "Synthesizing Swizzle implementations... (Tile ~a of ~a) \n" tile-id num-tiles))
      (display "=====================================================\n\n")

      ; (display (format "Target output layout: ~a\n\n"))
      
      (define starting-vecs (halide:extract-arm-loads halide-expr))
      ; (display "Halide Expr:\n")
      ; (pretty-print halide-expr)
      ; (display "\n\nwith loads:\n")
      ; (pretty-print starting-vecs)
      ; (display "And arm template:\n")
      ; (pretty-print arm-template)
      ; (display "\n\n\n\n")

      ;; Extract set of swizzle nodes to be synthesized
      (define swizzle-nodes (list))
      (define (register-gather-node node [pos -1])
        (destruct node
          [(arm:??abstr-load id live-data buffer) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [(arm:??shuffle id lds output-type) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [(arm:??load id live-data buffer gather-tbl output-type) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [(arm:??swizzle id live-data expr gather-tbl output-type) (set! swizzle-nodes (append (list node) swizzle-nodes)) node]
          [_ node]))
      (arm:visit-shallow arm-template register-gather-node)
      
      ;; Synthesize an implementation for each swizzle node incrementally
      (synthesize-swizzle-nodes (reverse swizzle-nodes) starting-vecs arm-template swizzle-budget halide-expr arm-sub-exprs value-bounds translation-history)]
    [else (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['enumerative]" swizzling-algo))]))

(define (synthesize-swizzle-nodes swizzle-nodes starting-vecs arm-template swizzle-budget halide-expr arm-sub-exprs value-bounds translation-history)
  (if (empty? swizzle-nodes)
    (begin
      (display "Implementations found for all swizzle nodes!\n\n")
      (display (format "Final expression: \n\n~a\n\n" (pretty-format arm-template)))
      (values #t arm-template 0))
    (let* ([swizzle-node (first swizzle-nodes)]
           [node-id (get-swizzle-node-id swizzle-node)])

      (display (format "## Swizzle node id: ~a\n\n" node-id))

      (define-values (node-impl-found? updated-template swizzle-cost-first)
        (synthesize-swizzle-node swizzle-node starting-vecs arm-template swizzle-budget halide-expr arm-sub-exprs value-bounds translation-history))

      (if node-impl-found?
        (begin
          (define-values (successful? complete-expr swizzle-cost-rest)
            (synthesize-swizzle-nodes (cdr swizzle-nodes) starting-vecs updated-template (- swizzle-budget swizzle-cost-first) halide-expr arm-sub-exprs value-bounds translation-history))

          (if successful?
            (values #t complete-expr (+ swizzle-cost-first swizzle-cost-rest))
            (begin
              (display (format "Backtracking. Attempting to synthesize a different implementation for swizzle node with id: ~a\n\n" node-id))
              ; TODO: how is this any different??
              (synthesize-swizzle-nodes swizzle-nodes starting-vecs arm-template swizzle-budget halide-expr arm-sub-exprs value-bounds translation-history))))
        (values #f (unsat) 0)))))

(define (get-swizzle-node-id node)
  (destruct node
    [(arm:??abstr-load id live-data buffer) id]
    [(arm:??shuffle id lds output-type) id]
    [(arm:??load id live-data buffer gather-tbl output-type) id]
    [(arm:??swizzle id live-data expr gather-tbl output-type) id]
    [_ (error "Unidentified swizzle-node ~a" node)]))

(define (synthesize-swizzle-node swizzle-node starting-vecs arm-template swizzle-budget halide-expr arm-sub-exprs value-bounds translation-history)

  (define (reset-lo/hi-flags node [pos -1])
    (destruct node
      [(uint1_t x) (define-symbolic* b boolean?) (uint1_t b)]
      [_ node]))
  (set! arm-template (arm:visit-shallow arm-template reset-lo/hi-flags))
  
  ;; Get swizzle grammar
  (define candidates (get-arm-swizzle-grammar halide-expr arm-template swizzle-budget swizzle-node starting-vecs arm-sub-exprs translation-history))

  ;(display "Candidates\n")
  ;(pretty-print candidates)
  ;; Run synthesizer
  (define-values (successful? updated-template) (synthesize-arm-translation candidates halide-expr arm-sub-exprs value-bounds translation-history))
  
  (cond
    [successful?
     ;; Inline sub-expr nodes?
     (define (inline-subexprs node [pos -1])
       (destruct node
         [(arm:??sub-expr exprs c) (list-ref exprs (if (concrete? c) c (evaluate c (complete-solution (sat) (list c)))))]
         [_ node]))
     (set! updated-template (cons (arm:visit (car updated-template) inline-subexprs) (cdr updated-template)))
     
     (display "\nSuccessfully found a swizzle implementation.\n\n")
     (display (format "~a\n\n" (pretty-format (car updated-template))))
     (display (format "Synthesis time: 0 seconds\n\n"))
     (values #t (car updated-template) (cdr updated-template))]
    [else
     (display (format "\nFailed to synthesize implementation for swizzle node ~a\n\n" swizzle-node))
     (values #f updated-template 0)]))

(define (incorrect? sol)
  (or (unsat? sol) (unknown? sol)))

(define (correct? sol)
  (not (incorrect? sol)))

(define synthesis-db (make-hash))

(define (synthesize-arm-translation templates halide-expr arm-sub-exprs value-bounds translation-history)
  (cond
    [(empty? templates) (values #f (void))]
    [(hash-has-key? synthesis-db (list (first templates) halide-expr))
     (synthesize-arm-translation (rest templates) halide-expr arm-sub-exprs value-bounds translation-history)]
    [else
     (define template (first templates))
     (define sol (run-synthesizer (car template) halide-expr arm-sub-exprs value-bounds translation-history))
     (hash-set! synthesis-db (list (first templates) halide-expr) #t)
     (cond
       [(correct? sol)
        (values #t (evaluate template sol))]
       [else
        (synthesize-arm-translation (rest templates) halide-expr arm-sub-exprs value-bounds translation-history)])]))

(define (run-synthesizer template halide-expr arm-sub-exprs value-bounds translation-history)
  ; (display "run-synthesizer\n")
  ; (pretty-print halide-expr)
  ; (pretty-print template)

  ;(define-values (optimized-halide-expr optimized-template inferred-axioms)
    ;(optimize-query halide-expr template arm-sub-exprs value-bounds translation-history))

  ;(pretty-print optimized-halide-expr)
  ;(pretty-print optimized-template)
  
  ;; Incrementally checks the template for more and more lanes
  (define sym-consts (set->list (set-subtract (list->set (symbolics template)) (list->set (symbolics halide-expr)))))
   ;(display "\n\nrunning synthesizer on...\n\n")
   ;(pretty-print template)
   ;(pretty-print halide-expr)
  (define lanes-to-verify (verification-lanes (arm:get-interpreted-type template)))
  (synthesize-incremental halide-expr template sym-consts lanes-to-verify '()))

(define grammar-lib (make-hash))

(define (get-arm-swizzle-grammar halide-expr arm-template swizzle-budget swizzle-node starting-vecs arm-sub-exprs translation-history)
  (cond
    [(hash-has-key? grammar-lib (list halide-expr arm-template swizzle-node starting-vecs arm-sub-exprs))
      (hash-ref grammar-lib (list halide-expr arm-template swizzle-node starting-vecs arm-sub-exprs))]
    [else
      (define candidates (get-arm-swizzle-grammar-gen halide-expr arm-template swizzle-budget swizzle-node starting-vecs arm-sub-exprs translation-history))
      ;(display (format "Got this far: ~a\n\n" (length candidates)))
      (hash-set! grammar-lib (list halide-expr arm-template swizzle-node starting-vecs arm-sub-exprs) candidates)
      candidates]))

(define enumeration-database (make-hash))

(define (get-arm-swizzle-grammar-gen halide-expr arm-template swizzle-budget swizzle-node starting-vecs arm-sub-exprs translation-history)
  ;(display (format "get-arm-swizzle-grammar-gen ~a ~a ~a ~a ~a ~a ~a\n\n" halide-expr arm-template swizzle-budget swizzle-node starting-vecs arm-sub-exprs translation-history))
  ; (pretty-print swizzle-node)
  ; (display "hello?\n")
  (define-values (target-node-id base-exprs)
    (extract-swizzle-information swizzle-node starting-vecs))
  ; (display (format "\n\nget-arm-swizzle-grammar-gen ~a\n" target-node-id))
  ;(pretty-print base-exprs)
  ; (display "here?\n\n")
  ;(pretty-print starting-vecs)
  ;(display "\nEnd information extraction\n\n")
  (let* ([intr-expr (arm:interpret swizzle-node)]
         [elem-type (arm:elem-type intr-expr)]
         [output-type (get-output-type swizzle-node)]
         ; TODO: what others? other load types / the extract options?
         [isa (list arm:zip1 arm:zip2 arm:uzip1 arm:uzip2 arm:dup arm:dupw arm:dupn arm:trn1 arm:trn2)]
         [grouped-base-exprs (make-hash)])
    (for ([base base-exprs])
      (let ([base-type (arm:get-interpreted-type base)])
        (hash-set! grouped-base-exprs base-type (append (hash-ref! grouped-base-exprs base-type '()) (list base)))))
    (for ([(t base) grouped-base-exprs])
      (define-symbolic* c integer?)
      ; What is the point of this....?
      (define base-c (if (arm:??swizzle? swizzle-node) 0 0))
      (hash-set! grouped-base-exprs t (list (cons (arm:??sub-expr base c) base-c))))

    (set! enumeration-database (make-hash))
    (define candidate-swizzles (enumerate-arm isa output-type grouped-base-exprs 2 (min swizzle-budget 5)))

    ;(println (length candidate-swizzles))

    ;; TODO: there is a bunch of updating that I do not understand in the hvx version (grammar.rkt)
    (define target-node-id (get-swizzle-node-id swizzle-node))
    (define (update-swizzle-nodes node [pos -1])
    (destruct node
      [(arm:??load id live-data buffer gather-tbl output-type)
       (if (not (equal? id target-node-id)) (update-swizzle-data node halide-expr arm-sub-exprs translation-history) node)]
      [(arm:??swizzle id live-data expr gather-tbl output-type)
       (if (not (equal? id target-node-id)) (update-swizzle-data node halide-expr arm-sub-exprs translation-history) node)]
      [_ node]))
    (define updated-template (arm:visit arm-template update-swizzle-nodes))

    (define tmpl-type (arm:get-interpreted-type arm-template))
    (define tmpl-elem-type (arm:elem-type tmpl-type))
    (define candidates (construct-candidates updated-template candidate-swizzles target-node-id))
    (define sorted-candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))

    (define (fill-arg-grammars node [pos -1])
      (match node
        ; TODO: need to fix arm-instr-forms to allow for 'const
        ['const (define-symbolic* c integer?) c]
        [_ node]))
    (for/list ([candidate sorted-candidates]) (cons (arm:visit (car candidate) fill-arg-grammars) (cdr candidate)))))

(define (update-swizzle-data swizzle-node halide-expr arm-sub-exprs translation-history)
  (define (update-swizzle-node node [pos -1])
    (destruct node
      [(arm:??load id live-data buffer gather-tbl output-type)
        (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 64)))
        (arm:??load id (halide:extract-buffer-reads halide-expr) buffer tbl output-type)]
      [(arm:??swizzle id live-data exprs gather-tbl output-type)
        ;; Abstract out common sub-expressions
        (define-values (abstr-halide-expr abstr-template _) (arm:optimize-query halide-expr node arm-sub-exprs (make-hash) translation-history))
        ;; Extract the reads from this expression, essentially representing each "read" from the sub-expressions as a symbolic constant
        (define new-data (halide:extract-buffer-reads abstr-halide-expr))
        ;; Now we replace the symbolic constants with the original expressions they represent. This gives us the set of sub-expression accesses
        ;; to consider. There is certainly a cleaner way to do this, but the following way re-uses existing code.
        (define abstr-exprs (make-hash))
        (define (extract-abstr-exprs node)
          (cond
            [(abstr-halide-expr? node) (hash-set! abstr-exprs (buffer-data (abstr-halide-expr-abstr-vals node)) (abstr-halide-expr-orig-expr node)) node]
            [else node]))
        (halide:visit abstr-halide-expr extract-abstr-exprs)
        (define (unwrap-reads data exprs)
          (for/list ([lane-reads data])
            (for/list ([lane-read lane-reads])
              (match (cpp:eval lane-read)
                [(expression (== @app) xs ...)
                 (cond
                   [(hash-has-key? abstr-exprs (list-ref xs 0)) ((halide:interpret (hash-ref abstr-exprs (list-ref xs 0))) (list-ref xs 1))]
                   [else lane-read])]
                [_ (error "Extracted read from the Halide expression does not match any expected patterns.")]))))
        ;; Finally create the swizzle node
        ;(define-symbolic* tbl (~> integer? integer?))
        (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
        (arm:??swizzle id (unwrap-reads new-data abstr-exprs) exprs tbl output-type)]
      [_ node]))
  (arm:visit swizzle-node update-swizzle-node))

(define (construct-candidates updated-template candidate-swizzles target-node-id)
  ;; This could just me a `map`, right?
  (apply append
    (for/list ([candidate-swizzle candidate-swizzles])
      (define (uniquify-sub-exprs node [pos -1])
        (destruct node
          [(arm:??sub-expr exprs c) (define-symbolic* ch integer?) (arm:??sub-expr exprs ch)]
          [_ node]))

      ;; Update template: Replace target swizzle node with swizzle grammar
      (define (repl-swizzle-node-with-candidate node [pos -1])
        (destruct node
          [(arm:??abstr-load id live-data buffer) (arm:visit (car candidate-swizzle) uniquify-sub-exprs)]
          [(arm:??shuffle id lds output-type) (if (equal? id target-node-id) (arm:visit (car candidate-swizzle) uniquify-sub-exprs) node)]
          [(arm:??load id live-data buffer gather-tbl output-type) (if (equal? id target-node-id) (arm:visit (car candidate-swizzle) uniquify-sub-exprs) node)]
          [(arm:??swizzle id live-data expr gather-tbl output-type) (if (equal? id target-node-id) (arm:visit (car candidate-swizzle) uniquify-sub-exprs) node)]
          [_ node]))

      (define updated-candidate (arm:visit-shallow updated-template repl-swizzle-node-with-candidate))
      (define cost (cdr candidate-swizzle))
      (list (cons updated-candidate cost)))))

(define (extract-swizzle-information swizzle-node starting-vecs)
  (destruct swizzle-node
    [(arm:??load id live-data buffer gather-tbl output-type)
      (let ([base-exprs
              (map
                (lambda (base-expr)
                  (arm:ld (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2) output-type))
                (filter (lambda (vec) (eq? buffer (list-ref vec 0))) starting-vecs))])
        (values id base-exprs))]
    [(arm:??swizzle id live-data expr gather-tbl output-type) (values id expr)]
    ;; TODO: handle other swizzle nodes!!
    [_ (error "Unknown swizzle node ~a" swizzle-node)]))

(define (get-output-type swizzle-node)
  (destruct swizzle-node
    [(arm:??load id live-data buffer gather-tbl output-type) output-type]
    [(arm:??swizzle id live-data expr gather-tbl output-type) output-type]
    ;; TODO: handle other swizzle nodes!!
    [_ (error "Unknown swizzle node for get-output-type ~a" swizzle-node)]))

(define (verification-lanes type)
  (cond
    [(eq? type 'i8x8) (range 8)]
    [(eq? type 'i16x4) (range 4)]
    [(eq? type 'i32x2) (range 2)]
    [(eq? type 'i64x1) (range 1)]
    [(eq? type 'i8x16) (range 16)]
    [(eq? type 'i16x8) (range 8)]
    [(eq? type 'i32x4) (range 4)]
    [(eq? type 'i64x2) (range 2)]
    ; [(eq? type 'i8x32) (range 32)]
    ; [(eq? type 'i16x16) (range 16)]
    ; [(eq? type 'i32x8) (range 8)]
    ; [(eq? type 'i64x4) (range 4)]
    [(eq? type 'u8x8) (range 8)]
    [(eq? type 'u16x4) (range 4)]
    [(eq? type 'u32x2) (range 2)]
    [(eq? type 'u64x1) (range 1)]
    [(eq? type 'u8x16) (range 16)]
    [(eq? type 'u16x8) (range 8)]
    [(eq? type 'u32x4) (range 4)]
    [(eq? type 'u64x2) (range 2)]
    ; [(eq? type 'u8x32) (range 32)]
    ; [(eq? type 'u16x16) (range 16)]
    ; [(eq? type 'u32x8) (range 8)]
    ; [(eq? type 'u64x4) (range 4)]
))

(define (synthesize-incremental halide-expr template sym-consts lanes-to-verify discarded-sols)
  ; (display "\n\nsynthesize-incremental\n\n")
  (cond
    [(empty? lanes-to-verify) (model)]
    [else
     (define curr-lane (first lanes-to-verify))
     
      ;(display (format "Verifying lane: ~a\n" curr-lane))
      ;(set-curr-cn! curr-lane)
      ;(println ((halide:interpret halide-expr) curr-lane))
      ;(println (arm:get-element (arm:interpret template) curr-lane))
     
     (define st (current-milliseconds))
     (clear-vc!)
     (define sol (synthesize #:forall (symbolics halide-expr)
                             #:guarantee (begin
                                           (assert (not (ormap (lambda (discarded-sol) (equal? template discarded-sol)) discarded-sols)))
                                           (lane-eq? (halide:interpret halide-expr) (arm:interpret template) curr-lane))))
     (define runtime (- (current-milliseconds) st))

     (display (format "Ran synthesizer for ~a ms\n" runtime))
     (log (format "Swizzling query: ~a ms\n" runtime))

     (cond
       [(correct? sol)
        (define c-sol sol);(complete-solution sol sym-consts))
        (define updated-template (evaluate template c-sol))
        ;(pretty-print updated-template)
        (define sub-sol (synthesize-incremental halide-expr updated-template sym-consts (rest lanes-to-verify) '()))
        (cond
          [(correct? sub-sol) c-sol]
          [else
           (define discarded-sol (evaluate template c-sol))
           (synthesize-incremental halide-expr template sym-consts lanes-to-verify (append (list discarded-sol) discarded-sols))])]
       [else
        (unsat)])]))

(define (lane-eq? oe se lane)
  ;; TODO: do we even need output-layout?
  (set-curr-cn! lane)
  (assert (eq? (oe lane) (arm:get-element se lane))))

(define (enumerate-arm instr-set output-type base-exprs depth max-cost [parent-instr (void)])
  (let ([key (list instr-set output-type base-exprs depth max-cost parent-instr)])
    (cond
      [(hash-has-key? enumeration-database key) (hash-ref enumeration-database key)]

      [(<= depth 0)
        ; TODO: what is this doing?
        (hash-ref! base-exprs output-type '())]

      [else
        ;; Enumerate recursively
        (let* ([sub-candidates (enumerate-arm instr-set output-type base-exprs (sub1 depth) max-cost parent-instr)]
               [c-build-instr-exprs (curryr build-instr-exprs instr-set output-type base-exprs depth max-cost)]
               [candidates (foldr append sub-candidates (map c-build-instr-exprs (filter (curry keep? parent-instr) instr-set)))]
               [filtered-candidates (set->list (list->set (filter (lambda (e) (<= (cdr e) max-cost)) candidates)))])
          (hash-set! enumeration-database key filtered-candidates)
          filtered-candidates)])))



;; These are taken directly from synthesis/grammar.rkt
(define (build-instr-exprs instr instr-set output-type base-exprs depth max-cost)
  (let ([c-build-sig-exprs (curryr build-sig-exprs instr-set base-exprs depth max-cost instr)])
    (foldr append '() (map c-build-sig-exprs (filter (curry out-eq? output-type) (arm:instr-forms instr))))))

(define (build-sig-exprs sig instr-set base-exprs depth max-cost instr)
  (let ([sig-exprs
    (let ([arg-opts (get-arg-opts (arm:instr-sig-args sig) instr-set base-exprs depth max-cost instr)])
      (apply cartesian-product arg-opts))])
    (map (curry build-ast instr) sig-exprs)))

(define (get-arg-opts args instr-set base-exprs depth max-cost instr)
  (cond
    [(empty? args) '()]
    [else
     (let ([arg (first args)])
       (let ([opts (match arg
                     [#t (list (cons #t 0))]
                     [#f (list (cons #f 0))]
                     [_ (enumerate-arm instr-set arg base-exprs (sub1 depth) max-cost instr)])])
         (append (list opts) (get-arg-opts (rest args) instr-set base-exprs depth max-cost instr))))]))

(define (build-ast instr sig-expr)
  (define cost (foldr + (instr-cost instr) (map cdr sig-expr)))
  (define expr (apply instr (map car sig-expr)))
  (cons expr cost))

;; TODO: need instruction costs!!
(define (instr-cost instr)
  (cond
    [(eq? instr arm:zip1) 1]
    [(eq? instr arm:zip2) 1]
    [(eq? instr arm:uzip1) 1]
    [(eq? instr arm:uzip2) 1]
    [(eq? instr arm:dup) 1]
    [(eq? instr arm:dupw) 2]
    [(eq? instr arm:dupn) 0.95]
    [(eq? instr arm:trn1) 1]
    [(eq? instr arm:trn2) 1]
    [else (error "Unknown load instruction: ~a" instr)]))


(define (out-eq? output-type sig)
  (eq? (arm:instr-sig-ret-val sig) output-type))

;; TODO: prune bad swizzle combinations
(define (keep? parent-instr child-instr)
  (not
   (or
    ; (eq? parent-instr child-instr)
    (and (eq? parent-instr arm:reinterpret) (eq? child-instr arm:reinterpret))
   )))
  ; (not
  ;  (or
  ;   (eq? parent-instr child-instr)
  ;   (and (eq? parent-instr lo) (eq? child-instr vcombine))
  ;   (and (eq? parent-instr hi) (eq? child-instr vcombine))
  ;   (and (eq? parent-instr lo) (eq? child-instr vreadp))
  ;   (and (eq? parent-instr hi) (eq? child-instr vreadp))
  ;   (and (eq? parent-instr vshuff) (eq? child-instr vdeal))
  ;   (and (eq? parent-instr vdeal) (eq? child-instr vshuff))
  ;   (and (eq? parent-instr vinterleave) (eq? child-instr vinterleave2))
  ;   (and (eq? parent-instr vinterleave2) (eq? child-instr vinterleave)))))
