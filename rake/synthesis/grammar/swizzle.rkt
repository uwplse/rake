#lang rosette

(require rosette/lib/match)
(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require rake/util)
(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)
(require rake/hvx/cost-model)
(require rake/hvx/interpreter)

(require rake/synthesis/ir)

(define (enumerate-hvx-swizzle-exprs type instr-set vecs)
  ;; Enumerate all expressions
  (define candidates (set->list (enumerate-sw type instr-set vecs 2)))
  
  ;; Group into equivalance classes by their cost
  (define ranked-candidates (make-hash))
  (for ([candidate-expr candidates])
    (define candidate-expr-cost (basic-expr-cost candidate-expr))
    (when (not (hash-has-key? ranked-candidates candidate-expr-cost))
      (hash-set! ranked-candidates candidate-expr-cost (set)))
    (hash-set! ranked-candidates candidate-expr-cost (set-add (hash-ref ranked-candidates candidate-expr-cost) candidate-expr)))
  
  ranked-candidates)

(define (enumerate-hvx-gather-exprs type instr-set load-idxs max-cost)
  ;; Enumerate all expressions
  (define candidates (set->list (enumerate type instr-set load-idxs max-cost 3)))
  
  ;; Fix vreads and vreadps
  (define fixed-candidates
    (for/list ([candidate-expr candidates])
      (define (fix-reads instr [arg-pos -1])
        (match instr
          [(??vread bufs idxs)
           (define reads (list))
           (for ([buf bufs])
             (for ([idx (hash-ref idxs buf)])
               (set! reads (set-add reads (vread buf (car idx) (second idx))))))
           (apply choose* reads)]
          [(??vreadp bufs idxs)
           (define reads (list))
           (for ([buf bufs])
             (for ([idx (hash-ref idxs buf)])
               (set! reads (set-add reads (vreadp buf (car idx) (second idx))))))
           (apply choose* reads)]
          [_ instr]))
      (visit-hvx candidate-expr fix-reads)))
  (set! candidates fixed-candidates)
  
  ;; Group into equivalance classes by their cost
  (define ranked-candidates (make-hash))
  (for ([candidate-expr candidates])
    (define candidate-expr-cost (basic-expr-cost candidate-expr))
    (when (not (hash-has-key? ranked-candidates candidate-expr-cost))
      (hash-set! ranked-candidates candidate-expr-cost (set)))
    (hash-set! ranked-candidates candidate-expr-cost (set-add (hash-ref ranked-candidates candidate-expr-cost) candidate-expr)))
  
  ranked-candidates)
  
  ;; Remove semantic duplicates (order: low-cost to high-cost)
;  (define pruned-ranked-candidates (make-hash))
;  (define unique-expr-set (mutable-set))
;  
;  (for ([swizzle-cost (sort (filter (lambda (v) (<= v max-cost)) (hash-keys ranked-candidates)) <)])
;    (define expr-set (hash-ref ranked-candidates swizzle-cost))
;    (define pruned-expr-set (mutable-set))
;    
;    ;; Compare each new expr with all previously seen expressions in the unique expr-set
;    (for ([new-expr expr-set])
;      (define duplicate?
;        (time
;         (for/or ([old-expr unique-expr-set])
;           (swizzle-eq? new-expr old-expr type))))
;      (when (not duplicate?)
;        (set-add! unique-expr-set new-expr)
;        (set-add! pruned-expr-set new-expr)))
;
;    (hash-set! pruned-ranked-candidates swizzle-cost pruned-expr-set))
;
;  (println (set-count unique-expr-set))
;  
;  pruned-ranked-candidates)

(define database-sw (make-hash))

(define (enumerate-sw type instr-set vecs depth)
  (define key (list type instr-set vecs depth))
  (cond
    [(hash-has-key? database-sw key) (hash-ref database-sw key)]
    [else
     (define res
       (cond
         ;; Recursive base case
         [(<= depth 0)
          (define vec-opts (filter (lambda (v) (eq? type (hvx-type (interpret-hvx v)))) vecs))
          (cond
            [(empty? vec-opts) (set)]
            [else (list->set vec-opts)])]
         [else
          (define candidates (set))
          (set! candidates (set-union candidates (enumerate-sw type instr-set vecs (sub1 depth))))
          (for ([instr instr-set])
            (for ([sig (instr-forms instr)])
              (when (eq? type (instr-sig-ret-val sig))
                (define arg-opts (list))
                (for ([arg (instr-sig-args sig)])
                  (define opts (match arg
                                 [#t (list #t)]
                                 [#f (list #f)]
                                 ['const (list (??))]
                                 [_ (set->list (enumerate-sw arg instr-set vecs (sub1 depth)))]))
                  (set! arg-opts (append arg-opts (list opts))))
                (define sig-exprs
                  (list->set
                   (match (length arg-opts)
                     [1 (cartesian-product (list instr) (first arg-opts))]
                     [2 (cartesian-product (list instr) (first arg-opts) (second arg-opts))]
                     [3 (cartesian-product (list instr) (first arg-opts) (second arg-opts) (third arg-opts))]
                     [_ (error "NYI: enumeration instrs with the following number of args:" (length arg-opts))])))
                (set! sig-exprs (for/set ([sig-expr sig-exprs]) (match (length sig-expr)
                                                                  [2 ((list-ref sig-expr 0) (list-ref sig-expr 1))]
                                                                  [3 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2))]
                                                                  [4 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2) (list-ref sig-expr 3))]
                                                                  [_ (error "NYI. Sig-expr of size" (length sig-expr))])))
                (set! candidates (set-union candidates sig-exprs)))))
          candidates]))
     res]))

(define database (make-hash))

(define (enumerate type instr-set load-idxs max-cost depth)
  (define key (list type instr-set load-idxs depth))
  (cond
    [(hash-has-key? database key) (hash-ref database key)]
    [else
     (define res
       (cond
         ;; Recursive base case
         [(<= depth 0)
          (define gen-pair? (hvx-pair? type))
          (define elem-t (elem-type type))
          (define buf-opts (filter (lambda (v) (eq? elem-t (var-type v))) (hash-keys load-idxs)))
          (cond
            [(empty? buf-opts) (set)]
            [else (if gen-pair? (set (??vreadp buf-opts load-idxs)) (set (??vread buf-opts load-idxs)))])]
         [else
          (define candidates (set))
          (set! candidates (set-union candidates (enumerate type instr-set load-idxs max-cost (sub1 depth))))
          (for ([instr instr-set])
            (for ([sig (instr-forms instr)])
              (when (eq? type (instr-sig-ret-val sig))
                (define arg-opts (list))
                (for ([arg (instr-sig-args sig)])
                  (define opts (match arg
                                 [#t (list #t)]
                                 [#f (list #f)]
                                 ['const (list (??))]
                                 [_ (set->list (enumerate arg instr-set load-idxs max-cost (sub1 depth)))]))
                  (set! arg-opts (append arg-opts (list opts))))
                (define sig-exprs
                  (list->set
                   (match (length arg-opts)
                     [1 (cartesian-product (list instr) (first arg-opts))]
                     [2 (cartesian-product (list instr) (first arg-opts) (second arg-opts))]
                     [3 (cartesian-product (list instr) (first arg-opts) (second arg-opts) (third arg-opts))]
                     [_ (error "NYI: enumeration instrs with the following number of args:" (length arg-opts))])))
                (set! sig-exprs (for/set ([sig-expr sig-exprs]) (match (length sig-expr)
                                                                  [2 ((list-ref sig-expr 0) (list-ref sig-expr 1))]
                                                                  [3 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2))]
                                                                  [4 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2) (list-ref sig-expr 3))]
                                                                  [_ (error "NYI. Sig-expr of size" (length sig-expr))])))
                (set! candidates (set-union candidates sig-exprs)))))
          candidates]))
     (define filtered-res (list->set (filter (lambda (e) (<= (basic-expr-cost e) max-cost)) (set->list res))))
     (hash-set! database key filtered-res)
     filtered-res]))

(define (swizzle-eq? expr1 expr2 type)
  (define intr-expr1 (interpret-hvx expr1))
  (define intr-expr2 (interpret-hvx expr2))

  (define symbolics-expr1 (get-int-symbolics intr-expr1 type))
  (define symbolics-expr2 (get-int-symbolics intr-expr2 type))

  (cond
    [(eq? (length symbolics-expr1) (length symbolics-expr2)) 
     (clear-vc!)
     (for/or ([permuted-symbolics-expr2 (permutations symbolics-expr2)])
       (define sol
         ;(time
          (verify
           (assert  
            (=>
             (eq? symbolics-expr1 permuted-symbolics-expr2)
             (eq-symbolic-vecs? intr-expr1 intr-expr2)))));)
       (if (unsat? sol) #t #f))]
    [else #f]))

(define (get-int-symbolics vec-expr type)
  (define elem-cnt (num-elems-hvx vec-expr))
  (filter
   integer?
   (set->list
    (cond
      [(hvx-pair? type)
       (define vec-size (quotient elem-cnt 2))
       (for/fold ([syms (set)]) ([i (range elem-cnt)])
         (if (< i vec-size)
             (set-union syms (list->set (symbolics (v0-elem-hvx vec-expr i))))
             (set-union syms (list->set (symbolics (v1-elem-hvx vec-expr (- i vec-size)))))))]
      [else
       (define vec-size (quotient elem-cnt 2))
       (for/fold ([syms (set)]) ([i (range elem-cnt)])
         (set-union syms (list->set (symbolics (elem-hvx vec-expr i)))))]))))

(define (eq-symbolic-vecs? vec0 vec1 type)
  (define elem-cnt (num-elems-hvx vec0))
  (cond
    [(hvx-pair? type)
     (define vec-size (quotient elem-cnt 2))
     (for/fold ([res #t]) ([i elem-cnt])
       (and res (if (< i vec-size)
                    (eq? (v0-elem-hvx vec0 i) (v0-elem-hvx vec1 i))
                    (eq? (v0-elem-hvx vec0 (- i vec-size)) (v0-elem-hvx vec1 (- i vec-size))))))]
    [else
     (for/fold ([res #t]) ([i elem-cnt])
       (and res (eq? (elem-hvx vec0 i) (elem-hvx vec1 i))))]))

;(define-symbolic input (~> integer? (bitvector 8)))
;(define-symbolic scalar_indices (~> integer? integer?))
;(init-var-types (make-hash (list (cons input 'uint8))))
;(define candidates (enumerate-hvx-swizzle-exprs 'u8x128 (list lo hi vcombine vshuff vshuffe vshuffo vshuffoe vdeal vdeale valign vror vtranspose vpacke vpacko vunpack) (make-hash (list (cons input (list 0 1 2)))) 3))
;(define candidates2 (enumerate-hvx-swizzle-exprs 'u8x128x2 (list lo hi vcombine vshuff vshuffe vshuffo vshuffoe vdeal vdeale valign vror vtranspose vpacke vpacko vunpack) (make-hash (list (cons input (list 0 1 2)))) 3))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define align-cnt 0)
(define ror-cnt 0)

(define curr-instr-bnd 0)
(define max-instr-bnd 3)

(define (instr-bnd-exceeded?) (> curr-instr-bnd max-instr-bnd))
(define (get-instr-bnd) curr-instr-bnd)
(define (reset-instr-bnd) (set! curr-instr-bnd 1))
(define (incr-instr-bnd) (set! curr-instr-bnd (add1 curr-instr-bnd)))

(define (vecp? expr)
  (cond
    [(vreadp? expr) #t]
    [(vcombine? expr) #t]
    [(vshuffoe? expr) #t]
    [(vread? expr) #f]
    [(lo? expr) #f]
    [(hi? expr) #f]
    [(vshuffe? expr) #f]
    [(vshuffo? expr) #f]
    [(valign? expr) #f]
    [(vlalign? expr) #f]
    [(vror? expr) #f]
    [(vdeal? expr) #f]
    [(vdeale? expr) #f]
    [(vshuff? expr) #f]

    [(vadd-w-acc? expr) #t]))

(define (vec? expr)
  (not (vecp? expr)))

(define (??hvx-swizzle-instr registers [gen-pairs-only #f])
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))

  (define instrs (list))

  (when (and (not gen-pairs-only) (vecp? t0))
    (set! instrs (cons (lo t0) instrs))
    (set! instrs (cons (hi t0) instrs)))
  
  (when (and (not gen-pairs-only) (vec? t0))
    (set! instrs (cons (vdeal t0) instrs))
    (set! instrs (cons (vshuff t0) instrs))
    (when (and gen-pairs-only (< ror-cnt 2))
      (set! instrs (cons (vror t0 (??)) instrs))))

  (when (and (vec? t0) (vec? t1))
    (set! instrs (cons (vcombine t0 t1) instrs))
    (set! instrs (cons (vshuffoe t0 t1) instrs))
    (set! instrs (cons (vtranspose t0 t1 1) instrs)))

  (when (vecp? t0)
    (set! instrs (cons (vcombine (hi t0) (lo t0)) instrs))
    (set! instrs (cons (vshuffoe (hi t0) (lo t0)) instrs))
    (set! instrs (cons (vtranspose (hi t0) (lo t0) 1) instrs)))

  (define out (if (empty? instrs) void (apply choose* instrs)))

  (when (vror? out)
    (set! ror-cnt (add1 ror-cnt)))
  
  out)

;; Swizzle expression in HVX ISA
(define (??hvx-swizzle-expr vec [gen-pair? #f])
  (set! ror-cnt 0)
  
  (define r0 vec)
  (define r1 (??hvx-swizzle-instr (list r0)))
  (define r2 (??hvx-swizzle-instr (list r0 r1)))
  (define r3 (??hvx-swizzle-instr (list r0 r1 r2)))
  (define r4 (??hvx-swizzle-instr (list r0 r1 r2 r3)))
  (cond
    [(eq? curr-instr-bnd 1) r0]
    [(eq? curr-instr-bnd 2) (??hvx-swizzle-instr (list r0) #t)]
    [(eq? curr-instr-bnd 3) (??hvx-swizzle-instr (list r0 r1) #t)]
    [(eq? curr-instr-bnd 4) (??hvx-swizzle-instr (list r0 r1 r2) #t)]
    [else (??hvx-swizzle-instr (list r0 r1 r2 r3) #t)]))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (??vec-load load-idxs)
  (define buf (apply choose* (hash-keys load-idxs)))
  (define idx (apply choose* (hash-ref load-idxs buf)))
  (vread buf idx))

(define (??vecp-load load-idxs)
  (define buf (apply choose* (hash-keys load-idxs)))
  (define idx (apply choose* (hash-ref load-idxs buf)))
  (vreadp buf idx))

(define (??dyn-load load-idxs)
  (define buf (apply choose* (hash-keys load-idxs)))
  (define idx (apply choose* (hash-ref load-idxs buf)))
  (choose*
   (vread buf idx)
   (vreadp buf idx)))

(define (??hvx-gather-instr registers [mem-read void])
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))

  (define instrs (list))

  (when (not (void? mem-read))
    (set! instrs (cons mem-read instrs)))
  
  (when (vec? t0)
    (when (< ror-cnt 2)
      (set! instrs (cons (vror t0 (??)) instrs)))
    (set! instrs (cons (vdeal t0) instrs))
    (set! instrs (cons (vshuff t0) instrs)))

  (when (vecp? t0)
    (set! instrs (cons (lo t0) instrs))
    (set! instrs (cons (hi t0) instrs)))

  (when (and (vec? t0) (vec? t1))
    (set! instrs (cons (vshuffe t0 t1) instrs))
    (set! instrs (cons (vshuffo t0 t1) instrs))
    (set! instrs (cons (vcombine t0 t1) instrs))
    (set! instrs (cons (vshuffoe t0 t1) instrs))
    (set! instrs (cons (vtranspose t0 t1 1) instrs))
    (when (< align-cnt 2)
      (set! instrs (cons (valign t0 t1 (??)) instrs)))
    (set! instrs (cons (vdeale t0 t1) instrs)))
  
  (define out (apply choose* instrs))

  (when (vror? out)
    (set! ror-cnt (add1 ror-cnt)))
  (when (or (valign? out) (vlalign? out))
    (set! align-cnt (add1 align-cnt)))

  out)

;  (set! instrs (cons mem-read instrs))
;  (set! instrs (cons (lo t0) instrs))
;  (set! instrs (cons (hi t0) instrs))
;
;  ;; ALU Single
;  (set! instrs (cons (vshuffe t0 t1) instrs))
;  (set! instrs (cons (vshuffo t0 t1) instrs))
;
;  ;; ALU Double
;  (set! instrs (cons (vcombine t0 t1) instrs))
;  (set! instrs (cons (vshuffoe t0 t1) instrs))
;
;  ;; Permute
;  (when (< align-cnt 2)
;    (set! instrs (cons (valign t0 t1 (??)) instrs)))
;  (when (< align-cnt 2)
;    (set! instrs (cons (vlalign t0 t1 (??)) instrs)))
;  (when (< ror-cnt 2)
;    (set! instrs (cons (vror t0 (??)) instrs)))
;  (set! instrs (cons (vdeal t0) instrs))
;  (set! instrs (cons (vdeale t0 t1) instrs))
;  (set! instrs (cons (vshuff t0) instrs))

;  (when (not (vcombine? t0))
;    (begin
;      (set! instrs (cons (hi t0) instrs))
;      (set! instrs (cons (lo t0) instrs))))
  
;  (choose*
;   mem-read
;   (lo t0)
;   (hi t0)
;   
;   ;; ALU Single
;   (vshuffe t0 t1)
;   (vshuffo t0 t1)
;
;   ;; ALU Double
;   (vcombine t0 t1)
;   (vshuffoe t0 t1)
;
;   ;; Permute
;   ;(valign t0 t1 (??))
;  ; (vlalign t0 t1 (??))
;   (vror t0 (??))
;   (vdeal t0)
;   (vdeale t0 t1)
;   (vshuff t0)
;   
;   ;; Permute-shift
;   ;(vdeal t0 t1 c0)
;   ;(vshuff t0 t1 c0)
;   )

;; Swizzle expression in HVX ISA
(define (??hvx-gather-expr vec-loads [gen-pair? #f])
  (define load-idxs (make-hash))
  (for ([vec-load vec-loads])
    (define key (car vec-load))
    (define val (cdr vec-load))
    (if
     (hash-has-key? load-idxs key)
     (hash-set! load-idxs key (append (hash-ref load-idxs key) (list val)))
     (hash-set! load-idxs key (list val))))

  (set! align-cnt 0)
  (set! ror-cnt 0)
  
  (define r0 (??dyn-load load-idxs))
  (define r1 (??hvx-gather-instr (list r0) (??dyn-load load-idxs)))
  (define r2 (??hvx-gather-instr (list r0 r1) (??dyn-load load-idxs)))
  (define r3 (??hvx-gather-instr (list r0 r1 r2) (??dyn-load load-idxs)))
  (define r4 (??hvx-gather-instr (list r0 r1 r2 r3) (??dyn-load load-idxs)))
  
  (cond
    [(eq? curr-instr-bnd 1) (if gen-pair? (??vecp-load load-idxs) (??vec-load load-idxs))]
    [(eq? curr-instr-bnd 2) (??hvx-gather-instr (list r0) gen-pair?)]
    [(eq? curr-instr-bnd 3) (??hvx-gather-instr (list r0 r1) gen-pair?)]
    [(eq? curr-instr-bnd 4) (??hvx-gather-instr (list r0 r1 r2) gen-pair?)]
    [else (??hvx-gather-instr (list r0 r1 r2 r3) gen-pair?)]))

(provide
 enumerate-hvx-gather-exprs
 enumerate-hvx-swizzle-exprs
 ??hvx-gather-expr
 ??hvx-swizzle-expr
 (rename-out
  [reset-instr-bnd reset-swizzle-instr-bnd]
  [incr-instr-bnd incr-swizzle-instr-bnd]
  [get-instr-bnd get-swizzle-instr-bnd]
  [instr-bnd-exceeded? swizzle-instr-bnd-exceeded?]))