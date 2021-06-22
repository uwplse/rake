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

(define (get-hvx-swizzle-grammar halide-expr hvx-template swizzle-node starting-vecs hvx-sub-exprs translation-history)
  (cond
    [(hash-has-key? grammar-lib (list halide-expr hvx-template swizzle-node))
      (hash-ref grammar-lib (list halide-expr hvx-template swizzle-node))]
    [else
      (define candidates (get-hvx-swizzle-grammar-gen halide-expr hvx-template swizzle-node starting-vecs hvx-sub-exprs translation-history))
      (hash-set! grammar-lib (list halide-expr hvx-template swizzle-node) candidates)
      candidates]))

(define (get-vec-type elemT pair?)
  (cond
    [(eq? elemT 'int8)   (if pair? 'i8x128x2 'i8x128)]
    [(eq? elemT 'int16)  (if pair? 'i16x64x2 'i16x64)]
    [(eq? elemT 'int32)  (if pair? 'i32x32x2 'i32x32)]
    [(eq? elemT 'uint8)  (if pair? 'u8x128x2 'u8x128)]
    [(eq? elemT 'uint16) (if pair? 'u16x64x2 'u16x64)]
    [(eq? elemT 'uint32) (if pair? 'u32x32x2 'u32x32)]))

(define (get-hvx-swizzle-grammar-gen halide-expr hvx-template swizzle-node starting-vecs hvx-sub-exprs translation-history)
  ;(pretty-print starting-vecs)
  
  (define-values (target-node-id base-exprs pair?)
    (destruct swizzle-node
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

  (define elemT (hvx-elem-type (interpret-hvx swizzle-node)))
  (define out-type (get-vec-type elemT pair?))

  ;(define isa (list lo hi vinterleave vshuff vshuffe vshuffo vshuffoe vcombine vdeal vdeale valign vror vpacke vpacko))
  (define isa (list lo hi vinterleave vinterleave4))

  (define candidate-swizzles (enumerate-hvx isa out-type base-exprs 2 3))

  ;(pretty-print candidate-swizzles)
  
  (define sorted-swizzles (sort (set->list candidate-swizzles) (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))

  ;; Enable scalar swizzling
  (define (permute-scalars Rt)
    (destruct Rt
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
      [_ #f]))
  (define (enable-scalar-movement node [pos -1])
    (destruct node
      [(vrmpy Vu Rt) (if (swizzle-node? Vu) (vrmpy Vu (permute-scalars Rt)) node)]
      [(vrmpy-acc Vdd Vu Rt) (if (swizzle-node? Vu) (vrmpy-acc Vdd Vu (permute-scalars Rt)) node)]
      [_ node]))
  (define updated-template (visit-hvx hvx-template enable-scalar-movement))

  ;; Replace swizzle node with candidates
  (define candidates
    (for/list ([candidate-swizzle sorted-swizzles])
      ;; Update template: Replace target swizzle node with swizzle grammar
      (define (repl-swizzle-node-wth-candidate node [pos -1])
        (destruct node
          [(??load id live-data buffer gather-tbl pair?) (if (equal? id target-node-id) (car candidate-swizzle) (update-swizzle-data node halide-expr hvx-sub-exprs translation-history))]
          [(??swizzle id live-data expr gather-tbl pair?) (if (equal? id target-node-id) (car candidate-swizzle) (update-swizzle-data node halide-expr hvx-sub-exprs translation-history))]
          [_ node]))
      (define c (visit-hvx updated-template repl-swizzle-node-wth-candidate))
      (define c2 (visit-hvx updated-template repl-swizzle-node-wth-candidate))
      ;(pretty-print (vinterleave-2 c c))
      (choose c (vinterleave c))))

  (define (fill-arg-grammars node [pos -1])
    (match node
      ['const (??)]
      [_ node]))
  (for/list ([candidate candidates]) (visit-hvx candidate fill-arg-grammars)))

(define (update-swizzle-data swizzle-node halide-expr hvx-sub-exprs translation-history)
  (define (update-swizzle-node node [pos -1])
    (destruct node
      [(??load id live-data buffer gather-tbl pair?)
        ;(define-symbolic* tbl (~> integer? integer?))
        (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
        (??load id (extract-buffer-reads-halide halide-expr) buffer tbl pair?)]
      [(??swizzle id live-data exprs gather-tbl pair?)
        ;; Abstract out common sub-expressions
        (define-values (abstr-halide-expr abstr-template _) (optimize-query halide-expr node hvx-sub-exprs (make-hash) translation-history))
        ;; Extract the reads from this expression, essentially representing each "read" from the sub-expressions as a symbolic constant
        (define new-data (extract-buffer-reads-halide abstr-halide-expr))
        ;; Now we replace the symbolic constants with the original expressions they represent. This gives us the set of sub-expression accesses
        ;; to consider. There is certainly a cleaner way to do this, but the following way re-uses existing code.
        (define abstr-exprs (make-hash))
        (define (extract-abstr-exprs node)
          (cond
            [(abstr-halide-expr? node) (hash-set! abstr-exprs (buffer-data (abstr-halide-expr-abstr-vals node)) (abstr-halide-expr-orig-expr node)) node]
            [else node]))
        (visit-halide abstr-halide-expr extract-abstr-exprs)
        (define (unwrap-reads data exprs)
          (for/list ([lane-reads data])
            (for/list ([lane-read lane-reads])
              (match (eval lane-read)
                [(expression (== @app) xs ...)
                 (cond
                   [(hash-has-key? abstr-exprs (list-ref xs 0)) ((interpret-halide (hash-ref abstr-exprs (list-ref xs 0))) (list-ref xs 1))]
                   [else lane-read])]
                [_ (error "Extracted read from the Halide expression does not match any expected patterns.")]))))
        ;; Finally create the swizzle node
        ;(define-symbolic* tbl (~> integer? integer?))
        (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
        (??swizzle id (unwrap-reads new-data abstr-exprs) exprs tbl pair?)]
      [_ node]))
  (visit-hvx swizzle-node update-swizzle-node))

(define (skip? parent-instr child-instr)
  (or
   (and (eq? lo parent-instr) (eq? vcombine child-instr))
   (and (eq? hi parent-instr) (eq? vcombine child-instr))
   (and (eq? lo parent-instr) (eq? vreadp child-instr))
   (and (eq? hi parent-instr) (eq? vreadp child-instr))
   (and (eq? vshuff parent-instr) (eq? vdeal child-instr))
   (and (eq? vdeal parent-instr) (eq? vshuff child-instr))
   (and (eq? vror parent-instr) (eq? vror child-instr))
   (and (eq? valign parent-instr) (eq? valign child-instr))
   (and (eq? vinterleave parent-instr) (eq? vinterleave child-instr))
   (and (eq? vtranspose parent-instr) (eq? vtranspose child-instr))
   (and (eq? vshuffoe parent-instr) (eq? vshuffoe child-instr))))

(define enumeration-database (make-hash))

(define (enumerate-hvx instr-set output-type base-exprs depth max-cost [parent-instr (void)])
  (define query (list instr-set output-type base-exprs depth parent-instr))
  (cond
    ;; Have we enumerated this tree before?
    [(hash-has-key? enumeration-database query) (hash-ref enumeration-database query)]

    ;; Recursive base case
    [(<= depth 0)
     (define res (filter (lambda (expr) (eq? output-type (hvx-type (interpret-hvx expr)))) base-exprs))
     (when (or (eq? parent-instr lo) (eq? parent-instr hi))
        (set! res (filter (lambda (expr) (not (vreadp? expr))) res)))
     (list->set (map (lambda (expr) (cons expr 1)) res))]

    ;; Enumerate recursively
    [else
     (define candidates (enumerate-hvx instr-set output-type base-exprs (sub1 depth) max-cost parent-instr))
     (for ([instr instr-set])
       (when (not (skip? parent-instr instr))
         (for ([sig (instr-forms instr)])
           (when (eq? output-type (instr-sig-ret-val sig))
             (define arg-opts (list))
             (for ([arg (instr-sig-args sig)])
               (define opts (match arg
                              [#t (list (cons #t 0))]
                              [#f (list (cons #f 0))]
                              ['const (list (cons (??) 0))]
                              [_ (set->list (enumerate-hvx instr-set arg base-exprs (sub1 depth) max-cost instr))]))
               (set! arg-opts (append arg-opts (list opts))))
             (define sig-exprs
               (list->set
                (match (length arg-opts)
                  [1 (cartesian-product (list (cons instr 1)) (first arg-opts))]
                  [2 (cartesian-product (list (cons instr 1)) (first arg-opts) (second arg-opts))]
                  [3 (cartesian-product (list (cons instr 1)) (first arg-opts) (second arg-opts) (third arg-opts))]
                  [4 (cartesian-product (list (cons instr 1)) (first arg-opts) (second arg-opts) (third arg-opts) (fourth arg-opts))]
                  [5 (cartesian-product (list (cons instr 1)) (first arg-opts) (second arg-opts) (third arg-opts) (fourth arg-opts) (fifth arg-opts))]
                  [6 (cartesian-product (list (cons instr 1)) (first arg-opts) (second arg-opts) (third arg-opts) (fourth arg-opts) (fifth arg-opts) (sixth arg-opts))]
                  [_ (error "NYI: enumeration instrs with the following number of args:" (length arg-opts))])))
             (set! sig-exprs (for/set ([sig-expr sig-exprs])
                               (define cost (for/fold ([sum 0]) ([sub-expr sig-expr]) (+ sum (cdr sub-expr))))
                               (match (length sig-expr)
                                  [2 (cons ((car (list-ref sig-expr 0)) (car (list-ref sig-expr 1))) cost)]
                                  [3 (cons ((car (list-ref sig-expr 0)) (car (list-ref sig-expr 1)) (car (list-ref sig-expr 2))) cost)]
                                  [4 (cons ((car (list-ref sig-expr 0)) (car (list-ref sig-expr 1)) (car (list-ref sig-expr 2)) (car (list-ref sig-expr 3))) cost)]
                                  [5 (cons ((car (list-ref sig-expr 0)) (car (list-ref sig-expr 1)) (car (list-ref sig-expr 2)) (car (list-ref sig-expr 3)) (car (list-ref sig-expr 4))) cost)]
                                  [6 (cons ((car (list-ref sig-expr 0)) (car (list-ref sig-expr 1)) (car (list-ref sig-expr 2)) (car (list-ref sig-expr 3)) (car (list-ref sig-expr 4)) (car (list-ref sig-expr 5))) cost)]
                                  [_ (error "NYI. Sig-expr of size" (length sig-expr))])))
             (set! candidates (set-union candidates sig-exprs))))))
     (define filtered-candidates (list->set (filter (lambda (e) (<= (cdr e) max-cost)) (set->list candidates))))
     (hash-set! enumeration-database query filtered-candidates)
     filtered-candidates]))