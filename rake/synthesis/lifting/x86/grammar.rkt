#lang rosette/safe

(require
  (only-in racket/list range)
  (rename-in racket/list [remove-duplicates remove-dups])
  rosette/lib/destruct
  rosette/lib/angelic
  rosette/lib/match
  rake/internal/error
  rake/cpp
  rake/halide
  rake/x86/ir/instructions
  rake/x86/ir/interpreter
  rake/synthesis/lifting/ir)

(provide x86-uber-instructions)

(define SYMBOL_TBL_SIZE 64)

;; This function returns the list of templates that the
;; synthesizer may use to fold the new Halide IR node into
;; the current IR-expression. In these tempalates, we do not
;; change any uber-instruction in the IR expression, only their
;; inputs.
(define (fold-grammar lifted-sub-expr lifted-sibling-exprs halide-expr [depth 0])
  (define candidates
    (destruct lifted-sub-expr

      [(x86-ir:combine sub-expr0 sub-expr1 read-tbl) '()]
              
      [(x86-ir:broadcast value) '()]
      [(x86-ir:build-vec base stride len) '()]

      ;; Try folding by updating the set of datapoints
      [(x86-ir:load-data live-data gather-tbl) (list (mk-load-instr halide-expr))]

      ;; Try folding by changing the type we are casting to or the `saturate?` flag
      [(x86-ir:cast sub-expr type saturate?)
        (list
          (x86-ir:cast (get-node-id) sub-expr (halide:elem-type halide-expr) (choose* #t #f)))]

      [(x86-ir:vs-mpy-add expr weights sat? round? half? outT)
       (define mul-scalars (append (halide:extract-mul-scalars halide-expr) (list (int8_t (bv 1 8)))))
       ;; Try changing any of the flag params
       (define s? (choose* #t #f))
       (define r? (choose* #t #f))
       (define h? (choose* #t #f))
       (define f (apply choose* mul-scalars))

       ;; TODO
       (cond
         [(halide:cast-op? halide-expr)
          ;; Try folding by updating the output type or the flags
          (flatten
            (list
              (x86-ir:vs-mpy-add (get-node-id) expr weights s? r? h? outT)
              ))]
         [(or (vec-mul? halide-expr) (vec-shl? halide-expr))
          ;; Try folding the mul by updating the weight-matrix
          (define castfn (match outT ['int8 int8x1] ['int16 int16x1] ['int32 int32x1] ['uint8 uint8x1] ['uint16 uint16x1] ['uint32 uint32x1]))
          (define updated-weights (map (lambda (w) (sca-mul (castfn w) (castfn f))) weights))
          (list
            (x86-ir:vs-mpy-add (get-node-id) expr updated-weights sat? round? half? outT)
            (x86-ir:vs-mpy-add (get-node-id) expr updated-weights sat? round? half? (halide:elem-type halide-expr))
          )]
         [(vec-add? halide-expr)
          (define updated-sub-expr (update-input-data expr halide-expr))
          (list
           ;; Try folding the add by expanding the weight-matrix
           (x86-ir:vs-mpy-add (get-node-id) updated-sub-expr (append weights (list f)) sat? round? half? (halide:elem-type halide-expr))
          ;  (define updated-sub-expr (update-input-data sub-expr halide-expr))
          ; (list (vs-mpy-add (get-node-id) updated-sub-expr (append weight-matrix (list f)) (halide:elem-type halide-expr) saturate?))]
           ;; Turn into rounding
           (x86-ir:vs-mpy-add (get-node-id) expr weights sat? r? half? (halide:elem-type halide-expr))
           ;; Fold sibling node into sub-exprs (combine them)
           (x86-ir:vs-mpy-add
            (get-node-id)
            (mk-combine-instr (list lifted-sub-expr (apply choose* lifted-sibling-exprs)))
            (append weights (list (int8_t (bv 1 8))))
            ;; TODO: try flipping these?
            sat? round? half?
            (halide:elem-type halide-expr))
           )]
         [(vec-sub? halide-expr)
          (define castfn (match outT ['int8 int8x1] ['int16 int16x1] ['int32 int32x1] ['uint8 uint8x1] ['uint16 uint16x1] ['uint32 uint32x1]))
          (define updated-weights (map (lambda (w) (sca-mul (castfn w) (castfn (int8_t (bv -1 8))))) weights))
          (define updated-sub-expr (update-input-data expr halide-expr))
          (list
           ;; Try folding the add by expanding the weight-matrix
           (x86-ir:vs-mpy-add (get-node-id) updated-sub-expr (append weights (list (int8_t (bv -1 8)))) sat? round? half? (halide:elem-type halide-expr))
           (x86-ir:vs-mpy-add (get-node-id) updated-sub-expr (append updated-weights (list (int8_t (bv 1 8)))) sat? round? half? (halide:elem-type halide-expr))
           ;; Fold sibling node into sub-exprs (combine them)
           (x86-ir:vs-mpy-add
            (get-node-id)
            (mk-combine-instr (list lifted-sub-expr (apply choose* lifted-sibling-exprs)))
            (append weights (list (int8_t (bv -1 8))))
            ;; TODO: try flipping these?
            sat? round? half?
            (halide:elem-type halide-expr)))]
          ;; TODO: try checking for halving / etc.
         [else '()])]

      [(x86-ir:vv-mpy-add expr weights sat? round? half? output-type)
       (cond
;         [(halide:cast-op? halide-expr)
;          ;; Try folding by forcing saturation
;          (flatten
;            (list
;              (x86-ir:vv-mpy-add (get-node-id) expr width output-type)
;              (if (x86-ir:combine? expr)
;                (list
;                  (x86-ir:add-sat (get-node-id) (x86-ir:combine-expr0 expr) (x86-ir:combine-expr1 expr))
;                  (x86-ir:sub-sat (get-node-id) (x86-ir:combine-expr0 expr) (x86-ir:combine-expr1 expr)))
;                (list
;                  (x86-ir:add-sat (get-node-id) expr expr)
;                  (x86-ir:sub-sat (get-node-id) expr expr)))))]
         [(vec-add? halide-expr)
          ;; Try folding the add by increasing the width
          (define updated-sub-expr (update-input-data expr halide-expr))
          (list (x86-ir:vv-mpy-add (get-node-id) updated-sub-expr (append weights (list (choose* 0 1))) (choose* #f #t) (choose* #f #t) (choose* #f #t) output-type))]
         [(vector_reduce? halide-expr)
          ;; Try folding the add by increasing the width
          (define (build-list sz val) (if (< sz 1) '() (cons val (build-list (- sz 1) val))))
          (define e-type (halide:elem-type halide-expr))
          (define updated-sub-expr (update-input-data expr halide-expr))
          (list (x86-ir:vv-mpy-add (get-node-id) updated-sub-expr (build-list (vector_reduce-width halide-expr) 1) (choose* #f #t) (choose* #f #t) (choose* #f #t) e-type))]
         [else
          ;; Check if the new node is an identity func. Ex: saturation where its not needed etc.
          (list lifted-sub-expr)])]

      [(x86-ir:vs-shift-right sub-expr shift round? saturate? signed?)
       (define shr-scalars (halide:extract-shr-scalars halide-expr))
       (define e-type (halide:elem-type halide-expr))
       (list
        ;; Try updating the shift value
        (mk-shr-instr sub-expr shr-scalars round? saturate? signed?)
        ;; Try updating the rounding flag / saturation flag / output-type
        (x86-ir:vs-shift-right (get-node-id) sub-expr shift (choose* #t #f) (choose* #t #f) (choose* #t #f)))]

      [(x86-ir:maximum expr0 expr1) '()]
      [(x86-ir:minimum expr0 expr1) '()]
      
      [(x86-ir:select expr0 expr1 expr2) '()]
      [(x86-ir:is-equal expr0 expr1) '()]
      [(x86-ir:less-than expr0 expr1) '()]
      [(x86-ir:less-than-eq expr0 expr1) '()]
      
      ; [(x86-ir:bitwise-and expr0 expr1) '()]

      [(x86-ir:abs expr saturate? outT) '()]

      ; TODO: can we fold reductions...?
      ; [(x86-ir:reduce expr width reduce-op outT)
      ;  (cond
      ;    [(halide:cast-op? halide-expr)
      ;     ;; Try folding by flipping the widening flag
      ;     (list (x86-ir:reduce (get-node-id) expr width reduce-op (halide:elem-type halide-expr)))]
      ;    [(vec-add? halide-expr)
      ;     ;; Try folding the add by increasing the width
      ;     (define updated-sub-expr (update-input-data expr halide-expr))
      ;     (list (x86-ir:reduce (get-node-id) updated-sub-expr (add1 width) reduce-op outT))]
      ;    [else
      ;     ;; Check if the new node is an identity func. Ex: saturation where its not needed etc.
      ;     (list lifted-sub-expr)])]

      ;; TODO:
      [(x86-ir:bitwise-op op expr0 expr1) '()]
      [(x86-ir:abs-diff sexpr0 sexpr1 widening? out-type) '()]

      [_ (error "NYI: Please define a (fold) grammar for IR Expr:" lifted-sub-expr halide-expr)]))

  (cond
    [(<= depth 0) candidates]
    [else (flatten (append (map (lambda (se) (fold-grammar se lifted-sibling-exprs halide-expr (- depth 1))) (x86-ir:get-subexprs lifted-sub-expr)) candidates))]))

;; This function returns the list of templates that the
;; synthesizer may use to fold the new Halide IR node into
;; the current IR-expression. In these templates, we consider
;; replacing one of the existing uber-instructions with a different
;; one.
(define (repl-grammar lifted-sub-expr halide-expr [depth 0])
  (define candidates
    (destruct lifted-sub-expr

      [(x86-ir:broadcast value) '()]
      [(x86-ir:load-data live-data gather-tbl) '()]
      [(x86-ir:build-vec base stride len) '()]
      [(x86-ir:combine sub-expr0 sub-expr1 read-tbl) '()]

      ;; Strip the cast and try to extend. Many instructions perform widening / narrowing casts
      [(x86-ir:cast expr type saturate?) (extend-grammar (list expr) halide-expr)]

      ; TODO: are there any ways to replace abs or abs-diff?
      [(x86-ir:abs expr saturate? outT) '()]

      [(x86-ir:vs-mpy-add sub-expr weights sat? round? half? outT)
        (flatten
          (list
            ; TODO: add some good options.
        ))]

      [(x86-ir:vv-mpy-add expr width sat? round? half? outT)
        (flatten
          (list
            ; TODO: add some good options.
        ))]

      [(x86-ir:vs-shift-right sub-expr const-val round? saturate? signed?) '()]
      [(x86-ir:vs-shift-left sub-expr const-val round? saturate? signed?) '()]
      [(x86-ir:vv-shift-right sub-expr0 sub-expr1 round? saturate? signed?) '()]
      [(x86-ir:vv-shift-left sub-expr0 sub-expr1 round? saturate? signed?) '()]

      ; [(x86-ir:bitwise-and expr0 expr1) '()]

      ; TODO: HVX also tries to replace with addition by a constant, should we do that here too?
      [(x86-ir:maximum expr0 expr1)
       (flatten
        (list
         ;; Replace with saturation
         (mk-saturate-instr expr0 (halide:elem-type halide-expr))
         (mk-saturate-instr expr1 (halide:elem-type halide-expr))))]

      ; TODO: HVX also tries to replace with addition by a constant, should we do that here too?
      [(x86-ir:minimum expr0 expr1)
       (flatten
        (list
         ;; Replace with saturation
         (mk-saturate-instr expr0 (halide:elem-type halide-expr))
         (mk-saturate-instr expr1 (halide:elem-type halide-expr))))]

      [(x86-ir:select expr0 expr1 sub-expr2) '()]
      [(x86-ir:is-equal expr0 expr1) (list (x86-ir:less-than-eq (get-node-id) expr0 expr1))]
      [(x86-ir:less-than expr0 expr1) (list (x86-ir:less-than-eq (get-node-id) expr0 expr1))]
      [(x86-ir:less-than-eq expr0 expr1) (list)]

      [(x86-ir:abs expr saturate? outT) '()]

      ; TODO: can we replace reductions...?
      ; [(x86-ir:reduce expr width reduce-op outT) '()]

      ;; TODO:
      [(x86-ir:bitwise-op op expr0 expr1) '()]
      [(x86-ir:abs-diff sexpr0 sexpr1 widening? out-type) '()]

      [_ (error "NYI: Please define a (repl) grammar for IR Expr:" lifted-sub-expr halide-expr)]))

  (cond
    [(eq? depth 0) candidates]
    [else (flatten (append (map (lambda (se) (repl-grammar se halide-expr (- depth 1))) (x86-ir:get-subexprs lifted-sub-expr)) candidates))]))

;; This function returns the list of uber-instructions that the
;; synthesizer may use to extend the IR-expression. We could blindly
;; return the full set of uber-instrs, but to make this a bit more
;; efficient, we return a subset specific to the Halide instruction
;; we are folding.
(define (extend-grammar lifted-sub-exprs halide-expr)
  (destruct halide-expr
    
    ;; Broadcast nodes
    [(sca-broadcast sca lanes) (list (x86-ir:broadcast (get-node-id) sca))]

    ;; Data loads & shuffles
    [(ramp base stride len) (list (x86-ir:build-vec (get-load-id) base stride len))]
    
    [(load buf idxs align) (list (mk-load-instr halide-expr))]
    [(slice_vectors vec base stride len) (list (mk-load-instr halide-expr))]
    [(concat_vectors v1 v2 len) (list (mk-load-instr halide-expr))]
    ;[(interleave v1 v2) (list (mk-combine-instr lifted-sub-exprs))]
    [(dynamic_shuffle vec idxs st end) (list (mk-load-instr halide-expr))]

    ;; Casts
    [(vec-cast vec type lanes) (list (x86-ir:cast (get-node-id) (list-ref lifted-sub-exprs 0) type #f))]
    
    ;; Multiplication
    [(vec-mul v1 v2)
      ; TODO: understand these (ask Maaz)
      (define mul-scalars (halide:extract-mul-scalars halide-expr))
      (define live-reads (halide:extract-buffer-reads halide-expr))
      (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range SYMBOL_TBL_SIZE)))
      (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range SYMBOL_TBL_SIZE)))
      (define a (flatten
        (list
          ;; We can extend using either vector-scalar multiply-add
          (mk-vs-mpy-add-instr (apply choose* lifted-sub-exprs) mul-scalars (halide:elem-type halide-expr))
          (mk-vs-mpy-add-instr (x86-ir:load-data (get-load-id) live-reads gather-tbl) mul-scalars (halide:elem-type halide-expr))
          ;; or vector-vector multiply-add
          (x86-ir:vv-mpy-add (get-node-id) (apply choose* lifted-sub-exprs) (list 1) (choose* #f #t) (choose* #f #t) (choose* #f #t) (halide:elem-type halide-expr))
          (x86-ir:vv-mpy-add (get-node-id) (x86-ir:load-data (get-load-id) live-reads gather-tbl) (list 1) (choose* #f #t) (choose* #f #t) (choose* #f #t) (halide:elem-type halide-expr))
          ; TODO: add combine nodes

          (mk-vv-mpy-add-combine-subexprs lifted-sub-exprs (halide:elem-type halide-expr)) ;; Extend both of the sub-exprs (combine them)
        )))
        ; (println a)
        a]

    ;; Addition
    [(vec-add v1 v2)
     (define add-scalars (halide:extract-add-scalars halide-expr))
     (define add-consts (filter (lambda (scalar) (not (symbolic? scalar))) add-scalars))
     (define mul-scalars (halide:extract-mul-scalars halide-expr))
     (flatten
      (list
        ;; Combine the sub-exprs if they're already vs-mpy-adds
        (mk-vs-mpy-add-extend-subexpr lifted-sub-exprs mul-scalars)
        ;; Try to extend using vector-scalar-multiply-add
        (if (subexprs-are-loads? lifted-sub-exprs)
          (x86-ir:vs-mpy-add (get-node-id) (mk-load-instr halide-expr) (list (int8_t (bv 1 8)) (int8_t (bv 1 8))) (choose* #f #t) (choose* #f #t) (choose* #f #t) (halide:elem-type halide-expr))
          (x86-ir:vs-mpy-add (get-node-id) (apply choose* lifted-sub-exprs) (list (int8_t (bv 1 8)) (int8_t (bv 1 8))) (choose* #f #t) (choose* #f #t) (choose* #f #t) (halide:elem-type halide-expr)))
        ;; Extend both of the sub-exprs (combine them)
        (mk-vs-mpy-add-combine-subexprs    
          lifted-sub-exprs
          (list (int8_t (bv 1 8)) (int8_t (bv 1 8)))
          (halide:elem-type halide-expr))))]

    [(vec-sub v1 v2)
     (define live-reads (halide:extract-buffer-reads halide-expr))
     (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range SYMBOL_TBL_SIZE)))
     (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range SYMBOL_TBL_SIZE)))
     (flatten
      (list
        ;; Try to extend using vector-scalar-multiply-add
        (if (subexprs-are-loads? lifted-sub-exprs)
          (x86-ir:vs-mpy-add (get-node-id) (mk-load-instr halide-expr) (list (int8_t (bv 1 8)) (int8_t (bv -1 8))) (choose* #f #t) (choose* #f #t) (choose* #f #t) (halide:elem-type halide-expr))
          (x86-ir:vs-mpy-add (get-node-id) (apply choose* lifted-sub-exprs) (list (int8_t (bv 1 8)) (int8_t (bv -1 8))) (choose* #f #t) (choose* #f #t) (choose* #f #t) (halide:elem-type halide-expr)))
        ;; Extend both of the sub-exprs (combine them)
        (mk-vs-mpy-add-combine-subexprs    
          lifted-sub-exprs
          (list (int8_t (bv 1 8)) (int8_t (bv -1 8)))
          (halide:elem-type halide-expr))))]

    [(vec-div v1 v2)
     (define shr-scalars (halide:extract-shr-scalars halide-expr))
     (define div-scalars (halide:extract-div-scalars halide-expr))
     (define output-type (halide:elem-type halide-expr))
     (flatten
      (list
       ;; We can extend using either a shift-right instruction
       (mk-shr-instr (first lifted-sub-exprs) shr-scalars #f #f (cpp:signed-type? output-type))
       ; TODO: allow for vector division
      ;  (vv-shift-right (get-node-id) (first lifted-sub-exprs) (first lifted-sub-exprs) #f (cpp:signed-type? output-type))
       ;; or using the divide instructions
       ; TODO: allow for division by constants
      ;  (mk-div-by-const-instr (first lifted-sub-exprs) div-scalars)
       (mk-vs-div-instr (first lifted-sub-exprs) div-scalars)
      ))]

    [(vec-shl v1 v2)
     (define mul-scalars (halide:extract-mul-scalars halide-expr))
     (define shl-scalars (halide:extract-mul-scalars halide-expr))
     (flatten
      (list
       ;; We can extend using either vector-scalar multiply-add
       (mk-vs-mpy-add-instr (first lifted-sub-exprs) mul-scalars (halide:elem-type halide-expr))
       ;; or shift-left
       ;(mk-vs-shift-left-instr (first lifted-sub-exprs) shl-scalars)
       ;(mk-vv-shift-left-instr lifted-sub-exprs)
       ))]

    [(vec-shr v1 v2)
     (define shr-scalars (halide:extract-shr-scalars halide-expr))
     (define output-type (halide:elem-type halide-expr))
     (flatten
      (list
       ;; We can extend using a shift-right instruction
       (mk-shr-instr (apply choose* lifted-sub-exprs) shr-scalars #f #f (cpp:signed-type? output-type))
       ;(if (> (length lifted-sub-exprs) 1) (vv-shift-right (get-node-id) (first lifted-sub-exprs) (second lifted-sub-exprs) #f (cpp:signed-type? output-type)) '())
       ))]

    [(vec-bwand v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (x86-ir:bitwise-op (get-node-id) 'and (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]

    [(vec-min v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (x86-ir:minimum (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]
    [(vec-max v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (x86-ir:maximum (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]

    [(vec-abs v1) (list (x86-ir:abs (get-node-id) (list-ref lifted-sub-exprs 0) (choose* #t #f) (halide:elem-type halide-expr)))]

    [(vec-absd v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (x86-ir:abs-diff (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1) (choose* #t #f) (halide:elem-type halide-expr))) '())]

    [(vector_reduce op width vec)
     (define updated-sub-expr (update-input-data (list-ref lifted-sub-exprs 0) halide-expr))
     (list
      (x86-ir:vs-mpy-add (get-node-id) updated-sub-expr (map (lambda (i) (int8_t (bv 1 8))) (range width)) (choose* #f #t) (choose* #f #t) (choose* #f #t) (halide:elem-type halide-expr)))]

    [(vec-if v1 v2 v3)
     (if (eq? (length lifted-sub-exprs) 3)
         (list (x86-ir:select (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1) (list-ref lifted-sub-exprs 2))) '())]
    
    [_ (error "NYI: Please define a (extend) grammar for halide node:" halide-expr)]))

(define x86-uber-instructions (lifting-ir fold-grammar repl-grammar extend-grammar))

;;;;;;;;;;; Sketch generators for various IR instructions ;;;;;;;;;;;;;

(define load-data-id -1)
(define (get-load-id) (set! load-data-id (add1 load-data-id)) load-data-id)

(define node-id 99)
(define (get-node-id) (set! node-id (add1 node-id)) node-id)

;; The load instruction can select and return from the set of data-points used in the
;; original expression.
(define (mk-load-instr spec-expr)
  (define live-reads (halide:extract-buffer-reads spec-expr))
  (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range SYMBOL_TBL_SIZE)))
  (x86-ir:load-data (get-load-id) live-reads gather-tbl))

(define (mk-vs-mpy-add-instr sub-expr mul-scalars output-type)
  (cond
    [(empty? mul-scalars) '()]
    ;; TODO: what should the flags be?
    [else (x86-ir:vs-mpy-add (get-node-id) sub-expr (list (apply choose* mul-scalars)) #f #f #f output-type)]))

;;;;;;;;;; Helper functions taken from hvx.rkt ;;;;;;;;;;;;;;

(define (update-input-data sub-expr halide-expr)
  (cond
    [(x86-ir:load-data? sub-expr)
     (define live-reads (merge-live-reads (x86-ir:load-data-live-data sub-expr) (halide:extract-buffer-reads halide-expr)))
     (x86-ir:load-data (get-node-id) live-reads (x86-ir:load-data-gather-tbl sub-expr))]
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
  (andmap x86-ir:load-data? lifted-sub-exprs))

(define (mk-vs-mpy-add-combine-subexprs lifted-sub-exprs weights output-type)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (cond
       [(and (x86-ir:cast? (list-ref lifted-sub-exprs 0)) (x86-ir:cast? (list-ref lifted-sub-exprs 1)))
        (x86-ir:vs-mpy-add (get-node-id) (mk-combine-instr (map x86-ir:cast-expr lifted-sub-exprs)) weights #f #f #f output-type)]
       [else
        (x86-ir:vs-mpy-add (get-node-id) (mk-combine-instr lifted-sub-exprs) weights #f #f #f output-type)])]
    [else '()]))

(define (mk-combine-instr lifted-sub-exprs)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
      (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range SYMBOL_TBL_SIZE)))
      (x86-ir:combine (get-load-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1) read-tbl)]
    [else '()]))

(define (mk-combine-instr1 sub-expr0 sub-expr1)
  (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range SYMBOL_TBL_SIZE)))
  (x86-ir:combine (get-load-id) sub-expr0 sub-expr1 read-tbl))


(define (mk-vs-mpy-add-combine-subsubexprs lifted-sub-exprs weights output-type)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (let ([sub-exprs0 (x86-ir:get-subexprs (list-ref lifted-sub-exprs 0))])
       (let ([sub-exprs1 (x86-ir:get-subexprs (list-ref lifted-sub-exprs 1))])
         (flatten (list
          (mk-combine-expr2-list sub-exprs0 sub-exprs1 weights output-type)
          (mk-combine-expr2-list sub-exprs0 (list (second lifted-sub-exprs)) weights output-type)
          (mk-combine-expr2-list (list (first lifted-sub-exprs)) sub-exprs1 weights output-type)))))]
    [else '()]))

(define (mk-combine-expr2-list sub-exprs0 sub-exprs1 weights output-type)
  (if (and (not (empty? sub-exprs0)) (not (empty? sub-exprs1)))
    (begin
      (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range SYMBOL_TBL_SIZE)))
      (list (x86-ir:vs-mpy-add (get-node-id) (x86-ir:combine (get-load-id) (first sub-exprs0) (first sub-exprs1) read-tbl) weights #f #f #f output-type)))
    '()))

; This was causing the generation of an x86-ir:vs-mpy-add with an empty list as an input
; (define (mk-combine-instr2 lifted-sub-exprs0 lifted-sub-exprs1)
;   (cond
;     [(and (not (empty? lifted-sub-exprs0)) (not (empty? lifted-sub-exprs1)))
;       (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range SYMBOL_TBL_SIZE)))
;       (x86-ir:combine (get-load-id) (first lifted-sub-exprs0) (first lifted-sub-exprs1) read-tbl)]
;     [else '()]))

(define (mk-shr-instr sub-expr shr-scalars round? saturate? signed?)
  (cond
    [(empty? shr-scalars) '()]
    [else (x86-ir:vs-shift-right (get-node-id) sub-expr (apply choose* shr-scalars) round? saturate? signed?)]))

(define (mk-vs-div-instr sub-expr div-scalars)
  (cond
    [(empty? div-scalars) '()]
    [else (x86-ir:vs-divide (get-node-id) sub-expr (apply choose* div-scalars))]))

(define (mk-saturate-instr sub-expr out-type)
  (x86-ir:cast (get-node-id) sub-expr out-type #t))

(define (mk-vs-mpy-add-extend-subexpr sub-exprs mul-scalars)
  (define ws (append mul-scalars (list (int8_t (bv 1 8)))))
  (define w (apply choose* ws))
  (cond
    [(> (length sub-exprs) 1)
     (define sub0 (first sub-exprs))
     (define sub1 (second sub-exprs))
     (destruct* (sub0 sub1)
       [((x86-ir:vs-mpy-add sub-expr0 weights sat? round? half? out-type) (x86-ir:broadcast sca-val))
        (x86-ir:vs-mpy-add (get-node-id) (mk-combine-instr1 sub-expr0 sub1) (append (list (int8_t (bv 1 8))) weights) sat? round? half? out-type)]
       [((x86-ir:broadcast sca-val) (x86-ir:vs-mpy-add sub-expr0 weights sat? round? half? out-type))
        (x86-ir:vs-mpy-add (get-node-id) (mk-combine-instr1 sub-expr0 sub0) (append (list (int8_t (bv 1 8))) weights) sat? round? half? out-type)]
       [((x86-ir:vs-mpy-add sub-expr0 weights0 sat0? round0? half0? out-type0) (x86-ir:vs-mpy-add sub-expr1 weights1 sat1? round1? half1? out-type1))
        (x86-ir:vs-mpy-add (get-node-id) (mk-combine-instr1 sub-expr0 sub-expr1) (append (list w) weights0) (choose* sat0? sat1?) (choose* round0? round1?) (choose* half0? half1?) (choose* out-type0 out-type1))]
       [(_ _) '()])]
    [else '()]))

(define (mk-vv-mpy-add-combine-subexprs lifted-sub-exprs output-type)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (x86-ir:vv-mpy-add (get-node-id) (mk-combine-instr lifted-sub-exprs) (list 1)  (choose* #f #t) (choose* #f #t) (choose* #f #t) output-type)]
    [else '()]))