#lang rosette

(require
  (only-in rosette/base/core/term @app)
  rosette/lib/destruct
  rosette/lib/synthax
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/fpir/ast/cost_model
  rake/fpir/ast/interpreter
  rake/fpir/ast/types
  rake/fpir/ast/type_utils
  rake/fpir/ast/utils
  rake/fpir/ast/visitor
  rake/synthesis/lowering/fpir/layouts
  rake/synthesis/lowering/fpir/utils
)

(provide get-fpir-swizzle-grammar)

(define grammar-lib (make-hash))

(define (get-fpir-swizzle-grammar ir-expr halide-expr fpir-template output-layout swizzle-budget swizzle-node starting-vecs fpir-sub-exprs translation-history)
  (cond
    [(hash-has-key? grammar-lib (list halide-expr fpir-template swizzle-node output-layout starting-vecs fpir-sub-exprs))
      (hash-ref grammar-lib (list halide-expr fpir-template swizzle-node output-layout starting-vecs fpir-sub-exprs))]
    [else
      (define candidates (get-fpir-swizzle-grammar-gen ir-expr halide-expr fpir-template swizzle-budget swizzle-node starting-vecs fpir-sub-exprs translation-history))
      (hash-set! grammar-lib (list halide-expr fpir-template swizzle-node output-layout starting-vecs fpir-sub-exprs) candidates)
      candidates]))

(define (get-fpir-swizzle-grammar-gen ir-expr halide-expr fpir-template swizzle-budget swizzle-node starting-vecs fpir-sub-exprs translation-history)
  ;(pretty-print starting-vecs)
  (println "get-fpir-swizzle-grammar-gen")
  (pretty-print swizzle-node)
  (pretty-print starting-vecs)

  (define-values (target-node-id base-exprs)
    (destruct swizzle-node
      [(fpir:??abstr-load id live-data buffer)
       (define buffer (fpir:??abstr-load-buffer swizzle-node))
       (define base-exprs
         (flatten
          (map
           (lambda (base-expr)
             (list
              (error "fpir:??abstr-load What is the fpir equivalent of vread???")
              ; (vread (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
              ; (vreadp (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
              ))
           (filter (lambda (vec) (eq? buffer (list-ref vec 0))) starting-vecs))))

       (define tile-w (* (halide:vec-len halide-expr) (cpp:type-bw (halide:elem-type halide-expr))))
       (values id base-exprs)]
      [(fpir:??shuffle id lds output-type)
       (define buffers (halide:extract-live-buffers halide-expr))
       (define base-exprs
         (flatten
          (map
           (lambda (base-expr)
             (list
              (error "fpir:??shuffle What is the fpir equivalent of vread???")
              ; (vread (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
              ; (vreadp (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
            ))
           (filter (lambda (vec) (set-member? buffers (list-ref vec 0))) starting-vecs))))       
       (values id base-exprs)]
      [(fpir:??load id live-data buffer gather-tbl output-type)
       (define buffer (fpir:??load-buffer swizzle-node))
       (define base-exprs
         (flatten
          (map
           (lambda (base-expr)
             (list
              ; (println base-expr)
              ; (error "fpir:??load What is the fpir equivalent of vread???")
              (fpir:ld (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2) output-type)
              ; (vread (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
              ; (vreadp (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
              ))
           (filter (lambda (vec) (eq? buffer (list-ref vec 0))) starting-vecs))))

       (values id base-exprs)]
      [(fpir:??swizzle id live-data exprs idx-table output-type)
       (define trimmed-exprs
        (set->list (list->set
          ; (map (lambda (e)
          ;   ; (if (lo? e) (lo-Vuu e) (if (hi? e) (hi-Vuu e) e)))
          ;   (error "What is the fpir equivalent of lo/hi???")
          ; )
           exprs)))
       (values id trimmed-exprs)]))

  (println "define-values (target-node-id base-exprs) succeeded")
  (pretty-print base-exprs)

  (define out-type (fpir:get-interpreted-type swizzle-node))

  (display (format "Swizzle-node is of type: ~a\n" out-type))

  (define isa
    (list
      ; fpir:vpalignr fpir:vpblendw fpir:vpblendd_128 fpir:vpblendd fpir:vpblendvb
      ; fpir:vbroadcasti128 fpir:vpslldq fpir:vpsrldq fpir:vperm2f128 fpir:vperm2i128
      ; fpir:vpermq fpir:vpermd fpir:vpshufd fpir:vpshufb fpir:vpshufhw fpir:vpshuflw
      ; fpir:vpunpckhwd fpir:vpunpckhdq fpir:vpunpckhqdq fpir:vpunpckhbw fpir:vpunpcklwd
      ; fpir:vpunpckldq fpir:vpunpcklqdq fpir:vpunpcklbw
      ;; TODO: make an isa
    ))

  (println "got isa")

  ;; TODO: what is this doing....?
  (define grouped-base-exprs (make-hash))
  (for ([be base-exprs])
    (define beT (fpir:type (fpir:interpret be)))
    (hash-set! grouped-base-exprs beT (append (hash-ref! grouped-base-exprs beT '()) (list be))))
  (for ([(t bes) grouped-base-exprs])
    (define-symbolic* c integer?)
    (define beC (if (fpir:??swizzle? swizzle-node) 0 0))
    (hash-set! grouped-base-exprs t (list (cons (fpir:??sub-expr bes c t) beC))))

  (println "grouped-base-exprs")
  (pretty-print grouped-base-exprs)
  
  (set! enumeration-database (make-hash))
  (define max-depth 2)
  (define max-cost (min swizzle-budget 5)) ;; TODO: is this a reasonable amount?
  (define candidate-swizzles (enumerate-fpir isa out-type grouped-base-exprs max-depth max-cost))

  (println "candidates-swizzles")
  (println (length candidate-swizzles))
  (pretty-print candidate-swizzles)
  (pretty-print (map (lambda (e) (fpir:get-interpreted-type (car e))) candidate-swizzles))
  ; (error "swizzles")

  ;; TODO: understandd the scalar swizzling?
  (define (swizzle-node? n)
    (destruct n
      [(fpir:??load id live-data buffer gather-tbl output-type) (if (equal? id target-node-id) #t #f)]
      [(fpir:??swizzle id live-data expr gather-tbl output-type) (if (equal? id target-node-id) #t #f)]
      [(fpir:??shuffle id lds output-type) (if (equal? id target-node-id) #t #f)]
      [_ #f]))
  (define (update-swizzle-nodes node [pos -1])
    (destruct node
      [(fpir:??load id live-data buffer gather-tbl output-type) (if (not (equal? id target-node-id)) (update-swizzle-data node halide-expr fpir-sub-exprs translation-history) node)]
      [(fpir:??shuffle id lds output-type) (if (not (equal? id target-node-id)) (update-swizzle-data node halide-expr fpir-sub-exprs translation-history) node)]
      [(fpir:??swizzle id live-data expr gather-tbl output-type) (if (not (equal? id target-node-id)) (update-swizzle-data node halide-expr fpir-sub-exprs translation-history) node)]
      [_ node]))
  (define updated-template (fpir:visit fpir-template update-swizzle-nodes))

  (println "updated-template")
  (pretty-print updated-template)

  (define tmpl-type (fpir:type (fpir:interpret fpir-template)))
  (define tmpl-etype (fpir:elem-type tmpl-type))

  ;; Replace swizzle node with candidates
  (define candidates
    (apply append
     (for/list ([candidate-swizzle candidate-swizzles])
       (define (uniquify-sub-exprs node [pos -1])
         (destruct node
           [(fpir:??sub-expr exprs c t) (define-symbolic* ch integer?) (fpir:??sub-expr exprs ch t)]
           [_ node]))
       
       ;; Update template: Replace target swizzle node with swizzle grammar
       (define (repl-swizzle-node-wth-candidate node [pos -1])
         (destruct node
            [(fpir:??abstr-load id live-data buffer) (fpir:visit (car candidate-swizzle) uniquify-sub-exprs)]
            [(fpir:??shuffle id lds output-type) (if (equal? id target-node-id) (fpir:visit (car candidate-swizzle) uniquify-sub-exprs) node)]
            [(fpir:??load id live-data buffer gather-tbl output-type) (if (equal? id target-node-id) (fpir:visit (car candidate-swizzle) uniquify-sub-exprs) node)]
            [(fpir:??swizzle id live-data expr gather-tbl output-type) (if (equal? id target-node-id) (fpir:visit (car candidate-swizzle) uniquify-sub-exprs) node)]
            [_ node]))
       (define c (fpir:visit-shallow updated-template repl-swizzle-node-wth-candidate))
       (define cost (cdr candidate-swizzle))
       (list (cons c cost))
      ;  (cond
      ;    ;; TODO: what is happening here?
      ;    [(and (fpir:vec-pair? tmpl-type) (< 1 (reduction-factor ir-expr))) (list (cons c cost) (cons (vinterleave c) (+ 0.1 cost)))]
      ;    [(and (< (cpp:type-bw tmpl-etype) 32) (> (cpp:type-bw tmpl-etype) 1) (< 1 (reduction-factor ir-expr))) (list (cons c cost) (cons (vdeal c) (+ 0.1 cost)))]
      ;    [else (list (cons c cost))])
        )))

  (println "candidates")
  (println (length candidates))

  (define sorted-candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))

  (println "sorted-candidates")
  (println (length sorted-candidates))

  (define (uint8-const) (define-symbolic* imm8 (bitvector 8)) imm8)
  (define (fill-arg-grammars node [pos -1])
    (match node
      ;; TODO: need to fill imm8 values
      ['uint8 (uint8_t (uint8-const))]
      [_ node]))
  (for/list ([candidate sorted-candidates]) (cons (fpir:visit (car candidate) fill-arg-grammars) (cdr candidate))))

(define (update-swizzle-data swizzle-node halide-expr fpir-sub-exprs translation-history)
  (define (update-swizzle-node node [pos -1])
    (destruct node
      [(fpir:??load id live-data buffer gather-tbl output-type)
        (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
        (fpir:??load id (halide:extract-buffer-reads halide-expr) buffer tbl output-type)]
      [(fpir:??shuffle id lds output-type)
        (fpir:??shuffle id
         (for/list ([ld lds])
           (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
           ;; TODO: understand this, so we know what the load type should be?
           (fpir:??load (fpir:??load-id ld) (halide:extract-buffer-reads halide-expr) (fpir:??load-buffer ld) tbl (fpir:??load-output-type ld)))
         output-type)]
      [(fpir:??swizzle id live-data exprs gather-tbl output-type)
        ;; Abstract out common sub-expressions
        (define-values (abstr-halide-expr abstr-template _) (fpir:optimize-query halide-expr node fpir-sub-exprs (make-hash) translation-history))
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
        (fpir:??swizzle id (unwrap-reads new-data abstr-exprs) exprs tbl output-type)]
      [_ node]))
  (fpir:visit swizzle-node update-swizzle-node))

(define enumeration-database (make-hash))

(define (enumerate-fpir instr-set output-type base-exprs depth max-cost [parent-instr (void)])
  (define query (list instr-set output-type base-exprs depth max-cost parent-instr))
  (cond
    ;; Have we enumerated this tree before?
    [(hash-has-key? enumeration-database query) (hash-ref enumeration-database query)]

    ;; Recursive base case
    [(<= depth 0)
     (hash-ref! base-exprs output-type '())]

    ;; Enumerate recursively
    [else
     (define candidates
       (let ([sub-cands (enumerate-fpir instr-set output-type base-exprs (sub1 depth) max-cost parent-instr)])
         (let ([c-build-instr-exprs (curryr build-instr-exprs instr-set output-type base-exprs depth max-cost)])
           (foldr append sub-cands (map c-build-instr-exprs (filter (curry keep? parent-instr) instr-set))))))

     (define filtered-candidates (set->list (list->set (filter (lambda (e) (<= (cdr e) max-cost)) candidates))))
     (hash-set! enumeration-database query filtered-candidates)
     filtered-candidates]))

(define (build-instr-exprs instr instr-set output-type base-exprs depth max-cost)
  (let ([c-build-sig-exprs (curryr build-sig-exprs instr-set base-exprs depth max-cost instr)])
    (foldr append '() (map c-build-sig-exprs (filter (curry out-eq? output-type) (fpir:instr-forms instr))))))

(define (build-sig-exprs sig instr-set base-exprs depth max-cost instr)
  (let ([sig-exprs
    (let ([arg-opts (get-arg-opts (fpir:instr-sig-args sig) instr-set base-exprs depth max-cost instr)])
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
                     ['const (list (cons 'const 0))]
                     [_ (enumerate-fpir instr-set arg base-exprs (sub1 depth) max-cost instr)])])
         (append (list opts) (get-arg-opts (rest args) instr-set base-exprs depth max-cost instr))))]))

(define (build-ast instr sig-expr)
  (define cost (foldr + (fpir:instr-cost instr) (map cdr sig-expr)))
  (define expr (apply instr (map car sig-expr)))
  (cons expr cost))

; (define (instr-cost instr)
;   (cond
;     [(eq? instr reinterpret) 0.01]
;     [(eq? instr lo) 0.01]
;     [(eq? instr hi) 0.01]
;     [(eq? instr vcombine) 0.2]
;     [(eq? instr valign) 0.2]
;     [(eq? instr vdeal) 0.95]
;     [(eq? instr vdeale) 0.95]
;     [(eq? instr vpacke) 0.95]
;     [(eq? instr vpacko) 0.95]
;     [(eq? instr vshuff) 0.95]
;     [(eq? instr vshuffo) 0.95]
;     [(eq? instr vshuffe) 0.95]
;     [(eq? instr vror) 0.95]
;     [(eq? instr vshuffoe) 1]
;     [(eq? instr vinterleave) 1]
;     [(eq? instr vinterleave2) 1]
;     [(eq? instr vinterleave4) 2]
;     [else 1]))

(define (out-eq? output-type sig)
  (eq? (fpir:instr-sig-ret-val sig) output-type))

;; TODO find fpir-specific bad combinations
(define (keep? parent-instr child-instr)
  #t)
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
