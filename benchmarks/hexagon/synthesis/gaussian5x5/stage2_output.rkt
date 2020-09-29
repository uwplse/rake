#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require rake)
(require rake/halide/ir/interpreter)

(error-print-width 100000)
(debug-on)

;; Model buffers as uninterpreted functions
(define-symbolic rows (~> integer? (bitvector 16)))
(define-symbolic c1 (~> integer? (bitvector 16)))

(init-var-types (make-hash (list (cons rows 'int16) (cons c1 'int16))))

;; Axioms describing value range for intermediates
(define axioms (list (values-range-from rows (bv 0 16) (bv 4080 16)) (values-range-from c1 (bv 0 16) (bv 4080 16))))

;; Model indexing variables as integers
(define-symbolic output.s0.x.x integer?)
(define-symbolic input.stride.1 integer?)

(define t116 (ramp c1 0 1 64))
(define t117 (ramp rows (+ (* output.s0.x.x 256) 64) 1 64))
(define t118 (concat_vectors t116 t117))
(define t119 (ramp rows (+ (* output.s0.x.x 256) 128) 1 64))
(define t120 (concat_vectors t117 t119))
(define t121 (ramp rows (+ (* output.s0.x.x 256) 192) 1 64))
(define t122 (concat_vectors t119 t121))
(define t123.s (ramp c1 64 1 64))

;; Define original expression in Halide IR
(define halide-expr
  (uint8x256
   (vec-div
    (vec-add
     (vec-mul
      (concat_vectors
       (concat_vectors
        (slice_vectors t118 1 1 64)
        (slice_vectors t120 1 1 64))
       (concat_vectors
        (slice_vectors t122 1 1 64)
        (slice_vectors (concat_vectors t121 t123.s) 1 1 64)))
      (x256 (int16_t (bv 4 16))))
     (vec-add
      (concat_vectors
       (concat_vectors t116 t117)
       (concat_vectors t119 t121))
      (vec-add
       (vec-mul
        (concat_vectors
         (concat_vectors
          (slice_vectors t118 2 1 64)
          (slice_vectors t120 2 1 64))
         (concat_vectors
          (slice_vectors t122 2 1 64)
          (slice_vectors (concat_vectors t121 t123.s) 2 1 64)))
        (x256 (int16_t (bv 6 16))))
       (vec-add
        (concat_vectors
         (concat_vectors
          (slice_vectors t118 4 1 64)
          (slice_vectors t120 4 1 64))
         (concat_vectors
          (slice_vectors t122 4 1 64)
          (slice_vectors (concat_vectors t121 t123.s) 4 1 64)))
        (vec-mul
         (concat_vectors
          (concat_vectors
           (slice_vectors t118 3 1 64)
           (slice_vectors t120 3 1 64))
          (concat_vectors
           (slice_vectors t122 3 1 64)
           (slice_vectors (concat_vectors t121 t123.s) 3 1 64)))
         (x256 (int16_t (bv 4 16))))))))
    (x256 (int16_t (bv 256 16))))))

;; Define the specification for the synthesizer
(define spec (synthesis-spec halide-expr (list rows c1 output.s0.x.x input.stride.1) axioms))

(define hvx-expr (synthesize-hvx spec))

;(basic-expr-cost hvx-expr)

;(println hvx-expr)