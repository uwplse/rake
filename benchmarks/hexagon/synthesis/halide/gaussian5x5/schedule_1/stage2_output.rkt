#lang rosette

(require rake)
(require rake/halide)

(error-print-width 100000)
(debug-on)

;; Model buffers as uninterpreted functions
(define-symbolic rows (~> integer? (bitvector 16)))
(define-symbolic c1 (~> integer? (bitvector 16)))

(init-var-types (make-hash (list (cons rows 'int16) (cons c1 'int16))))

;; Axioms describing value range for intermediates
(define axioms
  (list
   (values-range-from rows (bv 0 16) (bv 4080 16))
   (values-range-from c1 (bv 0 16) (bv 4080 16))))

;; Model indexing variables as integers
;(define-symbolic output.s0.x.x integer?)
;(define-symbolic input.stride.1 integer?)

;; Model indexing variables as constants (lightweight verification)
(define output.s0.x.x 0)
(define input.stride.1 20)

;; Define original expression in Halide IR
(define t91 (ramp rows (+ (* output.s0.x.x 128) 64) 1 64))
(define t92.s (ramp c1 0 1 64))
(define t93.s (ramp c1 64 1 64))
(define halide-expr
  (uint8x128
   (vec-div
    (vec-add
     (vec-mul
      (concat_vectors
       (slice_vectors (concat_vectors t92.s t91) 1 1 64)
       (slice_vectors (concat_vectors t91 t93.s) 1 1 64))
      (x128 (int16_t (bv 4 16))))
     (vec-add
      (concat_vectors t92.s t91)
      (vec-add
       (vec-mul
        (concat_vectors
         (slice_vectors (concat_vectors t92.s t91) 2 1 64)
         (slice_vectors (concat_vectors t91 t93.s) 2 1 64))
        (x128 (int16_t (bv 6 16))))
       (vec-add
        (concat_vectors
         (slice_vectors (concat_vectors t92.s t91) 4 1 64)
         (slice_vectors (concat_vectors t91 t93.s) 4 1 64))
        (vec-mul
         (concat_vectors
          (slice_vectors (concat_vectors t92.s t91) 3 1 64)
          (slice_vectors (concat_vectors t91 t93.s) 3 1 64))
         (x128 (int16_t (bv 4 16))))))))
    (x128 (int16_t (bv 256 16)))))
  )

;; Define the specification for the synthesizer
(define spec (synthesis-spec halide-expr axioms))

(define hvx-expr (synthesize-hvx spec))