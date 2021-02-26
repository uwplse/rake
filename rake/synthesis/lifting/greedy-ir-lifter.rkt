#lang rosette

(require rake/util)

(require rake/halide/ir/types)
(require rake/halide/ir/analysis)
(require rake/halide/ir/interpreter)

(require rake/synthesis/ir)

(require rake/cpp/types)
(require rake/cpp/cast)

(require rosette/lib/angelic)

(define MC_BND 1)

(define (synthesize-ir-expr-greedy halide-expr axioms)
  (display "Lifting input expression to IR...\n")
  (display "=================================\n\n")

  ;; Extract the set of buffer reads
  (define buff-reads (extract-buf-reads-hal halide-expr))

  (define st (current-seconds))
  (define res (synthesize-ir-expr halide-expr buff-reads axioms))
  (define runtime (- (current-seconds) st))
  
  (if (eq? res (unsat))
      (begin
        (display "Failed to find an equivalent IR expression.\n\n")
        (debug (format "Synthesis time: ~a seconds\n\n" runtime)))
      (begin
        (display "Successfully found an equivalent IR expression.\n\n")
        (debug (car res))
        (debug (format "\nSynthesis time: ~a seconds\n" runtime))
        res)))

;; Define bottom-up synthesis loop for ir-expr generation
(define (synthesize-ir-expr halide-expr buff-reads axioms)
  ;; Extract the sets of constants
  (define add-consts (set->list (list->set (extract-add-consts-hal halide-expr))))
  (define sub-consts (set->list (list->set (extract-sub-consts-hal halide-expr))))
  (define mul-consts (set->list (list->set (extract-mul-consts-hal halide-expr))))
  (define div-consts (set->list (list->set (extract-div-consts-hal halide-expr))))
  
  (define int-shiftr-gen (get-generator-func (map log2 (filter pow2? div-consts))))
  (define int-divisor-gen (get-generator-func (remove* (filter pow2? div-consts) div-consts)))

  ;(debug (format "Entering ~a\n" halide-expr))
  
  (define lifted-expr
    (match halide-expr
      ;; Constructors
      [(x32 sca) (cons (broadcast sca) (model))]
      [(x64 sca) (cons (broadcast sca) (model))]
      [(x128 sca) (cons (broadcast sca) (model))]
      [(x256 sca) (cons (broadcast sca) (model))]

      [(load buf idxs) (cons (load-data buff-reads) (model))]
      ;[(ramp buf base stride len) (cons (load-data buff-reads) (model))]

      ;; Shuffles
      [(dynamic_shuffle vec idxs st end) (cons (load-data buff-reads) (model))]

      [(slice_vectors vec base stride len)
       (define lifted-vec (car (synthesize-ir-expr vec buff-reads axioms)))

       (define ir-expr (unsat))
       
       (when (load-data? lifted-vec)
         (set! ir-expr (cons (load-data buff-reads) (model))))
       
       ;; Try folding into sub-expr
       (when (unsat? ir-expr)
         (set! ir-expr (fold-into-subexpr lifted-vec halide-expr axioms add-consts sub-consts mul-consts div-consts)))
       
       (when (unsat? ir-expr)
         (error "NYI: extend ir-expr when encountering slice_vectors" ir-expr))

       ;; Return synthesized expr
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]

      [(concat_vectors v1 v2)
       (define lifted-v1 (car (synthesize-ir-expr v1 buff-reads axioms)))
       (define lifted-v2 (car (synthesize-ir-expr v2 buff-reads axioms)))

       (define ir-expr (unsat))
       
       (when (and (load-data? lifted-v1) (load-data? lifted-v2))
         (set! ir-expr (cons (load-data buff-reads) (model))))
       
       ;; Try folding into lhs sub-expr
       (when (unsat? ir-expr)
         (set! ir-expr (fold-into-subexpr lifted-v1 halide-expr axioms add-consts sub-consts mul-consts div-consts)))
       
       ;; If that didn't work, try folding into rhs sub-expr
       (when (unsat? ir-expr)
         (set! ir-expr (fold-into-subexpr lifted-v2 halide-expr axioms add-consts sub-consts mul-consts div-consts)))
       
       ;; If that didn't work, extend the ir-expr with a new instruction
       (define sub-expr (choose* lifted-v1 lifted-v2))
       (when (unsat? ir-expr)
         (error "NYI: extend ir-expr when encountering concat_vec" ir-expr))

       ;; Return synthesized expr
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]
      
      ;; Type Casts
      ;[(uint8x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint8))]
      ;[(uint8x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint8))]
      [(uint8x128 vec)
       (define lifted-vec (car (synthesize-ir-expr vec buff-reads axioms)))
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
       (define lifted-vec (car (synthesize-ir-expr vec buff-reads axioms)))

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
       (define lifted-v1 (car (synthesize-ir-expr v1 buff-reads axioms)))
       (define lifted-v2 (car (synthesize-ir-expr v2 buff-reads axioms)))

       ;; Try folding into lhs sub-expr
       (define ir-expr (fold-into-subexpr lifted-v1 halide-expr axioms add-consts sub-consts mul-consts div-consts))

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
       (define lifted-v1 (car (synthesize-ir-expr v1 buff-reads axioms)))
       (define lifted-v2 (car (synthesize-ir-expr v2 buff-reads axioms)))
       (error "fuck" halide-expr)]

      [(vec-mul v1 v2)
       (define lifted-v1 (car (synthesize-ir-expr v1 buff-reads axioms)))
       (define lifted-v2 (car (synthesize-ir-expr v2 buff-reads axioms)))
       
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

       ;; If even that did not work, extend the ir-expr with a new instruction
       (set! sub-expr (choose* lifted-v1 lifted-v2))
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
       (define lifted-v1 (car (synthesize-ir-expr v1 buff-reads axioms)))
       (define lifted-v2 (car (synthesize-ir-expr v2 buff-reads axioms)))

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

;; Try to fold the expr into the ir sub-expr
(define (fold-into-subexpr lifted-sub-expr halide-expr axioms add-consts sub-consts mul-consts div-consts)
  (define int-shiftr-gen (get-generator-func (map log2 (filter pow2? div-consts))))
  
  (define outT (type ((interpret-halide halide-expr) 0)))

  ;(println "\n====================")
  ;(println (format "Curent expr: ~a" lifted-sub-expr))
  ;(println (format "Fold expr: ~a with type ~a" halide-expr outT))
  
  (define synthesized-expr (match lifted-sub-expr
                             [(load-data opts) lifted-sub-expr]
                             [(broadcast sca) (broadcast sca)]
                             [(cast sub-expr type) (cast sub-expr outT)]
                             [(arith-shift-right sub-expr n round? output-type)
                              (choose*
                               (arith-shift-right sub-expr (int-shiftr-gen) (choose* #t #f) outT)
                               (packhi sub-expr (signedT? outT)))]
                             [(const-add sub-expr const-val saturation-func output-type)
                              (define saturation-func (choose* nop (cond [(eq? outT 'int8) sat8] [(eq? outT 'uint8) satu8] [(eq? outT 'int16) sat16] [(eq? outT 'uint16) satu16])))
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
                              (define saturation-func (choose* nop (cond [(eq? outT 'int8) sat8] [(eq? outT 'uint8) satu8] [(eq? outT 'int16) sat16] [(eq? outT 'uint16) satu16])))
                              (define output-type (cond
                                                    [(eq? outT 'int8) (choose* 'int8 'int16 'uint16 'int32 'uint32)]
                                                    [(eq? outT 'uint8) (choose* 'uint8 'int16 'uint16 'int32 'uint32)]
                                                    [(eq? outT 'int16) (choose* 'int16 'int32 'uint32)]
                                                    [(eq? outT 'uint16) (choose* 'uint16 'int32 'uint32)]
                                                    [(eq? outT 'int32) 'int32]
                                                    [(eq? outT 'uint32) 'uint32]))
                              (define radius (choose* (weight-matrix-rad kernel) (add1 (weight-matrix-rad kernel))))
                              (define ktype WMT_GENERAL)
                              (define k (weight-matrix radius (take weights radius) ktype))
                              (convolve sub-expr k saturation-func output-type)]
                             [_ (error "Well fuck 0" lifted-sub-expr)]))

  (run-synthesizer halide-expr synthesized-expr axioms))

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

  ;(display (format "Ran synthesizer for ~a seconds.\n" runtime))

  (if (unsat? sol)
      sol
      (cons (evaluate synthesized-expr sol) sol)))

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

;; Some utility functions
(define (pow2? val) (integer? (log (eval-to-int val) 2)))
(define (log2 val) (mk-typed-expr (bv (exact-round (log (eval-to-int val) 2)) (bw val)) (type val)))
(define (bool-const) (choose* #t #f))
(define (get-generator-func opts) (when (not (empty? opts)) (lambda() (apply choose* opts))))

(provide synthesize-ir-expr-greedy)