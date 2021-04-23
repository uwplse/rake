#lang rosette/safe

(require rake)

(define-symbolic-buffer rows int16_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t280 integer?)
(define-symbolic t279 integer?)

(define axioms 
  (list 
   (values-range-from rows (int16_t (bv 0 16)) (int16_t (bv 4080 16)))))

(define t141 (max   (*    t280    256)   (+    (*     t279     256)    132)))
(define t246 (load rows (ramp (*  (+   (quotient    (+     t141     255)    128)   output.s0.x.x)  256) 1 64) (aligned 256 0)))
(define t247 (load rows (ramp (+  (*   (+    (quotient     (+      t141      255)     128)    output.s0.x.x)   256)  64) 1 64) (aligned 256 64)))
(define t248 (concat_vectors
  t246
  t247))
(define t249 (load rows (ramp (+  (*   (+    (quotient     (+      t141      255)     128)    output.s0.x.x)   256)  128) 1 64) (aligned 256 128)))
(define t250 (concat_vectors
  t247
  t249))
(define t251 (load rows (ramp (+  (*   (+    (quotient     (+      t141      255)     128)    output.s0.x.x)   256)  192) 1 64) (aligned 256 192)))
(define t252 (concat_vectors
  t249
  t251))
(define t253.s (load rows (ramp (+  (*   (+    (quotient     (+      t141      255)     128)    output.s0.x.x)   256)  256) 1 64) (aligned 256 0)))

(define halide-expr
 (uint8x256
  (vec-div
   (vec-add
    (vec-mul
     (concat_vectors
      (concat_vectors
       (slice_vectors
        t248 1 1 64)
       (slice_vectors
        t250 1 1 64))
      (concat_vectors
       (slice_vectors
        t252 1 1 64)
       (slice_vectors
        (concat_vectors
         t251
         t253.s) 1 1 64)))
     (x256 (int16_t (bv 4 16))))
    (vec-add
     (concat_vectors
      (concat_vectors
       t246
       t247)
      (concat_vectors
       t249
       t251))
     (vec-add
      (vec-mul
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t248 2 1 64)
         (slice_vectors
          t250 2 1 64))
        (concat_vectors
         (slice_vectors
          t252 2 1 64)
         (slice_vectors
          (concat_vectors
           t251
           t253.s) 2 1 64)))
       (x256 (int16_t (bv 6 16))))
      (vec-add
       (concat_vectors
        (concat_vectors
         (slice_vectors
          t248 4 1 64)
         (slice_vectors
          t250 4 1 64))
        (concat_vectors
         (slice_vectors
          t252 4 1 64)
         (slice_vectors
          (concat_vectors
           t251
           t253.s) 4 1 64)))
       (vec-mul
        (concat_vectors
         (concat_vectors
          (slice_vectors
           t248 3 1 64)
          (slice_vectors
           t250 3 1 64))
         (concat_vectors
          (slice_vectors
           t252 3 1 64)
          (slice_vectors
           (concat_vectors
            t251
            t253.s) 3 1 64)))
        (x256 (int16_t (bv 4 16))))))))
   (x256 (int16_t (bv 256 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_6.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)