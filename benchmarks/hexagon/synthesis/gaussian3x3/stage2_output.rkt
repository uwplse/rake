#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require "../lib/cpp.rkt")
(require "../lib/util.rkt")
(require "../lib/axioms.rkt")
(require "../lib/ir.rkt")
(require "../lib/halide.rkt")
(require "../lib/hexagon.rkt")
(require "../lib/grammar.rkt")
(require "../lib/analysis.rkt")

(error-print-width 100000)
(debug-on)

;; Synthesis parameters
(define MC_BND 1)

;; Model buffers as uninterpreted functions
(define-symbolic rows (~> integer? (bitvector 16)))
(define-symbolic c1 (~> integer? (bitvector 16)))

(init-var-types (make-hash (list (cons rows 'int16) (cons c1 'int16))))

;; Axioms describing value range for intermediates
(assert (values-range-from rows (bv 0 16) (bv 1021 16)))
(assert (values-range-from c1 (bv 0 16) (bv 1021 16)))

;; Model indexing variables as integers
(define-symbolic output.s0.x.x integer?)

;; Define original expression
(define original-expr
  (uint8x128
   (vec-div
    (vec-add
     (vec-add
      (concat_vectors
       (slice_vectors
        (concat_vectors
         (ramp c1 0 1 64)
         (ramp rows (+ (* output.s0.x.x 128) 64) 1 64)) 2 1 64)
       (slice_vectors
        (concat_vectors
         (ramp rows (+ (* output.s0.x.x 128) 64) 1 64)
         (ramp c1 64 1 64)) 2 1 64))
      (vec-add 
       (vec-mul
        (concat_vectors
         (slice_vectors
          (concat_vectors
           (ramp c1 0 1 64)
           (ramp rows (+ (* output.s0.x.x 128) 64) 1 64)) 1 1 64)
         (slice_vectors
          (concat_vectors
           (ramp rows (+ (* output.s0.x.x 128) 64) 1 64)
           (ramp c1 64 1 64)) 1 1 64))
        (x128 (int16_t (bv 2 16))))
       (concat_vectors
        (ramp c1 0 1 64)
        (ramp rows (+ (* output.s0.x.x 128) 64) 1 64))))
     (x128 (int16_t (bv 8 16))))
    (x128 (int16_t (bv 16 16))))))

;; Infer the vec-length of original-expr
(define VEC_LANES (vec-len original-expr))

;; Extract the set of buffer reads
(define buff-reads (list))
(for ([i VEC_LANES])
  (set! buff-reads (append buff-reads (list (extract-buf-reads ((interpret-halide original-expr) i))))))

;; Extract the set of constant multiplication factors
(define add-consts (extract-add-consts original-expr))
(define sub-consts (extract-sub-consts original-expr))
(define mul-consts (extract-mul-consts original-expr))
(define div-consts (extract-div-consts original-expr))

;; Extract the set of live ops
(define live-ops (list->set (extract-live-ops original-expr)))

;; Define incremental synthesis loop for ir-expr generation
(define (synthesize-ir-expr)
  (if (not (instr-limit-exceeded?))
      (begin
        (display "Generating IR Grammar...\n")
        (display "========================\n")
        (debug (format "Number of instructions: ~a\n" (instr-bnd)))
        (debug (format "Saturation arithmetic: ~a\n" (if (sat-arith?) "Enabled" "Disabled")))
        (debug (format "Set of operators: ~a\n\n" (if (specialized-ops?) "Specialized" "Full")))

        ;; Generate a specialized grammar based on 
        (define ??ir-grammar (generate-ir-grammar live-ops buff-reads add-consts sub-consts mul-consts div-consts))
        
        ;(define synthesized-expr (??ir-grammar))
        (define synthesized-expr (arith-shift-right (convolve (load-data buff-reads) (list (int8_t (bv 1 8)) (int16_t (bv 2 16)) (int8_t (bv 1 8)) (int8_t (bv 0 8)) #f) nop 'int16) (int16_t (bv 4 16)) #t 'uint8))

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
        (define st (current-seconds))
        (define sol (synthesize #:forall (list rows output.s0.x.x c1)
                                #:guarantee (bounded-eq? (interpret-halide original-expr) (interpret-ir synthesized-expr) MC_BND)))
        (define runtime (- (current-seconds) st))

        (if (eq? sol (unsat))
            (begin
              (display "Failed to find an equivalent IR expression.\n\n")
              (increment-instr-bnd)
              (synthesize-ir-expr))
            (begin
              (display "Successfully found an equivalent IR expression.\n\n")
              (debug (format "~a\n\n" (evaluate synthesized-expr sol)))
              (debug (format "Synthesis time: ~a seconds\n\n" runtime))
              (cons (evaluate synthesized-expr sol) sol))))
      (begin
        (display "Maximum instruction bound reached. Giving up.\n\n")
        (void))))

;; Synthesize equivalent expression in IR
(init-grammar-generator)
(define stage1_res (synthesize-ir-expr))
(define ir-expr (car stage1_res))
(define ir-expr-sol (cdr stage1_res))

;; Define modular synthesis loop for HVX expression generation
(define (synthesize-equiv-hvx ir-expr hvx-sub-expr num-req-elems)
  (if (not (instr-limit-exceeded?))
      (begin
        (display "Generating HVX Grammar...\n")
        (display "=========================\n")
        (debug (format "Number of instructions: ~a\n" (instr-bnd)))
        (debug (format "Set of instructions: Specialized\n\n"))

        (define (bounded-eq2? oe se lanes)
          (for ([i lanes])
            (cond
              [(hvx-pair? se)
               (set-curr-cn-ir i)
               (set-curr-cn-hvx i)
               (assert (eq? (evaluate (elem-ir oe i) ir-expr-sol) (v0-elem se i)))
               (set-curr-cn-ir (+ i 65))
               (set-curr-cn-hvx (+ i 65))
               (assert (eq? (evaluate (elem-ir oe (+ i 65)) ir-expr-sol) (v1-elem se (+ i 1))))]
              [else
               (set-curr-cn-ir i)
               (set-curr-cn-hvx i)
               (assert (eq? (evaluate (elem-ir oe i) ir-expr-sol) (elem-hvx se i)))
               (set-curr-cn-ir (+ i 65))
               (set-curr-cn-hvx (+ i 65))
               (assert (eq? (evaluate (elem-ir oe (+ i 65)) ir-expr-sol) (elem-hvx se (+ i 65))))])))

        (define ??hvx-expr (generate-hvx-grammar ir-expr hvx-sub-expr add-consts))

        (define synthesized-hvx-expr (??hvx-expr))
        ;(define synthesized-hvx-expr (vcombine (vmpyi-acc (vadd (gather buff-reads)  (gather buff-reads) #f)  (gather buff-reads) (int8_t (bv 2 8))) (vmpyi-acc (vadd (gather buff-reads)  (gather buff-reads) #f)  (gather buff-reads) (int8_t (bv 2 8)))))
        ;(define synthesized-hvx-expr (vmpyi-acc (vadd (gather buff-reads)  (gather buff-reads) #f)  (gather buff-reads) (int8_t (bv 2 8))))
        ;(define synthesized-hvx-expr (if (arith-shift-right? ir-expr) (vasr-rnd-sat hvx-sub-expr hvx-sub-expr (int8_t (bv 4 8)) #t #t #t) (??hvx-expr)))

        ;(println (elem-hvx (interpret-hvx synthesized-hvx-expr) 0))
        
        ;(reset-lookup-hash)
        (define st (current-seconds))
        (define sol (synthesize #:forall (list rows output.s0.x.x c1)
                                #:guarantee (bounded-eq2? (interpret-ir ir-expr) (interpret-hvx synthesized-hvx-expr) MC_BND)))
        (define runtime (- (current-seconds) st))

        (if (eq? sol (unsat))
            (begin
              (display "Failed to find an equivalent HVX expression.\n\n")
              (increment-instr-bnd)
              (synthesize-equiv-hvx ir-expr hvx-sub-expr num-req-elems))
            (begin
              (display "Successfully found an equivalent HVX expression.\n\n")
              (debug (format "~a\n\n" (evaluate synthesized-hvx-expr sol)))
              (debug (format "Synthesis time: ~a seconds\n\n" runtime))
              (evaluate synthesized-hvx-expr sol))))
      (begin
        (display "Maximum instruction bound reached. Giving up.\n\n")
        (exit)
        (void))))

(define (compile-to-hvx ir-expr num-req-elems)
  (match ir-expr
    [(arith-shift-right sub-expr n round? outputType)
     (begin
       (define hvx-sub-expr (compile-to-hvx sub-expr num-req-elems))
       (display "Lifting IR to HVX...\n")
       (display "====================\n")
       (display (format "IR Operation: ~a\n\n" ir-expr))
       (reset-instr-bnd)
       (synthesize-equiv-hvx ir-expr hvx-sub-expr num-req-elems))]

    [(convolve sub-expr weights saturateFunc outputType)
     (begin
       (define hvx-sub-expr (compile-to-hvx sub-expr num-req-elems))
       (display "Lifting IR to HVX...\n")
       (display "====================\n")
       (display (format "IR Operation: ~a\n\n" ir-expr))
       (reset-instr-bnd)
       (synthesize-equiv-hvx ir-expr hvx-sub-expr num-req-elems))]

    [(load-data opts) (gather* opts)]

    [_ (println "NYI")]))

;; Synthesize equivalent HVX expression for each Op in the IR
(define hvx-expr (compile-to-hvx ir-expr (vec-len original-expr)))

;; Synthesize swizzles spec (+ full verification)
;; Verification conditions
(display "Verifying expression equivalence over full-length vectors...\n")
(display "============================================================\n")

(define (repl-gather*-gather node)
  (match node
    [(gather* opts) (gather opts)]
    [_ node]))
(set! hvx-expr (transform hvx-expr repl-gather*-gather))

(define interpreted-expr (interpret-hvx hvx-expr))

(define out-size-eq? (eq? (vec-len original-expr) (num-elems-hvx interpreted-expr)))

(define (lane-eq? oe se lane)
  (assert (eq? (oe lane) (elem-hvx se lane))))

(define st (current-seconds))
(define sols (list))
(for ([lane VEC_LANES])
  (set-curr-cn-hvx lane)
  (define lane-sol (synthesize #:forall (list rows output.s0.x.x c1)
                               #:guarantee (lane-eq? (interpret-halide original-expr) interpreted-expr lane)))
  (set! sols (append sols (list lane-sol))))
(define runtime (- (current-seconds) st))

;; Print solution
(if (and out-size-eq? (for/or ([sol sols]) (unsat? sol)))
    (display "Synthesized solution is incorrect.\n\n")
    (display "Synthesized solution is correct.\n\n"))
(debug (format "Verification time: ~a seconds\n\n" runtime))

;;; Parse stage 2 output
;(define vecs (parse-swizzle-spec buff-reads sols))
;
;;; Print solution
;(printf "Runtime (stage 2): ~a seconds\n\n" runtime)
;
;(exit)

;; Synthesize swizzle instructions
;(set! st (current-seconds))
;(define vreads (list (vread c1 0) (vread rows (+ (* output.s0.x.x 128) 64)) (vread c1 64)))
;(define vreads (list
;                (valign (vcombine (vread c1 0) (vread rows (+ (* output.s0.x.x 128) 64))) 1)
;                (vread c1 64)))
;(define program_sketch (gen-final-sketch (evaluate synthesized-expr sol) vreads))
;(define sol2 (synthesize #:forall (list rows output.s0.x.x c1)
;                         #:guarantee (bounded-eq? (interpret-halide original-expr) (interpret-hvx program_sketch) 8)))
;(set! runtime (- (current-seconds) st))

;  (println program_sketch)
;  (println (evaluate program_sketch sol2)))
  ;(println (interpret-hvx program_sketch))
  ;(println ((interpret-hvx (evaluate program_sketch sol2)) 0))
  ;(evaluate program_sketch sol2)

;; Print solution
;(printf "Runtime (stage 3): ~a seconds" runtime)