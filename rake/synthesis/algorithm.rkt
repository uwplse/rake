#lang rosette

(require rake/util)
(require rake/spec)

(require rake/halide/ir/types)
(require rake/halide/ir/analysis)
(require rake/halide/ir/interpreter)

(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)
(require rake/hvx/interpreter)

(require rake/synthesis/ir)
(require rake/synthesis/grammar/ir)
(require rake/synthesis/grammar/hvx)

(define MC_BND 1)

(struct spec-context (symbolic-vars axioms))

(define (synthesize-hvx spec-expr spec-ctx [spec-lang 'halide-ir])
  (cond
    [(eq? spec-lang 'halide-ir)
     ;; Extract the set of buffer reads
     (define buff-reads (extract-buf-reads-hal spec-expr))

     ;; Extract the set of constant multiplication factors
     (define add-consts (extract-add-consts-hal spec-expr))
     (define sub-consts (extract-sub-consts-hal spec-expr))
     (define mul-consts (extract-mul-consts-hal spec-expr))
     (define div-consts (extract-div-consts-hal spec-expr))

     ;; Extract the set of live ops
     (define live-ops (list->set (extract-live-ops-hal spec-expr)))

     ;; Define the halide specification for stage 1
     (define spec-stage1 (halide-spec spec-expr spec-ctx buff-reads live-ops add-consts sub-consts mul-consts div-consts))
    
     ;; Synthesize equivalent expression in IR
     (init-ir-grammar-generator)
     (define stage1_res (synthesize-ir-expr spec-stage1))
     (define ir-expr (car stage1_res))
     (define ir-expr-sol (cdr stage1_res))

     ;; Define the ir specification for stage 1
     (define spec_stage2 (ir-spec ir-expr ir-expr-sol spec-ctx (vec-len spec-expr)))

     ;; Synthesize equivalent HVX expression for each Op in the IR
     (define hvx-expr (compile-to-hvx spec_stage2))

     ;; Full verification
     (if (verify-eq? spec-expr hvx-expr spec-ctx)
         (begin (display "Synthesized solution is correct.\n\n") hvx-expr)
         (begin (display "Synthesized solution is incorrect.\n\n") #f))]

    [else (error "Input specification is provided in a language I don't understand:" spec-lang)]))

;; Define incremental synthesis loop for ir-expr generation
(define (synthesize-ir-expr spec)
  (if (not (ir-instr-limit-exceeded?))
      (begin
        (display "Generating IR Grammar...\n")
        (display "========================\n")
        (debug (format "Number of instructions: ~a\n" (ir-instr-bnd)))
        (debug (format "Saturation arithmetic: ~a\n" (if (ir-sat-arith?) "Enabled" "Disabled")))
        (debug (format "Set of operators: ~a\n\n" (if (ir-specialized-ops?) "Specialized" "Full")))

        ;; Generate a specialized grammar based on 
        (define ??ir-grammar (generate-ir-grammar spec))
        
        (define synthesized-expr (??ir-grammar))
        ;(define synthesized-expr (arith-shift-right (convolve (load-data (halide-spec-buff-reads spec)) (list (int16_t (bv 2 16)) (int8_t (bv 1 8)) (int8_t (bv 0 8)) (int8_t (bv 0 8)) #t) nop 'int16) (int16_t (bv 4 16)) #t 'uint8))

        ;; Verification conditions
        (define (bounded-eq? oe se lanes)
          (for ([i lanes])
            (set-curr-cn-ir i)
            (assert (eq? (oe i) (elem-ir se i)))
            (set-curr-cn-ir (+ i 65))
            (assert (eq? (oe (+ i 65)) (elem-ir se (+ i 65))))))
        
        (display "Searching...\n")
        (display "============\n")

        ;; Synthesize expression
        (clear-asserts!)
        ((spec-context-axioms (halide-spec-ctx spec)))
        (define st (current-seconds))
        (define sol (synthesize #:forall (spec-context-symbolic-vars (halide-spec-ctx spec))
                                #:guarantee (bounded-eq? (interpret-halide (halide-spec-expr spec)) (interpret-ir synthesized-expr) MC_BND)))
        (define runtime (- (current-seconds) st))

        (if (eq? sol (unsat))
            (begin
              (display "Failed to find an equivalent IR expression.\n\n")
              (increment-ir-instr-bnd)
              (synthesize-ir-expr spec))
            (begin
              (display "Successfully found an equivalent IR expression.\n\n")
              (debug (format "~a\n\n" (evaluate synthesized-expr sol)))
              (debug (format "Synthesis time: ~a seconds\n\n" runtime))
              (cons (evaluate synthesized-expr sol) sol))))
      (begin
        (display "Maximum instruction bound reached. Giving up.\n\n")
        (void))))

(define (compile-to-hvx spec)
  (define ir-expr (ir-spec-expr spec))
  (define ir-expr-sol (ir-spec-sol spec))
  (define ir-expr-ctx (ir-spec-ctx spec))
  (define num-req-elems (ir-spec-req-elems spec))
  
  (match ir-expr
    [(arith-shift-right sub-expr n round? outputType)
     (begin
       (define ir-sub-spec (ir-spec sub-expr ir-expr-sol ir-expr-ctx num-req-elems))
       (define hvx-sub-expr (compile-to-hvx ir-sub-spec))
       (display "Lifting IR to HVX...\n")
       (display "====================\n")
       (display (format "IR Operation: ~a\n\n" ir-expr))
       (reset-hvx-instr-bnd)
       (synthesize-equiv-hvx spec hvx-sub-expr num-req-elems))]

    [(convolve sub-expr weights saturateFunc outputType)
     (begin
       (define ir-sub-spec (ir-spec sub-expr ir-expr-sol ir-expr-ctx num-req-elems))
       (define hvx-sub-expr (compile-to-hvx ir-sub-spec))
       (display "Lifting IR to HVX...\n")
       (display "====================\n")
       (display (format "IR Operation: ~a\n\n" (ir-spec-expr spec)))
       (reset-hvx-instr-bnd)
       (synthesize-equiv-hvx spec hvx-sub-expr num-req-elems))]

    [(load-data opts) (gather* opts)]

    [_ (println "NYI")]))

;; Define modular synthesis loop for HVX expression generation
(define (synthesize-equiv-hvx spec hvx-sub-expr num-req-elems)
  (define ir-expr (ir-spec-expr spec))
  (define ir-expr-sol (ir-spec-sol spec))
  (define ir-expr-ctx (ir-spec-ctx spec))
  (if (not (hvx-instr-limit-exceeded?))
      (begin
        (display "Generating HVX Grammar...\n")
        (display "=========================\n")
        (debug (format "Number of instructions: ~a\n" (hvx-instr-bnd)))
        (debug (format "Set of instructions: Specialized\n\n"))

        (define (bounded-eq2? oe se lanes)
          (for ([i lanes])
            (cond
              [(hvx-pair? se)
               (set-curr-cn-ir i)
               (set-curr-cn-hvx i)
               (assert (eq? (evaluate (elem-ir oe i) ir-expr-sol) (v0-elem-hvx se i)))
               (set-curr-cn-ir (+ i 65))
               (set-curr-cn-hvx (+ i 65))
               (assert (eq? (evaluate (elem-ir oe (+ i 65)) ir-expr-sol) (v1-elem-hvx se (+ i 1))))]
              [else
               (set-curr-cn-ir i)
               (set-curr-cn-hvx i)
               (assert (eq? (evaluate (elem-ir oe i) ir-expr-sol) (elem-hvx se i)))
               (set-curr-cn-ir (+ i 65))
               (set-curr-cn-hvx (+ i 65))
               (assert (eq? (evaluate (elem-ir oe (+ i 65)) ir-expr-sol) (elem-hvx se (+ i 65))))])))

        (define ??hvx-expr (generate-hvx-grammar ir-expr hvx-sub-expr))

        (define synthesized-hvx-expr (??hvx-expr))
        ;(define synthesized-hvx-expr (vcombine (vmpyi-acc (vadd (gather buff-reads)  (gather buff-reads) #f)  (gather buff-reads) (int8_t (bv 2 8))) (vmpyi-acc (vadd (gather buff-reads)  (gather buff-reads) #f)  (gather buff-reads) (int8_t (bv 2 8)))))
        ;(define synthesized-hvx-expr (vmpyi-acc (vadd (gather buff-reads)  (gather buff-reads) #f)  (gather buff-reads) (int8_t (bv 2 8))))
        ;(define synthesized-hvx-expr (if (arith-shift-right? ir-expr) (vasr-rnd-sat hvx-sub-expr hvx-sub-expr (int8_t (bv 4 8)) #t #t #t) (??hvx-expr)))

        (clear-asserts!)
        ((spec-context-axioms ir-expr-ctx))
        (define st (current-seconds))
        (define sol (synthesize #:forall (spec-context-symbolic-vars ir-expr-ctx)
                                #:guarantee (bounded-eq2? (interpret-ir ir-expr) (interpret-hvx synthesized-hvx-expr) MC_BND)))
        (define runtime (- (current-seconds) st))

        (if (eq? sol (unsat))
            (begin
              (display "Failed to find an equivalent HVX expression.\n\n")
              (increment-hvx-instr-bnd)
              (synthesize-equiv-hvx spec hvx-sub-expr num-req-elems))
            (begin
              (display "Successfully found an equivalent HVX expression.\n\n")
              (debug (format "~a\n\n" (evaluate synthesized-hvx-expr sol)))
              (debug (format "Synthesis time: ~a seconds\n\n" runtime))
              (evaluate synthesized-hvx-expr sol))))
      (begin
        (display "Maximum instruction bound reached. Giving up.\n\n")
        (exit)
        (void))))

(define (verify-eq? halide-spec hvx-expr ctx)
  (display "Verifying expression equivalence over full-length vectors...\n")
  (display "============================================================\n")

  (define VEC_LANES (num-elems-hal halide-spec))

  ;; The visitor clones each node in the AST, converting it from a graph to a tree
  (define (iden node) node)
  (set! hvx-expr (visit-hvx hvx-expr iden))

  (define interpreted-s-expr (interpret-hvx hvx-expr))
  (define interpreted-o-expr (interpret-halide halide-spec))

  ;; Verify all lanes at once (Slower...takes 1554 seconds for baseline gaussian stage 2 example)
  ;(define (equiv-output? oe se)
  ;  (for ([lane VEC_LANES])
  ;    (set-curr-cn-hvx lane)
  ;    (assert (eq? (oe lane) (elem-hvx se lane)))))
  ;(define st (current-seconds))
  ;(define sol (synthesize #:forall ctx
  ;                        #:guarantee (equiv-output? interpreted-o-expr interpreted-s-expr)))
  ;(define runtime (- (current-seconds) st))
  ;(define correct? (and (eq? (vec-len halide-spec) (num-elems-hvx interpreted-s-expr)) (not (unsat? sol))))

  ;; Verify all incrementally (Faster...takes 30 seconds for baseline gaussian stage 2 example)
  (define (lane-eq? oe se lane) (assert (eq? (oe lane) (elem-hvx se lane))))
  (define sols (list))
  (define st (current-seconds))

  (clear-asserts!)
  ((spec-context-axioms ctx))
  (for ([lane VEC_LANES])
    (set-curr-cn-hvx lane)
    (define sol (synthesize #:forall (spec-context-symbolic-vars ctx)
                            #:guarantee (lane-eq? interpreted-o-expr interpreted-s-expr lane)))
    (set! sols (append sols (list sol))))
  (define runtime (- (current-seconds) st))
  (define correct? (and (eq? (vec-len halide-spec) (num-elems-hvx interpreted-s-expr)) (not (for/or ([sol sols]) (unsat? sol)))))
  
  ;; Print solution
  (debug (format "Verification time: ~a seconds\n\n" runtime))

  correct?)

(provide synthesize-hvx spec-context)