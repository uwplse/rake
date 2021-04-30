#lang rosette

;; WARNING:
;; Most, if not all, of the following functions are meant as a pre-processing step to the actual synthesis. They help
;; generate and specialize a grammar. The functions contain rosette unsafe constructs and therefore should never be
;; used as part of a query to the solver.

(require
  (only-in racket/base for/fold)
  (only-in rosette/base/core/term @app)
  rosette/lib/destruct
  rake/cpp
  rake/halide/ir/types
  rake/halide/ir/visitor
  rake/halide/ir/interpreter)

(provide
 (rename-out
  [extract-live-buffers extract-live-buffers-halide]
  [extract-buffer-reads extract-buffer-reads-halide]
  [extract-add-consts extract-add-consts-halide]
  [extract-sub-consts extract-sub-consts-halide]
  [extract-mul-consts extract-mul-consts-halide]
  [extract-div-consts extract-div-consts-halide]
  [extract-shr-consts extract-shr-consts-halide]
  [extract-mod-consts extract-mod-consts-halide]
  [cast-op? halide-cast-op?]))

(define (extract-live-buffers expr)
  (define live-buffers (mutable-set))
  (define (extract-buffer node)
    (destruct node
      [(buffer data elemT) (set-add! live-buffers node)]
      [_ node]))
  (visit-halide expr extract-buffer)
  live-buffers)

;; Extract buffer reads. Current strategy is to interpret the expression and traverse the symbolic vector generated.
;; Usage: When synthesizing (swizzling) hash-tables, we restrict the hashtables to only point to the data-elements that appear in
;; the original expression. 
(define (extract-buffer-reads expr)
  (define live-buffers (extract-live-buffers expr))
  (for/fold
    ([buff-reads '()])
    ([i (halide-vec-len expr)])
      (append buff-reads (list (set->list (list->set (extract-lane-buffer-reads ((interpret-halide expr) i) live-buffers)))))))

(define (extract-lane-buffer-reads expr live-buffers)
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

(define (extract-add-consts expr)
  (define add-consts (mutable-set))
  (define (extract-add-const node)
    (destruct node
      ;; We only need to examine add nodes
      [(vec-add v1 v2) (set-union! add-consts (extract-consts v1) (extract-consts v2))]
      ;; Ignore everything else
      [_ node]))
  (visit-halide expr extract-add-const)
  (set->list add-consts))

(define (extract-sub-consts expr)
  (define sub-consts (mutable-set))
  (define (extract-sub-const node)
    (destruct node
      ;; We only need to examine sub nodes
      [(vec-sub v1 v2) (set-union! sub-consts (extract-consts v1) (extract-consts v2))]
      ;; Ignore everything else
      [_ node]))
  (visit-halide expr extract-sub-const)
  (set->list sub-consts))

(define (extract-mul-consts expr)
  (define mul-consts (mutable-set))
  (define (extract-mul-const node)
    (destruct node
      ;; We only need to examing shift-left and multiply nodes
      [(vec-mul v1 v2) (set-union! mul-consts (extract-consts v1) (extract-consts v2))]
      [(vec-shl v1 v2) (set-union! mul-consts (extract-consts v1) (two^ (extract-consts v2)))]
      ;; Ignore everything else
      [_ node]))
  (visit-halide expr extract-mul-const)
  (set->list mul-consts))

(define (extract-shr-consts expr)
  (define shr-consts (mutable-set))
  (define (extract-shr-const node)
    (destruct node
      ;; We only need to examing shift-right and divide
      [(vec-div v1 v2)
       (define div-consts (extract-consts v2))
       (define pow-of-2-consts (filter (lambda (c) (is-power-of-2? c)) (set->list div-consts)))
       (define log-2-consts (list->set (map (lambda (c) (log-2 c)) pow-of-2-consts)))
       (set-union! shr-consts log-2-consts)]
      [(vec-shr v1 v2) (set-union! shr-consts (extract-consts v2))]
      ;; Ignore everything else
      [_ node]))
  (visit-halide expr extract-shr-const)
  (set->list shr-consts))

(define (extract-div-consts expr)
  (define shr-consts (mutable-set))
  (define (extract-shr-const node)
    (destruct node
      ;; We only need to examing shift-right and divide
      [(vec-div v1 v2) (set-union! shr-consts (extract-consts v2))]
      [(vec-shr v1 v2) (set-union! shr-consts (two^ (extract-consts v2)))]
      ;; Ignore everything else
      [_ node]))
  (visit-halide expr extract-shr-const)
  (set->list shr-consts))

(define (extract-mod-consts expr)
  (define mod-consts (mutable-set))
  (define (extract-mod-const node)
    (destruct node
      ;; We only need to examing mod and bit-wise and
      ;[(vec-and v1 v2)
       ;(define div-consts (extract-consts v2))
       ;(define pow-of-2-consts (filter (lambda (c) (is-power-of-2? c)) (set->list div-consts)))
       ;(define log-2-consts (list->set (map (lambda (c) (log-2 c)) pow-of-2-consts)))
       ;(set-union! mod-consts log-2-consts)]
      [(vec-mod v1 v2) (set-union! mod-consts (extract-consts v2))]
      ;; Ignore everything else
      [_ node]))
  (visit-halide expr extract-mod-const)
  (set->list mod-consts))

;;; Extract vectors
;(define (extract-loads-as-hvx-vecs expr)
;  (list->set
;   (match expr
;     ;; Constructors
;     ;[(x32 sca) (list (vsplat sca))]
;     ;[(x64 sca) (list (vsplat sca))]
;     ;[(x128 sca) (list (vsplat sca))]
;     ;[(x256 sca) (list (vsplat sca))]
;     [(x32 sca) (list)]
;     [(x64 sca) (list)]
;     [(x128 sca) (list)]
;     [(x256 sca) (list)]
;
;     [(ramp base stride len) (list)]
;     [(load buf idxs align)
;      (match idxs
;        [(ramp base stride len)
;         (define elem-bw (bw (hash-ref type-dict buf)))
;         (define tile-w (* len elem-bw))
;         (cond
;           [(eq? tile-w 1024)
;            (list (list buf base align))]
;           [(eq? tile-w 2048)
;            (list
;             (list buf base align)
;             (list buf (+ base (quotient 1024 elem-bw)) align))]
;           [(eq? tile-w 4096)
;            (list
;             (list buf base align)
;             (list buf (+ base (quotient 1024 elem-bw)) align)
;             (list buf (+ base (quotient 2048 elem-bw)) align)
;             (list buf (+ base (quotient 3072 elem-bw)) align))])]
;        [_ (error "NYI: Extracting vec from:" expr)])]
;
;     [(slice_vectors vec base stride len) (extract-loads-as-hvx-vecs vec)]
;     [(concat_vectors v1 v2) (set-union (extract-loads-as-hvx-vecs v1) (extract-loads-as-hvx-vecs v2))]
;
;     ;; Type Casts
;     [(uint8x32 vec) (extract-loads-as-hvx-vecs vec)]
;     [(uint16x32 vec) (extract-loads-as-hvx-vecs vec)]
;     [(uint32x32 vec) (extract-loads-as-hvx-vecs vec)]
;     [(int8x32 vec) (extract-loads-as-hvx-vecs vec)]
;     [(int16x32 vec) (extract-loads-as-hvx-vecs vec)]
;     [(int32x32 vec) (extract-loads-as-hvx-vecs vec)]
;     [(uint8x64 vec) (extract-loads-as-hvx-vecs vec)]
;     [(uint16x64 vec) (extract-loads-as-hvx-vecs vec)]
;     [(uint32x64 vec) (extract-loads-as-hvx-vecs vec)]
;     [(int8x64 vec) (extract-loads-as-hvx-vecs vec)]
;     [(int16x64 vec) (extract-loads-as-hvx-vecs vec)]
;     [(int32x64 vec) (extract-loads-as-hvx-vecs vec)]
;     [(uint8x128 vec) (extract-loads-as-hvx-vecs vec)]
;     [(uint16x128 vec) (extract-loads-as-hvx-vecs vec)]
;     [(uint32x128 vec) (extract-loads-as-hvx-vecs vec)]
;     [(int8x128 vec) (extract-loads-as-hvx-vecs vec)]
;     [(int16x128 vec) (extract-loads-as-hvx-vecs vec)]
;     [(int32x128 vec) (extract-loads-as-hvx-vecs vec)]
;     [(uint8x256 vec) (extract-loads-as-hvx-vecs vec)]
;
;     ;; Operations
;     [(vec-add v1 v2) (set-union (extract-loads-as-hvx-vecs v1) (extract-loads-as-hvx-vecs v2))]
;     [(vec-sub v1 v2) (set-union (extract-loads-as-hvx-vecs v1) (extract-loads-as-hvx-vecs v2))]
;     [(vec-div v1 v2) (set-union (extract-loads-as-hvx-vecs v1) (extract-loads-as-hvx-vecs v2))]
;     [(vec-mul v1 v2) (set-union (extract-loads-as-hvx-vecs v1) (extract-loads-as-hvx-vecs v2))]
;     [(vec-max v1 v2) (set-union (extract-loads-as-hvx-vecs v1) (extract-loads-as-hvx-vecs v2))]
;     [(vec-min v1 v2) (set-union (extract-loads-as-hvx-vecs v1) (extract-loads-as-hvx-vecs v2))]
;     [(vec-if v1 v2 v3) (set-union (set-union (extract-loads-as-hvx-vecs v1) (extract-loads-as-hvx-vecs v2)) (extract-loads-as-hvx-vecs v3))]
;     [(vec-lt v1 v2) (set-union (extract-loads-as-hvx-vecs v1) (extract-loads-as-hvx-vecs v2))]     
;     [(vec-le v1 v2) (set-union (extract-loads-as-hvx-vecs v1) (extract-loads-as-hvx-vecs v2))]     
;
;     [(vec-shl v1 v2) (set-union (extract-loads-as-hvx-vecs v1) (extract-loads-as-hvx-vecs v2))]
;     [(vec-shr v1 v2) (set-union (extract-loads-as-hvx-vecs v1) (extract-loads-as-hvx-vecs v2))]
;     [(vec-absd v1 v2) (set-union (extract-loads-as-hvx-vecs v1) (extract-loads-as-hvx-vecs v2))]
;    
;     ;; Base case
;     [_ (error "Don't know how to get loads from:" expr)])))

;;;;;;;;;;;;;;;;;; Some helper functions ;;;;;;;;;;;;;;;;;;;;;;

(define (is-power-of-2? val)
  (and
   ;; It cannot be a symbolic value
   (empty? (symbolics val))
   ;; Is a power of 2
   (let ([x (log (eval-to-int val) 2)]) (eq? x (exact-round x)))))

(define (log-2 val)
  (mk-cpp-expr (bv (exact-round (log (eval-to-int val) 2)) (expr-bw val)) (cpp-type val)))

(define (extract-consts vec)
  (define v (strip-casts vec))
  (match v
    [(x32 sca) (set ((interpret-halide vec) 0))]
    [(x64 sca) (set ((interpret-halide vec) 0))]
    [(x128 sca) (set ((interpret-halide vec) 0))]
    [(x256 sca) (set ((interpret-halide vec) 0))]
    [_ (set)]))

(define (strip-casts expr)
  (destruct expr
    [(uint8x32 vec) (strip-casts vec)]
    [(uint16x32 vec) (strip-casts vec)]
    [(uint32x32 vec) (strip-casts vec)]
    [(uint64x32 vec) (strip-casts vec)]
    
    [(int8x32 vec) (strip-casts vec)]
    [(int16x32 vec) (strip-casts vec)]
    [(int32x32 vec) (strip-casts vec)]
    [(int64x32 vec) (strip-casts vec)]
    
    [(uint8x64 vec) (strip-casts vec)]
    [(uint16x64 vec) (strip-casts vec)]
    [(uint32x64 vec) (strip-casts vec)]
    [(uint64x64 vec) (strip-casts vec)]
    
    [(int8x64 vec) (strip-casts vec)]
    [(int16x64 vec) (strip-casts vec)]
    [(int32x64 vec) (strip-casts vec)]
    [(int64x64 vec) (strip-casts vec)]
    
    [(uint8x128 vec) (strip-casts vec)]
    [(uint16x128 vec) (strip-casts vec)]
    [(uint32x128 vec) (strip-casts vec)]
    [(uint64x128 vec) (strip-casts vec)]
    
    [(int8x128 vec) (strip-casts vec)]
    [(int16x128 vec) (strip-casts vec)]
    [(int32x128 vec) (strip-casts vec)]
    [(int64x128 vec) (strip-casts vec)]
    
    [(uint8x256 vec) (strip-casts vec)]
    [(uint16x256 vec) (strip-casts vec)]
    [(uint32x256 vec) (strip-casts vec)]
    [(uint64x256 vec) (strip-casts vec)]

    [(int8x256 vec) (strip-casts vec)]
    [(int16x256 vec) (strip-casts vec)]
    [(int32x256 vec) (strip-casts vec)]
    [(int64x256 vec) (strip-casts vec)]
    
    [_ expr]))

(define (two^ consts)
  (for/set ([n consts])
    (match n
      [(int8_t v) (int8_t (bvshl (bv 1 8) v))]
      [(uint8_t v) (uint8_t (bvshl (bv 1 8) v))]
      [(int16_t v) (int16_t (bvshl (bv 1 16) v))]
      [(uint16_t v) (uint16_t (bvshl (bv 1 16) v))]
      [(int32_t v) (int32_t (bvshl (bv 1 32) v))]
      [(uint32_t v) (uint32_t (bvshl (bv 1 32) v))])))

(define (cast-op? expr)
  (destruct expr
    [(uint8x32 vec) #t]
    [(uint16x32 vec) #t]
    [(uint32x32 vec) #t]
    [(uint64x32 vec) #t]
    
    [(int8x32 vec) #t]
    [(int16x32 vec) #t]
    [(int32x32 vec) #t]
    [(int64x32 vec) #t]
    
    [(uint8x64 vec) #t]
    [(uint16x64 vec) #t]
    [(uint32x64 vec) #t]
    [(uint64x64 vec) #t]
    
    [(int8x64 vec) #t]
    [(int16x64 vec) #t]
    [(int32x64 vec) #t]
    [(int64x64 vec) #t]
    
    [(uint8x128 vec) #t]
    [(uint16x128 vec) #t]
    [(uint32x128 vec) #t]
    [(uint64x128 vec) #t]
    
    [(int8x128 vec) #t]
    [(int16x128 vec) #t]
    [(int32x128 vec) #t]
    [(int64x128 vec) #t]
    
    [(uint8x256 vec) #t]
    [(uint16x256 vec) #t]
    [(uint32x256 vec) #t]
    [(uint64x256 vec) #t]

    [(int8x256 vec) #t]
    [(int16x256 vec) #t]
    [(int32x256 vec) #t]
    [(int64x256 vec) #t]
    
    [_ #f]))