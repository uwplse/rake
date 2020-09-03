#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require rake)

(error-print-width 100000)
(debug-on)

;; Model buffers as uninterpreted functions
(define-symbolic rows (~> integer? (bitvector 16)))
(define-symbolic c1 (~> integer? (bitvector 16)))

(init-var-types (make-hash (list (cons rows 'int16) (cons c1 'int16))))

;; Axioms describing value range for intermediates
(define axioms (list (values-range-from rows (bv 0 16) (bv 1021 16)) (values-range-from c1 (bv 0 16) (bv 1021 16))))

;; Model indexing variables as integers
(define-symbolic output.s0.x.x integer?)

;; Define original expression in Halide IR
(define halide-expr
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

;; Define the specification for the synthesizer
(define spec (synthesis-spec halide-expr (list rows output.s0.x.x c1) axioms))

(define hvx-expr (synthesize-hvx spec))

(println hvx-expr)