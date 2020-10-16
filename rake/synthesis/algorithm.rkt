#lang rosette

(require rake/util)

(require rake/cpp/types)

(require rake/halide/ir/types)
(require rake/halide/ir/analysis)
(require rake/halide/ir/interpreter)

(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)
(require rake/hvx/cost-model)
(require rake/hvx/interpreter)

(require rake/synthesis/ir)
(require rake/synthesis/spec)
(require rake/synthesis/grammar/ir)
(require rake/synthesis/grammar/hvx)

(require rake/cpp/cast)
(require rosette/lib/synthax)
(require rosette/lib/angelic)
(require rosette/lib/match)

(define MC_BND 1)

(define (synthesize-hvx spec [spec-lang 'halide-ir])
  (cond
    [(eq? spec-lang 'halide-ir)
     (define halide-expr (synthesis-spec-expr spec))
     (define halide-expr-axioms (synthesis-spec-axioms spec))
     
     ;; Extract the set of buffer reads
     (define buff-reads (extract-buf-reads-hal halide-expr))

     ;(define abstracted-buff-reads (abstract-arr-accesses buff-reads))
     
     ;; Extract the set of constant multiplication factors
     (define add-consts (set->list (list->set (extract-add-consts-hal halide-expr))))
     (define sub-consts (set->list (list->set (extract-sub-consts-hal halide-expr))))
     (define mul-consts (set->list (list->set (extract-mul-consts-hal halide-expr))))
     (define div-consts (set->list (list->set (extract-div-consts-hal halide-expr))))

     ;; Extract the set of live ops
     (define live-ops (list->set (extract-live-ops-hal halide-expr)))

     ;; Define context
     (define halide-expr-ctx (symbolics halide-expr))
     
     ;; Define the specification for synthesizing equiv expr in our IR
     ;(define ir-spec (ir-expr-spec halide-expr (symbolics halide-expr) halide-expr-axioms buff-reads live-ops add-consts sub-consts mul-consts div-consts))
     
     
     ;; Synthesize equivalent expression in IR
     (init-ir-grammar-generator)
     ;(define stage1_res (synthesize-ir-expr ir-spec))
     (define stage1-res (synthesize-ir-expr-bu halide-expr buff-reads halide-expr-axioms))
     (println stage1-res)
     ;(exit)

;     (when (not (void? stage1-res))
;       (define ir-expr (car stage1-res))
;       (define ir-expr-sol (cdr stage1-res))
;
;       ;; Define the ir specification for stage 1
;       (define hvx-spec (hvx-expr-spec ir-expr ir-expr-sol halide-expr-ctx halide-expr-axioms))
;
;       ;; Synthesize equivalent HVX expression for each Op in the IR
;       (define hvx-expr (synthesize-hvx-expr hvx-spec))
;
;       (when (not (unsat? hvx-expr))  
;         ;; Full verification
;         (if (verify-equiv? halide-expr hvx-expr halide-expr-ctx halide-expr-axioms)
;             (begin (display "Synthesized solution is correct.\n\n") hvx-expr)
;             (begin (display "Synthesized solution is incorrect.\n\n") #f))))
     ]

    [else (error "Input specification is provided in a language I don't understand:" spec-lang)]))

(define (run-synthesizer original-expr synthesized-expr axioms)
  (define VEC_LANES (num-elems-hal original-expr))
  
  (define (bounded-eq? oe se lanes)
    (for ([i lanes])
      (set-curr-cn-ir i)
      (assert (eq? (oe i) (elem-ir se i)))
      (set-curr-cn-ir (+ i (/ VEC_LANES 2) 1))
      (assert (eq? (oe (+ i (/ VEC_LANES 2) 1)) (elem-ir se (+ i (/ VEC_LANES 2) 1))))))

  ;; Synthesize expression
  (clear-asserts!)
  (for ([axiom axioms]) (assert axiom))
  (define st (current-seconds))
  (define sol (synthesize #:forall (symbolics original-expr)
                          #:guarantee (bounded-eq? (interpret-halide original-expr) (interpret-ir synthesized-expr) MC_BND)))
  (define runtime (- (current-seconds) st))

  (display (format "Ran synthesizer for ~a seconds.\n" runtime))

  (if (unsat? sol)
      sol
      (evaluate synthesized-expr sol)))

;; Try to fold the expr into the ir sub-expr
(define (fold-into-subexpr lifted-sub-expr halide-expr axioms add-consts sub-consts mul-consts div-consts)
  (define (pow2? val) (integer? (log (eval-to-int val) 2)))
  (define (log2 val) (mk-typed-expr (bv (exact-round (log (eval-to-int val) 2)) (bw val)) (type val)))
  (define (get-generator-func opts) (when (not (empty? opts)) (lambda() (apply choose* opts))))
  (define int-shiftr-gen (get-generator-func (map log2 (filter pow2? div-consts))))

  (define outT (type ((interpret-halide halide-expr) 0)))

  (define synthesized-expr (match lifted-sub-expr
                             [(load-data opts) lifted-sub-expr]
                             [(broadcast sca) (broadcast sca)]
                             [(cast sub-expr type) (cast sub-expr outT)]
                             [(arith-shift-right sub-expr n round? output-type) (arith-shift-right sub-expr (int-shiftr-gen) (choose* #t #f) outT)]
                             [(const-add sub-expr const-val saturation-func output-type)
                              (define saturation-func (choose nop (cond [(eq? outT 'int8) sat8] [(eq? outT 'uint8) satu8] [(eq? outT 'int16) sat16] [(eq? outT 'uint16) satu16])))
                              (define output-type (cond
                                                    [(eq? outT 'int8) (choose* 'int8 'int16 'uint16 'int32 'uint32)]
                                                    [(eq? outT 'uint8) (choose* 'uint8 'int16 'uint16 'int32 'uint32)]
                                                    [(eq? outT 'int16) (choose* 'uint16 'int32 'uint32)]
                                                    [(eq? outT 'uint16) (choose* 'uint16 'int32 'uint32)]
                                                    [(eq? outT 'int32) 'int32]
                                                    [(eq? outT 'uint32) 'uint32]))
                              (choose*
                               (const-add sub-expr (apply choose* add-consts) saturation-func output-type)
                               (saturate sub-expr #t (signedT? output-type))
                               (arith-shift-right sub-expr (int-shiftr-gen) #t output-type))]
                             [(convolve sub-expr kernel saturation-func output-type)
                              ;(define (weights-gen)
                              ;  (define x (apply choose* (append (list (int8_t (bv 1 8))) mul-consts)))
                              ;  (define y (apply choose* (append (list (int8_t (bv 1 8))) mul-consts)))
                              ;  (choose*
                              ;   x
                              ;   (int8_t (bvadd (eval (cpp-cast x 'int16)) (eval (cpp-cast y 'int16))))
                              ;   (int8_t (bvmul (eval (cpp-cast x 'int16)) (eval (cpp-cast y 'int16))))))
                              ;(define weights (list (weights-gen) (weights-gen) (weights-gen) (weights-gen) (weights-gen) (weights-gen) (weights-gen) (weights-gen) (weights-gen) (weights-gen)))
                              (define (weights-gen) (apply choose* (append (list (int8_t (bv 1 8))) mul-consts)))
                              (define weights (append
                                               (if (vec-mul? halide-expr)
                                                   (begin
                                                     (define factor (weights-gen))
                                                     (map (lambda(v) (int8_t (bvmul (eval (cpp-cast v 'int8)) (eval (cpp-cast factor 'int8))))) (weight-matrix-vals kernel)))
                                                   (weight-matrix-vals kernel))
                                               (list (weights-gen))))
                              (define saturation-func (choose nop (cond [(eq? outT 'int8) sat8] [(eq? outT 'uint8) satu8] [(eq? outT 'int16) sat16] [(eq? outT 'uint16) satu16])))
                              (define output-type (cond
                                                    [(eq? outT 'int8) (choose* 'int8 'int16 'uint16 'int32 'uint32)]
                                                    [(eq? outT 'uint8) (choose* 'uint8 'int16 'uint16 'int32 'uint32)]
                                                    [(eq? outT 'int16) (choose* 'uint16 'int32 'uint32)]
                                                    [(eq? outT 'uint16) (choose* 'uint16 'int32 'uint32)]
                                                    [(eq? outT 'int32) 'int32]
                                                    [(eq? outT 'uint32) 'uint32]))
                              (define radius (choose* (weight-matrix-rad kernel) (add1 (weight-matrix-rad kernel))))
                              (define ktype WMT_GENERAL)
                              (define k (weight-matrix radius (take weights radius) ktype))
                              (convolve sub-expr k saturation-func output-type)]
                             [_ (error "Well fuck 0" lifted-sub-expr)]))

  (run-synthesizer halide-expr synthesized-expr axioms))

;; Get the sub-expr of an IR expr
(define (get-subexpr-ir ir-expr)
  (match ir-expr
    [(load-data opts) (void)]
    [(broadcast sca) (void)]
    [(cast sub-expr type) sub-expr]
    [(arith-shift-right sub-expr n round? output-type) sub-expr]
    [(const-add sub-expr const-val saturation-func output-type) sub-expr]
    [(convolve sub-expr kernel satF outT) sub-expr]
    [_ (error "Well fuck 1" ir-expr)]))

(define (get-subexpr-list ir-expr)
  (define sub-exprs (list ir-expr))
  (match ir-expr
    [(load-data opts) sub-exprs]
    [(broadcast sca) sub-exprs]
    [(cast sub-expr type) (append sub-exprs (get-subexpr-list sub-expr))]
    [(arith-shift-right sub-expr n round? output-type) (append sub-exprs (get-subexpr-list sub-expr))]
    [(const-add sub-expr const-val saturation-func output-type) (append sub-exprs (get-subexpr-list sub-expr))]
    [(convolve sub-expr kernel satF outT) (append sub-exprs (get-subexpr-list sub-expr))]
    [_ (error "Well fuck 2" ir-expr)]))

(define (rec-fold sub-exprs halide-expr axioms add-consts sub-consts mul-consts div-consts)
  (if (empty? sub-exprs)
    (unsat)
    (begin
      (define sub-expr (first sub-exprs))
      (define ir-expr (fold-into-subexpr sub-expr halide-expr axioms add-consts sub-consts mul-consts div-consts))
      (if (unsat? ir-expr)
          (rec-fold (rest sub-exprs) halide-expr axioms add-consts sub-consts mul-consts div-consts)
          ir-expr))))

;; Define bottom-up synthesis loop for ir-expr generation
(define (synthesize-ir-expr-bu halide-expr buff-reads axioms)
  (define add-consts (set->list (list->set (extract-add-consts-hal halide-expr))))
  (define sub-consts (set->list (list->set (extract-sub-consts-hal halide-expr))))
  (define mul-consts (set->list (list->set (extract-mul-consts-hal halide-expr))))
  (define div-consts (set->list (list->set (extract-div-consts-hal halide-expr))))

  (define (pow2? val) (integer? (log (eval-to-int val) 2)))
  (define (log2 val) (mk-typed-expr (bv (exact-round (log (eval-to-int val) 2)) (bw val)) (type val)))
  
  (define (bool-const) (choose* #t #f))
  (define (get-generator-func opts) (when (not (empty? opts)) (lambda() (apply choose* opts))))
  
  (define int-shiftr-gen (get-generator-func (map log2 (filter pow2? div-consts))))
  (define int-divisor-gen (get-generator-func (remove* (filter pow2? div-consts) div-consts)))

  ;(debug (format "Entering ~a\n" halide-expr))
  
  (define lifted-expr
    (match halide-expr
      ;; Constructors
      [(x32 sca) (broadcast sca)]
      [(x64 sca) (broadcast sca)]
      [(x128 sca) (broadcast sca)]
      [(x256 sca) (broadcast sca)]
      [(ramp buf base stride len) (load-data buff-reads)]

      ;[(slice_vectors vec base stride len) (lambda (i) ((interpret vec) (+ (interpret base) (* i (interpret stride)))))]
      ;[(concat_vectors v1 v2) (lambda (i) (if (< i (num-elems-hal v1)) ((interpret v1) i) ((interpret v2) (- i (num-elems-hal v1)))))]

      ;; Type Casts
      ;[(uint8x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint8))]
      ;[(uint8x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint8))]
      [(uint8x128 vec)
       (define lifted-vec (synthesize-ir-expr-bu vec buff-reads axioms))
       (define lifted-sub-exprs (get-subexpr-list lifted-vec))
       
       ;; Try to fold the expr into the ir sub-expr
       (define ir-expr (rec-fold (reverse lifted-sub-exprs) halide-expr axioms add-consts sub-consts mul-consts div-consts))

       ;; If that didn't work, try to replace the ir sub-expr with a new fused expr
       (define sub-expr (get-subexpr-ir lifted-vec))
       (when (and (unsat? ir-expr) (not (void? sub-expr)))
         (define synthesized-expr (choose* (downcast sub-expr) (upcast sub-expr) (cast sub-expr 'uint8)))
         (define sol (run-synthesizer halide-expr synthesized-expr axioms))
         (when (not (unsat? sol))
           (set! ir-expr (evaluate synthesized-expr sol))))

       ;; If that didn't work, extend the expression with a new instruction
       (when (unsat? ir-expr)
         (set! ir-expr (run-synthesizer halide-expr (cast lifted-vec 'uint8) axioms)))
       
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]
      
      ;[(uint8x256 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint8))]

      ;[(int8x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int8))]
      ;[(int8x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int8))]
      ;[(int8x128 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int8))]

      ;[(uint16x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint16))]
      ;[(uint16x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint16))]
      ;[(uint16x128 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint16))]

      ;[(int16x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int16))]
      ;[(int16x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int16))]
      [(int16x128 vec)
       (define lifted-vec (synthesize-ir-expr-bu vec buff-reads axioms))

       ;; Try to fold the expr into the ir sub-expr
       (define ir-expr (fold-into-subexpr lifted-vec halide-expr axioms add-consts sub-consts mul-consts div-consts))

       ;; If that didn't work, try to replace the ir sub-expr with a new fused expr
       (define sub-expr (get-subexpr-ir lifted-vec))
       (when (and (unsat? ir-expr) (not (void? sub-expr)))
         (define synthesized-expr (choose* (downcast sub-expr) (upcast sub-expr) (cast sub-expr 'int16)))
         (define sol (run-synthesizer halide-expr synthesized-expr axioms))
         (when (not (unsat? sol))
           (set! ir-expr (evaluate synthesized-expr sol))))

       ;; If that didn't work, extend the expression with a new instruction
       (when (unsat? ir-expr)
         (set! ir-expr (run-synthesizer halide-expr (cast lifted-vec 'int16) axioms)))
       
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]

      ;[(cast data type) (cast data (choose 'int8 'int16 'int32 'uint8 'uint16 'uint32))]
    
      ;[(uint32x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint32))]
      ;[(uint32x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint32))]
      ;[(uint32x128 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint32))]

      ;[(int32x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int32))]
      ;[(int32x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int32))]
      ;[(int32x128 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int32))]

      ;; Operations
      [(vec-add v1 v2)
       (define lifted-v1 (synthesize-ir-expr-bu v1 buff-reads axioms))
       (define lifted-v2 (synthesize-ir-expr-bu v2 buff-reads axioms))

       ;(println halide-expr)
       ;(println lifted-v1)
       ;(println lifted-v2)
       
       ;; Try folding into lhs sub-expr
       (define ir-expr (fold-into-subexpr lifted-v1 halide-expr axioms add-consts sub-consts mul-consts div-consts))

       ;(println ir-expr)
       
       ;; If that didn't work, try folding into rhs sub-expr
       (when (unsat? ir-expr)
         (set! ir-expr (fold-into-subexpr lifted-v2 halide-expr axioms add-consts sub-consts mul-consts div-consts)))
       
       ;; If that didn't work, try to replace the ir sub-expr with a new fused expr
       (define sub-expr (choose* (get-subexpr-ir lifted-v1) (get-subexpr-ir lifted-v2)))
       (when (unsat? ir-expr)
         (define weights (list (apply choose* (append (list (int8_t (bv 1 8))) mul-consts)) (apply choose* (append (list (int8_t (bv 1 8))) mul-consts))))
         (define saturation-func (choose* nop sat8 sat16 satu8 satu16))
         (define output-type (choose* 'uint8 'uint16 'uint32 'int8 'int16 'int32))
         (define radius 2)
         (define ktype WMT_GENERAL)
         (define kernel (weight-matrix radius (take weights radius) ktype))
         (define conv-op (convolve sub-expr kernel saturation-func output-type))
         (set! ir-expr (run-synthesizer halide-expr conv-op axioms)))

       ;; If even that did not work, extend the ir-expr with a new instruction
       (set! sub-expr (choose* lifted-v1 lifted-v2))
       (when (unsat? ir-expr)
         ;; Conv
         (define output-type (type ((interpret-halide halide-expr) 0)))
         (define weights (list (apply choose* (append (list (int8_t (bv 1 8))) mul-consts)) (apply choose* (append (list (int8_t (bv 1 8))) mul-consts))))
         (define radius 2)
         (define ktype WMT_GENERAL)
         (define kernel (weight-matrix radius (take weights radius) ktype))
         (define conv-op (convolve sub-expr kernel nop output-type))
         (set! ir-expr (run-synthesizer halide-expr conv-op axioms)))
       (when (unsat? ir-expr)
         ;; Const add
         (define output-type (type ((interpret-halide halide-expr) 0)))
         (define const-add-op (const-add sub-expr (apply choose* add-consts) nop output-type))
         (set! ir-expr (run-synthesizer halide-expr const-add-op axioms)))
         
       ;; Return synthesized expr
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]
    
      [(vec-sub v1 v2)
       (define lifted-v1 (synthesize-ir-expr-bu v1 buff-reads axioms))
       (define lifted-v2 (synthesize-ir-expr-bu v2 buff-reads axioms))
       (error "fuck" halide-expr)]

      [(vec-mul v1 v2)
       (define lifted-v1 (synthesize-ir-expr-bu v1 buff-reads axioms))
       (define lifted-v2 (synthesize-ir-expr-bu v2 buff-reads axioms))
       
       ;; Try folding into lhs sub-expr
       (define ir-expr (fold-into-subexpr lifted-v1 halide-expr axioms add-consts sub-consts mul-consts div-consts))
       
       ;; If that didn't work, try folding into rhs sub-expr
       (when (unsat? ir-expr)
         (set! ir-expr (fold-into-subexpr lifted-v2 halide-expr axioms add-consts sub-consts mul-consts div-consts)))

       ;; If that didn't work, try to replace the ir sub-expr with a new fused expr
       (define sub-expr (choose* (get-subexpr-ir lifted-v1) (get-subexpr-ir lifted-v2)))
       (when (unsat? ir-expr)
         (define weights (if (empty? mul-consts) (list (void)) (list (apply choose* mul-consts))))
         (define saturation-func nop)
         (define output-type (type ((interpret-halide halide-expr) 0)))
         (define radius 1)
         (define ktype WMT_GENERAL)
         (define kernel (weight-matrix radius (take weights radius) ktype))
         (define conv-op (convolve sub-expr kernel saturation-func output-type))
         (set! ir-expr (run-synthesizer halide-expr conv-op axioms)))

       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]
    
      [(vec-div v1 v2)
       (define lifted-v1 (synthesize-ir-expr-bu v1 buff-reads axioms))
       (define lifted-v2 (synthesize-ir-expr-bu v2 buff-reads axioms))

       ;; Try folding into lhs sub-expr
       (define ir-expr (fold-into-subexpr lifted-v1 halide-expr axioms add-consts sub-consts mul-consts div-consts))
       
       ;; If that didn't work, try folding into rhs sub-expr
       (when (unsat? ir-expr)
         (set! ir-expr (fold-into-subexpr lifted-v2 halide-expr axioms add-consts sub-consts mul-consts div-consts)))

       ;; If that didn't work, try to replace the ir sub-expr with a new fused expr
       (define sub-expr (choose* (get-subexpr-ir lifted-v1) (get-subexpr-ir lifted-v2)))
       (when (and (unsat? ir-expr) (not (void? int-divisor-gen)))
         (define div-op (const-divide sub-expr (int-divisor-gen)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (unsat? ir-expr)
         (define div-op (packhi sub-expr (bool-const)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (and (unsat? ir-expr) (not (void? int-shiftr-gen)))
         (define div-op (logic-shift-right sub-expr (int-shiftr-gen)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (and (unsat? ir-expr) (not (void? int-shiftr-gen)))
         (define output-type (type ((interpret-halide halide-expr) 0)))
         (define div-op (arith-shift-right sub-expr (int-shiftr-gen) (bool-const) output-type))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))

       ;; If even that did not work, extend the ir-expr with a new instruction
       (set! sub-expr (choose* lifted-v1 lifted-v2))
       (when (and (unsat? ir-expr) (not (void? int-divisor-gen)))
         (define div-op (const-divide sub-expr (int-divisor-gen)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (unsat? ir-expr)
         (define div-op (packhi sub-expr (bool-const)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (and (unsat? ir-expr) (not (void? int-shiftr-gen)))
         (define div-op (logic-shift-right sub-expr (int-shiftr-gen)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (and (unsat? ir-expr) (not (void? int-shiftr-gen)))
         (define output-type (type ((interpret-halide halide-expr) 0)))
         (define div-op (arith-shift-right sub-expr (int-shiftr-gen) (bool-const) output-type))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       
       ;; Return synthesized expr
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]
    
      ;[(vec-min v1 v2) (lambda (i) (do-min ((interpret v1) i) ((interpret v2) i)))]
      ;[(vec-max v1 v2) (lambda (i) (do-max ((interpret v1) i) ((interpret v2) i)))]
    
      ;; Base case
      [_ (error "NGL, did not expect" halide-expr)]))

  ;(debug (format "Expr so far: ~a\n" lifted-expr))
  ;(debug (format "Exiting ~a\n" halide-expr))

  lifted-expr)

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
        (define orig-expr (ir-expr-spec-expr spec))

        (define VEC_LANES (num-elems-hal orig-expr))
        
        ;; Verification conditions
        (define (bounded-eq? oe se lanes)
          (for ([i lanes])
            (set-curr-cn-ir i)
            (assert (eq? (oe i) (elem-ir se i)))
            (set-curr-cn-ir (+ i (/ VEC_LANES 2) 1))
            (assert (eq? (oe (+ i (/ VEC_LANES 2) 1)) (elem-ir se (+ i (/ VEC_LANES 2) 1))))))
        
        (display "Searching...\n")
        (display "============\n")

        ;; Synthesize expression
        (clear-asserts!)
        (for ([axiom (ir-expr-spec-axioms spec)]) (assert axiom))
        (define st (current-seconds))
        (define sol (synthesize #:forall (ir-expr-spec-ctx spec)
                                #:guarantee (bounded-eq? (interpret-halide orig-expr) (interpret-ir synthesized-expr) MC_BND)))
        (define runtime (- (current-seconds) st))

        (if (eq? sol (unsat))
            (begin
              (display "Failed to find an equivalent IR expression.\n\n")
              (debug (format "Synthesis time: ~a seconds\n\n" runtime))
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

(define (synthesize-hvx-expr spec)
  (define ir-expr (hvx-expr-spec-expr spec))
  (define ir-expr-sol (hvx-expr-spec-sol spec))
  (define ir-expr-ctx (hvx-expr-spec-ctx spec))
  (define ir-expr-axioms (hvx-expr-spec-axioms spec))
  
  (match ir-expr
    [(packhi sub-expr signed?)
     (begin
       (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms))
       (define hvx-sub-expr (synthesize-hvx-expr hvx-sub-spec))
       (display "Lifting IR to HVX...\n")
       (display "====================\n")
       (display (format "IR Operation: ~a\n\n" ir-expr))
       (reset-hvx-instr-bnd)
       (synthesize-equiv-hvx spec sub-expr hvx-sub-expr))]
    
    [(arith-shift-right sub-expr n round? outputType)
     (begin
       (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms))
       (define hvx-sub-expr (synthesize-hvx-expr hvx-sub-spec))
       (display "Lifting IR to HVX...\n")
       (display "====================\n")
       (display (format "IR Operation: ~a\n\n" ir-expr))
       (reset-hvx-instr-bnd)
       (synthesize-equiv-hvx spec sub-expr hvx-sub-expr))]

    [(convolve sub-expr kernel saturateFunc outputType)
     (begin
       (define hvx-sub-spec (hvx-expr-spec sub-expr ir-expr-sol ir-expr-ctx ir-expr-axioms))
       (define hvx-sub-expr (synthesize-hvx-expr hvx-sub-spec))
       (display "Lifting IR to HVX...\n")
       (display "====================\n")
       (display (format "IR Operation: ~a\n\n" ir-expr))
       (reset-hvx-instr-bnd)
       (synthesize-equiv-hvx spec sub-expr hvx-sub-expr))]

    [(load-data opts) (gather* opts)]

    [_ (println "NYI")]))

;; Define modular synthesis loop for HVX expression generation
(define (synthesize-equiv-hvx spec sub-expr hvx-sub-expr)
  (if (not (hvx-instr-limit-exceeded?))
      (begin
        (display "Generating HVX Grammar...\n")
        (display "=========================\n")
        (debug (format "Number of instructions: ~a\n" (hvx-instr-bnd)))
        (debug (format "Set of instructions: Specialized\n\n"))

        (define ??hvx-expr-grm (generate-hvx-grammar (hvx-expr-spec-expr spec) sub-expr hvx-sub-expr))
        (define st (current-seconds))
        (define res (synthesize-optimal spec ??hvx-expr-grm basic-expr-cost hvx-sub-expr))
        
        (if (eq? res (unsat))
            (begin
              (display "Failed to find an equivalent HVX expression.\n\n")
              (increment-hvx-instr-bnd)
              (synthesize-equiv-hvx spec sub-expr hvx-sub-expr))
            res))
      (begin
        (display "Maximum instruction bound reached. Giving up.\n\n")
        (exit)
        (void))))

(define (synthesize-optimal spec ??hvx-expr-grm cost-model hvx-sub-expr [curr-best-sol (void)])
  (define ir-expr (hvx-expr-spec-expr spec))
  (define ir-expr-sol (hvx-expr-spec-sol spec))
  (define ir-expr-ctx (hvx-expr-spec-ctx spec))
  (define ir-expr-axioms (hvx-expr-spec-axioms spec))

  (define synthesized-hvx-expr (??hvx-expr-grm))

  (define (bounded-eq? oe se lanes)    
    (for ([i lanes])
      (cond
        [(hvx-pair? se)
         (set-curr-cn-ir i)
         (set-curr-cn-hvx i)
         (assert (eq? (evaluate (elem-ir oe i) ir-expr-sol) (v0-elem-hvx se i)))
         (set-curr-cn-ir (+ i 1))
         (set-curr-cn-hvx (+ i 1))
         (assert (eq? (evaluate (elem-ir oe (+ i 1)) ir-expr-sol) (v1-elem-hvx se (+ i 1))))]
        [else
         (set-curr-cn-ir i)
         (set-curr-cn-hvx i)
         (assert (eq? (evaluate (elem-ir oe i) ir-expr-sol) (elem-hvx se i)))
         (set-curr-cn-ir (+ i 1))
         (set-curr-cn-hvx (+ i 1))
         (assert (eq? (evaluate (elem-ir oe (+ i 1)) ir-expr-sol) (elem-hvx se (+ i 1))))])))

  (define curr-best-cost (if (void? curr-best-sol) +inf.0 (cost-model curr-best-sol)))

  (clear-asserts!)
  (for ([axiom ir-expr-axioms]) (assert axiom))
  (define st (current-seconds))
  (define sol (synthesize #:forall ir-expr-ctx
                          #:guarantee (begin
                                       (bounded-eq? (interpret-ir ir-expr) (interpret-hvx synthesized-hvx-expr) MC_BND)
                                       (when (not (eq? curr-best-cost +inf.0)) (assert (< (cost-model synthesized-hvx-expr) curr-best-cost))))))
  (define runtime (- (current-seconds) st))

  (cond
    [(unsat? sol) (cond
                    [(void? curr-best-sol) sol]
                    [else (display (format "Failed to find an equivalent HVX expression with cost lower than ~a.\n\n" curr-best-cost))
                          (debug (format "Synthesis time: ~a seconds\n\n" runtime))
                          curr-best-sol])]
    [else (display "Successfully found an equivalent HVX expression.\n\n")
          (debug (format "~a\n\n" (evaluate synthesized-hvx-expr sol)))
          (debug (format "Expression cost: ~a\n\n" (cost-model (evaluate synthesized-hvx-expr sol))))
          (debug (format "Synthesis time: ~a seconds\n\n" runtime))
          (display "Searching for a more optimal solution...\n\n")
          (synthesize-optimal spec ??hvx-expr-grm cost-model hvx-sub-expr (evaluate synthesized-hvx-expr sol))]))

(define (verify-equiv? halide-spec hvx-expr ctx axioms)
  (display "Verifying expression equivalence over full-length vectors...\n")
  (display "============================================================\n")

  (define VEC_LANES (num-elems-hal halide-spec))

  ;; The visitor clones each node in the AST, converting it from a graph to a tree
  (define (iden node) node)
  (set! hvx-expr (visit-hvx hvx-expr iden))

  (define interpreted-s-expr (interpret-hvx hvx-expr))
  (define interpreted-o-expr (interpret-halide halide-spec))

  ;; Verify multiple lanes at once (Slower...takes 1554 seconds (128 lanes) for baseline gaussian stage 2 example)
  (define (equiv-output? oe se)
    (for ([lane 8])
      (cond
        [(hvx-pair? se)
         (set-curr-cn-hvx lane)
         (assert (eq? (oe lane) (v0-elem-hvx se lane)))]
        [else
         (set-curr-cn-hvx lane)
         (assert (eq? (oe lane) (elem-hvx se lane)))])))
  
  (clear-asserts!)
  (for ([axiom axioms]) (assert axiom))
  (define st (current-seconds))
  (define sol (synthesize #:forall ctx
                          #:guarantee (equiv-output? interpreted-o-expr interpreted-s-expr)))
  (define runtime (- (current-seconds) st))
  (define correct? (not (unsat? sol)))

  ;; Verify all lanes incrementally (Faster...takes 30 seconds for baseline gaussian stage 2 example)
  (define (lane-eq? oe se lane)
    (cond
      [(hvx-pair? se)
       (set-curr-cn-hvx lane)
       (assert (eq? (oe lane) (v0-elem-hvx se lane)))]
      [else
       (set-curr-cn-hvx lane)
       (assert (eq? (oe lane) (elem-hvx se lane)))]))
  
  (define sols (list))
  (clear-asserts!)
  (for ([axiom axioms]) (assert axiom))
  (set! st (current-seconds))
  (for ([lane VEC_LANES])
    (set-curr-cn-hvx lane)
    (define sol (synthesize #:forall ctx
                            #:guarantee (lane-eq? interpreted-o-expr interpreted-s-expr lane)))
    (set! sols (append sols (list sol))))
  (set! runtime (- (current-seconds) st))
  (set! correct? (and correct? (eq? (vec-len halide-spec) (num-elems-hvx interpreted-s-expr)) (not (for/or ([sol sols]) (unsat? sol)))))
  
  ;; Print solution
  (debug (format "Verification time: ~a seconds\n\n" runtime))

  correct?)

;; We can simplify our verification query by replacing each array access as a unique symbolic variable.
;; This allows z3 to not reason about the indexing expressions.
;; Currently, I am assuming that if two indexing expression generated by Halide are *syntactically* different, then they access
;; different points of the array. If this assumption is incorrect, we can easily make a z3 query to confirm this assumption before
;; applying the simplification.
(define abstractions (make-hash))

(define (abstract-arr-accesses buff-reads)
  (for/list ([lane-buff-reads buff-reads])
    (for/list ([buff-read lane-buff-reads])
      (define v (eval buff-read))
      (define t (type buff-read))
      (define bits (bw buff-read))
      (when (not (hash-has-key? abstractions v))
        (define-symbolic* arr-read (bitvector bits))
        (hash-set! abstractions v (mk-typed-expr arr-read t)))
      (hash-ref abstractions v))))

(define (replace-arr-accesses expr)
  (match expr
    [(int8_t v) (int8_t (replace-arr-accesses v))]
    [(int16_t v) (int16_t (replace-arr-accesses v))]
    [(int32_t v) (int32_t (replace-arr-accesses v))]
    [(uint8_t v) (uint8_t (replace-arr-accesses v))]
    [(uint16_t v) (uint16_t (replace-arr-accesses v))]
    [(uint32_t v) (uint32_t (replace-arr-accesses v))]

    [(expression op operands ...)

     ;; Silly workaround -- ask rosette folks how to do this properly
     (define-symbolic hack (~> integer? (bitvector 16)))
     (define hack2 (hack 0))
     (define app (match hack2 [(expression op2 ops2 ...) op2]))

     (cond
       [(eq? op bvadd) (foldr bvadd (replace-arr-accesses (car operands)) (for/list ([operand (cdr operands)]) (replace-arr-accesses operand)))]
       [(eq? op bvmul) (foldr bvmul (replace-arr-accesses (car operands)) (for/list ([operand (cdr operands)]) (replace-arr-accesses operand)))]
       [(eq? op bvsdiv) (bvsdiv (replace-arr-accesses (list-ref operands 0)) (replace-arr-accesses (list-ref operands 1)))]
       [(eq? op bvudiv) (bvudiv (replace-arr-accesses (list-ref operands 0)) (replace-arr-accesses (list-ref operands 1)))]
       [(eq? op extract) (extract (list-ref operands 0) (list-ref operands 1) (replace-arr-accesses (list-ref operands 3)))]
       [(eq? op zero-extend) (zero-extend (replace-arr-accesses (list-ref operands 0)) (list-ref operands 1))]
       [(eq? op app) (eval (hash-ref abstractions expr))]
       [else (error "NYI: abstract array accesses for" expr)])]
     
    [_ expr]))

(provide synthesize-hvx)