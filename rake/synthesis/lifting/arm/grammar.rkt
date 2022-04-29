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
  rake/arm/ir/instructions
  rake/arm/ir/interpreter
  rake/synthesis/lifting/ir)

(provide arm-uber-instructions)

(define SYMBOL_TBL_SIZE 25)

;; This function returns the list of templates that the
;; synthesizer may use to fold the new Halide IR node into
;; the current IR-expression. In these tempalates, we do not
;; change any uber-instruction in the IR expression, only their
;; inputs.
(define (fold-grammar lifted-sub-expr lifted-sibling-exprs halide-expr [depth 0])
  (define candidates
    (destruct lifted-sub-expr

      [(arm-ir:combine sub-expr0 sub-expr1 read-tbl) '()]
              
      [(arm-ir:broadcast value)
       (define output-type (halide:elem-type halide-expr))
       (define castfn
         (match output-type
           ['int8 int8x1]
           ['int16 int16x1]
           ['int32 int32x1]
           ['int64 int64x1]
           ['uint8 uint8x1]
           ['uint16 uint16x1]
           ['uint32 uint32x1]
           ['uint64 uint64x1]))
       (list (arm-ir:broadcast (get-node-id) (castfn value)))]
      
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
          (define e-type (halide:elem-type halide-expr))
          (define in-type (arm-ir:elem-type^ expr))
          (define narrower-type (if (<= (cpp:type-bw e-type) (cpp:type-bw outT)) e-type outT))
          (define wider-type (if (>= (cpp:type-bw in-type) (cpp:type-bw narrower-type)) in-type narrower-type))

          ;; Try folding by updating the output type or the saturation flag saturate
          (flatten
            (list
              (arm-ir:vs-mpy-add (get-node-id) expr weights wider-type)
              (if (arm-ir:combine? expr)
                (list
                  (arm-ir:add-sat (get-node-id) (arm-ir:combine-expr0 expr) (arm-ir:combine-expr1 expr) wider-type)
                  ; (arm-ir:sub-sat (get-node-id) (arm-ir:combine-expr0 expr) (arm-ir:combine-expr1 expr) wider-type)
                  )
                (list
                  (arm-ir:add-sat (get-node-id) expr expr wider-type)
                  ; (arm-ir:sub-sat (get-node-id) expr expr wider-type)
                  ))))]
         [(or (vec-mul? halide-expr) (vec-shl? halide-expr))
          ;; Try folding the mul by updating the weight-matrix
          (define castfn (match outT ['int8 int8x1] ['int16 int16x1] ['int32 int32x1] ['uint8 uint8x1] ['uint16 uint16x1] ['uint32 uint32x1]))
          (define updated-weights (map (lambda (w) (sca-mul (castfn w) (castfn f))) weights))
          (list (arm-ir:vs-mpy-add (get-node-id) expr updated-weights outT))]
         [(vec-add? halide-expr)
          (define updated-sub-expr (update-input-data expr halide-expr))
          (list
           ;; Try folding the add by expanding the weight-matrix
           (arm-ir:vs-mpy-add (get-node-id) updated-sub-expr (append weights (list f)) (halide:elem-type halide-expr))
           ;; Fold sibling node into sub-exprs (combine them)
           (arm-ir:vs-mpy-add
            (get-node-id)
            (mk-combine-instr (list lifted-sub-expr (apply choose* lifted-sibling-exprs)))
            (append weights (list (int8_t (bv 1 8))))
            (halide:elem-type halide-expr))
           )]
         [(vec-sub? halide-expr)
          (define castfn (match outT ['int8 int8x1] ['int16 int16x1] ['int32 int32x1] ['uint8 uint8x1] ['uint16 uint16x1] ['uint32 uint32x1]))
          (define updated-weights (map (lambda (w) (sca-mul (castfn w) (castfn (int8_t (bv -1 8))))) weights))
          (define updated-sub-expr (update-input-data expr halide-expr))
          (list
           ;; Try folding the add by expanding the weight-matrix
           (arm-ir:vs-mpy-add (get-node-id) updated-sub-expr (append weights (list (int8_t (bv -1 8)))) (halide:elem-type halide-expr))
           (arm-ir:vs-mpy-add (get-node-id) updated-sub-expr (append updated-weights (list (int8_t (bv 1 8)))) (halide:elem-type halide-expr))
           ;; Fold sibling node into sub-exprs (combine them)
           (arm-ir:vs-mpy-add
            (get-node-id)
            (mk-combine-instr (list lifted-sub-expr (apply choose* lifted-sibling-exprs)))
            (append weights (list (int8_t (bv -1 8))))
            (halide:elem-type halide-expr)))]
         [else '()])]

      [(arm-ir:vv-mpy-add expr weights output-type)
       (cond
;         [(halide:adcast-op? halide-expr)
;          ;; Try folding by forcing saturation
;          (flatten
;            (list
;              (arm-ir:vv-mpy-add (get-node-id) expr width output-type)
;              (if (arm-ir:combine? expr)
;                (list
;                  (arm-ir:add-sat (get-node-id) (arm-ir:combine-expr0 expr) (arm-ir:combine-expr1 expr))
;                  (arm-ir:sub-sat (get-node-id) (arm-ir:combine-expr0 expr) (arm-ir:combine-expr1 expr)))
;                (list
;                  (arm-ir:add-sat (get-node-id) expr expr)
;                  (arm-ir:sub-sat (get-node-id) expr expr)))))]
         [(vec-add? halide-expr)
          ;; Try folding the add by increasing the width
          (define updated-sub-expr (update-input-data expr halide-expr))
          (list (arm-ir:vv-mpy-add (get-node-id) updated-sub-expr (append weights (list (choose* 0 1))) output-type))]
         [(vector_reduce? halide-expr)
          ;; Try folding the add by increasing the width
          (define (build-list sz val) (if (< sz 1) '() (cons val (build-list (- sz 1) val))))
          (define e-type (halide:elem-type halide-expr))
          (define updated-sub-expr (update-input-data expr halide-expr))
          (list (arm-ir:vv-mpy-add (get-node-id) updated-sub-expr (build-list (vector_reduce-width halide-expr) 1) e-type))]
         [else
          ;; Check if the new node is an identity func. Ex: saturation where its not needed etc.
          (list lifted-sub-expr)])]

      [(arm-ir:vs-dmpy-add-hh-sat expr weight round? accumulate? outT)
       (list (arm-ir:vs-dmpy-add-hh-sat (get-node-id) expr weight (choose* #t #f) (choose* #t #f) (halide:elem-type halide-expr)))]

      [(arm-ir:add-sat expr0 expr1 outT) '()]
      [(arm-ir:sub-sat expr0 expr1 outT) '()]

      [(arm-ir:vs-shift-right sub-expr shift round? saturate? signed? outT)
       (define shr-scalars (halide:extract-shr-scalars halide-expr))
       (define e-type (halide:elem-type halide-expr))
       (define in-type (arm-ir:elem-type sub-expr))
       (define narrower-type (if (<= (cpp:type-bw e-type) (cpp:type-bw outT)) e-type outT))
       (define wider-type (if (> (quotient (cpp:type-bw in-type) 2) (cpp:type-bw narrower-type)) outT narrower-type))
       (list
        ;; Try updating the shift value
        (mk-shr-instr sub-expr shr-scalars round? saturate? signed? wider-type)
        ;; Try updating the rounding flag / saturation flag / output-type
        (arm-ir:vs-shift-right (get-node-id) sub-expr shift (choose* #t round?) (choose* #t saturate?) (choose* #t signed?) wider-type))]

      [(arm-ir:halving-add sub-expr round?)
       (define e-type (halide:elem-type halide-expr))
       (list
        ;; Try updating the rounding flag
        (arm-ir:halving-add (get-node-id) sub-expr (choose* #t #f)))]

      [(arm-ir:maximum expr0 expr1) '()]
      [(arm-ir:minimum expr0 expr1) '()]
      
      [(arm-ir:select expr0 expr1 expr2) '()]
      [(arm-ir:is-equal expr0 expr1) '()]
      [(arm-ir:less-than expr0 expr1) '()]
      [(arm-ir:less-than-eq expr0 expr1) '()]
      
      [(arm-ir:bitwise-and expr0 expr1) '()]

      [(arm-ir:abs expr saturate? outT) '()]
      [(arm-ir:abs-diff expr0 expr1 widening? outT) '()]

      ; TODO: can we fold reductions...?
      [(arm-ir:reduce expr width reduce-op outT)
       (cond
         [(halide:cast-op? halide-expr)
          ;; Try folding by flipping the widening flag
          (list (arm-ir:reduce (get-node-id) expr width reduce-op (halide:elem-type halide-expr)))]
         [(vec-add? halide-expr)
          ;; Try folding the add by increasing the width
          (define updated-sub-expr (update-input-data expr halide-expr))
          (list (arm-ir:reduce (get-node-id) updated-sub-expr (add1 width) reduce-op outT))]
         [else
          ;; Check if the new node is an identity func. Ex: saturation where its not needed etc.
          (list lifted-sub-expr)])]

      [(arm-ir:vs-divide sub-expr div) '()]

      [_ (error "NYI: Please define a (fold) grammar for IR Expr:" lifted-sub-expr halide-expr)]))

  (cond
    [(<= depth 0) candidates]
    [else (flatten (append (map (lambda (se) (fold-grammar se lifted-sibling-exprs halide-expr (- depth 1))) (arm-ir:get-subexprs lifted-sub-expr)) candidates))]))

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
      [(arm-ir:combine sub-expr0 sub-expr1 read-tbl) '()]

      ;; Strip the cast and try to extend. Many instructions perform widening / narrowing casts
      [(arm-ir:cast expr type saturate?) (extend-grammar (list expr) halide-expr)]

      ; TODO: are there any ways to replace abs or abs-diff?
      [(arm-ir:abs expr saturate? outT) '()]

      [(arm-ir:vs-mpy-add sub-expr weights outT)
        (flatten
          (list
            (mk-halving-add-instr (update-input-data sub-expr halide-expr) (choose* #t #f) (halide:extract-shr-scalars halide-expr))
            (if (eq? (length weights) 2)
                (arm-ir:vs-dmpy-add-sat (get-node-id) sub-expr (apply choose* weights) (choose* #t #f) (halide:elem-type halide-expr))
                '())
            (if (<= (length weights) 2)
                (arm-ir:vs-dmpy-add-hh-sat (get-node-id) sub-expr (apply choose* weights) (choose* #t #f) (choose* #t #f) (halide:elem-type halide-expr))
                '())
            ; (arm-ir:vs-mpy-add (get-node-id) sub-expr weights (halide:narrower-elem-type halide-expr))
        ))]

      [(arm-ir:vv-mpy-add expr width outT)
        (flatten
          (list
            ; TODO: add some good options.
        ))]

      [(arm-ir:vs-dmpy-add-hh-sat expr weight round? accumulate? outT) '()]

      [(arm-ir:add-sat expr0 expr1 outT) '()]
      [(arm-ir:sub-sat expr0 expr1 outT) '()]

      [(arm-ir:vs-shift-right sub-expr const-val round? saturate? signed? output-type) '()]

      [(arm-ir:halving-add sub-expr round?) '()]

      [(arm-ir:bitwise-and expr0 expr1) '()]

      ; TODO: HVX also tries to replace with addition by a constant, should we do that here too?
      [(arm-ir:maximum expr0 expr1)
       (flatten
        (list
         ;; Replace with saturation
         (mk-saturate-instr expr0 (halide:elem-type halide-expr))
         (mk-saturate-instr expr1 (halide:elem-type halide-expr))))]

      ; TODO: HVX also tries to replace with addition by a constant, should we do that here too?
      [(arm-ir:minimum expr0 expr1)
       (flatten
        (list
         ;; Replace with saturation
         (mk-saturate-instr expr0 (halide:elem-type halide-expr))
         (mk-saturate-instr expr1 (halide:elem-type halide-expr))))]

      [(arm-ir:select expr0 expr1 sub-expr2) '()]
      [(arm-ir:is-equal expr0 expr1) (list (arm-ir:less-than-eq (get-node-id) expr0 expr1))]
      [(arm-ir:less-than expr0 expr1) (list (arm-ir:less-than-eq (get-node-id) expr0 expr1))]
      [(arm-ir:less-than-eq expr0 expr1) (list)]

      [(arm-ir:abs expr saturate? outT) '()]
      [(arm-ir:abs-diff expr0 expr1 widening? outT) '()]

      ; TODO: can we replace reductions...?
      [(arm-ir:reduce expr width reduce-op outT) '()]

      [(arm-ir:vs-divide sub-expr div) '()]

      [_ (error "NYI: Please define a (repl) grammar for IR Expr:" lifted-sub-expr halide-expr)]))

  (cond
    [(eq? depth 0) candidates]
    [else (flatten (append (map (lambda (se) (repl-grammar se halide-expr (- depth 1))) (arm-ir:get-subexprs lifted-sub-expr)) candidates))]))

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
    [(concat_vectors v1 v2 len) (list (mk-load-instr halide-expr))]
    [(interleave v1 v2) (list (mk-combine-instr lifted-sub-exprs))]
    [(dynamic_shuffle vec idxs st end) (list (mk-load-instr halide-expr))]

    ;; Casts
    [(vec-cast vec type lanes) (list (arm-ir:cast (get-node-id) (list-ref lifted-sub-exprs 0) type #f))]

    ;; Multiplication
    [(vec-mul v1 v2)
      ; TODO: understand these (ask Maaz)
      (define mul-scalars (halide:extract-mul-scalars halide-expr))
      (define live-reads (halide:extract-buffer-reads halide-expr))
      (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range SYMBOL_TBL_SIZE)))
      (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range SYMBOL_TBL_SIZE)))
      (flatten
        (list
          ;; We can extend using either vector-scalar multiply-add
          (mk-vs-mpy-add-instr (apply choose* lifted-sub-exprs) mul-scalars (halide:elem-type halide-expr))
          (mk-vs-mpy-add-instr (arm-ir:load-data (get-load-id) live-reads gather-tbl) mul-scalars (halide:elem-type halide-expr))
          ;; or vector-vector multiply-add
          (arm-ir:vv-mpy-add (get-node-id) (apply choose* lifted-sub-exprs) (list 1) (halide:elem-type halide-expr))
          (arm-ir:vv-mpy-add (get-node-id) (arm-ir:load-data (get-load-id) live-reads gather-tbl) (list 1) (halide:elem-type halide-expr))
          ;; Extend both of the sub-exprs (combine them)
          (mk-vv-mpy-add-combine-subexprs lifted-sub-exprs (list 1) (halide:elem-type halide-expr))
          ;; TODO: understand this.
          ;; Extend sub-sub-exprs (combine them)
          ; (mk-vv-mpy-add-combine-subsubexprs lifted-sub-exprs (list 1) (halide:elem-type halide-expr))
      ))]

    ;; Addition
    [(vec-add v1 v2)
     (define add-scalars (halide:extract-add-scalars halide-expr))
     (define add-consts (filter (lambda (scalar) (not (symbolic? scalar))) add-scalars))
     (define mul-scalars (halide:extract-mul-scalars halide-expr))
     (flatten
      (list
        ;; Try to extend using vector-scalar-multiply-add
        (if (subexprs-are-loads? lifted-sub-exprs)
          (arm-ir:vs-mpy-add (get-node-id) (mk-load-instr halide-expr) (list (int8_t (bv 1 8)) (int8_t (bv 1 8))) (halide:elem-type halide-expr))
          (list
           (arm-ir:vs-mpy-add (get-node-id) (apply choose* lifted-sub-exprs) (list (int8_t (bv 1 8)) (int8_t (bv 1 8))) (halide:elem-type halide-expr))
           (mk-vs-mpy-add-extend-subexpr lifted-sub-exprs mul-scalars)))
        ;; Extend sub-sub-expressions (useful to throw away redundant casts)
        (mk-vs-mpy-add-combine-subsubexprs ;; Extend sub-sub-exprs (combine them)
         lifted-sub-exprs
         (list (int8_t (bv 1 8)) (int8_t (bv 1 8)))
         (halide:elem-type halide-expr))
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
          (arm-ir:vs-mpy-add (get-node-id) (mk-load-instr halide-expr) (list (int8_t (bv 1 8)) (int8_t (bv -1 8))) (halide:elem-type halide-expr))
          (arm-ir:vs-mpy-add (get-node-id) (apply choose* lifted-sub-exprs) (list (int8_t (bv 1 8)) (int8_t (bv -1 8))) (halide:elem-type halide-expr)))
        ;; Extend sub-sub-expressions (useful to throw away redundant casts)
        (mk-vs-mpy-add-combine-subsubexprs ;; Extend sub-sub-exprs (combine them)
         lifted-sub-exprs
         (list (int8_t (bv 1 8)) (int8_t (bv -1 8)))
         (halide:elem-type halide-expr))
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
       (mk-shr-instr (first lifted-sub-exprs) shr-scalars #f #f (cpp:signed-type? output-type) output-type)
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
       (mk-shr-instr (apply choose* lifted-sub-exprs) shr-scalars #f #f (cpp:signed-type? output-type) output-type)
       ;(if (> (length lifted-sub-exprs) 1) (vv-shift-right (get-node-id) (first lifted-sub-exprs) (second lifted-sub-exprs) #f (cpp:signed-type? output-type)) '())
       ))]

    [(vec-bwand v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (arm-ir:bitwise-and (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]

    [(vec-min v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (arm-ir:minimum (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]
    [(vec-max v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (arm-ir:maximum (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]

    [(vec-abs v1) (list (arm-ir:abs (get-node-id) (list-ref lifted-sub-exprs 0) (choose* #t #f) (halide:elem-type halide-expr)))]
    [(vec-absd v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (arm-ir:abs-diff (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1) (choose* #t #f) (halide:elem-type halide-expr))) '())]

    [(vector_reduce op width vec)
      ; TODO: is there any other way to handle this?
      ; TODO: what to do about output type?
      (list
       (if (subexprs-are-loads? lifted-sub-exprs)
           (arm-ir:reduce (get-node-id) (mk-load-instr halide-expr) width op (halide:elem-type halide-expr))
           (arm-ir:reduce (get-node-id) (apply choose* lifted-sub-exprs) width op (halide:elem-type halide-expr))))]

    [(vec-if v1 v2 v3)
     (if (eq? (length lifted-sub-exprs) 3)
         (list (arm-ir:select (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1) (list-ref lifted-sub-exprs 2))) '())]

    [(vec-lt v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (arm-ir:less-than (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]
    
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
  (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range SYMBOL_TBL_SIZE)))
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
     (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range SYMBOL_TBL_SIZE)))
     (arm-ir:load-data (get-node-id) live-reads gather-tbl)]
    [(arm-ir:combine? sub-expr)
     (mk-combine-instr (list (update-input-data (arm-ir:combine-expr0 sub-expr) halide-expr) (update-input-data (arm-ir:combine-expr1 sub-expr) halide-expr)))]
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
     (cond
       [(and (arm-ir:cast? (list-ref lifted-sub-exprs 0)) (arm-ir:cast? (list-ref lifted-sub-exprs 1)))
        (arm-ir:vs-mpy-add (get-node-id) (mk-combine-instr (map arm-ir:cast-expr lifted-sub-exprs)) weights output-type)]
       [else
        (arm-ir:vs-mpy-add (get-node-id) (mk-combine-instr lifted-sub-exprs) weights output-type)])]
    [else '()]))

(define (mk-combine-instr lifted-sub-exprs)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
      (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range SYMBOL_TBL_SIZE)))
      (arm-ir:combine (get-load-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1) read-tbl)]
    [else '()]))

; (define (mk-combine-instr2 lifted-sub-exprs0 lifted-sub-exprs1)
;   (cond
;     [(and (not (empty? lifted-sub-exprs0)) (not (empty? lifted-sub-exprs1)))
;       (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range SYMBOL_TBL_SIZE)))
;       (arm-ir:combine (get-load-id) (first lifted-sub-exprs0) (first lifted-sub-exprs1) read-tbl)]
;     [else '()]))

(define (mk-vs-mpy-add-combine-subsubexprs lifted-sub-exprs weights output-type)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (let ([sub-exprs0 (arm-ir:get-subexprs (list-ref lifted-sub-exprs 0))])
       (let ([sub-exprs1 (arm-ir:get-subexprs (list-ref lifted-sub-exprs 1))])
         (flatten (list
          (mk-combine-expr2-list sub-exprs0 sub-exprs1 weights output-type)
          (mk-combine-expr2-list sub-exprs0 (list (second lifted-sub-exprs)) weights output-type)
          (mk-combine-expr2-list (list (first lifted-sub-exprs)) sub-exprs1 weights output-type)))))]
    [else '()]))

(define (mk-vs-mpy-add-extend-subexpr sub-exprs mul-scalars)
  (define ws (append mul-scalars (list (int8_t (bv 1 8)))))
  (define w (apply choose* ws))
  (cond
    [(> (length sub-exprs) 1)
     (define sub0 (first sub-exprs))
     (define sub1 (second sub-exprs))
     (destruct* (sub0 sub1)
       [((arm-ir:vs-mpy-add sub-expr0 weights out-type) (arm-ir:broadcast sca-val))
        (arm-ir:vs-mpy-add (get-node-id) (mk-combine-instr (list sub-expr0 sub1)) (append (list (int8_t (bv 1 8))) weights) out-type)]
       [((arm-ir:broadcast sca-val) (arm-ir:vs-mpy-add sub-expr0 weights out-type))
        (arm-ir:vs-mpy-add (get-node-id) (mk-combine-instr (list sub-expr0 sub0)) (append (list (int8_t (bv 1 8))) weights) out-type)]
       [((arm-ir:vs-mpy-add sub-expr0 weights0 out-type0) (arm-ir:vs-mpy-add sub-expr1 weights1 out-type1))
        (list
         (arm-ir:vs-mpy-add (get-node-id) (mk-combine-instr (list sub-expr0 sub-expr1)) (append (list w) weights0) (choose* out-type0 out-type1))
         (arm-ir:vs-mpy-add (get-node-id) (mk-combine-instr (list sub-expr0 sub-expr1)) (append weights0 weights1) (choose* out-type0 out-type1)))]
       [(_ _) '()])]
    [else '()]))

(define (mk-combine-expr2-list sub-exprs0 sub-exprs1 weights output-type)
  (if (and (not (empty? sub-exprs0)) (not (empty? sub-exprs1)))
    (begin
      (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range SYMBOL_TBL_SIZE)))
      (list (arm-ir:vs-mpy-add (get-node-id) (arm-ir:combine (get-load-id) (first sub-exprs0) (first sub-exprs1) read-tbl) weights output-type)))
    '()))

(define (mk-halving-add-instr sub-expr round? shr-scalars)
  (cond
    [(empty? shr-scalars) '()]
    [else (arm-ir:halving-add (get-node-id) sub-expr round?)]))

(define (mk-shr-instr sub-expr shr-scalars round? saturate? signed? output-type)
  (cond
    [(empty? shr-scalars) '()]
    [else (arm-ir:vs-shift-right (get-node-id) sub-expr (apply choose* shr-scalars) round? saturate? signed? output-type)]))

(define (mk-vs-div-instr sub-expr div-scalars)
  (cond
    [(empty? div-scalars) '()]
    [else (arm-ir:vs-divide (get-node-id) sub-expr (apply choose* div-scalars))]))

(define (mk-saturate-instr sub-expr out-type)
  (arm-ir:cast (get-node-id) sub-expr out-type #t))

(define (mk-vv-mpy-add-combine-subexprs lifted-sub-exprs width output-type)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (arm-ir:vv-mpy-add (get-node-id) (mk-combine-instr lifted-sub-exprs) width output-type)]
    [else '()]))

; (define (mk-vv-mpy-add-combine-subsubexprs lifted-sub-exprs width output-type)
;   (cond
;     [(eq? (length lifted-sub-exprs) 2)
;      (let ([sub-exprs0 (arm-ir:get-subexprs (list-ref lifted-sub-exprs 0))])
;        (let ([sub-exprs1 (arm-ir:get-subexprs (list-ref lifted-sub-exprs 1))])
;          (define s
;           (list
;             (arm-ir:vv-mpy-add (get-node-id) (mk-combine-instr2 sub-exprs0 sub-exprs1) width output-type)
;             (arm-ir:vv-mpy-add (get-node-id) (mk-combine-instr2 sub-exprs0 (list (second lifted-sub-exprs))) width output-type)
;             (arm-ir:vv-mpy-add (get-node-id) (mk-combine-instr2 (list (first lifted-sub-exprs)) sub-exprs1) width output-type)))
;           (display (format "S: ~a\n" (pretty-format s)))
;           s))]
;     [else '()]))
