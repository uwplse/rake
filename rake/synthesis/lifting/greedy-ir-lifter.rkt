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

(define load-data-id -1)
(define (get-load-id) (set! load-data-id (add1 load-data-id)) load-data-id)

(define node-id 99)
(define (get-node-id) (set! node-id (add1 node-id)) node-id)

(define annotations (make-hash))
(define learned-axioms (list))

(define buff-reads-copy (list))

(define (synthesize-ir-expr-greedy halide-expr axioms)
  (display "Lifting input expression to IR...\n")
  (display "=================================\n\n")

  ;; Init state
  (set! load-data-id -1)
  (hash-clear! annotations)
  (set! learned-axioms (list))

  ;; Extract the set of buffer reads
  (define buff-reads (extract-buf-reads-hal halide-expr))
  (set! buff-reads-copy buff-reads)

  (define st (current-seconds))
  (define res (synthesize-ir-expr halide-expr buff-reads axioms))
  (define runtime (- (current-seconds) st))
  
  (if (eq? res (unsat))
      (begin
        (display "Failed to find an equivalent IR expression.\n\n")
        (debug (format "Synthesis time: ~a seconds\n\n" runtime))
        (values (void) (void) (void)))
      (begin
        (display "Successfully found an equivalent IR expression.\n\n")
        (debug (car res))
        (debug (format "\nSynthesis time: ~a seconds\n" runtime))
        (values (car res) (cdr res) annotations))))

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
      [(x32 sca) (cons (broadcast (get-node-id) sca) (sat))]
      [(x64 sca) (cons (broadcast (get-node-id) sca) (sat))]
      [(x128 sca) (cons (broadcast (get-node-id) sca) (sat))]
      [(x256 sca) (cons (broadcast (get-node-id) sca) (sat))]

      [(load buf idxs align)
       (cons (load-data (get-load-id) buff-reads) (sat))]
      ;[(ramp buf base stride len) (cons (load-data buff-reads) (sat))]

      ;; Shuffles
      [(dynamic_shuffle vec idxs st end)
       (cons (load-data (get-load-id) buff-reads) (sat))]

      [(slice_vectors vec base stride len)
       (define lifted-vec (car (synthesize-ir-expr vec buff-reads axioms)))

       (define ir-expr (unsat))
       
       (when (load-data? lifted-vec)
         (set! ir-expr (cons lifted-vec (sat))))
       
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
         (set! ir-expr (cons (load-data (get-load-id) buff-reads) (sat))))
       
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
       (define res-vec (synthesize-ir-expr vec buff-reads axioms))
       (define lifted-vec (car res-vec))
       (define lifted-sub-exprs (get-subexpr-list lifted-vec))

       (define sub-sol (cdr res-vec))

       ;; Try to fold the expr into the ir sub-expr
       (define ir-expr (rec-fold (reverse lifted-sub-exprs) halide-expr axioms add-consts sub-consts mul-consts div-consts sub-sol))

       ;; If that didn't work, try to replace the ir sub-expr with a new fused expr
       (define sub-expr (get-subexpr-ir lifted-vec))
       (when (and (unsat? ir-expr) (not (void? sub-expr)))
         (define synthesized-expr (choose* (downcast sub-expr) (upcast sub-expr) (cast (get-node-id) sub-expr 'uint8)))
         (define sol (run-synthesizer halide-expr synthesized-expr axioms sub-sol))
         (when (not (unsat? sol))
           (set! ir-expr (evaluate synthesized-expr sol))))

       ;; If that didn't work, extend the expression with a new instruction
       (when (unsat? ir-expr)
         (set! ir-expr (run-synthesizer halide-expr (cast (get-node-id) lifted-vec 'uint8) axioms sub-sol)))
       
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]
      
      ;[(uint8x256 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint8))]

      ;[(int8x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int8))]
      ;[(int8x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int8))]
      ;[(int8x128 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int8))]

      ;[(uint16x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint16))]
      ;[(uint16x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint16))]
      [(uint16x128 vec)
       (define lifted-vec (car (synthesize-ir-expr vec buff-reads axioms)))

       ;; Try to fold the expr into the ir sub-expr
       (define ir-expr (fold-into-subexpr lifted-vec halide-expr axioms add-consts sub-consts mul-consts div-consts))

       ;; If that didn't work, try to replace the ir sub-expr with a new fused expr
       (define sub-expr (get-subexpr-ir lifted-vec))
       (when (and (unsat? ir-expr) (not (void? sub-expr)))
         (define synthesized-expr (choose* (downcast sub-expr) (upcast sub-expr) (cast (get-node-id) sub-expr 'int16)))
         (define sol (run-synthesizer halide-expr synthesized-expr axioms))
         (when (not (unsat? sol))
           (set! ir-expr (evaluate synthesized-expr sol))))

       ;; If that didn't work, extend the expression with a new instruction
       (when (unsat? ir-expr)
         (set! ir-expr (run-synthesizer halide-expr (cast (get-node-id) lifted-vec 'uint16) axioms)))
       
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]

      ;[(int16x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int16))]
      ;[(int16x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int16))]
      [(int16x128 vec)
       (define lifted-vec (car (synthesize-ir-expr vec buff-reads axioms)))

       ;; Try to fold the expr into the ir sub-expr
       (define ir-expr (fold-into-subexpr lifted-vec halide-expr axioms add-consts sub-consts mul-consts div-consts))

       ;; If that didn't work, try to replace the ir sub-expr with a new fused expr
       (define sub-expr (get-subexpr-ir lifted-vec))
       (when (and (unsat? ir-expr) (not (void? sub-expr)))
         (define synthesized-expr (choose* (downcast sub-expr) (upcast sub-expr) (cast (get-node-id) sub-expr 'int16)))
         (define sol (run-synthesizer halide-expr synthesized-expr axioms))
         (when (not (unsat? sol))
           (set! ir-expr (evaluate synthesized-expr sol))))

       ;; If that didn't work, extend the expression with a new instruction
       (when (unsat? ir-expr)
         (set! ir-expr (run-synthesizer halide-expr (cast (get-node-id) lifted-vec 'int16) axioms)))
       
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]

      ;[(cast data type) (cast data (choose 'int8 'int16 'int32 'uint8 'uint16 'uint32))]
    
      ;[(uint32x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint32))]
      ;[(uint32x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint32))]
      ;[(uint32x128 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint32))]

      ;[(int32x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int32))]
      ;[(int32x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int32))]

      [(int32x128 vec)
       (define lifted-vec (car (synthesize-ir-expr vec buff-reads axioms)))

       ;; Try to fold the expr into the ir sub-expr
       (define ir-expr (fold-into-subexpr lifted-vec halide-expr axioms add-consts sub-consts mul-consts div-consts))

       ;; If that didn't work, try to replace the ir sub-expr with a new fused expr
       (define sub-expr (get-subexpr-ir lifted-vec))
       (when (and (unsat? ir-expr) (not (void? sub-expr)))
         (define synthesized-expr (choose* (downcast sub-expr) (upcast sub-expr) (cast (get-node-id) sub-expr 'int32)))
         (define sol (run-synthesizer halide-expr synthesized-expr axioms))
         (when (not (unsat? sol))
           (set! ir-expr (evaluate synthesized-expr sol))))

       ;; If that didn't work, extend the expression with a new instruction
       (when (unsat? ir-expr)
         (set! ir-expr (run-synthesizer halide-expr (cast (get-node-id) lifted-vec 'int32) axioms)))
       
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]
      
      ;; Operations
      [(vec-add v1 v2)
       (define res-v1 (synthesize-ir-expr v1 buff-reads axioms))
       (define res-v2 (synthesize-ir-expr v2 buff-reads axioms))

       (define lifted-v1 (car res-v1))
       (define lifted-v2 (car res-v2))

       ;; Try folding into lhs sub-expr
       (define ir-expr (fold-into-subexpr lifted-v1 halide-expr axioms add-consts sub-consts mul-consts div-consts))

       ;; If that didn't work, try folding into rhs sub-expr
       (when (unsat? ir-expr)
         (set! ir-expr (fold-into-subexpr lifted-v2 halide-expr axioms add-consts sub-consts mul-consts div-consts)))

       ;; If that didn't work, try to replace the ir sub-expr with a new fused expr
       (define sub-expr (choose* (get-subexpr-ir lifted-v1) (get-subexpr-ir lifted-v2)))
       (when (unsat? ir-expr)
         (define weights (list (apply choose* (append (list (int8_t (bv 1 8))) mul-consts)) (apply choose* (append (list (int8_t (bv 1 8))) mul-consts))))
         (define saturation-func nop);(choose* nop sat8 sat16 satu8 satu16))
         (define output-type (choose* 'uint8 'uint16 'uint32 'int8 'int16 'int32))
         (define radius 2)
         (define ktype WMT_GENERAL)
         (define kernel (weight-matrix radius (take weights radius) ktype))
         (define conv-op (convolve (get-node-id) sub-expr kernel saturation-func output-type))
         (set! ir-expr (run-synthesizer halide-expr conv-op axioms)))

       ;; If even that did not work, extend the ir-expr with a new instruction
       (set! sub-expr (choose* lifted-v1 lifted-v2))
       (when (and (unsat? ir-expr) (not (empty? add-consts)))
         ;; Const add
         (define output-type (type ((interpret-halide halide-expr) 0)))
         (define const-add-op (const-add (get-node-id) sub-expr (apply choose* add-consts) nop output-type))
         (set! ir-expr (run-synthesizer halide-expr const-add-op axioms)))
       (set! sub-expr (choose* lifted-v1 lifted-v2))
       (when (unsat? ir-expr)
         ;; Conv
         (define output-type (type ((interpret-halide halide-expr) 0)))
         (define weights (list (int8_t (bv 1 8)) (int8_t (bv 1 8))))
         (define radius 2)
         (define ktype WMT_GENERAL)
         (define kernel (weight-matrix radius (take weights radius) ktype))
         (define conv-op (convolve (get-node-id) sub-expr kernel nop output-type))
         
         ;; Merge sols
         (define merged-sol (merge-sols (cdr res-v1) (cdr res-v2)))
         (set! ir-expr (run-synthesizer halide-expr conv-op axioms merged-sol)))
       (set! sub-expr (zip-data (get-node-id) lifted-v1 lifted-v2))
       (when (unsat? ir-expr)
         ;; Conv
         (define output-type (type ((interpret-halide halide-expr) 0)))
         (define weights (list (int8_t (bv 1 8)) (int8_t (bv 1 8))))
         (define radius 2)
         (define ktype WMT_GENERAL)
         (define kernel (weight-matrix radius (take weights radius) ktype))
         (define conv-op (convolve (get-node-id) sub-expr kernel nop output-type))
         ;; Merge sols
         (define merged-sol (merge-sols (cdr res-v1) (cdr res-v2)))
         (set! ir-expr (run-synthesizer halide-expr conv-op axioms merged-sol)))

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
         (define conv-op (convolve (get-node-id) sub-expr kernel saturation-func output-type))
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
         (define conv-op (convolve (get-node-id) sub-expr kernel saturation-func output-type))
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
         (define div-op (packhi (get-node-id) sub-expr (bool-const)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (and (unsat? ir-expr) (not (void? int-shiftr-gen)))
         (define div-op (logic-shift-right (get-node-id) sub-expr (int-shiftr-gen)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (and (unsat? ir-expr) (not (void? int-shiftr-gen)))
         (define output-type (type ((interpret-halide halide-expr) 0)))
         (define div-op (arith-shift-right (get-node-id) sub-expr (int-shiftr-gen) (bool-const) output-type))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))

       ;; If even that did not work, extend the ir-expr with a new instruction
       (set! sub-expr (choose* lifted-v1 lifted-v2))
       (when (and (unsat? ir-expr) (not (void? int-divisor-gen)))
         (define div-op (const-divide sub-expr (int-divisor-gen)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (unsat? ir-expr)
         (define div-op (packhi (get-node-id) sub-expr (bool-const)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (and (unsat? ir-expr) (not (void? int-shiftr-gen)))
         (define div-op (logic-shift-right (get-node-id) sub-expr (int-shiftr-gen)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (and (unsat? ir-expr) (not (void? int-shiftr-gen)))
         (define output-type (type ((interpret-halide halide-expr) 0)))
         (define div-op (arith-shift-right (get-node-id) sub-expr (int-shiftr-gen) (bool-const) output-type))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       
       ;; Return synthesized expr
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]
    
      [(vec-min v1 v2)
       (define res-v1 (synthesize-ir-expr v1 buff-reads axioms))
       (define res-v2 (synthesize-ir-expr v2 buff-reads axioms))

       (define lifted-v1 (car res-v1))
       (define lifted-v2 (car res-v2))

       (define merged-sol (merge-sols (cdr res-v1) (cdr res-v2)))
       
       ;; Try folding into lhs sub-expr
       (define ir-expr (fold-into-subexpr lifted-v1 halide-expr axioms add-consts sub-consts mul-consts div-consts merged-sol))

       ;; If that didn't work, try folding into rhs sub-expr
       (when (unsat? ir-expr)
         (set! ir-expr (fold-into-subexpr lifted-v2 halide-expr axioms add-consts sub-consts mul-consts div-consts merged-sol)))
       
       ;; If even that did not work, extend the ir-expr with a new instruction
       (when (unsat? ir-expr)
         (set! ir-expr (run-synthesizer halide-expr (minimum (get-node-id) lifted-v1 lifted-v2) axioms merged-sol)))

       ;; Return synthesized expr
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]
      
      [(vec-max v1 v2)
       (define res-v1 (synthesize-ir-expr v1 buff-reads axioms))
       (define res-v2 (synthesize-ir-expr v2 buff-reads axioms))

       (define lifted-v1 (car res-v1))
       (define lifted-v2 (car res-v2))

       (define merged-sol (merge-sols (cdr res-v1) (cdr res-v2)))
       
       ;; Try folding into lhs sub-expr
       (define ir-expr (fold-into-subexpr lifted-v1 halide-expr axioms add-consts sub-consts mul-consts div-consts merged-sol))

       ;; If that didn't work, try folding into rhs sub-expr
       (when (unsat? ir-expr)
         (set! ir-expr (fold-into-subexpr lifted-v2 halide-expr axioms add-consts sub-consts mul-consts div-consts merged-sol)))
       
       ;; If even that did not work, extend the ir-expr with a new instruction
       (when (unsat? ir-expr)
         (set! ir-expr (run-synthesizer halide-expr (maximum (get-node-id) lifted-v1 lifted-v2) axioms merged-sol)))

       ;; Return synthesized expr
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]

      [(shift_left v1 v2)
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
         (define conv-op (convolve (get-node-id) sub-expr kernel saturation-func output-type))
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
         (define conv-op (convolve (get-node-id) sub-expr kernel saturation-func output-type))
         (set! ir-expr (run-synthesizer halide-expr conv-op axioms)))
       
       ;; Return synthesized expr
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]

      [(shift_right v1 v2)
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
         (define div-op (packhi (get-node-id) sub-expr (bool-const)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (and (unsat? ir-expr) (not (void? int-shiftr-gen)))
         (define div-op (logic-shift-right (get-node-id) sub-expr (int-shiftr-gen)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (and (unsat? ir-expr) (not (void? int-shiftr-gen)))
         (define output-type (type ((interpret-halide halide-expr) 0)))
         (define div-op (arith-shift-right (get-node-id) sub-expr (int-shiftr-gen) (bool-const) output-type))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))

       ;; If even that did not work, extend the ir-expr with a new instruction
       (set! sub-expr (choose* lifted-v1 lifted-v2))
       (when (unsat? ir-expr)
         (define div-op (packhi (get-node-id) sub-expr (bool-const)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (and (unsat? ir-expr) (not (void? int-shiftr-gen)))
         (define div-op (logic-shift-right (get-node-id) sub-expr (int-shiftr-gen)))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       (when (and (unsat? ir-expr) (not (void? int-shiftr-gen)))
         (define output-type (type ((interpret-halide halide-expr) 0)))
         (define div-op (arith-shift-right (get-node-id) sub-expr (int-shiftr-gen) (bool-const) output-type))
         (set! ir-expr (run-synthesizer halide-expr div-op axioms)))
       
       ;; Return synthesized expr
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]

      [(absd v1 v2)
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
         (set! ir-expr (run-synthesizer halide-expr (abs-diff (get-node-id) sub-expr sub-expr) axioms)))

       ;; If even that did not work, extend the ir-expr with a new instruction
       (when (unsat? ir-expr)
         (set! ir-expr (run-synthesizer halide-expr (abs-diff (get-node-id) lifted-v1 lifted-v2) axioms)))
       
       ;; Return synthesized expr
       (if (not (unsat? ir-expr))
           ir-expr
           (error "Could not lift" halide-expr))]
      
      ;; Base case
      [_ (error "NGL, did not expect" halide-expr)]))
  
  ;(debug (format "Expr so far: ~a\n" lifted-expr))
  ;(debug (format "Exiting ~a\n" halide-expr))
  
  lifted-expr)

(define (cast-op? halide-expr)
  (match halide-expr
    [(uint8x32 sub-expr) #t]
    [(uint8x64 sub-expr) #t]
    [(uint8x128 sub-expr) #t]
    [(uint8x256 sub-expr) #t]

    [(uint16x32 sub-expr) #t]
    [(uint16x64 sub-expr) #t]
    [(uint16x128 sub-expr) #t]

    [(uint32x32 sub-expr) #t]
    [(uint32x64 sub-expr) #t]
    [(uint32x128 sub-expr) #t]

    [(int8x32 sub-expr) #t]
    [(int8x64 sub-expr) #t]
    [(int8x128 sub-expr) #t]
    
    [(int16x32 sub-expr) #t]
    [(int16x64 sub-expr) #t]
    [(int16x128 sub-expr) #t]

    [(int32x32 sub-expr) #t]
    [(int32x64 sub-expr) #t]
    [(int32x128 sub-expr) #t]

    [else #f]))

;; Try to fold the expr into the ir sub-expr
(define (fold-into-subexpr lifted-sub-expr halide-expr axioms add-consts sub-consts mul-consts div-consts [sub-sol (sat)])
  (define int-shiftr-gen (get-generator-func (map log2 (filter pow2? div-consts))))
  
  (define outT (type ((interpret-halide halide-expr) 0)))

  ;(println "\n====================")
  ;(println (format "Curent expr: ~a" lifted-sub-expr))
  ;(println (format "Fold expr: ~a with type ~a" halide-expr outT))
  
  (define synthesized-expr (match lifted-sub-expr
                             [(load-data opts) lifted-sub-expr]
                             [(broadcast sca) (broadcast (get-node-id) sca)]
                             [(cast sub-expr type) (cast (get-node-id) sub-expr outT)]
                             [(abs-diff sub-expr1 sub-expr2) (void)]
                             [(zip-data sub-expr1 sub-expr2) (void)]
                             [(arith-shift-right sub-expr n round? output-type)
                              (choose*
                               (arith-shift-right (get-node-id) sub-expr (int-shiftr-gen) (choose* #t #f) outT)
                               (packhi (get-node-id) sub-expr (signedT? outT)))]
                             [(minimum sub-expr1 sub-expr2)
                              (choose*
                               (saturate (get-node-id) sub-expr1 (choose* #t #f) (signedT? outT))
                               (saturate (get-node-id) sub-expr2 (choose* #t #f) (signedT? outT)))]
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
                               (const-add (get-node-id) sub-expr (apply choose* add-consts) saturation-func output-type)
                               (saturate (get-node-id) sub-expr #t (signedT? output-type))
                               (arith-shift-right (get-node-id) sub-expr (int-shiftr-gen) #t output-type))]
                             [(convolve sub-expr kernel saturation-func output-type)
                              (cond
                                [(vec-add? halide-expr)
                                 (cond
                                   [(<= (add1 (weight-matrix-rad kernel)) 5)
                                    (define (weights-gen) (apply choose* (append (list (int8_t (bv 1 8))) mul-consts)))
                                    (define weights (append (weight-matrix-vals kernel) (list (weights-gen))))
                                    (define radius (choose* (weight-matrix-rad kernel) (add1 (weight-matrix-rad kernel))))
                                    (define ktype WMT_GENERAL)
                                    (define k (weight-matrix radius (take weights radius) ktype))
                                    (convolve (get-node-id) sub-expr k saturation-func output-type)]
                                   [else
                                    (define (weights-gen) (apply choose* (append (list (int8_t (bv 1 8))) mul-consts)))
                                    (define weights (list (weights-gen) (weights-gen)))
                                    (define radius (choose* 1 2))
                                    (define ktype WMT_GENERAL)
                                    (define k (weight-matrix radius (take weights radius) ktype))
                                    (convolve-acc (get-node-id) lifted-sub-expr (load-data (get-load-id) buff-reads-copy) k saturation-func output-type)])]
                                [(cast-op? halide-expr)
                                 (cond
                                   [(> (bw output-type) (bw outT))
                                    (define saturation-func (cond [(eq? output-type 'int8) sat8] [(eq? output-type 'uint8) satu8] [(eq? output-type 'int16) sat16] [(eq? output-type 'uint16) satu16]))
                                    (convolve (get-node-id) sub-expr kernel saturation-func output-type)]
                                   [else
                                    (define output-type (cond
                                                          [(eq? outT 'int8) (choose* 'int8 'int16 'uint16 'int32 'uint32)]
                                                          [(eq? outT 'uint8) (choose* 'uint8 'int16 'uint16 'int32 'uint32)]
                                                          [(eq? outT 'int16) (choose* 'int16 'int32 'uint32)]
                                                          [(eq? outT 'uint16) (choose* 'uint16 'int32 'uint32)]
                                                          [(eq? outT 'int32) 'int32]
                                                          [(eq? outT 'uint32) 'uint32]))
                                    (convolve (get-node-id) sub-expr kernel saturation-func output-type)])]
                                [(vec-div? halide-expr) halide-expr]
                                [else
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
;                                 (define saturation-func (choose* nop (cond [(eq? outT 'int8) sat8] [(eq? outT 'uint8) satu8] [(eq? outT 'int16) sat16] [(eq? outT 'uint16) satu16])))
;                                 (define output-type (cond
;                                                       [(eq? outT 'int8) (choose* 'int8 'int16 'uint16 'int32 'uint32)]
;                                                       [(eq? outT 'uint8) (choose* 'uint8 'int16 'uint16 'int32 'uint32)]
;                                                       [(eq? outT 'int16) (choose* 'int16 'int32 'uint32)]
;                                                       [(eq? outT 'uint16) (choose* 'uint16 'int32 'uint32)]
;                                                       [(eq? outT 'int32) 'int32]
;                                                       [(eq? outT 'uint32) 'uint32]))
                                 (define radius (choose* (weight-matrix-rad kernel) (add1 (weight-matrix-rad kernel))))
                                 (define ktype WMT_GENERAL)
                                 (define k (weight-matrix radius (take weights radius) ktype))
                                 (convolve (get-node-id) sub-expr k saturation-func output-type)])]
                             [(convolve-acc acc sub-expr kernel saturation-func output-type)
                              (cond
                                [(vec-add? halide-expr)
                                 (cond
                                   [(<= (add1 (weight-matrix-rad kernel)) 5)
                                    (define (weights-gen) (apply choose* (append (list (int8_t (bv 1 8))) mul-consts)))
                                    (define weights (append (weight-matrix-vals kernel) (list (weights-gen))))
                                    (define radius (choose* (weight-matrix-rad kernel) (add1 (weight-matrix-rad kernel))))
                                    (define ktype WMT_GENERAL)
                                    (define k (weight-matrix radius (take weights radius) ktype))
                                    (convolve-acc (get-node-id) acc sub-expr k saturation-func output-type)]
                                   [else
                                    (define (weights-gen) (apply choose* (append (list (int8_t (bv 1 8))) mul-consts)))
                                    (define weights (list (weights-gen) (weights-gen)))
                                    (define radius (choose* 1 2))
                                    (define ktype WMT_GENERAL)
                                    (define k (weight-matrix radius (take weights radius) ktype))
                                    (convolve-acc (get-node-id) lifted-sub-expr (load-data (get-load-id) buff-reads-copy) k saturation-func output-type)])]
                                [(cast-op? halide-expr)
                                 (cond
                                   [(> (bw output-type) (bw outT))
                                    (define saturation-func (cond [(eq? output-type 'int8) sat8] [(eq? output-type 'uint8) satu8] [(eq? output-type 'int16) sat16] [(eq? output-type 'uint16) satu16]))
                                    (convolve-acc (get-node-id) acc sub-expr kernel saturation-func output-type)]
                                   [else
                                    (define output-type (cond
                                                          [(eq? outT 'int8) (choose* 'int8 'int16 'uint16 'int32 'uint32)]
                                                          [(eq? outT 'uint8) (choose* 'uint8 'int16 'uint16 'int32 'uint32)]
                                                          [(eq? outT 'int16) (choose* 'int16 'int32 'uint32)]
                                                          [(eq? outT 'uint16) (choose* 'uint16 'int32 'uint32)]
                                                          [(eq? outT 'int32) 'int32]
                                                          [(eq? outT 'uint32) 'uint32]))
                                    (convolve-acc (get-node-id) acc sub-expr kernel saturation-func output-type)])]
                                [(vec-div? halide-expr) halide-expr]
                                [else
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
;                                 (define saturation-func (choose* nop (cond [(eq? outT 'int8) sat8] [(eq? outT 'uint8) satu8] [(eq? outT 'int16) sat16] [(eq? outT 'uint16) satu16])))
;                                 (define output-type (cond
;                                                       [(eq? outT 'int8) (choose* 'int8 'int16 'uint16 'int32 'uint32)]
;                                                       [(eq? outT 'uint8) (choose* 'uint8 'int16 'uint16 'int32 'uint32)]
;                                                       [(eq? outT 'int16) (choose* 'int16 'int32 'uint32)]
;                                                       [(eq? outT 'uint16) (choose* 'uint16 'int32 'uint32)]
;                                                       [(eq? outT 'int32) 'int32]
;                                                       [(eq? outT 'uint32) 'uint32]))
                                 (define radius (choose* (weight-matrix-rad kernel) (add1 (weight-matrix-rad kernel))))
                                 (define ktype WMT_GENERAL)
                                 (define k (weight-matrix radius (take weights radius) ktype))
                                 (convolve-acc (get-node-id) acc sub-expr k saturation-func output-type)])]
                             [_ (error "Oops 0" lifted-sub-expr)]))

  (run-synthesizer halide-expr synthesized-expr axioms sub-sol))

(define (run-synthesizer original-expr synthesized-expr axioms [sub-sol (sat)])
  (define VEC_LANES (num-elems-hal original-expr))

  (define (bounded-eq? oe se lanes)
    (for ([i lanes])
      (set-curr-cn-ir i)
      (assert (eq? (oe i) (evaluate (elem-ir se i) sub-sol)))
      ;(set-curr-cn-ir (+ i (/ VEC_LANES 2) 1))
      ;(assert (eq? (oe (+ i (/ VEC_LANES 2) 1)) (elem-ir se (+ i (/ VEC_LANES 2) 1))))
      ))

  ;; Synthesize expression
  (clear-vc!)
  (for ([axiom axioms]) (assume axiom))
  (define st (current-seconds))
  ;(println "-------------------------------")
  ;(println sub-sol)
  ;(pretty-print original-expr)
  ;(pretty-print synthesized-expr)
  ;(set-curr-cn-ir 0)
  ;(println ((interpret-halide original-expr) 0))
  ;(println (elem-ir (interpret-ir synthesized-expr) 0))
  ;(when (convolve-acc? synthesized-expr)
    ;(assume (list-ref learned-axioms 1))
    ;(println (evaluate (elem-ir (interpret-ir synthesized-expr) 0) sub-sol))
    ;)
  ;(for ([axiom learned-axioms]) (assume axiom))
  (define sol (synthesize #:forall (symbolics original-expr)
                          #:guarantee (bounded-eq? (interpret-halide original-expr) (interpret-ir synthesized-expr) MC_BND)))
  (define runtime (- (current-seconds) st))

  ;(when (convolve-acc? synthesized-expr)
    ;(println sol)
    ;(exit))
  
  (display (format "Ran synthesizer for ~a seconds.\n" runtime))

  (cond
    [(unsat? sol) sol]
    [else
     (define res-sol (merge-sols sol sub-sol))
     (set! learned-axioms (set-add learned-axioms (eq? ((interpret-halide original-expr) 0) (evaluate (elem-ir (interpret-ir synthesized-expr) 0) res-sol))))
     (define res-expr (evaluate synthesized-expr res-sol))
     (hash-set! annotations (ir-node-id res-expr) original-expr)
     (cons res-expr res-sol)]))

;; Get the sub-expr of an IR expr
(define (get-subexpr-ir ir-expr)
  (match ir-expr
    [(load-data opts) (void)]
    [(broadcast sca) (void)]
    [(cast sub-expr type) sub-expr]
    [(arith-shift-right sub-expr n round? output-type) sub-expr]
    [(const-add sub-expr const-val saturation-func output-type) sub-expr]
    [(convolve sub-expr kernel satF outT) sub-expr]
    [(convolve-acc acc sub-expr kernel satF outT) (list acc sub-expr)]
    [(abs-diff sub-expr1 sub-expr2) (list sub-expr1 sub-expr2)]
    [(minimum sub-expr1 sub-expr2) (list sub-expr1 sub-expr2)]
    [(maximum sub-expr1 sub-expr2) (list sub-expr1 sub-expr2)]
    [(zip-data sub-expr1 sub-expr2) (list sub-expr1 sub-expr2)]
    [_ (error "oops 1" ir-expr)]))

(define (get-subexpr-list ir-expr)
  (define sub-exprs (flatten (list ir-expr)))
  (match ir-expr
    [(load-data opts) sub-exprs]
    [(broadcast sca) sub-exprs]
    [(cast sub-expr type) (append sub-exprs (get-subexpr-list sub-expr))]
    [(arith-shift-right sub-expr n round? output-type) (append sub-exprs (get-subexpr-list sub-expr))]
    [(const-add sub-expr const-val saturation-func output-type) (append sub-exprs (get-subexpr-list sub-expr))]
    [(convolve sub-expr kernel satF outT) (append sub-exprs (get-subexpr-list sub-expr))]
    [(convolve-acc acc sub-expr kernel satF outT) (append sub-exprs (get-subexpr-list sub-expr))]
    [(abs-diff sub-expr1 sub-expr2) (append sub-exprs (get-subexpr-list sub-expr1) (get-subexpr-list sub-expr2))]
    [(minimum sub-expr1 sub-expr2) (append sub-exprs (get-subexpr-list sub-expr1) (get-subexpr-list sub-expr2))]
    [(maximum sub-expr1 sub-expr2) (append sub-exprs (get-subexpr-list sub-expr1) (get-subexpr-list sub-expr2))]
    [(zip-data sub-expr1 sub-expr2) (append sub-exprs (get-subexpr-list sub-expr1) (get-subexpr-list sub-expr2))]
    [_ (error "oops 2" ir-expr)]))

(define (rec-fold sub-exprs halide-expr axioms add-consts sub-consts mul-consts div-consts [sub-sol (sat)])
  (if (empty? sub-exprs)
    (unsat)
    (begin
      (define sub-expr (first sub-exprs))
      (define ir-expr (fold-into-subexpr sub-expr halide-expr axioms add-consts sub-consts mul-consts div-consts sub-sol))
      (if (unsat? ir-expr)
          (rec-fold (rest sub-exprs) halide-expr axioms add-consts sub-consts mul-consts div-consts sub-sol)
          ir-expr))))

;; Some utility functions
(define (pow2? val) (integer? (log (eval-to-int val) 2)))
(define (log2 val) (mk-typed-expr (bv (exact-round (log (eval-to-int val) 2)) (bw val)) (type val)))
(define (bool-const) (choose* #t #f))
(define (get-generator-func opts) (when (not (empty? opts)) (lambda() (apply choose* opts))))

(provide synthesize-ir-expr-greedy)