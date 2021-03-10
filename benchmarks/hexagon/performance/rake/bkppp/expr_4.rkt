#lang rosette

(require rake)
(require rake/halide)

(error-print-width 100000)
(debug-on)

(define-symbolic rows (~> integer? (bitvector 16)))
(init-var-types (make-hash (list (cons rows 'int16))))

(define axioms 
  (list 
   (values-range-from rows (int16_t (bv 0 16)) (int16_t (bv 4080 16)))))

(define-symbolic output.s0.x.x integer?)

(define t59 (load rows (ramp (+ (* output.s0.x.x 128) 64) 1 64)))
(define t60.s (load rows (ramp (* output.s0.x.x 128) 1 64)))
(define t61.s (load rows (ramp (+ (* output.s0.x.x 128) 128) 1 64)))

(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (concat_vectors
      (slice_vectors
       (concat_vectors
        t60.s
        t59) 1 1 64)
      (slice_vectors
       (concat_vectors
        t59
        t61.s) 1 1 64))
     (x128 (int16_t (bv 4 16))))
    (vec-add
     (concat_vectors
      t60.s
      t59)
     (vec-add
      (vec-mul
       (concat_vectors
        (slice_vectors
         (concat_vectors
          t60.s
          t59) 2 1 64)
        (slice_vectors
         (concat_vectors
          t59
          t61.s) 2 1 64))
       (x128 (int16_t (bv 6 16))))
      (vec-add
       (concat_vectors
        (slice_vectors
         (concat_vectors
          t60.s
          t59) 4 1 64)
        (slice_vectors
         (concat_vectors
          t59
          t61.s) 4 1 64))
       (vec-mul
        (concat_vectors
         (slice_vectors
          (concat_vectors
           t60.s
           t59) 3 1 64)
         (slice_vectors
          (concat_vectors
           t59
           t61.s) 3 1 64))
        (x128 (int16_t (bv 4 16))))))))
   (x128 (int16_t (bv 256 16))))))

(define spec (synthesis-spec halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'halide-ir 'greedy 'enumerative 'enumerative))

(define out (open-output-file "sexp_4.out" #:exists 'replace))
(pretty-write (llvm-codegen hvx-expr) out)
(close-output-port out)