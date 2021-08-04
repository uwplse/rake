#lang rosette

(require
  (only-in rosette/base/core/term @app)
  rosette/lib/destruct
  rosette/lib/synthax
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/hvx/interpreter
  rake/hvx/ast/types
  rake/hvx/ast/visitor
  rake/synthesis/lowering/util)

(provide get-hvx-swizzle-grammar)

(define grammar-lib (make-hash))

(define (get-hvx-swizzle-grammar halide-expr hvx-template output-layout swizzle-budget swizzle-node starting-vecs hvx-sub-exprs translation-history)
  (cond
    [(hash-has-key? grammar-lib (list halide-expr hvx-template swizzle-node output-layout starting-vecs hvx-sub-exprs))
      (hash-ref grammar-lib (list halide-expr hvx-template swizzle-node output-layout starting-vecs hvx-sub-exprs))]
    [else
      (define candidates (get-hvx-swizzle-grammar-gen halide-expr hvx-template swizzle-budget swizzle-node starting-vecs hvx-sub-exprs translation-history))
      (hash-set! grammar-lib (list halide-expr hvx-template swizzle-node output-layout starting-vecs hvx-sub-exprs) candidates)
      candidates]))

(define (get-vec-type elemT pair? expr)
  (cond
    [(eq? elemT 'uint1)  (hvx:type expr)]
    [(eq? elemT 'int8)   (if pair? 'i8x128x2 'i8x128)]
    [(eq? elemT 'int16)  (if pair? 'i16x64x2 'i16x64)]
    [(eq? elemT 'int32)  (if pair? 'i32x32x2 'i32x32)]
    [(eq? elemT 'uint8)  (if pair? 'u8x128x2 'u8x128)]
    [(eq? elemT 'uint16) (if pair? 'u16x64x2 'u16x64)]
    [(eq? elemT 'uint32) (if pair? 'u32x32x2 'u32x32)]))

(define (get-hvx-swizzle-grammar-gen halide-expr hvx-template swizzle-budget swizzle-node starting-vecs hvx-sub-exprs translation-history)
  ;(pretty-print starting-vecs)
  
  (define-values (target-node-id base-exprs pair?)
    (destruct swizzle-node
      [(??abstr-load id live-data buffer)
       (define buffer (??abstr-load-buffer swizzle-node))
       (define base-exprs
         (flatten
          (map
           (lambda (base-expr)
             (list
              (vread (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
              (vreadp (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))))
           (filter (lambda (vec) (eq? buffer (list-ref vec 0))) starting-vecs))))

       (define tile-w (* (halide:vec-len halide-expr) (cpp:type-bw (halide:elem-type halide-expr))))
       (define pair? (if (eq? tile-w 1024) #f #t))
       (values id base-exprs pair?)]
      [(??shuffle id lds pair?)
       (define buffers (halide:extract-live-buffers halide-expr))
       (define base-exprs
         (flatten
          (map
           (lambda (base-expr)
             (list
              (vread (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
              (vreadp (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))))
           (filter (lambda (vec) (set-member? buffers (list-ref vec 0))) starting-vecs))))       
       (values id base-exprs pair?)]
      [(??load id live-data buffer gather-tbl pair?)
       (define buffer (??load-buffer swizzle-node))
       (define base-exprs
         (flatten
          (map
           (lambda (base-expr)
             (list
              (vread (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))
              (vreadp (list-ref base-expr 0) (list-ref base-expr 1) (list-ref base-expr 2))))
           (filter (lambda (vec) (eq? buffer (list-ref vec 0))) starting-vecs))))

       (values id base-exprs pair?)]
      [(??swizzle id live-data exprs idx-table pair?)
       (define trimmed-exprs (set->list (list->set (map (lambda (e) (if (lo? e) (lo-Vuu e) (if (hi? e) (hi-Vuu e) e))) exprs))))
       (values id trimmed-exprs pair?)]))

  (define intr_expr (hvx:interpret swizzle-node))
  (define elemT (hvx:elem-type intr_expr))
  (define out-type (get-vec-type elemT pair? intr_expr))
  
  (define isa (list vcombine lo hi vinterleave vinterleave2 vinterleave4 vdeal vdeale vshuff vshuffe vshuffo vshuffoe vpacke vpacko valign))
  ;(define isa (list lo hi valign vcombine))
  
  (define grouped-base-exprs (make-hash))
  (for ([be base-exprs])
    (define beT (hvx:type (hvx:interpret be)))
    (hash-set! grouped-base-exprs beT (append (hash-ref! grouped-base-exprs beT '()) (list be))))
  (for ([(t bes) grouped-base-exprs])
    (define-symbolic* c integer?)
    ;(define beC (if (??swizzle? swizzle-node) 0 1))
    (define beC (if (??swizzle? swizzle-node) 0 0))
    (hash-set! grouped-base-exprs t (list (cons (??sub-expr bes c) beC))))

  ;(pretty-print grouped-base-exprs)
  
  (set! enumeration-database (make-hash))
  (define candidate-swizzles (time (enumerate-hvx isa out-type grouped-base-exprs 2 (min swizzle-budget 5))))

  ;(println (length candidate-swizzles))
  
  ;; Enable scalar swizzling
  (define (permute-scalars Rt)
    (destruct Rt
      [(Rt2.b v0 v1)
       (define rts (map (lambda (p) (Rt2.b (first p) (second p))) (permutations (list v0 v1))))
       (apply choose* rts)]
      [(Rt2.ub v0 v1)
       (define rts (map (lambda (p) (Rt2.ub (first p) (second p))) (permutations (list v0 v1))))
       (apply choose* rts)]
      [(Rt4.b v0 v1 v2 v3)
       (define rts (map (lambda (p) (Rt4.b (first p) (second p) (third p) (fourth p))) (permutations (list v0 v1 v2 v3))))
       (apply choose* rts)]
      [(Rt4.ub v0 v1 v2 v3)
       (define rts (map (lambda (p) (Rt4.ub (first p) (second p) (third p) (fourth p))) (permutations (list v0 v1 v2 v3))))
       (apply choose* rts)]))
  (define (swizzle-node? n)
    (destruct n
      [(??load id live-data buffer gather-tbl pair?) (if (equal? id target-node-id) #t #f)]
      [(??swizzle id live-data expr gather-tbl pair?) (if (equal? id target-node-id) #t #f)]
      [(??shuffle id lds pair?) (if (equal? id target-node-id) #t #f)]
      [_ #f]))
  (define (enable-scalar-movement node [pos -1])
    (destruct node
      [(vtmpy Vuu Rt) (if (swizzle-node? Vuu) (vtmpy Vuu (permute-scalars Rt)) node)]
      [(vtmpy-acc Vdd Vuu Rt) (if (swizzle-node? Vuu) (vtmpy-acc Vdd Vuu (permute-scalars Rt)) node)]
      [(vrmpy Vu Rt) (if (swizzle-node? Vu) (vrmpy Vu (permute-scalars Rt)) node)]
      [(vrmpy-acc Vdd Vu Rt) (if (swizzle-node? Vu) (vrmpy-acc Vdd Vu (permute-scalars Rt)) node)]
      [_ node]))
  (define (update-swizzle-nodes node [pos -1])
    (destruct node
      [(??load id live-data buffer gather-tbl pair?) (if (not (equal? id target-node-id)) (update-swizzle-data node halide-expr hvx-sub-exprs translation-history) node)]
      [(??shuffle id live-data buffer) (if (not (equal? id target-node-id)) (update-swizzle-data node halide-expr hvx-sub-exprs translation-history) node)]
      [(??swizzle id live-data expr gather-tbl pair?) (if (not (equal? id target-node-id)) (update-swizzle-data node halide-expr hvx-sub-exprs translation-history) node)]
      [(??lo/hi Vuu interleave?) (choose* (lo (vinterleave Vuu)) (hi (vinterleave Vuu)) (lo Vuu) (hi Vuu))]
      [(vmpyie/o Vu Rt) (choose* (vmpyie Vu Rt) (vmpyio Vu Rt))]
      [_ node]))
  (define updated-template (hvx:visit (hvx:visit hvx-template enable-scalar-movement) update-swizzle-nodes))

  (define tmpl-type (hvx:type (hvx:interpret hvx-template)))
  (define tmpl-etype (hvx:elem-type tmpl-type))

  ;; Replace swizzle node with candidates
  (define candidates
    (apply append
     (for/list ([candidate-swizzle candidate-swizzles])
       (define (uniquify-sub-exprs node [pos -1])
         (destruct node
           [(??sub-expr exprs c) (define-symbolic* ch integer?) (??sub-expr exprs ch)]
           [_ node]))
       
       ;; Update template: Replace target swizzle node with swizzle grammar
       (define (repl-swizzle-node-wth-candidate node [pos -1])
         (destruct node
            [(??abstr-load id live-data buffer) (hvx:visit (car candidate-swizzle) uniquify-sub-exprs)]
            [(??shuffle id lds pair?) (if (equal? id target-node-id) (hvx:visit (car candidate-swizzle) uniquify-sub-exprs) node)]
            [(??load id live-data buffer gather-tbl pair?) (if (equal? id target-node-id) (hvx:visit (car candidate-swizzle) uniquify-sub-exprs) node)]
            [(??swizzle id live-data expr gather-tbl pair?) (if (equal? id target-node-id) (hvx:visit (car candidate-swizzle) uniquify-sub-exprs) node)]
            [_ node]))
       (define c (hvx:visit-shallow updated-template repl-swizzle-node-wth-candidate))
       ;(for/list ([e (enumerate-hvx (list vinterleave vdeal) tmpl-type (list c) 1 5)])
         ;(cons (car e) (+ (cdr e) (cdr candidate-swizzle) -1)))
       (define cost (cdr candidate-swizzle))
       (cond
         [(hvx:vec-pair? tmpl-type) (list (cons c cost) (cons (vinterleave c) (+ 1 cost)))]
         [(and (< (cpp:type-bw tmpl-etype) 32) (> (cpp:type-bw tmpl-etype) 1)) (list (cons c cost) (cons (vdeal c) (+ 0.5 cost)))]
         [else (list (cons c cost))]))))
  (define sorted-candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))

  (println (length sorted-candidates))
  ;(pretty-print sorted-candidates)
  ;(exit)
  
  (define (fill-arg-grammars node [pos -1])
    (match node
      ['const (define-symbolic* c integer?) c]
      [_ node]))
  (for/list ([candidate sorted-candidates]) (cons (hvx:visit (car candidate) fill-arg-grammars) (cdr candidate))))

(define (update-swizzle-data swizzle-node halide-expr hvx-sub-exprs translation-history)
  (define (update-swizzle-node node [pos -1])
    (destruct node
      [(??load id live-data buffer gather-tbl pair?)
        ;(define-symbolic* tbl (~> integer? integer?))
        (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
        (??load id (halide:extract-buffer-reads halide-expr) buffer tbl pair?)]
      [(??shuffle id lds pair?)
        (??shuffle id
         (for/list ([ld lds])
           (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
           (??load (??load-id ld) (halide:extract-buffer-reads halide-expr) (??load-buffer ld) tbl #f))
         pair?)]
      [(??swizzle id live-data exprs gather-tbl pair?)
        ;; Abstract out common sub-expressions
        (define-values (abstr-halide-expr abstr-template _) (optimize-query halide-expr node hvx-sub-exprs (make-hash) translation-history))
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
        (??swizzle id (unwrap-reads new-data abstr-exprs) exprs tbl pair?)]
      [_ node]))
  (hvx:visit swizzle-node update-swizzle-node))

(define enumeration-database (make-hash))

(define (enumerate-hvx instr-set output-type base-exprs depth max-cost [parent-instr (void)])
  (define query (list instr-set output-type base-exprs depth max-cost parent-instr))
  (cond
    ;; Have we enumerated this tree before?
    [(hash-has-key? enumeration-database query) (hash-ref enumeration-database query)]

    ;; Recursive base case
    [(<= depth 0)
     (cond
       [(or (eq? parent-instr lo) (eq? parent-instr hi))
        (filter-map
         (lambda (se)
           (define x (car se))
           (define y (cdr se))
           (cond
             [(??sub-expr? x)
               (let ([filtered-exprs (filter (lambda (e) (not (vreadp? e))) (??sub-expr-exprs x))])
                 (if (empty? filtered-exprs) #f (cons (??sub-expr filtered-exprs (??sub-expr-c x)) y)))]
             [else se]))
         (hash-ref! base-exprs output-type '()))]
       [else
        (hash-ref! base-exprs output-type '())])]

    ;; Enumerate recursively
    [else
     (define candidates
       (let ([sub-cands (enumerate-hvx instr-set output-type base-exprs (sub1 depth) max-cost parent-instr)])
         (let ([c-build-instr-exprs (curryr build-instr-exprs instr-set output-type base-exprs depth max-cost)])
           (foldr append sub-cands (map c-build-instr-exprs (filter (curry keep? parent-instr) instr-set))))))

     (define filtered-candidates (set->list (list->set (filter (lambda (e) (<= (cdr e) max-cost)) candidates))))
     (hash-set! enumeration-database query filtered-candidates)
     filtered-candidates]))

(define (build-instr-exprs instr instr-set output-type base-exprs depth max-cost)
  (let ([c-build-sig-exprs (curryr build-sig-exprs instr-set base-exprs depth max-cost instr)])
    (foldr append '() (map c-build-sig-exprs (filter (curry out-eq? output-type) (hvx:instr-forms instr))))))

(define (build-sig-exprs sig instr-set base-exprs depth max-cost instr)
  (let ([sig-exprs
    (let ([arg-opts (get-arg-opts (instr-sig-args sig) instr-set base-exprs depth max-cost instr)])
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
                     [_ (enumerate-hvx instr-set arg base-exprs (sub1 depth) max-cost instr)])])
         (append (list opts) (get-arg-opts (rest args) instr-set base-exprs depth max-cost instr))))]))

(define (build-ast instr sig-expr)
  (define cost (foldr + (instr-cost instr) (map cdr sig-expr)))
  (define expr (apply instr (map car sig-expr)))
  (cons expr cost))

(define (instr-cost instr)
  (cond
    [(eq? instr lo) 0.01]
    [(eq? instr hi) 0.01]
    [(eq? instr vcombine) 0.2]
    [(eq? instr valign) 0.2]
    [(eq? instr vdeal) 0.95]
    [(eq? instr vdeale) 0.95]
    [(eq? instr vpacke) 0.95]
    [(eq? instr vpacko) 0.95]
    [(eq? instr vshuff) 0.95]
    [(eq? instr vshuffo) 0.95]
    [(eq? instr vshuffe) 0.95]
    [(eq? instr vror) 0.95]
    [(eq? instr vshuffoe) 1]
    [(eq? instr vinterleave) 1]
    [(eq? instr vinterleave2) 1]
    [(eq? instr vinterleave4) 2]
    [else 1]))

(define (out-eq? output-type sig)
  (eq? (instr-sig-ret-val sig) output-type))

(define (keep? parent-instr child-instr)
  (not
   (or
    (eq? parent-instr child-instr)
    (and (eq? parent-instr lo) (eq? child-instr vcombine))
    (and (eq? parent-instr hi) (eq? child-instr vcombine))
    (and (eq? parent-instr lo) (eq? child-instr vreadp))
    (and (eq? parent-instr hi) (eq? child-instr vreadp))
    (and (eq? parent-instr vshuff) (eq? child-instr vdeal))
    (and (eq? parent-instr vdeal) (eq? child-instr vshuff))
    (and (eq? parent-instr vinterleave) (eq? child-instr vinterleave2))
    (and (eq? parent-instr vinterleave2) (eq? child-instr vinterleave)))))

;;;;;;;;;;;;;;;;;;;;;; Legacy Implementation

;(define (skip? parent-instr child-instr)
;  (or
;   (and (eq? lo parent-instr) (eq? vcombine child-instr))
;   (and (eq? hi parent-instr) (eq? vcombine child-instr))
;   (and (eq? lo parent-instr) (eq? vreadp child-instr))
;   (and (eq? hi parent-instr) (eq? vreadp child-instr))
;   (and (eq? vshuff parent-instr) (eq? vdeal child-instr))
;   (and (eq? vdeal parent-instr) (eq? vshuff child-instr))
;   (and (eq? vror parent-instr) (eq? vror child-instr))
;   (and (eq? valign parent-instr) (eq? valign child-instr))
;   (and (eq? vinterleave parent-instr) (eq? vinterleave child-instr))
;   (and (eq? vtranspose parent-instr) (eq? vtranspose child-instr))
;   (and (eq? vshuffoe parent-instr) (eq? vshuffoe child-instr))))
;
;
;(define (enumerate-hvx instr-set output-type base-exprs depth max-cost [parent-instr (void)])
;  (define query (list instr-set output-type base-exprs depth parent-instr))
;  (cond
;    ;; Have we enumerated this tree before?
;    [(hash-has-key? enumeration-database query) (hash-ref enumeration-database query)]
;
;    ;; Recursive base case
;    [(<= depth 0)
;     (define res (filter (lambda (expr) (eq? output-type (hvx:type (hvx:interpret expr)))) base-exprs))
;     (when (or (eq? parent-instr lo) (eq? parent-instr hi))
;        (set! res (filter (lambda (expr) (not (vreadp? expr))) res)))
;     (list->set (map (lambda (expr) (cons expr 1)) res))]
;
;    ;; Enumerate recursively
;    [else
;     (define candidates (enumerate-hvx instr-set output-type base-exprs (sub1 depth) max-cost parent-instr))
;     (for ([instr instr-set])
;       (define instr-cost (swizzle-instr-cost instr))
;       (when (not (skip? parent-instr instr))
;         (for ([sig (hvx:instr-forms instr)])
;           (when (eq? output-type (instr-sig-ret-val sig))
;             (define arg-opts (list))
;             (for ([arg (instr-sig-args sig)])
;               (define opts (match arg
;                              [#t (list (cons #t 0))]
;                              [#f (list (cons #f 0))]
;                              ['const (list (cons (??) 0))]
;                              [_ (set->list (enumerate-hvx instr-set arg base-exprs (sub1 depth) max-cost instr))]))
;               (set! arg-opts (append arg-opts (list opts))))
;             (define sig-exprs
;               (list->set
;                (match (length arg-opts)
;                  [1 (cartesian-product (list (cons instr instr-cost)) (first arg-opts))]
;                  [2 (cartesian-product (list (cons instr instr-cost)) (first arg-opts) (second arg-opts))]
;                  [3 (cartesian-product (list (cons instr instr-cost)) (first arg-opts) (second arg-opts) (third arg-opts))]
;                  [4 (cartesian-product (list (cons instr instr-cost)) (first arg-opts) (second arg-opts) (third arg-opts) (fourth arg-opts))]
;                  [5 (cartesian-product (list (cons instr instr-cost)) (first arg-opts) (second arg-opts) (third arg-opts) (fourth arg-opts) (fifth arg-opts))]
;                  [6 (cartesian-product (list (cons instr instr-cost)) (first arg-opts) (second arg-opts) (third arg-opts) (fourth arg-opts) (fifth arg-opts) (sixth arg-opts))]
;                  [_ (error "NYI: enumeration instrs with the following number of args:" (length arg-opts))])))
;             (set! sig-exprs (for/set ([sig-expr sig-exprs])
;                               (define cost (for/fold ([sum 0]) ([sub-expr sig-expr]) (+ sum (cdr sub-expr))))
;                               (match (length sig-expr)
;                                  [2 (cons ((car (list-ref sig-expr 0)) (car (list-ref sig-expr 1))) cost)]
;                                  [3 (cons ((car (list-ref sig-expr 0)) (car (list-ref sig-expr 1)) (car (list-ref sig-expr 2))) cost)]
;                                  [4 (cons ((car (list-ref sig-expr 0)) (car (list-ref sig-expr 1)) (car (list-ref sig-expr 2)) (car (list-ref sig-expr 3))) cost)]
;                                  [5 (cons ((car (list-ref sig-expr 0)) (car (list-ref sig-expr 1)) (car (list-ref sig-expr 2)) (car (list-ref sig-expr 3)) (car (list-ref sig-expr 4))) cost)]
;                                  [6 (cons ((car (list-ref sig-expr 0)) (car (list-ref sig-expr 1)) (car (list-ref sig-expr 2)) (car (list-ref sig-expr 3)) (car (list-ref sig-expr 4)) (car (list-ref sig-expr 5))) cost)]
;                                  [_ (error "NYI. Sig-expr of size" (length sig-expr))])))
;             (set! candidates (set-union candidates sig-exprs))))))
;     (define filtered-candidates (list->set (filter (lambda (e) (<= (cdr e) max-cost)) (set->list candidates))))
;     (hash-set! enumeration-database query filtered-candidates)
;     filtered-candidates]))
;
;(define (swizzle-instr-cost instr)
;  (cond
;    [(eq? instr lo) 0]
;    [(eq? instr hi) 0]
;    [(eq? vinterleave4 hi) 2]
;    [else 1]))