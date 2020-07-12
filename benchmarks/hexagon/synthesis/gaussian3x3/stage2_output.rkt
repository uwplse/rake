#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require "../lib/util.rkt")
(require "../lib/cpp.rkt")
(require "../lib/halide.rkt")
(require "../lib/hexagon.rkt")
(require "../lib/ir.rkt")
(require "../lib/grammar.rkt")
(require "../lib/analysis.rkt")

(error-print-width 100000)

;; Synthesis parameters
(define MC_BND 1)
(define VEC_LANES 128)

;; Model buffers as uninterpreted functions
(define-symbolic rows (~> integer? (bitvector 16)))
(define-symbolic c1 (~> integer? (bitvector 16)))

(define buffers (list rows c1))

;; Model indexing variables as integers
(define-symbolic output.s0.x.x integer?)

;; Define original expression
(define original-expr-post-hvx
  (halide.hexagon.packhi.vh
   (vec-add
    (halide.hexagon.add_mul.vh.vh.b
     (halide.hexagon.add_mul.vh.vh.b
      (halide.hexagon.add_mul.vh.vh.b
       (ramp rows 126 1 128)
       (ramp rows 127 1 128)
       (bv 4 8))
      (ramp rows 128 1 128)
      (bv 6 8))
     (ramp rows 129 1 128) 
     (bv 4 8))
    (ramp rows 130 1 128))))

(define original-expr-pre-hvx
  (uint8x128
   (vec-sdiv
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
        (x128 (bv 2 16)))
       (concat_vectors
        (ramp c1 0 1 64)
        (ramp rows (+ (* output.s0.x.x 128) 64) 1 64))))
     (x128 (bv 8 16)))
    (x128 (bv 16 16)))
   'int16))

;; Perform analysis to extract the set of buffer reads
(define buff-reads (list))
(for ([i VEC_LANES])
  (set! buff-reads (append buff-reads (list (extract-buf-reads ((interpret-halide original-expr-pre-hvx) i))))))
;(println ((interpret-halide original-expr-pre-hvx) 0))
;(println (list-ref buff-reads 0))

;; Try encoding inputs as non-uninterpreted
;; Try encoding axioms
;; Try udiv
;; Confirm halide impl

(define synthesized-expr
  ;(??hxv-expr buff-reads)
  (vasr-rnd-sat
   (vmpyi-acc
    (vadd
     (gather buff-reads)
     (gather buff-reads))
    (gather buff-reads)
    (bv 2 8))
   (vmpyi-acc
    (vadd
     (gather buff-reads)
     (gather buff-reads))
    (gather buff-reads)
    (bv 2 8))
   (bv 4 16)))

;; Verification condition
(define (bounded-eq? oe se lanes)
  (if (pair? oe)
      (for ([i lanes])
        (and
         (assert (eq? ((car oe) i) ((car se) i)))
         (assert (eq? ((cdr oe) i) ((cdr se) i)))))
      (for ([i lanes])
        (assert (eq? (oe i) (se i))))))

(define (lane-eq? oe se lane)
  (assert (eq? (oe lane) (se lane))))

(assert (forall (list output.s0.x.x) (and (bvslt (rows output.s0.x.x) (bv 1020 16)) (bvsge (rows output.s0.x.x) (bv 0 16)))))

;; Synthesize expression
(define st (current-seconds))
(define sol (synthesize #:forall (list rows output.s0.x.x c1)
                        #:guarantee (bounded-eq? (interpret-halide original-expr-pre-hvx) (interpret-hvx synthesized-expr) MC_BND)))
(define runtime (- (current-seconds) st))

;; Print solution
(evaluate synthesized-expr sol)
(printf "\nRuntime (stage 1): ~a seconds\n\n" runtime)

;; Synthesize swizzles spec (+ full verification)
(set! st (current-seconds))
(define sols (list))
(for ([lane VEC_LANES])
  (define lane-sol (synthesize #:forall (list rows output.s0.x.x c1)
                               #:guarantee (lane-eq? (interpret-halide original-expr-pre-hvx) (interpret-hvx (evaluate synthesized-expr sol)) lane)))
  (set! sols (append sols (list lane-sol))))
(set! runtime (- (current-seconds) st))

;; Parse stage 2 output
(define vecs (parse-swizzle-spec buff-reads sols))

;; Print solution
(printf "Runtime (stage 2): ~a seconds\n\n" runtime)

;; Synthesize swizzle instructions
(set! st (current-seconds))
;(define vreads (list (vread c1 0) (vread rows (+ (* output.s0.x.x 128) 64)) (vread c1 64)))
(define vreads (list
                (valign (vcombine (vread c1 0) (vread rows (+ (* output.s0.x.x 128) 64))) 1)
                
                (vread c1 64)))
(define program_sketch (gen-final-sketch (evaluate synthesized-expr sol) vreads))
(define sol2 (synthesize #:forall (list rows output.s0.x.x c1)
                         #:guarantee (bounded-eq? (interpret-halide original-expr-pre-hvx) (interpret-hvx program_sketch) 8)))
(set! runtime (- (current-seconds) st))

;  (println program_sketch)
;  (println (evaluate program_sketch sol2)))
  ;(println (interpret-hvx program_sketch))
  ;(println ((interpret-hvx (evaluate program_sketch sol2)) 0))
  ;(evaluate program_sketch sol2)

;; Print solution
(printf "Runtime (stage 3): ~a seconds" runtime)