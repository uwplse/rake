#lang rosette/safe

(require
  (only-in racket/list range)
  (only-in racket/base error exit)
  (rename-in racket/list [remove-duplicates remove-dups])
  rosette/lib/destruct
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/hvx/ir/instructions
  rake/hvx/ir/interpreter)

(provide lifting-ir-fold-grammar
         lifting-ir-repl-grammar
         lifting-ir-extend-grammar
         hvx-uber-instructions)

(struct lifting-ir (fold-grammar repl-grammar extend-grammar))

(define load-data-id -1)
(define (get-load-id) (set! load-data-id (add1 load-data-id)) load-data-id)

(define node-id 99)
(define (get-node-id) (set! node-id (add1 node-id)) node-id)

;; This function returns the list of templates that the
;; synthesizer may use to fold the new Halide IR node into
;; the current IR-expression. In these tempalates, we do not
;; change any uber-instruction in the IR expression, only their
;; inputs.
(define (fold-grammar lifted-sub-expr halide-expr [depth 0])
  (define candidates
    (destruct lifted-sub-expr
      [(load-data live-data gather-tbl) (list lifted-sub-expr)]
      [(broadcast value) '()]

      [(combine sub-expr0 sub-expr1 read-tbl) '()]
    
      [(cast sub-expr type) (list (cast (get-node-id) sub-expr (halide-elem-type halide-expr)))]

      [(vs-mpy-add sub-expr weight-matrix output-type saturate?)
       (define mul-consts (append (extract-mul-consts-halide halide-expr) (list (int8_t (bv 1 8)))))
       (define f (apply choose* mul-consts))
       (cond
         [(halide-cast-op? halide-expr)
          ;; Try folding by updating the output type
          (list (vs-mpy-add (get-node-id) sub-expr weight-matrix (halide-elem-type halide-expr) saturate?))]
         [(or (vec-min? halide-expr) (vec-max? halide-expr))
          ;; Try folding the min/max as a saturate
          (list (vs-mpy-add (get-node-id) sub-expr weight-matrix output-type (choose* #t #f)))]
         [(vec-add? halide-expr)
          ;; Try folding the add by expanding the weight-matrix
          (define updated-sub-expr
            (cond
              [(load-data? sub-expr)
               (define live-reads (merge-live-reads (load-data-live-data sub-expr) (extract-buffer-reads-halide halide-expr)))
               (load-data (get-node-id) live-reads (load-data-gather-tbl sub-expr))]
              [else sub-expr]))
          (list (vs-mpy-add (get-node-id) updated-sub-expr (append weight-matrix (list f)) output-type saturate?))]
         [(or (vec-mul? halide-expr) (vec-shl? halide-expr))
          ;; Try folding the mul by updating the weight-matrix
          (define updated-weights (map (lambda (w) (int8_t (bvmul (eval (cpp-cast w 'int8)) (eval (cpp-cast f 'int8))))) weight-matrix))
          (list (vs-mpy-add (get-node-id) sub-expr updated-weights output-type saturate?))]
         [else
          (list (vs-mpy-add (get-node-id) sub-expr weight-matrix output-type saturate?))])]

      [(add-const sub-expr const-val output-type saturate?)
       (define add-consts (extract-add-consts-halide halide-expr))
       (list (add-const (get-node-id) sub-expr (apply choose* add-consts) (halide-elem-type halide-expr) (choose* #t #f)))]

      [(shift-right sub-expr shift round? saturate? arithmetic? output-type)
       (define shr-consts (extract-shr-consts-halide halide-expr))
       (list (shift-right (get-node-id) sub-expr (apply choose* shr-consts) (choose* #t #f) (choose* #t #f) (choose* #t #f) (halide-elem-type halide-expr)))]

      [(maximum sub-expr0 sub-expr1) '()]
      [(minimum sub-expr0 sub-expr1) '()]

      [(abs-diff sub-expr0 sub-expr1) '()]
    
      [_ (error "NYI: Please define a (fold) grammar for IR Expr:" lifted-sub-expr halide-expr)]))

  (cond
    [(eq? depth 0) candidates]
    [else (flatten (append (map (lambda (se) (fold-grammar se halide-expr (- depth 1))) (get-hvx-ir-subexprs lifted-sub-expr)) candidates))]))

;; This function returns the list of templates that the
;; synthesizer may use to fold the new Halide IR node into
;; the current IR-expression. In these templates, we consider
;; replacing one of the existing uber-instructions with a different
;; one.
(define (repl-grammar lifted-sub-expr halide-expr)
  (destruct lifted-sub-expr
    [(load-data live-data gather-tbl) '()]
    [(broadcast value) '()]
    
    [(cast sub-expr type) (extend-grammar (list sub-expr) halide-expr)]

    [(vs-mpy-add sub-expr weight-matrix output-type saturate?) '()]
    
    [(shift-right sub-expr const-val round? saturate? arithmetic? output-type) '()]

    [(add-const sub-expr const-val output-type saturate?)
     (define shr-consts (extract-shr-consts-halide halide-expr))
     (flatten
      (list
       ;(saturate (get-node-id) sub-expr #t (signedT? output-type))
       (if (empty? shr-consts) '() (list (shift-right (get-node-id) sub-expr (apply choose* shr-consts) #t #f (signed-type? output-type) output-type)))))]

    [(maximum sub-expr0 sub-expr1)
     (list
      (saturate (get-node-id) sub-expr0 #f (halide-elem-type halide-expr))
      (saturate (get-node-id) sub-expr1 #f (halide-elem-type halide-expr)))]
    
    [(minimum sub-expr0 sub-expr1)
     (list
      (saturate (get-node-id) sub-expr0 #f (halide-elem-type halide-expr))
      (saturate (get-node-id) sub-expr1 #f (halide-elem-type halide-expr)))]

    [(abs-diff sub-expr0 sub-expr1) '()]
    
    [_ (error "NYI: Please define a (repl) grammar for IR Expr:" lifted-sub-expr)]))

;; This function returns the list of uber-instructions that the
;; synthesizer may use to extend the IR-expression. We could blindly
;; return the full set of uber-instrs, but to make this a bit more
;; efficient, we return a subset specific to the Halide instruction
;; we are folding.
(define (extend-grammar lifted-sub-exprs halide-expr)
  (destruct halide-expr
    ;; Broadcast nodes
    [(x32 sca) (list (broadcast (get-node-id) sca))]
    [(x64 sca) (list (broadcast (get-node-id) sca))]
    [(x128 sca) (list (broadcast (get-node-id) sca))]
    [(x256 sca) (list (broadcast (get-node-id) sca))]

    ;; Data loads & shuffles
    [(load buf idxs align)
     (define live-reads (extract-buffer-reads-halide halide-expr))
     (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 25)))
     (list (load-data (get-load-id) live-reads gather-tbl))]

    [(slice_vectors vec base stride len)
     (define live-reads (extract-buffer-reads-halide halide-expr))
     (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 25)))
     (list (load-data (get-load-id) live-reads gather-tbl))]

    [(concat_vectors v1 v2)
     (define live-reads (extract-buffer-reads-halide halide-expr))
     (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 25)))
     (list (load-data (get-load-id) live-reads gather-tbl))]

    [(dynamic_shuffle vec idxs st end)
     (define live-reads (extract-buffer-reads-halide halide-expr))
     (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 25)))
     (list (load-data (get-load-id) live-reads gather-tbl))]

    ;; Casts
    [(uint8x32 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint8))]
    [(uint8x64 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint8))]
    [(uint8x128 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint8))]
    [(uint8x256 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint8))]

    [(uint16x32 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint16))]
    [(uint16x64 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint16))]
    [(uint16x128 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint16))]
    [(uint16x256 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint16))]

    [(uint32x32 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint32))]
    [(uint32x64 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint32))]
    [(uint32x128 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint32))]
    [(uint32x256 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint32))]

    [(uint64x32 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint64))]
    [(uint64x64 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint64))]
    [(uint64x128 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint64))]
    [(uint64x256 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'uint64))]

    [(int8x32 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int8))]
    [(int8x64 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int8))]
    [(int8x128 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int8))]
    [(int8x256 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int8))]

    [(int16x32 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int16))]
    [(int16x64 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int16))]
    [(int16x128 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int16))]
    [(int16x256 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int16))]

    [(int32x32 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int32))]
    [(int32x64 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int32))]
    [(int32x128 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int32))]
    [(int32x256 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int32))]

    [(int64x32 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int64))]
    [(int64x64 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int64))]
    [(int64x128 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int64))]
    [(int64x256 vec) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) 'int64))]
 
    [(vec-add v1 v2)
     (define mul-consts (extract-mul-consts-halide halide-expr))
     (define add-consts (extract-add-consts-halide halide-expr))
     (define live-reads (extract-buffer-reads-halide halide-expr))
     (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 25)))
     (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range 25)))
     (flatten
      (list
       ;; We can extend using either constant-add
       (if (empty? add-consts)
           '()
           (list
            (add-const
             (get-node-id)
             (apply choose* lifted-sub-exprs)
             (apply choose* add-consts)
             (halide-elem-type halide-expr)
             #f)))
       ;; or using vector-scalar multiply-add
       (vs-mpy-add
        (get-node-id)
        (apply choose* lifted-sub-exprs)
        (list (int8_t (bv 1 8)) (int8_t (bv 1 8)))
        (halide-elem-type halide-expr)
        #f)
       (vs-mpy-add
        (get-node-id)
        (load-data (get-load-id) live-reads gather-tbl)
        (list (int8_t (bv 1 8)) (int8_t (bv 1 8)))
        (halide-elem-type halide-expr)
        #f)
       (vs-mpy-add
        (get-node-id)
        (combine
         (get-node-id)
         (list-ref lifted-sub-exprs 0)
         (list-ref lifted-sub-exprs 1)
         read-tbl)
        (list (int8_t (bv 1 8)) (int8_t (bv 1 8)))
        (halide-elem-type halide-expr)
        #f)
       ))]
    
    [(vec-mul v1 v2)
     (define mul-consts (extract-mul-consts-halide halide-expr))
     (list
      ;; We can extend using either vector-scalar multiply-add
      (vs-mpy-add
       (get-node-id)
       (apply choose* lifted-sub-exprs)
       (list (apply choose* mul-consts))
       (halide-elem-type halide-expr)
       #f)
      ;; or vector-vector multiply-add (todo)
;      (vv-mpy-add
;       (get-node-id)
;       (apply choose* lifted-sub-exprs)
;       (list (apply choose* mul-consts))
;       (halide-elem-type halide-expr)
;       #f)
      )]

    [(vec-shl v1 v2)
     (define mul-consts (extract-mul-consts-halide halide-expr))
     (list
      ;; We can extend using either vector-scalar multiply-add
      (vs-mpy-add
       (get-node-id)
       (apply choose* lifted-sub-exprs)
       (list (apply choose* mul-consts))
       (halide-elem-type halide-expr)
       #f)
      ;; or vector-vector multiply-add (todo)
;      (vv-mpy-add
;       (get-node-id)
;       (apply choose* lifted-sub-exprs)
;       (list (apply choose* mul-consts))
;       (halide-elem-type halide-expr)
;       #f)
      )]

    ;(struct vec-sub (v1 v2) #:transparent)

    [(vec-div v1 v2)
     (define shr-consts (extract-shr-consts-halide halide-expr))
     (define div-consts (extract-div-consts-halide halide-expr))
     (flatten
      (list
       ;; We can extend using either a shift-right instruction
       (if (empty? shr-consts)
           '()
           (let ([output-type (halide-elem-type halide-expr)])
             (shift-right
              (get-node-id)
              (apply choose* lifted-sub-exprs)
              (apply choose* shr-consts)
              #f
              #f
              (signed-type? output-type)
              output-type)))
       ;; or using the divide-by-const instruction
       (if (empty? div-consts)
           '()
           (divide-by-const
            (get-node-id)
            (apply choose* lifted-sub-exprs)
            (apply choose* div-consts)))))]

    [(vec-min v1 v2) (list (minimum (get-node-id) (apply choose* lifted-sub-exprs) (apply choose* lifted-sub-exprs)))]
    [(vec-max v1 v2) (list (maximum (get-node-id) (apply choose* lifted-sub-exprs) (apply choose* lifted-sub-exprs)))]

    [(vec-absd v1 v2) (list (abs-diff (get-node-id) (apply choose* lifted-sub-exprs) (apply choose* lifted-sub-exprs)))]
    
    [_ (error "NYI: Please define a (extend) grammar for halide node:" halide-expr)]))

(define hvx-uber-instructions (lifting-ir fold-grammar repl-grammar extend-grammar))

;;;;;;;;;; Some helper functions ;;;;;;;;;;;;;;

(define (merge-live-reads old-dataset new-dataset)
  (define old-len (length old-dataset))
  (define new-len (length new-dataset))
  (cond
    [(eq? old-len new-len) (map (lambda (l1 l2) (remove-dups (append l1 l2))) old-dataset new-dataset)]
    [(> old-len new-len)
     (define padding (map (lambda (i) '()) (range (- old-len new-len))))
     (map (lambda (l1 l2) (remove-dups (append l1 l2))) old-dataset (append new-dataset padding))]
    [(< old-len new-len)
     (define padding (map (lambda (i) '()) (range (- new-len old-len))))
     (map (lambda (l1 l2) (remove-dups (append l1 l2))) (append old-dataset padding) new-dataset)]))

;;; Operations
;
;(struct vec-if (v1 v2 v3) #:transparent)
;(struct vec-lt (v1 v2) #:transparent)
;(struct vec-le (v1 v2) #:transparent)
;
;(struct vec-absd (v1 v2) #:transparent)
;(struct vec-shl (v1 v2) #:transparent)
;(struct vec-shr (v1 v2) #:transparent)