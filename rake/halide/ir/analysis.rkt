#lang rosette

;; WARNING:
;; Most, if not all, of the following functions are meant as a pre-processing step to the actual synthesis. They help
;; generate and specialize a grammar. The functions contain rosette unsafe constructs and therefore should never be
;; used as part of a query to the solver.

(require
  (only-in racket/base for/fold) ; make-hash hash-ref hash-set! hash-has-key?
  (only-in rosette/base/core/term @app)
  rosette/lib/destruct
  rake/cpp
  rake/halide/ir/types
  rake/halide/ir/visitor
  rake/halide/ir/interpreter)

(provide
 (prefix-out halide: extract-live-buffers)
 (prefix-out halide: extract-buffer-reads)
 (prefix-out halide: extract-loads)
 (prefix-out halide: extract-add-scalars)
 (prefix-out halide: extract-sub-scalars)
 (prefix-out halide: extract-mul-scalars)
 (prefix-out halide: extract-div-scalars)
 (prefix-out halide: extract-shr-scalars)
 (prefix-out halide: extract-shr-scalars)
 (prefix-out halide: extract-mod-scalars)
 (prefix-out halide: extract-minmax-scalars)
 (prefix-out halide: cast-op?))

(define (extract-live-buffers expr)
  (define live-buffers (mutable-set))
  (define (extract-buffer node)
    (destruct node
      ;[(buffer data elemT) (set-add! live-buffers node)]
      [(abstr-halide-expr orig-expr abstr-vals) (set-add! live-buffers abstr-vals) node]
      [(load buffer idx align) (set-add! live-buffers buffer) node]
      [_ node]))
  (halide:visit expr extract-buffer)
  live-buffers)

;; Extract buffer reads. Current strategy is to interpret the expression and traverse the symbolic vector generated.
;; Usage: When synthesizing (swizzling) hash-tables, we restrict the hashtables to only point to the data-elements that appear in
;; the original expression.
(define (extract-buffer-reads expr)
  (define live-buffers (extract-live-buffers expr))
  (define interpreted-expr (halide:interpret expr))
  (for/fold
    ([buff-reads '()])
    ([i (halide:vec-len expr)])
      (append buff-reads (list (set->list (list->set (extract-lane-buffer-reads (interpreted-expr i) live-buffers)))))))

(define cache (make-hash))

(define (extract-lane-buffer-reads expr live-buffers)
  (cond
    [(hash-has-key? cache expr)
     (hash-ref cache expr)]
    [else
     (define reads
       (match expr
         ;; Unwrap the types
         [(int8_t v) (extract-lane-buffer-reads v live-buffers)]
         [(int16_t v) (extract-lane-buffer-reads v live-buffers)]
         [(int32_t v) (extract-lane-buffer-reads v live-buffers)]
         [(int64_t v) (extract-lane-buffer-reads v live-buffers)]
         [(uint1_t v) (extract-lane-buffer-reads v live-buffers)]
         [(uint8_t v) (extract-lane-buffer-reads v live-buffers)]
         [(uint16_t v) (extract-lane-buffer-reads v live-buffers)]
         [(uint32_t v) (extract-lane-buffer-reads v live-buffers)]
         [(uint64_t v) (extract-lane-buffer-reads v live-buffers)]
    
         ;; If it is a read from a symbolic buffer, extract
         [(expression (== @app) xs ...)
          (define app-target (list-ref xs 0))
          (define expr-type (for/or ([lb live-buffers]) (if (eq? (buffer-data lb) app-target) (buffer-elemT lb) #f)))
          (if expr-type (list (mk-cpp-expr expr expr-type)) (list))]

         ;; For all other expressions, recurse
         [(expression op xs ...)
          (flatten (for/list ([x xs]) (extract-lane-buffer-reads x live-buffers)))]

         ;; Ignore constants
         [(bv _ _) (list)]
         [(bitvector _) (list)]
         [(? number? n) (list)]
         [(constant id type) (list)]

         [else (error "halide/ir/analysis: NYI how to extract buffer reads from" expr)]))
       (hash-set! cache expr reads)
       reads]))

(define (extract-add-scalars expr)
  (define add-scalars (mutable-set))
  (define (extract-add-const node)
    (destruct node
      ;; We only need to examine add nodes
      [(vec-add v1 v2) (set-union! add-scalars (extract-scalars v1) (extract-scalars v2))]
      ;; Ignore everything else
      [_ node]))
  (halide:visit expr extract-add-const)
  (set->list add-scalars))

(define (extract-sub-scalars expr)
  (define sub-scalars (mutable-set))
  (define (extract-sub-const node)
    (destruct node
      ;; We only need to examine sub nodes
      [(vec-sub v1 v2) (set-union! sub-scalars (extract-scalars v1) (extract-scalars v2))]
      ;; Ignore everything else
      [_ node]))
  (halide:visit expr extract-sub-const)
  (set->list sub-scalars))

(define (extract-mul-scalars expr)
  (define mul-scalars (mutable-set))
  (define (extract-mul-const node)
    (destruct node
      ;; We only need to examing shift-left and multiply nodes
      [(vec-mul v1 v2) (set-union! mul-scalars (extract-scalars v1) (extract-scalars v2))]
      [(vec-shl v1 v2) (set-union! mul-scalars (extract-scalars v1) (two^ (extract-scalars v2)))]
      [(vec-broadcast n vec)
       (when (<= (halide:vec-len vec) 4)
         (assert (load? vec))
         (assert (ramp? (load-idxs vec)))
         (define b (load-buf vec))
         (define idx (ramp-base (load-idxs vec)))
         (set-union! mul-scalars
           (set
            (load-sca b idx)
            (load-sca b (sca-add idx 1))
            (load-sca b (sca-add idx 2))
            (load-sca b (sca-add idx 3)))))]
      ;; Ignore everything else
      [_ node]))
  (halide:visit expr extract-mul-const)
  (set->list mul-scalars))

(define (extract-shr-scalars expr)
  (define shr-scalars (mutable-set))
  (define (extract-shr-const node)
    (destruct node
      ;; We only need to examing shift-right and divide
      [(vec-div v1 v2)
       (define div-scalars (extract-scalars v2))
       (define pow-of-2-scalars (filter (lambda (c) (is-power-of-2? c)) (set->list div-scalars)))
       (define log-2-scalars (list->set (map (lambda (c) (log-2 c)) pow-of-2-scalars)))
       (set-union! shr-scalars log-2-scalars)]
      [(vec-shr v1 v2) (set-union! shr-scalars (extract-scalars v2))]
      ;; Ignore everything else
      [_ node]))
  (halide:visit expr extract-shr-const)
  (set->list shr-scalars))

(define (extract-div-scalars expr)
  (define shr-scalars (mutable-set))
  (define (extract-shr-const node)
    (destruct node
      ;; We only need to examing shift-right and divide
      [(vec-div v1 v2) (set-union! shr-scalars (extract-scalars v2))]
      [(vec-shr v1 v2) (set-union! shr-scalars (two^ (extract-scalars v2)))]
      ;; Ignore everything else
      [_ node]))
  (halide:visit expr extract-shr-const)
  (set->list shr-scalars))

(define (extract-mod-scalars expr)
  (define mod-scalars (mutable-set))
  (define (extract-mod-const node)
    (destruct node
      ;; We only need to examing mod and bit-wise and
      ;[(vec-and v1 v2)
       ;(define div-scalars (extract-scalars v2))
       ;(define pow-of-2-scalars (filter (lambda (c) (is-power-of-2? c)) (set->list div-scalars)))
       ;(define log-2-scalars (list->set (map (lambda (c) (log-2 c)) pow-of-2-scalars)))
       ;(set-union! mod-scalars log-2-scalars)]
      [(vec-mod v1 v2) (set-union! mod-scalars (extract-scalars v2))]
      ;; Ignore everything else
      [_ node]))
  (halide:visit expr extract-mod-const)
  (set->list mod-scalars))

(define (extract-minmax-scalars expr)
  (define minmax-scalars (mutable-set))
  (define (extract-minmax-const node)
    (destruct node
      ;; We only need to examing min and max nodes
      [(vec-min v1 v2) (set-union! minmax-scalars (extract-scalars v1) (extract-scalars v2))]
      [(vec-max v1 v2) (set-union! minmax-scalars (extract-scalars v1) (extract-scalars v2))]
      ;; Ignore everything else
      [_ node]))
  (halide:visit expr extract-minmax-const)
  (set->list minmax-scalars))

;; Extract vectors
(define (extract-loads expr)
  (define loads (mutable-set))
  (define (extract-load-ops node)
    (destruct node
      [(load buf idxs align)
        (destruct idxs
          [(ramp base stride len)
           (define elem-bw (cpp:type-bw (buffer-elemT buf)))
           (define tile-w (* len stride elem-bw))
           (define lds
             (cond
               [(< tile-w 1024)
                (set)]
               [(eq? tile-w 1024)
                (set (list buf base align))]
               [(eq? tile-w 2048)
                (set
                 (list buf base align)
                 (list buf (sca-add base (quotient 1024 elem-bw)) align))]
               [(eq? tile-w 4096)
                (set
                 (list buf base align)
                 (list buf (sca-add base (quotient 1024 elem-bw)) align)
                 (list buf (sca-add base (quotient 2048 elem-bw)) align)
                 (list buf (sca-add base (quotient 3072 elem-bw)) align))]
               [(eq? tile-w 8192)
                (set
                 (list buf base align)
                 (list buf (sca-add base (quotient 1024 elem-bw)) align)
                 (list buf (sca-add base (quotient 2048 elem-bw)) align)
                 (list buf (sca-add base (quotient 3072 elem-bw)) align)
                 (list buf (sca-add base (quotient 4096 elem-bw)) align)
                 (list buf (sca-add base (quotient 5120 elem-bw)) align)
                 (list buf (sca-add base (quotient 6144 elem-bw)) align)
                 (list buf (sca-add base (quotient 7168 elem-bw)) align))]
               [else
                (error "NYI: Extracting vec from:" expr)]))
           (set-union! loads lds)]
        [_ (error "NYI: Extracting vec from:" expr)])]
      ;; Ignore everything else
      [_ node]))
  (halide:visit expr extract-load-ops)
  (set->list loads))

;;;;;;;;;;;;;;;;;; Some helper functions ;;;;;;;;;;;;;;;;;;;;;;

(define (is-power-of-2? val)
  (and
   ;; It cannot be a symbolic value
   (empty? (symbolics val))
   ;; Is a power of 2
   (and (bveq (bvand (cpp:eval val) (bvsub (cpp:eval val) (bv 1 (cpp:expr-bw val)))) (bv 0 (cpp:expr-bw val))) (not (bveq (cpp:eval val) (bv 0 (cpp:expr-bw val)))))))

(define (log-2 val)
  (mk-cpp-expr (bv (exact-round (log (cpp:eval-to-int val) 2)) (cpp:expr-bw val)) (cpp:type val)))

(define (extract-scalars vec)
  (define v (strip-casts vec))
  (match v
    [(sca-broadcast sca lanes) (set sca)]
    [_ (set)]))

(define (strip-casts expr)
  (destruct expr
    [(vec-cast vec type lanes) (strip-casts vec)]
    [_ expr]))

(define (two^ scalars)
  (for/set ([n scalars])
    (match n
      [(int8_t v) (int8_t (bvshl (bv 1 8) v))]
      [(uint8_t v) (uint8_t (bvshl (bv 1 8) v))]
      [(int16_t v) (int16_t (bvshl (bv 1 16) v))]
      [(uint16_t v) (uint16_t (bvshl (bv 1 16) v))]
      [(int32_t v) (int32_t (bvshl (bv 1 32) v))]
      [(uint32_t v) (uint32_t (bvshl (bv 1 32) v))])))

(define (cast-op? expr)
  (destruct expr
    [(vec-cast vec type lanes) #t]
    [_ #f]))