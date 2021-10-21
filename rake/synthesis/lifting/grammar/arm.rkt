#lang rosette/safe

(require
  (only-in racket/list range)
  (rename-in racket/list [remove-duplicates remove-dups])
  rosette/lib/destruct
  rosette/lib/angelic
  rake/internal/error
  rake/cpp
  rake/halide
  rake/arm/ir/instructions
  rake/arm/ir/interpreter
  rake/synthesis/lifting/grammar/util)

(provide arm-uber-instructions)

;; This function returns the list of templates that the
;; synthesizer may use to fold the new Halide IR node into
;; the current IR-expression. In these tempalates, we do not
;; change any uber-instruction in the IR expression, only their
;; inputs.
(define (fold-grammar lifted-sub-expr halide-expr [depth 0])
  (define candidates
    (destruct lifted-sub-expr

      [(arm-ir:broadcast value) '()]
      [(arm-ir:build-vec base stride len) '()]

      ;; Try folding by updating the set of datapoints
      [(arm-ir:load-data live-data gather-tbl) (list (mk-load-instr halide-expr))]

      ;; Try folding by changing the type we are casting to or the `saturate?` flag
      [(arm-ir:cast sub-expr type saturate?)
       (list
        (arm-ir:cast (get-node-id) sub-expr (halide:elem-type halide-expr) (choose* #t #f)))]

      [(arm-ir:vs-mpy-add expr weights outT)
       (define mul-scalars (append (halide:extract-mul-scalars halide-expr) (list (int8_t (bv 1 8)))))
       (define f (apply choose* mul-scalars))

       ;; TODO
       (cond
         [(halide:cast-op? halide-expr)
          ;; Try folding by updating the output type or the saturation flag saturate
          (define e-type (halide:elem-type halide-expr))
          (define in-type (arm-ir:elem-type^ expr))
          (define narrower-type (cpp:narrow-type e-type outT))
          (define wider-type (cpp:wide-type in-type narrower-type))
          (list (arm-ir:vs-mpy-add (get-node-id) expr weights wider-type))
         ]
         [(vec-add? halide-expr)
          ;; Try folding the add by expanding the weight-matrix
          (define updated-sub-expr (update-input-data expr halide-expr))
          (list
           (arm-ir:vs-mpy-add (get-node-id) updated-sub-expr (append weights (list f)) (halide:elem-type halide-expr))
           ;; Fold sibling node into sub-exprs (combine them)
           ;(arm-ir:vs-mpy-add
            ;(get-node-id)
            ;(arm-ir:combine updated-sub-expr (apply choose* lifted-sibling-exprs)
            ;(append weights (list (int8_t (bv 1 8))))
            ;(halide:elem-type halide-expr)))
           )]
         [else (list (arm-ir:vs-mpy-add (get-node-id) expr weights outT))])

      ;  (error "NYI: Please define a (fold) grammar for IR Expr:" lifted-sub-expr halide-expr)
       ]
    
      [_ (error "NYI: Please define a (fold) grammar for IR Expr:" lifted-sub-expr halide-expr)]))

  ;(cond
    ;[(eq? depth 0) candidates]
    ;[else (flatten (append (map (lambda (se) (fold-grammar se halide-expr (- depth 1))) (arm-ir:get-subexprs lifted-sub-expr)) candidates))])

  candidates)

;; This function returns the list of templates that the
;; synthesizer may use to fold the new Halide IR node into
;; the current IR-expression. In these templates, we consider
;; replacing one of the existing uber-instructions with a different
;; one.
(define (repl-grammar lifted-sub-expr halide-expr [depth 0])
  (define candidates
    (destruct lifted-sub-expr

      [(arm-ir:broadcast value) '()]
      [(arm-ir:load-data live-data gather-tbl) '()]
      [(arm-ir:build-vec base stride len) '()]

      ;; Strip the cast and try to extend. Many instructions perform widening / narrowing casts
      [(arm-ir:cast expr type saturate?) (extend-grammar (list expr) halide-expr)]

      ; TODO: are there any ways to replace abs or abs-diff?
      [(arm-ir:abs expr saturate? outT) '()]

      [(arm-ir:vs-mpy-add sub-expr weights outT)
        (flatten
          (list
            ; TODO: add some good options.
        ))]


      [_ (error "NYI: Please define a (repl) grammar for IR Expr:" lifted-sub-expr halide-expr)]))

  ;(cond
    ;[(eq? depth 0) candidates]
    ;[else (flatten (append (map (lambda (se) (repl-grammar se halide-expr (- depth 1))) (hvx-ir:get-subexprs lifted-sub-expr)) candidates))])

  candidates)

;; This function returns the list of uber-instructions that the
;; synthesizer may use to extend the IR-expression. We could blindly
;; return the full set of uber-instrs, but to make this a bit more
;; efficient, we return a subset specific to the Halide instruction
;; we are folding.
(define (extend-grammar lifted-sub-exprs halide-expr)
  (destruct halide-expr
    
    ;; Broadcast nodes
    [(sca-broadcast sca lanes) (list (arm-ir:broadcast (get-node-id) sca))]

    ;; Data loads & shuffles
    [(ramp base stride len) (list (arm-ir:build-vec (get-load-id) base stride len))]
    
    [(load buf idxs align) (list (mk-load-instr halide-expr))]
    [(slice_vectors vec base stride len) (list (mk-load-instr halide-expr))]
    [(concat_vectors v1 v2) (list (mk-load-instr halide-expr))]
    ;[(interleave v1 v2) (list (mk-combine-instr lifted-sub-exprs))]
    [(dynamic_shuffle vec idxs st end) (list (mk-load-instr halide-expr))]

    ;; Casts
    [(vec-cast vec type lanes) (list (arm-ir:cast (get-node-id) (list-ref lifted-sub-exprs 0) type #f))]
    
    ;; Multiplication
    [(vec-mul v1 v2)
      ; TODO: understand these (ask Maaz)
      (define mul-scalars (halide:extract-mul-scalars halide-expr))
      (define live-reads (halide:extract-buffer-reads halide-expr))
      (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 25)))
      (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range 25)))
      (flatten
        (list
          ;; We can extend using either vector-scalar multiply-add
          (mk-vs-mpy-add-instr (apply choose* lifted-sub-exprs) mul-scalars (halide:elem-type halide-expr))
          (mk-vs-mpy-add-instr (arm-ir:load-data (get-load-id) live-reads gather-tbl) mul-scalars (halide:elem-type halide-expr))
          ;; or vector-vector multiply-add
          (arm-ir:vv-mpy-add (get-node-id) (apply choose* lifted-sub-exprs) (list (int8_t (bv 1 8))) (halide:elem-type halide-expr))
          (arm-ir:vv-mpy-add (get-node-id) (arm-ir:load-data (get-load-id) live-reads gather-tbl) (list (int8_t (bv 1 8))) (halide:elem-type halide-expr))
          ; TODO: add combine nodes
      ))]

    ;; Addition
    [(vec-add v1 v2)
     (define add-scalars (halide:extract-add-scalars halide-expr))
     (define add-consts (filter (lambda (scalar) (not (symbolic? scalar))) add-scalars))
     (define mul-scalars (halide:extract-mul-scalars halide-expr))
     (flatten
      (list
        ; Try to extend using vector-scalar-multiply-add
        (arm-ir:vs-mpy-add (get-node-id) (apply choose* lifted-sub-exprs) (list (int8_t (bv 1 8)) (int8_t (bv 1 8))) (halide:elem-type halide-expr))
        (if (subexprs-are-loads? lifted-sub-exprs)
          ; Then use a new load-data node as the sub-expr
          (arm-ir:vs-mpy-add (get-node-id) (mk-load-instr halide-expr) (list (int8_t (bv 1 8)) (int8_t (bv 1 8))) (halide:elem-type halide-expr))
          '())
         ;; Disabling temporarily
         ;(mk-vs-mpy-add-combine-subsubexprs ;; Extend sub-sub-exprs (combine them)
          ;lifted-sub-exprs
          ;(list (int8_t (bv 1 8)) (int8_t (bv 1 8)))
          ;(halide:elem-type halide-expr))
         (mk-vs-mpy-add-combine-subexprs    ;; Extend both of the sub-exprs (combine them)
          lifted-sub-exprs
          (list (int8_t (bv 1 8)) (int8_t (bv 1 8)))
          (halide:elem-type halide-expr))
      ))]

          [(vec-div v1 v2)
     (define shr-scalars (halide:extract-shr-scalars halide-expr))
     (define div-scalars (halide:extract-div-scalars halide-expr))
     (define output-type (halide:elem-type halide-expr))
     (flatten
      (list
       ;; We can extend using either a shift-right instruction
       (mk-shr-instr (first lifted-sub-exprs) shr-scalars #f #f (cpp:signed-type? output-type) output-type)
       ; TODO: allow for vector division
      ;  (vv-shift-right (get-node-id) (first lifted-sub-exprs) (first lifted-sub-exprs) #f (cpp:signed-type? output-type))
       ;; or using the divide instructions
       ; TODO: allow for division by constants
      ;  (mk-div-by-const-instr (first lifted-sub-exprs) div-scalars)
       ; TODO: make ARM IR for vec-div
      ;  (mk-vs-div-instr (first lifted-sub-exprs) div-scalars (halide:elem-type halide-expr))
      ))]

    [_ (error "NYI: Please define a (extend) grammar for halide node:" halide-expr)]))

(define arm-uber-instructions (lifting-ir fold-grammar repl-grammar extend-grammar))

;;;;;;;;;;; Sketch generators for various IR instructions ;;;;;;;;;;;;;

(define load-data-id -1)
(define (get-load-id) (set! load-data-id (add1 load-data-id)) load-data-id)

(define node-id 99)
(define (get-node-id) (set! node-id (add1 node-id)) node-id)

;; The load instruction can select and return from the set of data-points used in the
;; original expression.
(define (mk-load-instr spec-expr)
  (define live-reads (halide:extract-buffer-reads spec-expr))
  (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 25)))
  (arm-ir:load-data (get-load-id) live-reads gather-tbl))

(define (mk-vs-mpy-add-instr sub-expr mul-scalars output-type)
  (cond
    [(empty? mul-scalars) '()]
    [else (arm-ir:vs-mpy-add (get-node-id) sub-expr (list (apply choose* mul-scalars)) output-type)]))

;;;;;;;;;; Helper functions taken from hvx.rkt ;;;;;;;;;;;;;;

(define (update-input-data sub-expr halide-expr)
  (cond
    [(arm-ir:load-data? sub-expr)
     (define live-reads (merge-live-reads (arm-ir:load-data-live-data sub-expr) (halide:extract-buffer-reads halide-expr)))
     (arm-ir:load-data (get-node-id) live-reads (arm-ir:load-data-gather-tbl sub-expr))]
    [else sub-expr]))

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

(define (subexprs-are-loads? lifted-sub-exprs)
  (andmap arm-ir:load-data? lifted-sub-exprs))

(define (mk-vs-mpy-add-combine-subexprs lifted-sub-exprs weights output-type)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (arm-ir:vs-mpy-add (get-node-id) (mk-combine-instr lifted-sub-exprs) weights output-type)]
    [else '()]))

(define (mk-combine-instr lifted-sub-exprs)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
      (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range 25)))
      (arm-ir:combine (get-load-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1) read-tbl)]
    [else '()]))

(define (mk-vs-mpy-add-combine-subsubexprs lifted-sub-exprs weights output-type)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (let ([sub-exprs0 (arm-ir:get-subexprs (list-ref lifted-sub-exprs 0))])
       (let ([sub-exprs1 (arm-ir:get-subexprs (list-ref lifted-sub-exprs 1))])
         (list
          (arm-ir:vs-mpy-add (get-node-id) (mk-combine-instr2 sub-exprs0 sub-exprs1) weights output-type)
          (arm-ir:vs-mpy-add (get-node-id) (mk-combine-instr2 sub-exprs0 (list (second lifted-sub-exprs))) weights output-type)
          (arm-ir:vs-mpy-add (get-node-id) (mk-combine-instr2 (list (first lifted-sub-exprs)) sub-exprs1) weights output-type))))]
    [else '()]))

(define (mk-combine-instr2 lifted-sub-exprs0 lifted-sub-exprs1)
  (cond
    [(and (not (empty? lifted-sub-exprs0)) (not (empty? lifted-sub-exprs1)))
      (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range 25)))
      (arm-ir:combine (get-load-id) (first lifted-sub-exprs0) (first lifted-sub-exprs1) read-tbl)]
    [else '()]))

(define (mk-shr-instr sub-expr shr-scalars round? saturate? signed? output-type)
  (cond
    [(empty? shr-scalars) '()]
    [else (arm-ir:vs-shift-right (get-node-id) sub-expr (apply choose* shr-scalars) round? saturate? signed? output-type)]))

