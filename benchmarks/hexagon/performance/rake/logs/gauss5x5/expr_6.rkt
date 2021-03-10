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

(define-symbolic t31 integer?)
(define-symbolic output.s0.x.x integer?)


(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (load rows (ramp (+ (* (+ (* output.s0.x.x 64) t31) 2) 257) 1 128))
     (x128 (int16_t (bv 4 16))))
    (vec-add
     (load rows (ramp (+ (* (+ (* output.s0.x.x 64) t31) 2) 256) 1 128))
     (vec-add
      (vec-mul
       (load rows (ramp (+ (* (+ (* output.s0.x.x 64) t31) 2) 258) 1 128))
       (x128 (int16_t (bv 6 16))))
      (vec-add
       (load rows (ramp (+ (* (+ (* output.s0.x.x 64) t31) 2) 260) 1 128))
       (vec-mul
        (load rows (ramp (+ (* (+ (* output.s0.x.x 64) t31) 2) 259) 1 128))
        (x128 (int16_t (bv 4 16))))))))
   (x128 (int16_t (bv 256 16))))))

(define spec (synthesis-spec halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'halide-ir 'greedy 'enumerative 'enumerative))

(define out (open-output-file "sexp.out" #:exists 'replace))
(pretty-write (llvm-codegen hvx-expr) out)
(close-output-port out)