#lang rosette

(require rake/util)
(require rake/cpp/types)

(require rake/synthesis/spec)
(require rake/synthesis/lowering/hvx-template-synthesizer-incr)
(require rake/synthesis/lowering/hvx-template-synthesizer-enum)
(require rake/synthesis/hvx-swizzle-synthesizer)

(require rake/hvx/ast/types)
(require rake/hvx/interpreter)

(require rake/halide/ir/types)
(require rake/halide/ir/interpreter)

(require rake/synthesis/ir)

(define ir-to-hvx (make-hash))

;; Legacy
;(define (synthesize-hvx-expr halide-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations [lowering-algo 'enumerative] [swizzling-algo 'enumerative])
;  (match lowering-algo
;    ['incremental (backtracking-search-incr halide-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo)]
;    ['enumerative (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo)]
;    [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))]))

(define (synthesize-hvx-expr halide-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations [lowering-algo 'enumerative] [swizzling-algo 'enumerative] [root-node? #t])

  (define-values (successful? hvx-expr)
    (match ir-expr
      [(packhi sub-expr signed?)
       (define-values (successful? hvx-sub-expr)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))
       
       (cond
         [successful?
          (define halide-sub-expr (hash-ref ir-annotations (ir-node-id ir-expr)))
          (hash-set! ir-to-hvx (ir-node-id sub-expr) (if (vinterleave? hvx-sub-expr) (vinterleave-Vuu hvx-sub-expr) hvx-sub-expr))
          (match lowering-algo
            ['incremental (backtracking-search-incr halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
            ['enumerative (backtracking-search-enum halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
            [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))])]
         [else (values #f (void))])]
    
      [(arith-shift-right sub-expr n round? outputType)
       (define-values (successful? hvx-sub-expr)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))
       
       (cond
         [successful?
          (define halide-sub-expr (hash-ref ir-annotations (ir-node-id ir-expr)))
          (hash-set! ir-to-hvx (ir-node-id sub-expr) (if (vinterleave? hvx-sub-expr) (vinterleave-Vuu hvx-sub-expr) hvx-sub-expr))
          (match lowering-algo
            ['incremental (backtracking-search-incr halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
            ['enumerative (backtracking-search-enum halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
            [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))])]
         [else (values #f (void))])]

      [(convolve sub-expr kernel saturateFunc outputType)
       (define-values (successful? hvx-sub-expr)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))
       
       (cond
         [successful?
           (define halide-sub-expr (hash-ref ir-annotations (ir-node-id ir-expr)))
           (hash-set! ir-to-hvx (ir-node-id sub-expr) (if (vinterleave? hvx-sub-expr) (vinterleave-Vuu hvx-sub-expr) hvx-sub-expr))
           (match lowering-algo
             ['incremental (backtracking-search-incr halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             ['enumerative (backtracking-search-enum halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))])]
         [else (values #f (void))])]

      [(convolve-acc acc sub-expr kernel saturateFunc outputType)
       (define-values (successful1? hvx-acc)
         (synthesize-hvx-expr halide-expr halide-expr-axioms acc ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))
       (define-values (successful2? hvx-sub-expr)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))

       (cond
         [(and successful1? successful2?)
          (cond
            [(list? hvx-acc)
             (define base 0)
             (define successful? #t)
             (define hvx-exprs (list))
             (for ([acc-expr hvx-acc])
               (when successful?
                 (define vec (hash-ref ir-annotations (ir-node-id ir-expr)))
                 (define len (quotient (num-elems-hal vec) (length hvx-acc)))
                 (define halide-sub-expr (slice_vectors vec base 1 len))

                 (hash-set! ir-to-hvx (ir-node-id acc) (if (vinterleave? acc-expr) (vinterleave-Vuu acc-expr) acc-expr))
                 (hash-set! ir-to-hvx (ir-node-id sub-expr) (if (vinterleave? hvx-sub-expr) (vinterleave-Vuu hvx-sub-expr) hvx-sub-expr))
                 (define-values (s? hvx-expr)
                   (match lowering-algo
                     ['incremental (backtracking-search-incr halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
                     ['enumerative (backtracking-search-enum halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol (hash-set (make-immutable-hash (hash->list ir-annotations)) (ir-node-id ir-expr) halide-sub-expr) (list) swizzling-algo ir-to-hvx base)]
                     [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))]))

                 (set! base (+ base len))
                 (set! successful? (and successful? s?))
                 (set! hvx-exprs (append hvx-exprs (list hvx-expr)))))
             
             (values successful? hvx-exprs)]
            [else
             (define halide-sub-expr (hash-ref ir-annotations (ir-node-id ir-expr)))
             (hash-set! ir-to-hvx (ir-node-id acc) (if (vinterleave? hvx-acc) (vinterleave-Vuu hvx-acc) (first hvx-acc)))
             (hash-set! ir-to-hvx (ir-node-id sub-expr) (if (vinterleave? hvx-sub-expr) (vinterleave-Vuu hvx-sub-expr) hvx-sub-expr))
             (match lowering-algo
               ['incremental (backtracking-search-incr halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
               ['enumerative (backtracking-search-enum halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
               [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))])

             ])]
         [else (values #f (void))])]

;      [(cast sub-expr type)
;       (begin
;         (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
;         (define hvx-sub-expr (synthesize-hvx-template hvx-sub-spec ir-to-hvx))
;         
;         (display "Lifting IR to HVX...\n")
;         (display "====================\n\n")
;         (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))
;         
;         (reset-hvx-instr-bnd)
;         (synthesize-equiv-hvx spec sub-expr hvx-sub-expr discarded-sols))]

      [(saturate sub-expr round? signedOut?)
       (define-values (successful? hvx-sub-expr)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))
       
       (cond
         [successful?
          (define halide-sub-expr (hash-ref ir-annotations (ir-node-id ir-expr)))
          (hash-set! ir-to-hvx (ir-node-id sub-expr) (if (vinterleave? hvx-sub-expr) (vinterleave-Vuu hvx-sub-expr) hvx-sub-expr))
          (match lowering-algo
            ['incremental (backtracking-search-incr halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
            ['enumerative (backtracking-search-enum halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
            [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))])]
         [else (values #f (void))])]

      [(abs-diff sub-expr1 sub-expr2)
       (define-values (successful1? hvx-sub-expr1)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr1 ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))
       (define-values (successful2? hvx-sub-expr2)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr2 ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))

       (cond
         [(and successful1? successful2?)
           (define halide-sub-expr (hash-ref ir-annotations (ir-node-id ir-expr)))
           (hash-set! ir-to-hvx (ir-node-id sub-expr1) (if (vinterleave? hvx-sub-expr1) (vinterleave-Vuu hvx-sub-expr1) hvx-sub-expr1))
           (hash-set! ir-to-hvx (ir-node-id sub-expr2) (if (vinterleave? hvx-sub-expr2) (vinterleave-Vuu hvx-sub-expr2) hvx-sub-expr2))
           (match lowering-algo
             ['incremental (backtracking-search-incr halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             ['enumerative (backtracking-search-enum halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))])]
         [else (values #f (void))])]

      [(const-add sub-expr1 sub-expr2 sat? outT)
       (define-values (successful1? hvx-sub-expr1)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr1 ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))
       (define-values (successful2? hvx-sub-expr2)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr2 ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))

       (cond
         [(and successful1? successful2?)
           (define halide-sub-expr (hash-ref ir-annotations (ir-node-id ir-expr)))
           (hash-set! ir-to-hvx (ir-node-id sub-expr1) (if (vinterleave? hvx-sub-expr1) (vinterleave-Vuu hvx-sub-expr1) hvx-sub-expr1))
           (hash-set! ir-to-hvx (ir-node-id sub-expr2) (if (vinterleave? hvx-sub-expr2) (vinterleave-Vuu hvx-sub-expr2) hvx-sub-expr2))
           (match lowering-algo
             ['incremental (backtracking-search-incr halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             ['enumerative (backtracking-search-enum halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))])]
         [else (values #f (void))])]

      [(const-divide sub-expr const-divisor)
       (define-values (successful? hvx-sub-expr)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))
       
       (cond
         [successful?
           (define halide-sub-expr (hash-ref ir-annotations (ir-node-id ir-expr)))
           (hash-set! ir-to-hvx (ir-node-id sub-expr) (if (vinterleave? hvx-sub-expr) (vinterleave-Vuu hvx-sub-expr) hvx-sub-expr))
           (match lowering-algo
             ['incremental (backtracking-search-incr halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             ['enumerative (backtracking-search-enum halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))])]
         [else (values #f (void))])]

      [(maximum sub-expr1 sub-expr2)
       (define-values (successful1? hvx-sub-expr1)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr1 ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))
       (define-values (successful2? hvx-sub-expr2)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr2 ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))

       (cond
         [(and successful1? successful2?)
           (define halide-sub-expr (hash-ref ir-annotations (ir-node-id ir-expr)))
           (hash-set! ir-to-hvx (ir-node-id sub-expr1) (if (vinterleave? hvx-sub-expr1) (vinterleave-Vuu hvx-sub-expr1) hvx-sub-expr1))
           (hash-set! ir-to-hvx (ir-node-id sub-expr2) (if (vinterleave? hvx-sub-expr2) (vinterleave-Vuu hvx-sub-expr2) hvx-sub-expr2))
           (match lowering-algo
             ['incremental (backtracking-search-incr halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             ['enumerative (backtracking-search-enum halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))])]
         [else (values #f (void))])]

      [(minimum sub-expr1 sub-expr2)
       (define-values (successful1? hvx-sub-expr1)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr1 ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))
       (define-values (successful2? hvx-sub-expr2)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr2 ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))

       (cond
         [(and successful1? successful2?)
           (define halide-sub-expr (hash-ref ir-annotations (ir-node-id ir-expr)))
           (hash-set! ir-to-hvx (ir-node-id sub-expr1) (if (vinterleave? hvx-sub-expr1) (vinterleave-Vuu hvx-sub-expr1) hvx-sub-expr1))
           (hash-set! ir-to-hvx (ir-node-id sub-expr2) (if (vinterleave? hvx-sub-expr2) (vinterleave-Vuu hvx-sub-expr2) hvx-sub-expr2))
           (match lowering-algo
             ['incremental (backtracking-search-incr halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             ['enumerative (backtracking-search-enum halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))])]
         [else (values #f (void))])]

      [(subtract sub-expr1 sub-expr2 sat? outT)
       (define-values (successful1? hvx-sub-expr1)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr1 ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))
       (define-values (successful2? hvx-sub-expr2)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr2 ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))

       (cond
         [(and successful1? successful2?)
           (define halide-sub-expr (hash-ref ir-annotations (ir-node-id ir-expr)))
           (hash-set! ir-to-hvx (ir-node-id sub-expr1) (if (vinterleave? hvx-sub-expr1) (vinterleave-Vuu hvx-sub-expr1) hvx-sub-expr1))
           (hash-set! ir-to-hvx (ir-node-id sub-expr2) (if (vinterleave? hvx-sub-expr2) (vinterleave-Vuu hvx-sub-expr2) hvx-sub-expr2))
           (match lowering-algo
             ['incremental (backtracking-search-incr halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             ['enumerative (backtracking-search-enum halide-sub-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
             [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))])]
         [else (values #f (void))])]
      
      [(zip-data sub-expr1 sub-expr2)
       (define-values (successful1? hvx-sub-expr1)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr1 ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))
       (define-values (successful2? hvx-sub-expr2)
         (synthesize-hvx-expr halide-expr halide-expr-axioms sub-expr2 ir-expr-sol ir-annotations lowering-algo swizzling-algo #f))

       (cond
         [(and successful1? successful2?)
           (define halide-sub-expr (void))
           (hash-set! ir-to-hvx (ir-node-id sub-expr1) (if (vinterleave? hvx-sub-expr1) (vinterleave-Vuu hvx-sub-expr1) hvx-sub-expr1))
           (hash-set! ir-to-hvx (ir-node-id sub-expr2) (if (vinterleave? hvx-sub-expr2) (vinterleave-Vuu hvx-sub-expr2) hvx-sub-expr2))
           
           (values #t
                   (cons
                    (hash-ref ir-to-hvx (ir-node-id sub-expr1))
                    (hash-ref ir-to-hvx (ir-node-id sub-expr2))))]
         [else (values #f (void))])]

      [(broadcast val N)
       (define tile-width (* N (bw (elem-ir (interpret-ir ir-expr) 0))))
       (define hvx-vec-len 1024)
       (cond
         [(eq? tile-width hvx-vec-len) (values #t (vsplat val))]
         [(eq? tile-width (* 2 hvx-vec-len)) (values #t (vcombine (vsplat val) (vsplat val)))]
         [else (error "NYI: broadcasting for tiles greater than 2048 bits")])]
      
      [(load-data opts)
       (cond
         [root-node?
          (match lowering-algo
            ['incremental (backtracking-search-incr halide-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
            ['enumerative (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (list) swizzling-algo ir-to-hvx)]
            [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))])
          ]
         [else
          (values #t (gather* opts))])]

      [_ (error "NYI: Handler inside ir-expr-synthesizer for" ir-expr)]
      ))
  
  (values successful? hvx-expr))

(define (backtracking-search-incr halide-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations invalid-sketches swizzling-algo)
  ;; Define the ir specification for template synthesis
  (define hvx-spec (hvx-expr-spec ir-expr ir-expr-sol ir-annotations (symbolics halide-expr) halide-expr-axioms invalid-sketches))

  ;; Synthesize equivalent HVX expression
  (define ir-to-hvx (make-hash))
  (define hvx-expr-sketch (synthesize-hvx-template-incr hvx-spec ir-to-hvx))
  
  ;; Synthesize data-movement
  (define-values (successful? hvx-expr)
    (synthesize-hvx-swizzles halide-expr hvx-expr-sketch (symbolics halide-expr) halide-expr-axioms swizzling-algo))

  (if successful?
      (values successful? hvx-expr)
      (backtracking-search-incr halide-expr halide-expr-axioms ir-expr ir-expr-sol (append invalid-sketches (list ir-to-hvx)) swizzling-algo)))

(define (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations invalid-sketches swizzling-algo [ir-to-hvx (make-hash)] [offset 0])
  ;; Define the ir specification for template synthesis
  (define hvx-spec (hvx-expr-spec ir-expr ir-expr-sol ir-annotations (symbolics halide-expr) halide-expr-axioms invalid-sketches))
  
  ;; Synthesize equivalent HVX template (compute instructions)
  ;(define ir-to-hvx (make-hash))
  (define hvx-expr-sketch (synthesize-hvx-template-enum hvx-spec ir-to-hvx offset))
  
  ;; Synthesize data-movement
  (define-values (successful? hvx-expr)
    (synthesize-hvx-swizzles halide-expr hvx-expr-sketch (symbolics halide-expr) halide-expr-axioms swizzling-algo 0 offset))

  (cond
    [successful?
      ;; Repeat sketch if necessary to produce the right number of values
     (define hal-elem-cnt (vec-len halide-expr))
     (define hvx-elem-cnt (num-elems-hvx (interpret-hvx hvx-expr-sketch)))
     (cond
       [(eq? hal-elem-cnt (* 2 hvx-elem-cnt))
        (define-values (successful2? hvx-expr2)
          (synthesize-hvx-swizzles halide-expr hvx-expr-sketch (symbolics halide-expr) halide-expr-axioms swizzling-algo hvx-elem-cnt))
        (cond
          [successful2? (values successful? (cons hvx-expr hvx-expr2))]
          [else (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol (append invalid-sketches (list ir-to-hvx)) swizzling-algo)])]
       [(eq? hal-elem-cnt (* 4 hvx-elem-cnt))
        (define-values (successful2? hvx-expr2)
          (synthesize-hvx-swizzles halide-expr hvx-expr-sketch (symbolics halide-expr) halide-expr-axioms swizzling-algo hvx-elem-cnt))
        (cond
          [successful2?
           (define-values (successful3? hvx-expr3)
             (synthesize-hvx-swizzles halide-expr hvx-expr-sketch (symbolics halide-expr) halide-expr-axioms swizzling-algo (* 2 hvx-elem-cnt)))
           (cond
             [successful3?
              (define-values (successful4? hvx-expr4)
                (synthesize-hvx-swizzles halide-expr hvx-expr-sketch (symbolics halide-expr) halide-expr-axioms swizzling-algo (* 3 hvx-elem-cnt)))
              (cond
                [successful4? (values successful? (list hvx-expr hvx-expr2 hvx-expr3 hvx-expr4))]
                [else (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol (append invalid-sketches (list ir-to-hvx)) swizzling-algo)])]
             [else (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol (append invalid-sketches (list ir-to-hvx)) swizzling-algo)])]
          [else (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol (append invalid-sketches (list ir-to-hvx)) swizzling-algo)])]
       [else
        (values successful? hvx-expr)])]
    [else
     (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol ir-annotations (append invalid-sketches (list ir-to-hvx)) swizzling-algo ir-to-hvx)]))

(provide synthesize-hvx-expr)