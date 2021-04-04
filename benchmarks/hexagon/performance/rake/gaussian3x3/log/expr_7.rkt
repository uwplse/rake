#lang rosette

(require rake)
(require rake/halide)

(error-print-width 100000)
(debug-on)

(define-symbolic rows (~> integer? (bitvector 16)))
(init-var-types (make-hash (list (cons rows 'int16))))

(define-symbolic output.s0.x.x integer?)
(define-symbolic output.extent.0 integer?)

(define axioms 
  (list 
   (values-range-from rows (int16_t (bv 0 16)) (int16_t (bv 1020 16)))))

(define t20 (max (* (quotient (+ output.extent.0 127) 128) 128) (+ (* (quotient (+ output.extent.0 -1) 128) 128) 2)))
(define t57 (load rows (ramp (+ (* (+ (* (quotient (+ t20 255) 128) 3) output.s0.x.x) 128) 64) 1 64) (aligned 128 64)))
(define t58.s (load rows (ramp (* (+ (* (quotient (+ t20 255) 128) 3) output.s0.x.x) 128) 1 64) (aligned 128 0)))
(define t59.s (load rows (ramp (+ (* (+ (* (quotient (+ t20 255) 128) 3) output.s0.x.x) 128) 128) 1 64) (aligned 128 0)))

(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-add
     (vec-mul
      (concat_vectors
       (slice_vectors
        (concat_vectors
         t58.s
         t57) 1 1 64)
       (slice_vectors
        (concat_vectors
         t57
         t59.s) 1 1 64))
      (x128 (int16_t (bv 2 16))))
     (vec-add
      (concat_vectors
       t58.s
       t57)
      (concat_vectors
       (slice_vectors
        (concat_vectors
         t58.s
         t57) 2 1 64)
       (slice_vectors
        (concat_vectors
         t57
         t59.s) 2 1 64))))
    (x128 (int16_t (bv 8 16))))
   (x128 (int16_t (bv 16 16))))))

(define spec (synthesis-spec halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'halide-ir 'greedy 'enumerative 'enumerative))

(define out (open-output-file "sexp_7.out" #:exists 'replace))
(pretty-write (llvm-codegen hvx-expr) out)
(close-output-port out)