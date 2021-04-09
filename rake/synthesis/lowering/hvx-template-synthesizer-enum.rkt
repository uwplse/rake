#lang rosette

(require racket/engine)

(require rake/util)

(require rake/cpp/types)
(require rake/cpp/cast)

(require rake/synthesis/ir)
(require rake/synthesis/spec)
(require rake/synthesis/grammar/hvx)

(require rake/halide/ir/interpreter)

(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)
(require rake/hvx/cost-model)
(require rake/hvx/interpreter)
(require rake/hvx/comparator)

(define MC_BND 1)

(define cache (make-hash))
(define ranked-candidates (make-hash))

(define total-synth-time 0)

(define abstract-expr-mapping (make-hash))

(define (repl-abstr-exprs node [pos -1])
  (cond
    [(abstr-sub-expr? node) (hash-ref abstract-expr-mapping (abstr-sub-expr-id node))]
    [else node]))

(define lane-offset 0)

(define (synthesize-hvx-template spec ir-to-hvx [offset 0])
  (define ir-expr (hvx-expr-spec-expr spec))
  (define ir-expr-sol (hvx-expr-spec-sol spec))
  (define ir-expr-annotations (hvx-expr-spec-annot spec))
  (define ir-expr-ctx (hvx-expr-spec-ctx spec))
  (define ir-expr-axioms (hvx-expr-spec-axioms spec))
  (define ir-expr-invalid-sketches (hvx-expr-spec-invalid-sketches spec))
  (define discarded-sols (for/list ([inv-sk ir-expr-invalid-sketches] #:when (hash-has-key? inv-sk ir-expr)) (hash-ref inv-sk ir-expr)))

  (set! lane-offset offset)
  
  (cond
    [(hash-has-key? ir-to-hvx (ir-node-id ir-expr))
      (hash-ref ir-to-hvx (ir-node-id ir-expr))]
    [else
      (define hvx-expr
        (match ir-expr
          [(packhi sub-expr signed?)
           (begin
             (define new-expr (void))
             (for ([inv-sk ir-expr-invalid-sketches] #:when (void? new-expr))
               ;; Set sub-expr to be the same as before
               (define hvx-sub-expr (hash-ref inv-sk sub-expr))
               ;; But synthesize new outer-instruction(s)
               (display "Lifting IR to HVX...\n")
               (display "====================\n\n")
               (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))

               (reset-hvx-instr-bnd)
               (define res (synthesize-equiv-hvx spec sub-expr hvx-sub-expr discarded-sols))
               (when (not (void? res))
                 (set! new-expr res)))
             
             (cond
               [(void? new-expr)
                (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
                (define hvx-sub-expr (synthesize-hvx-template hvx-sub-spec ir-to-hvx offset))
         
                (display "Lifting IR to HVX...\n")
                (display "====================\n\n")
                (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))

                (reset-hvx-instr-bnd)
                (synthesize-equiv-hvx spec sub-expr hvx-sub-expr discarded-sols)]
               [else new-expr]))]
    
          [(arith-shift-right sub-expr n round? outputType)
           (begin
             (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
             (define hvx-sub-expr (synthesize-hvx-template hvx-sub-spec ir-to-hvx offset))

             (display "Lifting IR to HVX...\n")
             (display "====================\n\n")
             (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))

             (reset-hvx-instr-bnd)
             (synthesize-equiv-hvx spec sub-expr hvx-sub-expr discarded-sols))]

          [(convolve sub-expr kernel saturateFunc outputType)
           (begin
             (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
             (define hvx-sub-expr (synthesize-hvx-template hvx-sub-spec ir-to-hvx offset))
         
             (display "Lifting IR to HVX...\n")
             (display "====================\n\n")
             (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))

             (define abstract-sub-expr
               (cond
                 [(load-data? sub-expr) hvx-sub-expr]
                 [(zip-data? sub-expr)
                  (define abstract-sub-expr1 (eval-hvx-expr (car hvx-sub-expr) (hash-ref ir-expr-annotations (ir-node-id (zip-data-data0 sub-expr)))))
                  (define abstract-sub-expr2 (eval-hvx-expr (cdr hvx-sub-expr) (hash-ref ir-expr-annotations (ir-node-id (zip-data-data1 sub-expr)))))
                  (hash-set! abstract-expr-mapping (abstr-sub-expr-id abstract-sub-expr1) (car hvx-sub-expr))
                  (hash-set! abstract-expr-mapping (abstr-sub-expr-id abstract-sub-expr2) (cdr hvx-sub-expr))
                  (cons abstract-sub-expr1 abstract-sub-expr2)]
                 [else
                  (define abstract-sub-expr (eval-hvx-expr hvx-sub-expr (hash-ref ir-expr-annotations (ir-node-id sub-expr))))
                  (hash-set! abstract-expr-mapping (abstr-sub-expr-id abstract-sub-expr) hvx-sub-expr)
                  abstract-sub-expr]))
         
             ;; If not already available, enumerate ranked candidate translations
             (when (not (hash-has-key? ranked-candidates ir-expr))
               (hash-set! ranked-candidates ir-expr (enumerate-hvx-exprs (hvx-expr-spec-expr spec) abstract-sub-expr)))

             (synthesize-equiv-hvx-enum spec outputType abstract-sub-expr (hash-ref ranked-candidates ir-expr) discarded-sols))]

          [(convolve-acc acc-expr sub-expr kernel saturateFunc outputType)
           (begin
             (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
             (define hvx-sub-expr (synthesize-hvx-template hvx-sub-spec ir-to-hvx offset))

             (define hvx-acc-spec (hvx-expr-spec acc-expr ir-expr-sol ir-expr-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
             (define hvx-acc-expr (synthesize-hvx-template hvx-acc-spec ir-to-hvx offset))

             (display "Lifting IR to HVX...\n")
             (display "====================\n\n")
             (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))

             (define abstract-acc-expr (eval-hvx-expr hvx-acc-expr (hash-ref ir-expr-annotations (ir-node-id acc-expr))))
             (hash-set! abstract-expr-mapping (abstr-sub-expr-id abstract-acc-expr) hvx-acc-expr)
             
             (define abstract-sub-expr
               (cond
                 [(load-data? sub-expr) (flatten (cons abstract-acc-expr hvx-sub-expr))]
                 [(zip-data? sub-expr)
                  (define abstract-sub-expr1 (eval-hvx-expr (car hvx-sub-expr) (hash-ref ir-expr-annotations (ir-node-id (zip-data-data0 sub-expr)))))
                  (define abstract-sub-expr2 (eval-hvx-expr (cdr hvx-sub-expr) (hash-ref ir-expr-annotations (ir-node-id (zip-data-data1 sub-expr)))))
                  (hash-set! abstract-expr-mapping (abstr-sub-expr-id abstract-sub-expr1) (car hvx-sub-expr))
                  (hash-set! abstract-expr-mapping (abstr-sub-expr-id abstract-sub-expr2) (cdr hvx-sub-expr))
                  (list abstract-acc-expr abstract-sub-expr1 abstract-sub-expr2)]
                 [else
                  (define abstract-sub-expr (eval-hvx-expr hvx-sub-expr (hash-ref ir-expr-annotations (ir-node-id sub-expr))))
                  (hash-set! abstract-expr-mapping (abstr-sub-expr-id abstract-sub-expr) hvx-sub-expr)
                  (flatten (cons abstract-acc-expr abstract-sub-expr))]))
         
             ;; If not already available, enumerate ranked candidate translations
             (when (not (hash-has-key? ranked-candidates (cons ir-expr abstract-sub-expr)))
               (hash-set! ranked-candidates (cons ir-expr abstract-sub-expr) (enumerate-hvx-exprs (hvx-expr-spec-expr spec) abstract-sub-expr)))

             (synthesize-equiv-hvx-enum spec outputType abstract-sub-expr (hash-ref ranked-candidates (cons ir-expr abstract-sub-expr)) discarded-sols))]

          [(cast sub-expr type)
           (begin
             (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
             (define hvx-sub-expr (synthesize-hvx-template hvx-sub-spec ir-to-hvx offset))
         
             (display "Lifting IR to HVX...\n")
             (display "====================\n\n")
             (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))
         
             (reset-hvx-instr-bnd)
             (synthesize-equiv-hvx spec sub-expr hvx-sub-expr discarded-sols))]

          [(saturate sub-expr round? signedOut?)
           (begin
             (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
             (define hvx-sub-expr (synthesize-hvx-template hvx-sub-spec ir-to-hvx offset))

             (define abstract-sub-expr
               (cond
                 [(load-data? sub-expr) hvx-sub-expr]
                 [(zip-data? sub-expr)
                  (define abstract-sub-expr1 (eval-hvx-expr (car hvx-sub-expr) (hash-ref ir-expr-annotations (ir-node-id (zip-data-data0 sub-expr)))))
                  (define abstract-sub-expr2 (eval-hvx-expr (cdr hvx-sub-expr) (hash-ref ir-expr-annotations (ir-node-id (zip-data-data1 sub-expr)))))
                  (hash-set! abstract-expr-mapping (abstr-sub-expr-id abstract-sub-expr1) (car hvx-sub-expr))
                  (hash-set! abstract-expr-mapping (abstr-sub-expr-id abstract-sub-expr2) (cdr hvx-sub-expr))
                  (cons abstract-sub-expr1 abstract-sub-expr2)]
                 [else
                  (define abstract-sub-expr (eval-hvx-expr hvx-sub-expr (hash-ref ir-expr-annotations (ir-node-id sub-expr))))
                  (hash-set! abstract-expr-mapping (abstr-sub-expr-id abstract-sub-expr) hvx-sub-expr)
                  abstract-sub-expr]))
         
             (display "Lifting IR to HVX...\n")
             (display "====================\n\n")
             (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))
         
             (reset-hvx-instr-bnd)
             (synthesize-equiv-hvx spec sub-expr abstract-sub-expr discarded-sols))]

          [(abs-diff sub-expr1 sub-expr2)
           (begin
             (define hvx-sub-spec1 (hvx-expr-spec sub-expr1 ir-expr-sol ir-expr-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
             (define hvx-sub-expr1 (synthesize-hvx-template hvx-sub-spec1 ir-to-hvx offset))
         
             (define hvx-sub-spec2 (hvx-expr-spec sub-expr2 ir-expr-sol ir-expr-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
             (define hvx-sub-expr2 (synthesize-hvx-template hvx-sub-spec2 ir-to-hvx offset))

             (define abstract-sub-expr1 (eval-hvx-expr hvx-sub-expr1 (hash-ref ir-expr-annotations (ir-node-id sub-expr1))))
             (define abstract-sub-expr2 (eval-hvx-expr hvx-sub-expr2 (hash-ref ir-expr-annotations (ir-node-id sub-expr2))))

             (hash-set! abstract-expr-mapping (abstr-sub-expr-id abstract-sub-expr1) hvx-sub-expr1)
             (hash-set! abstract-expr-mapping (abstr-sub-expr-id abstract-sub-expr2) hvx-sub-expr2)

             (display "Lifting IR to HVX...\n")
             (display "====================\n\n")
             (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))
         
             (reset-hvx-instr-bnd)
             (synthesize-equiv-hvx spec (cons sub-expr1 sub-expr2) (cons abstract-sub-expr1 abstract-sub-expr2) discarded-sols))]

          [(maximum sub-expr1 sub-expr2)
           (begin
             (define hvx-sub-spec1 (hvx-expr-spec sub-expr1 ir-expr-sol ir-expr-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
             (define hvx-sub-expr1 (synthesize-hvx-template hvx-sub-spec1 ir-to-hvx offset))
         
             (define hvx-sub-spec2 (hvx-expr-spec sub-expr2 ir-expr-sol ir-expr-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
             (define hvx-sub-expr2 (synthesize-hvx-template hvx-sub-spec2 ir-to-hvx offset))

             (define abstract-sub-expr1
               (cond
                 [(load-data? sub-expr1) hvx-sub-expr1]
                 [else
                  (define ret (eval-hvx-expr hvx-sub-expr1 (hash-ref ir-expr-annotations (ir-node-id sub-expr1))))
                  (hash-set! abstract-expr-mapping (abstr-sub-expr-id ret) hvx-sub-expr1)
                  ret]))
             (define abstract-sub-expr2
               (cond
                 [(load-data? sub-expr2) hvx-sub-expr2]
                 [else
                  (define ret (eval-hvx-expr hvx-sub-expr2 (hash-ref ir-expr-annotations (ir-node-id sub-expr2))))
                  (hash-set! abstract-expr-mapping (abstr-sub-expr-id ret) hvx-sub-expr2)
                  ret]))

             (display "Lifting IR to HVX...\n")
             (display "====================\n\n")
             (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))
         
             (reset-hvx-instr-bnd)
             (synthesize-equiv-hvx spec (cons sub-expr1 sub-expr2) (cons abstract-sub-expr1 abstract-sub-expr2) discarded-sols))]
      
          [(zip-data sub-expr1 sub-expr2)
           (begin
             (define hvx-sub-spec1 (hvx-expr-spec sub-expr1 ir-expr-sol ir-expr-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
             (define hvx-sub-expr1 (synthesize-hvx-template hvx-sub-spec1 ir-to-hvx offset))
         
             (define hvx-sub-spec2 (hvx-expr-spec sub-expr2 ir-expr-sol ir-expr-annotations ir-expr-ctx ir-expr-axioms ir-expr-invalid-sketches))
             (define hvx-sub-expr2 (synthesize-hvx-template hvx-sub-spec2 ir-to-hvx offset))
         
             (cons hvx-sub-expr1 hvx-sub-expr2))]

          [(load-data opts)
           (begin
             (display "Lifting IR to HVX...\n")
             (display "====================\n\n")
             (display (format "IR Operation: \n\n~a\n\n" (pretty-format ir-expr)))
             (define hvx-expr (gather* opts))
             (display "Successfully found an equivalent HVX expression.\n\n")
             (debug (format "~a\n" (pretty-format hvx-expr)))
             (debug (format "Synthesis time: 0 seconds\n"))
             hvx-expr)]

          [_ (error "NYI asd")]))

      (hash-set! ir-to-hvx ir-expr hvx-expr)
      hvx-expr]))

(define next-id -1)
(define (get-unique-id) (set! next-id (add1 next-id)) next-id)

(define (eval-hvx-expr hvx-expr halide-spec)
  (abstr-sub-expr (get-unique-id) (interpret-hvx hvx-expr)))

;(define (eval-hvx-expr hvx-expr halide-spec)
;  (define interp-hvx-expr (if (list? hvx-expr) (interpret-hvx (first hvx-expr)) (interpret-hvx hvx-expr)))
;  (define interp-hal-expr (interpret-halide halide-spec))
;  (define vals-tbl1 (make-hash))
;  (define vals-tbl2 (make-hash))
;  (match interp-hvx-expr
;    [(u16x64x2 _ _)
;     (abstr-sub-expr
;      (get-unique-id)
;      (u16x64x2
;       (lambda (i) (define-symbolic* idx integer?) (interp-hal-expr (hash-ref! vals-tbl1 i idx)))
;       (lambda (i) (define-symbolic* idx integer?) (interp-hal-expr (hash-ref! vals-tbl2 i idx)))))]
;    [(i16x64x2 _ _)
;     (abstr-sub-expr
;      (get-unique-id)
;      (i16x64x2
;       (lambda (i) (define-symbolic* idx integer?) (interp-hal-expr (hash-ref! vals-tbl1 i idx)))
;       (lambda (i) (define-symbolic* idx integer?) (interp-hal-expr (hash-ref! vals-tbl2 i idx)))))]
;    [(i32x32 _)
;     (abstr-sub-expr
;      (get-unique-id)
;      (i32x32
;       (lambda (i) (define-symbolic* idx integer?) (interp-hal-expr (hash-ref! vals-tbl1 i idx)))))]
;    [_ (error "NYI" interp-hvx-expr)]))

(define (test-synth hal-expr-ctx original-expr candidate-expr discarded-sols)
  (display (format "Trying 1 lane\n"))
  (define synthesized-expr (interpret-hvx candidate-expr))

  (define (bounded-eq? oe se lanes)
    (for ([i lanes])
      (cond
        [(hvx-pair? se)
         (set-curr-cn-hvx i)
         (define oe-elem (oe i))
         (define se-elem (v0-elem-hvx se i))
         (assert (eq? oe-elem (cpp-cast se-elem (type oe-elem))))]
        [else
         (set-curr-cn-hvx (+ i lane-offset))
         (assert (eq? (oe i) (elem-hvx se i)))])))

;  (println "enter bb")
;  (read-line)
;

;  (println lane-offset)
;  (set-curr-cn-hvx (+ lane-offset 0))
;;  (println original-expr)
;  (println discarded-sols)
;  (println synthesized-expr)
;  (println (original-expr 0))
;  (println (elem-hvx synthesized-expr 0))

  ;(println (v1-elem-hvx synthesized-expr 1))
  ;(println ((interpret-halide original-expr) 1))
  
  (define st0 (current-milliseconds))
  (define sol0 (synthesize #:forall hal-expr-ctx
                           #:guarantee (begin
                                         (bounded-eq? original-expr synthesized-expr MC_BND)
                                         (for ([discarded-sol discarded-sols])
                                           (assert (not (equal-expr-hvx? discarded-sol candidate-expr)))))))
  (define runtime0 (- (current-milliseconds) st0))
  (set! total-synth-time (+ total-synth-time runtime0))

  (cond
    [(or (unsat? sol0) (unknown? sol0))
     (display (format "Synthesis time: ~ams\n" runtime0))
     (unsat)]
    [else
     (display (format "Trying 2 lanes\n"))
     (define synthesized-expr (interpret-hvx candidate-expr))

     (define (bounded-eq? oe se lanes)
       (for ([i lanes])
         (cond
           [(hvx-pair? se)
            (set-curr-cn-hvx i)
            (define oe-elem (oe i))
            (define se-elem (v0-elem-hvx se i))
            (assert (eq? oe-elem (cpp-cast se-elem (type oe-elem))))

            (set-curr-cn-hvx (+ i 1))
            (define oe-elem2 (oe (+ i 1)))
            (define se-elem2 (v1-elem-hvx se i))
            (assert (eq? oe-elem2 (cpp-cast se-elem2 (type oe-elem2))))]
           [else
            (set-curr-cn-hvx (+ i lane-offset))
            (assert (eq? (oe i) (elem-hvx se i)))
            (set-curr-cn-hvx (+ i 1 lane-offset))
            (assert (eq? (oe (+ i 1)) (elem-hvx se (+ i 1))))])))

     
     (define st (current-milliseconds))
     (define sol (synthesize #:forall hal-expr-ctx
                             #:guarantee (begin
                                           (bounded-eq? original-expr synthesized-expr MC_BND)
                                           (for ([discarded-sol discarded-sols])
                                             (assert (not (equal-expr-hvx? discarded-sol candidate-expr)))))))  
     (define runtime (- (current-milliseconds) st))
     (set! total-synth-time (+ total-synth-time runtime))
     
     (cond
       [(or (unsat? sol) (unknown? sol))
        (display (format "Synthesis time: ~ams\n" runtime))
        (unsat)]
       [else
        ;(pretty-print (evaluate candidate-expr sol))
     
        (display (format "Trying 4 lanes!\n"))
     
        ;(set! synthesized-expr (interpret-hvx (evaluate candidate-expr sol)))

        (define (bounded-eq2? oe se lanes)
          (for ([i lanes])
            (cond
              [(hvx-pair? se)
               (set-curr-cn-hvx i)
               (define oe-elem (oe i))
               (define se-elem (v0-elem-hvx se i))
               (assert (eq? oe-elem (cpp-cast se-elem (type oe-elem))))

               (set-curr-cn-hvx (+ i 1))
               (define oe-elem2 (oe (+ i 1)))
               (define se-elem2 (v1-elem-hvx se i))
               (assert (eq? oe-elem2 (cpp-cast se-elem2 (type oe-elem2))))
               
               (set-curr-cn-hvx (+ i 2))
               (define oe-elem3 (oe (+ i 2)))
               (define se-elem3 (v0-elem-hvx se (+ i 1)))
               (assert (eq? oe-elem3 (cpp-cast se-elem3 (type oe-elem3))))
               
               (set-curr-cn-hvx (+ i 3))
               (define oe-elem4 (oe (+ i 3)))
               (define se-elem4 (v1-elem-hvx se (+ i 1)))
               (assert (eq? oe-elem4 (cpp-cast se-elem4 (type oe-elem4))))]
              [else
               (set-curr-cn-hvx (+ i lane-offset))
               ;(assert (eq? (oe i) (elem-hvx se i)))
               ;(set-curr-cn-hvx (+ i 1 lane-offset))
               ;(assert (eq? (oe (+ i 1)) (elem-hvx se (+ i 1))))
               ])))

        ;(println (original-expr 0))
        ;(println (v0-elem-hvx synthesized-expr 0))
        ;(println (original-expr 2))
        ;(println (v1-elem-hvx synthesized-expr 1))
        
        (define st1 (current-milliseconds))
        (define sol1 (synthesize #:forall hal-expr-ctx
                                 #:guarantee (bounded-eq2? original-expr synthesized-expr MC_BND)))
        (define runtime1 (- (current-milliseconds) st1))
        (display (format "Synthesis time: ~ams\n" runtime1))
        (set! total-synth-time (+ total-synth-time runtime1))

        (cond
          [(or (unsat? sol1) (unknown? sol1)) (test-synth hal-expr-ctx original-expr candidate-expr (set-add discarded-sols (evaluate candidate-expr sol)))]
          [else sol])])]))

;; Define enumerative synthesis loop for HVX exppression generation
(define (synthesize-equiv-hvx-enum spec output-type hvx-sub-expr ranked-candidates-exprs discarded-sols)
  (define ir-expr (hvx-expr-spec-expr spec))
  (define ir-expr-sol (hvx-expr-spec-sol spec))
  (define ir-expr-annot (hvx-expr-spec-annot spec))
  (define ir-expr-ctx (hvx-expr-spec-ctx spec))
  (define ir-expr-axioms (hvx-expr-spec-axioms spec))
   
  (define (find-next-impl candidate-hvx-exprs)
    (cond
      [(empty? candidate-hvx-exprs) (unsat)]
      [else 
       (define candidate-expr (first candidate-hvx-exprs))
       (cond
         [(hash-has-key? cache candidate-expr) (find-next-impl (rest candidate-hvx-exprs))]
         [else

          ;(pretty-print candidate-expr)
          
          (hash-clear! hvx-gather-tables)
          (hash-clear! hvx-gather-types)

          ;(define original-expr (interpret-ir ir-expr))
          (define original-expr (interpret-halide (hash-ref ir-expr-annot (ir-node-id ir-expr))))
          ;(pretty-print (hash-ref ir-expr-annot (ir-node-id ir-expr)))
          ;(pretty-print (if (cons? candidate-expr) (car candidate-expr) candidate-expr))
          ;(define synthesized-expr (interpret-hvx (if (cons? candidate-expr) (car candidate-expr) candidate-expr)))
          
          (define synthesizer
            (engine (λ (_) (test-synth (symbolics (hash-ref ir-expr-annot (ir-node-id ir-expr))) original-expr (if (cons? candidate-expr) (car candidate-expr) candidate-expr) discarded-sols))))

          (engine-run 600000 synthesizer)
          
          (define sol (engine-result synthesizer))
          
          (cond
            [(eq? sol #f)
             (display (format "Time-out: 10mins\n"))
             (hash-set! cache candidate-expr (unsat))
             (find-next-impl (rest candidate-hvx-exprs))]
            [(unsat? sol)
             (hash-set! cache candidate-expr sol)
             (find-next-impl (rest candidate-hvx-exprs))]
            [else
             (display "\nSuccessfully found an equivalent HVX expression.\n\n")
             (pretty-print (visit-hvx (evaluate candidate-expr sol) repl-abstr-exprs))
             (display "\n")
             (visit-hvx (evaluate candidate-expr sol) repl-abstr-exprs)])])]))

  (define (search-candidates sorted-costs ranked-candidates-exprs)
    (cond
      [(empty? sorted-costs)
       (display "\nFailed to find an equivalent HVX expression -- Search space exhausted.\n\n")
       (display (format "Total synthesis time: ~a" total-synth-time))
       (exit)
       (unsat)]
      [else 
       (define cost (first sorted-costs))
       (display (format "\nScanning expressions with cost: ~a\n\n" cost))
       (define hvx-impl (find-next-impl (set->list (hash-ref ranked-candidates-exprs cost))))
       (cond
         [(unsat? hvx-impl) (search-candidates (rest sorted-costs) ranked-candidates-exprs)]
         [else hvx-impl])]))

  (display "Enumerating HVX Expressions...\n")
  
  (define sorted-costs (sort (hash-keys ranked-candidates-exprs) <))
  
  (clear-vc!)
  (for ([axiom ir-expr-axioms]) (assume axiom))
  (search-candidates sorted-costs ranked-candidates-exprs))

;; Define incremental synthesis loop for HVX expression generation
(define (synthesize-equiv-hvx spec sub-expr hvx-sub-expr discarded-sols)
  (if (not (hvx-instr-limit-exceeded?))
      (begin
        (display "Generating HVX Grammar...\n")
        (debug (format "Number of instructions: ~a" (hvx-instr-bnd)))
        (debug (format "Set of instructions: Specialized\n"))
        
        (define ??hvx-expr-grm (generate-hvx-grammar (hvx-expr-spec-expr spec) sub-expr hvx-sub-expr))
        (define res (synthesize-optimal spec ??hvx-expr-grm basic-expr-cost hvx-sub-expr discarded-sols))
        
        (if (eq? res (unsat))
            (begin
              (increment-hvx-instr-bnd)
              (synthesize-equiv-hvx spec sub-expr hvx-sub-expr discarded-sols))
            res))
      (begin
        (display "Maximum instruction bound reached. Giving up.\n\n")
        (exit)
        (void))))

(define (synthesize-optimal spec ??hvx-expr-grm cost-model hvx-sub-expr discarded-sols [curr-best-sol (void)])
  (define ir-expr (hvx-expr-spec-expr spec))
  (define ir-expr-sol (hvx-expr-spec-sol spec))
  (define ir-expr-annot (hvx-expr-spec-annot spec))
  (define ir-expr-ctx (hvx-expr-spec-ctx spec))
  (define ir-expr-axioms (hvx-expr-spec-axioms spec))

  (define original-expr (hash-ref ir-expr-annot (ir-node-id ir-expr)))
  (define synthesized-hvx-expr (??hvx-expr-grm))

  ;(pretty-print hvx-sub-expr)

  (set-curr-cn-hvx 0)
  ;(println ((interpret-halide original-expr) 0))
  ;(println ((interpret-halide original-expr) 32))
  ;(println ((interpret-halide original-expr) 64))
  ;(println ((interpret-halide original-expr) 96))
  ;(println (elem-hvx (interpret-hvx synthesized-hvx-expr) 0))
  (println (symbolics (elem-hvx (interpret-hvx synthesized-hvx-expr) 0)))
  ;(println (elem-hvx (interpret-hvx synthesized-hvx-expr) 32))
  ;(println (elem-hvx (interpret-hvx synthesized-hvx-expr) 64))
  ;(println (elem-hvx (interpret-hvx synthesized-hvx-expr) 96))

  ;(exit)
  ;(println (list? hvx-sub-expr))
  ;(println (length hvx-sub-expr))
  
  (define (bounded-eq? oe se lanes)
    (for ([i lanes])
      (cond
        [(hvx-pair? se)
         (set-curr-cn-hvx i)
         (assert (eq? (oe i) (v0-elem-hvx se i)))
         (set-curr-cn-hvx (+ i 1))
         (assert (eq? (oe (+ i 1)) (v1-elem-hvx se (+ i 1))))]
        [else
         (set-curr-cn-hvx i)
         (assert (eq? (oe i) (elem-hvx se i)))
         (set-curr-cn-hvx (+ i 64))
         (assert (eq? (oe (+ i 64)) (elem-hvx se (+ i 64))))
         (when (and (list? hvx-sub-expr) (> (length hvx-sub-expr) 2))
           (set-curr-cn-hvx (+ i 32))
           (assert (eq? (oe (+ i 32)) (elem-hvx se (+ i 32))))
           (set-curr-cn-hvx (+ i 96))
           (assert (eq? (oe (+ i 96)) (elem-hvx se (+ i 96)))))
         ])))
  
  (define curr-best-cost (if (void? curr-best-sol) +inf.0 (cost-model curr-best-sol)))
  
  (clear-vc!)
  (for ([axiom ir-expr-axioms]) (assume axiom))
  (define st (current-seconds))
  (define sol (synthesize #:forall (symbolics original-expr)
                          #:guarantee (begin
                                       (bounded-eq? (interpret-halide original-expr) (interpret-hvx synthesized-hvx-expr) MC_BND)
                                       (when (not (eq? curr-best-cost +inf.0)) (assert (< (cost-model synthesized-hvx-expr) curr-best-cost)))
                                       (for ([discarded-sol discarded-sols])
                                         (assert (not (equal-expr-hvx? discarded-sol synthesized-hvx-expr)))))))
  (define runtime (- (current-seconds) st))

  (cond
    [(or (unsat? sol) (unknown? sol))
     (cond
       [(void? curr-best-sol) (display "Failed to find an equivalent HVX expression.\n\n")
                              (debug (format "Synthesis time: ~a seconds\n" runtime))
                              sol]
       [else (display (format "Failed to find an equivalent HVX expression with cost lower than ~a.\n\n" curr-best-cost))
             (debug (format "Synthesis time: ~a seconds\n" runtime))
             (visit-hvx curr-best-sol repl-abstr-exprs)])]
    [else (display "Successfully found an equivalent HVX expression.\n\n")
          (debug (format "~a\n" (pretty-format (visit-hvx (evaluate synthesized-hvx-expr sol) repl-abstr-exprs))))
          (debug (format "Expression cost: ~a\n" (cost-model (evaluate synthesized-hvx-expr sol))))
          (debug (format "Synthesis time: ~a seconds\n" runtime))
          (display "Searching for a more optimal solution...\n\n")
          (synthesize-optimal spec ??hvx-expr-grm cost-model hvx-sub-expr discarded-sols (evaluate synthesized-hvx-expr sol))]))

(provide (rename-out [synthesize-hvx-template synthesize-hvx-template-enum]))