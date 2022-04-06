#lang rosette/safe

(require
  (only-in racket/list range)
  (only-in racket/base error exit)
  (rename-in racket/list [remove-duplicates remove-dups])
  rosette/lib/destruct
  rosette/lib/match
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

;; This function returns the list of templates that the
;; synthesizer may use to fold the new Halide IR node into
;; the current IR-expression. In these tempalates, we do not
;; change any uber-instruction in the IR expression, only their
;; inputs.
(define (fold-grammar lifted-sub-expr halide-expr [depth 0])
  (define candidates
    (destruct lifted-sub-expr

      [(load-data live-data gather-tbl)
       (list
        ;; Try folding by updating the set of datapoints
        (mk-load-instr halide-expr))]

      [(broadcast value)
       (define output-type (halide:elem-type halide-expr))
       (define castfn (match output-type ['int8 int8x1] ['int16 int16x1] ['int32 int32x1] ['uint8 uint8x1] ['uint16 uint16x1] ['uint32 uint32x1]))
       (list (broadcast (get-node-id) (castfn value)))]
      
      [(build-vec base stride len) '()]
      [(combine sub-expr0 sub-expr1 read-tbl) '()]
      
      [(cast sub-expr type)
       (list
        ;; Try folding by changing the type we are casting to
        (cast (get-node-id) sub-expr (halide:elem-type halide-expr)))]

      [(vs-mpy-add sub-expr weight-matrix output-type saturate?)
       (define mul-scalars (append (halide:extract-mul-scalars halide-expr) (list (int8_t (bv 1 8)))))
       (define f (apply choose* mul-scalars))
       (cond
         [(halide:cast-op? halide-expr)
          ;; Try folding by updating the output type or the saturation flag saturate
          (define e-type (halide:elem-type halide-expr))
          (define in-type (hvx-ir:elem-type^ sub-expr))
          (define narrower-type (if (<= (cpp:type-bw e-type) (cpp:type-bw output-type)) e-type output-type))
          (define wider-type (if (>= (cpp:type-bw in-type) (cpp:type-bw narrower-type)) in-type narrower-type))
          (list (vs-mpy-add (get-node-id) sub-expr weight-matrix wider-type (choose* #t #f)))]
         [(vec-add? halide-expr)
          ;; Try folding the add by expanding the weight-matrix
          (define updated-sub-expr (update-input-data sub-expr halide-expr))
          (list (vs-mpy-add (get-node-id) updated-sub-expr (append weight-matrix (list f)) (halide:elem-type halide-expr) saturate?))]
         [(or (vec-mul? halide-expr) (vec-shl? halide-expr))
          ;; Try folding the mul by updating the weight-matrix
          (define castfn (match output-type ['int8 int8x1] ['int16 int16x1] ['int32 int32x1] ['uint8 uint8x1] ['uint16 uint16x1] ['uint32 uint32x1]))
          (define updated-weights (map (lambda (w) (sca-mul (castfn w) (castfn f))) weight-matrix))
          (list (vs-mpy-add (get-node-id) sub-expr updated-weights output-type saturate?))]
         [(and (vector_reduce? halide-expr) (eq? (length weight-matrix) 1))
          ;; Try folding the vr by updating the weight-matrix
          (define updated-weights (map (lambda (w) (list-ref weight-matrix 0)) (range (vector_reduce-width halide-expr))))
          (define updated-weights2 (map (lambda (w) (apply choose* mul-scalars)) (range (vector_reduce-width halide-expr))))
          (define updated-sub-expr (update-input-data sub-expr halide-expr))
          (list
           (vs-mpy-add (get-node-id) updated-sub-expr updated-weights (halide:elem-type halide-expr) saturate?)
           (vs-mpy-add (get-node-id) updated-sub-expr updated-weights2 (halide:elem-type halide-expr) saturate?))]
         [else
          ;; Check if the new node is an identity func. Ex: saturation where its not needed etc.
          (list (vs-mpy-add (get-node-id) sub-expr weight-matrix output-type saturate?))])]

      [(vv-mpy-add sub-expr width output-type saturate?)
       (cond
         [(halide:cast-op? halide-expr)
          ;; Try folding by updating the output type or the saturation flag
          (define e-type (halide:elem-type halide-expr))
          (define in-type (hvx-ir:elem-type^ sub-expr))
          (define narrower-type (if (<= (cpp:type-bw e-type) (cpp:type-bw output-type)) e-type output-type))
          (define wider-type (if (>= (cpp:type-bw in-type) (cpp:type-bw narrower-type)) in-type narrower-type))
          (list (vv-mpy-add (get-node-id) sub-expr width wider-type (choose* #t #f)))]
         [(vec-add? halide-expr)
          ;; Try folding the add by increasing the width
          (define updated-sub-expr (update-input-data sub-expr halide-expr))
          (list (vv-mpy-add (get-node-id) updated-sub-expr (add1 width) output-type saturate?))]
         [(vector_reduce? halide-expr)
          ;; Try folding the add by increasing the width
          (define e-type (halide:elem-type halide-expr))
          (define updated-sub-expr (update-input-data sub-expr halide-expr))
          (list (vv-mpy-add (get-node-id) updated-sub-expr (vector_reduce-width halide-expr) e-type saturate?))]
         [else
          ;; Check if the new node is an identity func. Ex: saturation where its not needed etc.
          (list (vv-mpy-add (get-node-id) sub-expr width output-type (choose* #t #f)))])]

      [(vs-mpy-hh sub-expr sca round?)
       (define mul-scalars (append (halide:extract-mul-scalars halide-expr) (list (int8_t (bv 1 8)))))
       (define f (apply choose* mul-scalars))
       (define updated-sca (sca-mul (int32x1 sca) (int32x1 f)))
       (list
        ;; Try folding by updating the multiplier
        (vs-mpy-hh (get-node-id) sub-expr updated-sca round?)
        ;; Try folding by updating the rounding flag
        (vs-mpy-hh (get-node-id) sub-expr sca (choose* #t #f)))]

      [(vv-mpy-hh-rnd sub-expr) '()]
      
      [(vs-frac-mpy sub-expr sca round?)
       (define mul-scalars (append (halide:extract-mul-scalars halide-expr) (list (int8_t (bv 1 8)))))
       (define f (apply choose* mul-scalars))
       (define updated-sca (sca-mul (int32x1 sca) (int32x1 f)))
       (list
        ;; Try folding by updating the multiplier
        (vs-frac-mpy (get-node-id) sub-expr updated-sca round?)
        ;; Try folding by updating the rounding flag
        (vs-frac-mpy (get-node-id) sub-expr sca (choose* #t #f)))]

      [(vv-frac-mpy sub-expr0 sub-expr1 round?)
       (list
        ;; Try folding by updating the rounding flag
        (vv-frac-mpy (get-node-id) sub-expr0 sub-expr1 (choose* #t #f)))]

      [(vs-shift-left sub-expr shift) '()]
      [(vv-shift-left sub-expr0 sub-expr1) '()]
      
      [(add-const sub-expr const-val output-type saturate?)
       (define e-type (halide:elem-type halide-expr))
       (define in-type (hvx-ir:elem-type sub-expr))
       (define narrower-type (if (<= (cpp:type-bw e-type) (cpp:type-bw output-type)) e-type output-type))
       (define wider-type (if (>= (cpp:type-bw in-type) (cpp:type-bw narrower-type)) in-type narrower-type))
       (define add-scalars (halide:extract-add-scalars halide-expr))
       (list
        ;; Try updating the scalar expression we are adding
        (mk-add-const-instr sub-expr add-scalars output-type saturate?)
        ;; Try updating the output-type / saturate flag
        (add-const (get-node-id) sub-expr const-val wider-type (choose* #t #f)))]

      [(vs-shift-right sub-expr shift round? saturate? arithmetic? output-type)
       (define shr-scalars (halide:extract-shr-scalars halide-expr))
       (define e-type (halide:elem-type halide-expr))
       (define in-type (hvx-ir:elem-type sub-expr))
       (define narrower-type (if (<= (cpp:type-bw e-type) (cpp:type-bw output-type)) e-type output-type))
       (define wider-type (if (> (quotient (cpp:type-bw in-type) 2) (cpp:type-bw narrower-type)) output-type narrower-type))
       (list
        ;; Try updating the shift value
        (mk-shr-instr sub-expr shr-scalars round? saturate? arithmetic? output-type)
        ;; Try updating the rounding flag / saturation flag / output-type
        (vs-shift-right (get-node-id) sub-expr shift (choose* #t #f) (choose* #t #f) arithmetic? wider-type))]

      [(vv-shift-right sub-expr0 sub-expr1 round? arithmetic?)
       (list
        ;; Try updating the rounding flag / saturation flag / output-type
        (vv-shift-right (get-node-id) sub-expr0 sub-expr1 (choose* #t #f) arithmetic?))]

      [(vs-divide sub-expr scalar-val output-type)
       (define e-type (halide:elem-type halide-expr))
       (define narrower-type (if (<= (cpp:type-bw e-type) (cpp:type-bw output-type)) e-type output-type))
       (list
        ;; Try updating the output-type
        (vs-divide (get-node-id) sub-expr scalar-val narrower-type))]
      
      [(average sub-expr round? output-type)
       (define e-type (halide:elem-type halide-expr))
       (define narrower-type (if (<= (cpp:type-bw e-type) (cpp:type-bw output-type)) e-type output-type))
       (list
        ;; Try updating the rounding flag / output-type
        (average (get-node-id) sub-expr (choose* #t #f) narrower-type))]

      [(modulo-by-const sub-expr const-val) '()]
      
      [(maximum sub-expr0 sub-expr1) '()]
      [(minimum sub-expr0 sub-expr1) '()]

      [(saturate sub-expr round? output-type)
       (define e-type (halide:elem-type halide-expr))
       (define narrower-type (if (<= (cpp:type-bw e-type) (cpp:type-bw output-type)) e-type output-type))
       (list
        ;; Try updating the rounding flag / output-type
        (saturate (get-node-id) sub-expr (choose* #t #f) narrower-type))]

      [(absolute sub-expr) '()]
      [(abs-diff sub-expr0 sub-expr1) '()]
      [(is-equal sub-expr0 sub-expr1) '()]
      [(less-than sub-expr0 sub-expr1) '()]
      [(less-than-eq sub-expr0 sub-expr1) '()]
      [(select sub-expr0 sub-expr1 sub-expr2) '()]
      [(bitwise-and v1 v2) '()]
      [(count-leading-zeroes sub-expr) '()]
    
      [_ (error "NYI: Please define a (fold) grammar for IR Expr:" lifted-sub-expr halide-expr)]))

  (cond
    [(eq? depth 0) candidates]
    [else (flatten (append (map (lambda (se) (fold-grammar se halide-expr (- depth 1))) (hvx-ir:get-subexprs lifted-sub-expr)) candidates))]))

;; This function returns the list of templates that the
;; synthesizer may use to fold the new Halide IR node into
;; the current IR-expression. In these templates, we consider
;; replacing one of the existing uber-instructions with a different
;; one.
(define (repl-grammar lifted-sub-expr halide-expr [depth 0])
  (define candidates
    (destruct lifted-sub-expr

      [(load-data live-data gather-tbl) '()]
      [(broadcast value) '()]   
      [(build-vec base stride len) '()]
      [(combine sub-expr0 sub-expr1 read-tbl) '()]

      ;; Strip the cast and try to extend. Many instructions perform widening / narrowing casts
      [(cast sub-expr type) (extend-grammar (list sub-expr) halide-expr)]

      [(vs-mpy-add sub-expr weight-matrix output-type saturate?)
       (flatten
        (list
         (mk-average-instr sub-expr (choose* #t #f) (halide:elem-type halide-expr) (halide:extract-shr-scalars halide-expr))
         (if (eq? (length weight-matrix) 1) (vs-frac-mpy (get-node-id) sub-expr (list-ref weight-matrix 0) (choose* #t #f)) '())
         (if (eq? (length weight-matrix) 1) (vs-mpy-hh (get-node-id) sub-expr (list-ref weight-matrix 0) (choose* #t #f)) '())))]

      [(vv-mpy-add sub-expr width output-type saturate?)
       (flatten
        (list
         (if (eq? width 1) (mk-vv-frac-mpy-instr sub-expr (choose* #t #f) halide-expr) '())
         (if (eq? width 1) (vv-mpy-hh-rnd (get-node-id) sub-expr) '())))]
      
      [(vs-mpy-hh sub-expr sca round?) '()]
      [(vv-mpy-hh-rnd sub-expr) '()]
      
      [(vs-frac-mpy sub-expr sca round?) '()]
      [(vv-frac-mpy sub-expr0 sub-expr1 round?) '()]

      [(vs-shift-left sub-expr shift) '()]
      [(vv-shift-left sub-expr0 SUB-expr1) '()]
    
      [(vs-shift-right sub-expr const-val round? saturate? arithmetic? output-type) '()]
      [(vv-shift-right sub-expr0 sub-expr1 round? arithmetic?) '()]

      [(add-const sub-expr const-val output-type saturate?)
       (define shr-scalars (halide:extract-shr-scalars halide-expr))
       (flatten
        (list
         (saturate (get-node-id) sub-expr #t (halide:elem-type halide-expr))
         (mk-shr-instr sub-expr shr-scalars (choose* #t #f) (choose* #t #f) (cpp:signed-type? output-type) output-type)))]

      [(vs-divide sub-expr scalar-val output-type) '()]
      
      [(average sub-expr round? output-type) '()]

      [(modulo-by-const sub-expr const-val) '()]
      
      [(maximum sub-expr0 sub-expr1)
       (define add-scalars (halide:extract-add-scalars halide-expr))
       ;(define add-consts (filter (lambda (scalar) (not (symbolic? scalar))) add-scalars))
       (flatten
        (list
         ;; Replace with saturation
         (saturate (get-node-id) sub-expr0 #f (halide:elem-type halide-expr))
         (saturate (get-node-id) sub-expr1 #f (halide:elem-type halide-expr))
         ;; Replace with const-add-saturate
         (mk-add-const-instr sub-expr0 add-scalars (halide:elem-type halide-expr) #t)
         (mk-add-const-instr sub-expr1 add-scalars (halide:elem-type halide-expr) #t)))]
    
      [(minimum sub-expr0 sub-expr1)
       (define add-scalars (halide:extract-add-scalars halide-expr))
       ;(define add-consts (filter (lambda (scalar) (not (symbolic? scalar))) add-scalars))
       (flatten
        (list
         ;; Replacy with saturation
         (saturate (get-node-id) sub-expr0 #f (halide:elem-type halide-expr))
         (saturate (get-node-id) sub-expr1 #f (halide:elem-type halide-expr))

         ;; Replace by const-add-saturate
         (mk-add-const-instr sub-expr0 add-scalars (halide:elem-type halide-expr) #t)
         (mk-add-const-instr sub-expr1 add-scalars (halide:elem-type halide-expr) #t)))]

      [(saturate sub-expr round? output-type) '()]

      [(absolute sub-expr) '()]
      [(abs-diff sub-expr0 sub-expr1) '()]

      [(is-equal sub-expr0 sub-expr1) (list (less-than-eq (get-node-id) sub-expr0 sub-expr1))]
      [(less-than sub-expr0 sub-expr1) (list (less-than-eq (get-node-id) sub-expr0 sub-expr1))]
      [(select sub-expr0 sub-expr1 sub-expr2) '()]

      [(bitwise-and v1 v2) '()]
      [(count-leading-zeroes sub-expr) '()]
    
      [_ (error "NYI: Please define a (repl) grammar for IR Expr:" lifted-sub-expr)]))

  (cond
    [(eq? depth 0) candidates]
    [else (flatten (append (map (lambda (se) (repl-grammar se halide-expr (- depth 1))) (hvx-ir:get-subexprs lifted-sub-expr)) candidates))]))

;; This function returns the list of uber-instructions that the
;; synthesizer may use to extend the IR-expression. We could blindly
;; return the full set of uber-instrs, but to make this a bit more
;; efficient, we return a subset specific to the Halide instruction
;; we are folding.
(define (extend-grammar lifted-sub-exprs halide-expr)
  (destruct halide-expr
    ;; Broadcast nodes
    [(sca-broadcast sca lanes) (list (broadcast (get-node-id) sca))]

    ;; Data loads & shuffles
    [(ramp base stride len) (list (build-vec (get-load-id) base stride len))]
    
    [(load buf idxs align) (list (mk-load-instr halide-expr))]
    [(slice_vectors vec base stride len) (list (mk-load-instr halide-expr))]
    [(concat_vectors v1 v2) (list (mk-load-instr halide-expr))]
    [(interleave v1 v2) (list (mk-combine-instr lifted-sub-exprs))]
    [(dynamic_shuffle vec idxs st end) (list (mk-load-instr halide-expr))]

    [(vec-cast vec type lanes) (list (cast (get-node-id) (list-ref lifted-sub-exprs 0) type))]
    
    [(vec-add v1 v2)
     (define add-scalars (halide:extract-add-scalars halide-expr))
     (define add-consts (filter (lambda (scalar) (not (symbolic? scalar))) add-scalars))
     (define mul-scalars (halide:extract-mul-scalars halide-expr))
     (flatten
      (list
       ;; We can extend using either constant-add
       (mk-add-const-instr (first lifted-sub-exprs) add-consts (halide:elem-type halide-expr) #f)
       (mk-vs-mpy-add-extend-subexpr lifted-sub-exprs mul-scalars)
       ;; or using vector-scalar multiply-add
       (vs-mpy-add
        (get-node-id)
        (first lifted-sub-exprs)  ;; Extend one of the 2 subexprs
        (list (int8_t (bv 1 8)) (int8_t (bv 1 8)))
        (halide:elem-type halide-expr)
        #f)
       (if (subexprs-are-loads? lifted-sub-exprs)
         (vs-mpy-add
          (get-node-id)
          (mk-load-instr halide-expr)       ;; Use a new load-data node as the sub-expr
          (list (int8_t (bv 1 8)) (int8_t (bv 1 8)))
          (halide:elem-type halide-expr)
          #f) '())
       (mk-vs-mpy-add-combine-subsubexprs ;; Extend sub-sub-exprs (combine them)
        lifted-sub-exprs
        (list (int8_t (bv 1 8)) (int8_t (bv 1 8)))
        (halide:elem-type halide-expr)
        #f)
       (mk-vs-mpy-add-combine-subexprs    ;; Extend both of the sub-exprs (combine them)
        lifted-sub-exprs
        (list (int8_t (bv 1 8)) (int8_t (bv 1 8)))
        (halide:elem-type halide-expr)
        #f)))]

    [(vec-sub v1 v2)
     (define live-reads (halide:extract-buffer-reads halide-expr))
     (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 25)))
     (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range 25)))
     (flatten
      (list
       ;; We can extend using vector-scalar multiply-add
       (vs-mpy-add
        (get-node-id)
        (first lifted-sub-exprs)  ;; Extend one of the 2 subexprs
        (list (int8_t (bv 1 8)) (int8_t (bv -1 8)))
        (halide:elem-type halide-expr)
        #f)
       (if (subexprs-are-loads? lifted-sub-exprs)
         (vs-mpy-add
          (get-node-id)
          (mk-load-instr halide-expr)       ;; Use a new load-data node as the sub-expr
          (list (int8_t (bv 1 8)) (int8_t (bv -1 8)))
          (halide:elem-type halide-expr)
          #f) '())
       (mk-vs-mpy-add-combine-subsubexprs ;; Extend sub-sub-exprs (combine them)
        lifted-sub-exprs
        (list (int8_t (bv 1 8)) (int8_t (bv -1 8)))
        (halide:elem-type halide-expr)
        #f)
       (mk-vs-mpy-add-combine-subexprs    ;; Extend both of the sub-exprs (combine them)
        lifted-sub-exprs
        (list (int8_t (bv 1 8)) (int8_t (bv -1 8)))
        (halide:elem-type halide-expr)
        #f)))]
    
    [(vec-mul v1 v2)
     (define mul-scalars (halide:extract-mul-scalars halide-expr))
     (define live-reads (halide:extract-buffer-reads halide-expr))
     (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 25)))
     (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range 25)))
     (flatten
      (list
       ;; We can extend using either vector-scalar multiply-add
       (mk-vs-mpy-add-instr (first lifted-sub-exprs) mul-scalars (halide:elem-type halide-expr) #f)
       (mk-vs-mpy-add-instr (load-data (get-load-id) live-reads gather-tbl) mul-scalars (halide:elem-type halide-expr) #f)
       ;; or vector-vector multiply-add
       (vv-mpy-add (get-node-id) (first lifted-sub-exprs) 1 (halide:elem-type halide-expr) #f)  ;; Extend one of the 2 subexprs
       (vv-mpy-add (get-node-id) (load-data (get-load-id) live-reads gather-tbl) 1 (halide:elem-type halide-expr) #f) ;; Use a new load-data node as the sub-expr
       (mk-vv-mpy-add-combine-subsubexprs lifted-sub-exprs 1 (halide:elem-type halide-expr) #f) ;; Extend sub-sub-exprs (combine them)
       (mk-vv-mpy-add-combine-subexprs lifted-sub-exprs 1 (halide:elem-type halide-expr) #f) ;; Extend both of the sub-exprs (combine them)
       ))]

    [(vec-shl v1 v2)
     (define mul-scalars (halide:extract-mul-scalars halide-expr))
     (define shl-scalars (halide:extract-shl-scalars halide-expr))
     (flatten
      (list
       ;; We can extend using either vector-scalar multiply-add
       (mk-vs-mpy-add-instr (first lifted-sub-exprs) mul-scalars (halide:elem-type halide-expr) #f)
       ;; or shift-left
       (mk-vs-shift-left-instr (first lifted-sub-exprs) shl-scalars)
       (mk-vv-shift-left-instr lifted-sub-exprs)))]
    
    [(vec-div v1 v2)
     (define shr-scalars (halide:extract-shr-scalars halide-expr))
     (define div-scalars (halide:extract-div-scalars halide-expr))
     (define output-type (halide:elem-type halide-expr))
     (flatten
      (list
       ;; We can extend using either a shift-right instruction
       (mk-shr-instr (first lifted-sub-exprs) shr-scalars #f #f (cpp:signed-type? output-type) output-type)
       (vv-shift-right (get-node-id) (first lifted-sub-exprs) (first lifted-sub-exprs) #f (cpp:signed-type? output-type))
       ;; or using the divide instructions
       (mk-div-by-const-instr (first lifted-sub-exprs) div-scalars)
       (mk-vs-div-instr (first lifted-sub-exprs) div-scalars (halide:elem-type halide-expr))))]

    [(vec-shr v1 v2)
     (define shr-scalars (halide:extract-shr-scalars halide-expr))
     (define output-type (halide:elem-type halide-expr))
     (flatten
      (list
       ;; We can extend using a shift-right instruction
       (mk-shr-instr (first lifted-sub-exprs) shr-scalars #f #f (cpp:signed-type? output-type) output-type)
       (if (> (length lifted-sub-exprs) 1) (vv-shift-right (get-node-id) (first lifted-sub-exprs) (second lifted-sub-exprs) #f (cpp:signed-type? output-type)) '())))]

    [(vec-mod v1 v2)
     (define mod-scalars (halide:extract-mod-scalars halide-expr))
     (flatten
      (list
       (if (empty? mod-scalars)
           '()
           (modulo-by-const
            (get-node-id)
            (first lifted-sub-exprs)
            (apply choose* mod-scalars)))))]

    [(vec-min v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (minimum (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]
    [(vec-max v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (maximum (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]

    [(vec-if v1 v2 v3) (if (eq? (length lifted-sub-exprs) 3) (list (select (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1) (list-ref lifted-sub-exprs 2))) '())]
    [(vec-eq v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (is-equal (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]
    [(vec-lt v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (less-than (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]
    [(vec-le v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (less-than-eq (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]
    
    [(vec-abs v1) (list (absolute (get-node-id) (list-ref lifted-sub-exprs 0)))]
    [(vec-absd v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (abs-diff (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]

    [(vec-clz v1) (list (count-leading-zeroes (get-node-id) (list-ref lifted-sub-exprs 0)))]

    [(vec-bwand v1 v2) (if (eq? (length lifted-sub-exprs) 2) (list (bitwise-and (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))) '())]

    [(vector_reduce op width vec)
     (define updated-sub-expr (update-input-data (list-ref lifted-sub-exprs 0) halide-expr))
     (list
      (vs-mpy-add (get-node-id) updated-sub-expr (map (lambda (i) (int8_t (bv 1 8))) (range width)) (halide:elem-type halide-expr) #f))]
    
    [_ (error "NYI: Please define a (extend) grammar for halide node:" halide-expr)]))

(define hvx-uber-instructions (lifting-ir fold-grammar repl-grammar extend-grammar))

;;;;;;;;;; Helper functions ;;;;;;;;;;;;;;

(define (update-input-data sub-expr halide-expr)
  (cond
    [(load-data? sub-expr)
     (define live-reads (merge-live-reads (load-data-live-data sub-expr) (halide:extract-buffer-reads halide-expr)))
     (load-data (get-node-id) live-reads (load-data-gather-tbl sub-expr))]
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
  (andmap load-data? lifted-sub-exprs))

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
  (load-data (get-load-id) live-reads gather-tbl))

(define (mk-combine-instr lifted-sub-exprs)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
      (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range 25)))
      (combine (get-load-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1) read-tbl)]
    [else '()]))

(define (mk-combine-instr1 sub-expr0 sub-expr1)
  (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range 25)))
  (combine (get-load-id) sub-expr0 sub-expr1 read-tbl))

(define (mk-combine-instr2 lifted-sub-exprs0 lifted-sub-exprs1)
  (cond
    [(and (not (empty? lifted-sub-exprs0)) (not (empty? lifted-sub-exprs1)))
      (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range 25)))
      (combine (get-load-id) (first lifted-sub-exprs0) (first lifted-sub-exprs1) read-tbl)]
    [else '()]))

(define (mk-average-instr sub-expr round? output-type shr-scalars)
  (cond
    [(empty? shr-scalars) '()]
    [else (average (get-node-id) sub-expr round? output-type)]))

(define (mk-shr-instr sub-expr shr-scalars round? saturate? arithmetic? output-type)
  (cond
    [(empty? shr-scalars) '()]
    [else (vs-shift-right (get-node-id) sub-expr (apply choose* shr-scalars) round? saturate? arithmetic? output-type)]))

(define (mk-add-const-instr sub-expr add-scalars output-type saturate?)
  (cond
    [(empty? add-scalars) '()]
    [else (add-const (get-node-id) sub-expr (apply choose* add-scalars) output-type saturate?)]))

(define (mk-vs-mpy-add-instr sub-expr mul-scalars output-type saturate?)
  (cond
    [(empty? mul-scalars) '()]
    [else
     (vs-mpy-add (get-node-id) sub-expr (list (apply choose* mul-scalars)) output-type saturate?)]))

(define (mk-vs-mpy-add-combine-subexprs lifted-sub-exprs weights output-type saturate?)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (vs-mpy-add (get-node-id) (mk-combine-instr lifted-sub-exprs) weights output-type saturate?)]
    [else '()]))

(define (mk-vs-mpy-add-combine-subsubexprs lifted-sub-exprs weights output-type saturate?)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (let ([sub-exprs0 (hvx-ir:get-subexprs (list-ref lifted-sub-exprs 0))])
       (let ([sub-exprs1 (hvx-ir:get-subexprs (list-ref lifted-sub-exprs 1))])
         (list
          (vs-mpy-add (get-node-id) (mk-combine-instr2 sub-exprs0 sub-exprs1) weights output-type saturate?)
          (vs-mpy-add (get-node-id) (mk-combine-instr2 sub-exprs0 (list (second lifted-sub-exprs))) weights output-type saturate?)
          (vs-mpy-add (get-node-id) (mk-combine-instr2 (list (first lifted-sub-exprs)) sub-exprs1) weights output-type saturate?))))]
    [else '()]))

(define (mk-vv-mpy-add-combine-subexprs lifted-sub-exprs width output-type saturate?)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (vv-mpy-add (get-node-id) (mk-combine-instr lifted-sub-exprs) width output-type saturate?)]
    [else '()]))

(define (mk-vv-mpy-add-combine-subsubexprs lifted-sub-exprs width output-type saturate?)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (let ([sub-exprs0 (hvx-ir:get-subexprs (list-ref lifted-sub-exprs 0))])
       (let ([sub-exprs1 (hvx-ir:get-subexprs (list-ref lifted-sub-exprs 1))])
         (list
          (vv-mpy-add (get-node-id) (mk-combine-instr2 sub-exprs0 sub-exprs1) width output-type saturate?)
          (vv-mpy-add (get-node-id) (mk-combine-instr2 sub-exprs0 (list (second lifted-sub-exprs))) width output-type saturate?)
          (vv-mpy-add (get-node-id) (mk-combine-instr2 (list (first lifted-sub-exprs)) sub-exprs1) width output-type saturate?))))]
    [else '()]))

(define (mk-div-by-const-instr sub-expr div-scalars)
  (cond
    [(empty? div-scalars) '()]
    [else (divide-by-const (get-node-id) sub-expr (apply choose* div-scalars))]))

(define (mk-vs-div-instr sub-expr div-scalars output-type)
  (cond
    [(empty? div-scalars) '()]
    [else (vs-divide (get-node-id) sub-expr (apply choose* div-scalars) output-type)]))

(define (mk-vv-shift-right-instr lifted-sub-exprs round? arithmetic?)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (vv-shift-right (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1) round? arithmetic?)]
    [else '()]))

(define (mk-vv-shift-right-instr-sse lifted-sub-exprs round? arithmetic?)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (let ([sub-exprs0 (hvx-ir:get-subexprs (list-ref lifted-sub-exprs 0))])
       (let ([sub-exprs1 (hvx-ir:get-subexprs (list-ref lifted-sub-exprs 1))])
         (list
          (vv-shift-right (get-node-id) (apply choose* sub-exprs0) (apply choose* sub-exprs1) round? arithmetic?)
          (vv-shift-right (get-node-id) (list-ref lifted-sub-exprs 0) (apply choose* sub-exprs1) round? arithmetic?)
          (vv-shift-right (get-node-id) (apply choose* sub-exprs0) (list-ref lifted-sub-exprs 1) round? arithmetic?))))]
    [else '()]))

(define (mk-vs-shift-left-instr sub-expr shl-scalars)
  (cond
    [(empty? shl-scalars) '()]
    [else (vs-shift-left (get-node-id) sub-expr (apply choose* shl-scalars))]))

(define (mk-vv-shift-left-instr lifted-sub-exprs)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (vv-shift-left (get-node-id) (list-ref lifted-sub-exprs 0) (list-ref lifted-sub-exprs 1))]
    [else '()]))

(define (mk-vv-shift-left-instr-sse lifted-sub-exprs)
  (cond
    [(eq? (length lifted-sub-exprs) 2)
     (let ([sub-exprs0 (hvx-ir:get-subexprs (list-ref lifted-sub-exprs 0))])
       (let ([sub-exprs1 (hvx-ir:get-subexprs (list-ref lifted-sub-exprs 1))])
         (list
          (vv-shift-left (get-node-id) (apply choose* sub-exprs0) (apply choose* sub-exprs1))
          (vv-shift-left (get-node-id) (list-ref lifted-sub-exprs 0) (apply choose* sub-exprs1))
          (vv-shift-left (get-node-id) (apply choose* sub-exprs0) (list-ref lifted-sub-exprs 1)))))]
    [else '()]))

(define (mk-vv-frac-mpy-instr sub-expr round? halide-expr)
  (define sse (hvx-ir:get-subexprs sub-expr))
  (cond
    [(eq? (length sse) 2) (vv-frac-mpy (get-node-id) (first sse) (second sse) round?)]
    [else '()]))

(define (mk-vs-mpy-add-extend-subexpr sub-exprs mul-scalars)
  (define ws (append mul-scalars (list (int8_t (bv 1 8)))))
  (define w (apply choose* ws))
  (cond
    [(> (length sub-exprs) 1)
     (define sub0 (first sub-exprs))
     (define sub1 (second sub-exprs))
     (destruct* (sub0 sub1)
       [((vs-mpy-add sub-expr0 weights out-type saturate?) (broadcast sca-val))
        (vs-mpy-add (get-node-id) (mk-combine-instr1 sub-expr0 sub1) (append (list (int8_t (bv 1 8))) weights) out-type saturate?)]
       [((broadcast sca-val) (vs-mpy-add sub-expr0 weights out-type saturate?))
        (vs-mpy-add (get-node-id) (mk-combine-instr1 sub-expr0 sub0) (append (list (int8_t (bv 1 8))) weights) out-type saturate?)]
       [((vs-mpy-add sub-expr0 weights0 out-type0 saturate0?) (vs-mpy-add sub-expr1 weights1 out-type1 saturate1?))
        (vs-mpy-add (get-node-id) (mk-combine-instr1 sub-expr0 sub-expr1) (append (list w) weights0) (choose* out-type0 out-type1) (choose* saturate0? saturate1?))]
       [(_ _) '()])]
    [else '()]))