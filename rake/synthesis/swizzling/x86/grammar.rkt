#lang rosette

(require
  (only-in rosette/base/core/term @app)
  rosette/lib/destruct
  rosette/lib/synthax
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/x86/ast/cost-model
  rake/x86/ast/interpreter
  rake/x86/ast/types
  rake/x86/ast/type_utils
  rake/x86/ast/visitor
  rake/synthesis/lowering/x86/layouts
  rake/synthesis/lowering/x86/utils
)

(provide get-x86-swizzle-grammar)

(define grammar-lib (make-hash))

(define (get-x86-swizzle-grammar ir-expr halide-expr x86-template output-layout swizzle-budget swizzle-node starting-vecs x86-sub-exprs translation-history)
  (cond
    [(hash-has-key? grammar-lib (list halide-expr x86-template swizzle-node output-layout starting-vecs x86-sub-exprs))
      (hash-ref grammar-lib (list halide-expr x86-template swizzle-node output-layout starting-vecs x86-sub-exprs))]
    [else
      (define candidates (get-x86-swizzle-grammar-gen ir-expr halide-expr x86-template swizzle-budget swizzle-node starting-vecs x86-sub-exprs translation-history))
      (hash-set! grammar-lib (list halide-expr x86-template swizzle-node output-layout starting-vecs x86-sub-exprs) candidates)
      candidates]))

(define (get-x86-swizzle-grammar-gen ir-expr halide-expr x86-template swizzle-budget swizzle-node starting-vecs x86-sub-exprs translation-history)
  ;(pretty-print starting-vecs)
  (println "get-x86-swizzle-grammar-gen")
  (pretty-print swizzle-node)
  (pretty-print starting-vecs)

  (define-values (target-node-id base-exprs)
    (destruct swizzle-node
      [(x86:??abstr-load id live-data buffer)
       (define buffer (x86:??abstr-load-buffer swizzle-node))
       (define base-exprs
         (flatten
          (map
           (lambda (base-expr)
             (list
              (error "x86:??abstr-load What is the x86 equivalent of vread???")
              ; (vread (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
              ; (vreadp (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
              ))
           (filter (lambda (vec) (eq? buffer (list-ref vec 0))) starting-vecs))))

       (define tile-w (* (halide:vec-len halide-expr) (cpp:type-bw (halide:elem-type halide-expr))))
       (values id base-exprs)]
      [(x86:??shuffle id lds output-type)
       (define buffers (halide:extract-live-buffers halide-expr))
       (define base-exprs
         (flatten
          (map
           (lambda (base-expr)
             (list
              (error "x86:??shuffle What is the x86 equivalent of vread???")
              ; (vread (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
              ; (vreadp (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
            ))
           (filter (lambda (vec) (set-member? buffers (list-ref vec 0))) starting-vecs))))       
       (values id base-exprs)]
      [(x86:??load id live-data buffer gather-tbl output-type)
       (define buffer (x86:??load-buffer swizzle-node))
       (define base-exprs
         (flatten
          (map
           (lambda (base-expr)
             (list
              ; (println base-expr)
              ; (error "x86:??load What is the x86 equivalent of vread???")
              (x86:ld (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2) output-type)
              ; (vread (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
              ; (vreadp (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
              ))
           (filter (lambda (vec) (eq? buffer (list-ref vec 0))) starting-vecs))))

       (values id base-exprs)]
      [(x86:??swizzle id live-data exprs idx-table output-type)
       (define trimmed-exprs
        (set->list (list->set
          ; (map (lambda (e)
          ;   ; (if (lo? e) (lo-Vuu e) (if (hi? e) (hi-Vuu e) e)))
          ;   (error "What is the x86 equivalent of lo/hi???")
          ; )
           exprs)))
       (values id trimmed-exprs)]))

  (println "define-values (target-node-id base-exprs) succeeded")
  (pretty-print base-exprs)

  (define out-type (x86:get-interpreted-type swizzle-node))

  (display (format "Swizzle-node is of type: ~a\n" out-type))

  (define isa
    (list
      x86:vpalignr x86:vpblendw x86:vpblendd_128 x86:vpblendd x86:vpblendvb
      x86:vbroadcasti128 x86:vpslldq x86:vpsrldq x86:vperm2f128 x86:vperm2i128
      x86:vpermq x86:vpermd x86:vpshufd x86:vpshufb x86:vpshufhw x86:vpshuflw
      x86:vpunpckhwd x86:vpunpckhdq x86:vpunpckhqdq x86:vpunpckhbw x86:vpunpcklwd
      x86:vpunpckldq x86:vpunpcklqdq x86:vpunpcklbw
    ))

  (println "got isa")

  ;; TODO: what is this doing....?
  (define grouped-base-exprs (make-hash))
  (for ([be base-exprs])
    (define beT (x86:type (x86:interpret be)))
    (hash-set! grouped-base-exprs beT (append (hash-ref! grouped-base-exprs beT '()) (list be))))
  (for ([(t bes) grouped-base-exprs])
    (define-symbolic* c integer?)
    (define beC (if (x86:??swizzle? swizzle-node) 0 0))
    (hash-set! grouped-base-exprs t (list (cons (x86:??sub-expr bes c t) beC))))

  (println "grouped-base-exprs")
  (pretty-print grouped-base-exprs)
  
  (set! enumeration-database (make-hash))
  (define max-depth 2)
  (define max-cost (min swizzle-budget 5)) ;; TODO: is this a reasonable amount?
  (define candidate-swizzles (enumerate-x86 isa out-type grouped-base-exprs max-depth max-cost))

  (println "candidates-swizzles")
  (println (length candidate-swizzles))
  (pretty-print candidate-swizzles)
  (pretty-print (map (lambda (e) (x86:get-interpreted-type (car e))) candidate-swizzles))
  ; (error "swizzles")

  ;; TODO: understandd the scalar swizzling?
  (define (swizzle-node? n)
    (destruct n
      [(x86:??load id live-data buffer gather-tbl output-type) (if (equal? id target-node-id) #t #f)]
      [(x86:??swizzle id live-data expr gather-tbl output-type) (if (equal? id target-node-id) #t #f)]
      [(x86:??shuffle id lds output-type) (if (equal? id target-node-id) #t #f)]
      [_ #f]))
  (define (update-swizzle-nodes node [pos -1])
    (destruct node
      [(x86:??load id live-data buffer gather-tbl output-type) (if (not (equal? id target-node-id)) (update-swizzle-data node halide-expr x86-sub-exprs translation-history) node)]
      [(x86:??shuffle id lds output-type) (if (not (equal? id target-node-id)) (update-swizzle-data node halide-expr x86-sub-exprs translation-history) node)]
      [(x86:??swizzle id live-data expr gather-tbl output-type) (if (not (equal? id target-node-id)) (update-swizzle-data node halide-expr x86-sub-exprs translation-history) node)]
      [_ node]))
  (define updated-template (x86:visit x86-template update-swizzle-nodes))

  (println "updated-template")
  (pretty-print updated-template)

  (define tmpl-type (x86:type (x86:interpret x86-template)))
  (define tmpl-etype (x86:elem-type tmpl-type))

  ;; Replace swizzle node with candidates
  (define candidates
    (apply append
     (for/list ([candidate-swizzle candidate-swizzles])
       (define (uniquify-sub-exprs node [pos -1])
         (destruct node
           [(x86:??sub-expr exprs c t) (define-symbolic* ch integer?) (x86:??sub-expr exprs ch t)]
           [_ node]))
       
       ;; Update template: Replace target swizzle node with swizzle grammar
       (define (repl-swizzle-node-wth-candidate node [pos -1])
         (destruct node
            [(x86:??abstr-load id live-data buffer) (x86:visit (car candidate-swizzle) uniquify-sub-exprs)]
            [(x86:??shuffle id lds output-type) (if (equal? id target-node-id) (x86:visit (car candidate-swizzle) uniquify-sub-exprs) node)]
            [(x86:??load id live-data buffer gather-tbl output-type) (if (equal? id target-node-id) (x86:visit (car candidate-swizzle) uniquify-sub-exprs) node)]
            [(x86:??swizzle id live-data expr gather-tbl output-type) (if (equal? id target-node-id) (x86:visit (car candidate-swizzle) uniquify-sub-exprs) node)]
            [_ node]))
       (define c (x86:visit-shallow updated-template repl-swizzle-node-wth-candidate))
       (define cost (cdr candidate-swizzle))
       (list (cons c cost))
      ;  (cond
      ;    ;; TODO: what is happening here?
      ;    [(and (x86:vec-pair? tmpl-type) (< 1 (reduction-factor ir-expr))) (list (cons c cost) (cons (vinterleave c) (+ 0.1 cost)))]
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
  (for/list ([candidate sorted-candidates]) (cons (x86:visit (car candidate) fill-arg-grammars) (cdr candidate))))

(define (update-swizzle-data swizzle-node halide-expr x86-sub-exprs translation-history)
  (define (update-swizzle-node node [pos -1])
    (destruct node
      [(x86:??load id live-data buffer gather-tbl output-type)
        (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
        (x86:??load id (halide:extract-buffer-reads halide-expr) buffer tbl output-type)]
      [(x86:??shuffle id lds output-type)
        (x86:??shuffle id
         (for/list ([ld lds])
           (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
           ;; TODO: understand this, so we know what the load type should be?
           (x86:??load (x86:??load-id ld) (halide:extract-buffer-reads halide-expr) (x86:??load-buffer ld) tbl (x86:??load-output-type ld)))
         output-type)]
      [(x86:??swizzle id live-data exprs gather-tbl output-type)
        ;; Abstract out common sub-expressions
        (define-values (abstr-halide-expr abstr-template _) (x86:optimize-query halide-expr node x86-sub-exprs (make-hash) translation-history))
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
        (x86:??swizzle id (unwrap-reads new-data abstr-exprs) exprs tbl output-type)]
      [_ node]))
  (x86:visit swizzle-node update-swizzle-node))

(define enumeration-database (make-hash))

(define (enumerate-x86 instr-set output-type base-exprs depth max-cost [parent-instr (void)])
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
       (let ([sub-cands (enumerate-x86 instr-set output-type base-exprs (sub1 depth) max-cost parent-instr)])
         (let ([c-build-instr-exprs (curryr build-instr-exprs instr-set output-type base-exprs depth max-cost)])
           (foldr append sub-cands (map c-build-instr-exprs (filter (curry keep? parent-instr) instr-set))))))

     (define filtered-candidates (set->list (list->set (filter (lambda (e) (<= (cdr e) max-cost)) candidates))))
     (hash-set! enumeration-database query filtered-candidates)
     filtered-candidates]))

(define (build-instr-exprs instr instr-set output-type base-exprs depth max-cost)
  (let ([c-build-sig-exprs (curryr build-sig-exprs instr-set base-exprs depth max-cost instr)])
    (foldr append '() (map c-build-sig-exprs (filter (curry out-eq? output-type) (x86:instr-forms instr))))))

(define (build-sig-exprs sig instr-set base-exprs depth max-cost instr)
  (let ([sig-exprs
    (let ([arg-opts (get-arg-opts (x86:instr-sig-args sig) instr-set base-exprs depth max-cost instr)])
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
                     [_ (enumerate-x86 instr-set arg base-exprs (sub1 depth) max-cost instr)])])
         (append (list opts) (get-arg-opts (rest args) instr-set base-exprs depth max-cost instr))))]))

(define (build-ast instr sig-expr)
  (define cost (foldr + (x86:instr-cost instr) (map cdr sig-expr)))
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
  (eq? (x86:instr-sig-ret-val sig) output-type))

;; TODO find x86-specific bad combinations
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
