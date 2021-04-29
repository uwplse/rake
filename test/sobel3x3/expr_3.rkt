#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic-buffer c8 uint8_t)
(define-symbolic-buffer c9 uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t400 integer?)
(define-symbolic t401 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t268 (max   (*    t401    128)   (+    (*     t400     128)    2)))
(define t228.s (load bounded_input (ramp (*  (+   (*    (quotient     (+      t268      255)     128)    3)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t229.s.s (load bounded_input (ramp (*  (+   (*    (quotient     (+      t268      255)     128)    3)   output.s0.x.x)  128) 1 256) (aligned 128 0)))
(define t231.s (load bounded_input (ramp (*  (+   (*    (quotient     (+      t268      255)     128)    5)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t232.s.s (load bounded_input (ramp (*  (+   (*    (quotient     (+      t268      255)     128)    5)   output.s0.x.x)  128) 1 256) (aligned 128 0)))
(define t380 (load bounded_input (ramp (*  (+   (*    (quotient     (+      t268      255)     128)    4)   output.s0.x.x)  128) 1 128) (aligned 128 0)))

(define halide-expr
 (uint8x128
  (vec-min
   (vec-add
    (vec-absd
     (vec-add
      (vec-add
       (vec-shl
        (uint16x128
         (slice_vectors
          (load c8 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t228.s))
      (uint16x128
       (slice_vectors
        t229.s.s 2 1 128)))
     (vec-add
      (vec-add
       (vec-shl
        (uint16x128
         (slice_vectors
          (load c9 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t231.s))
      (uint16x128
       (slice_vectors
        t232.s.s 2 1 128))))
    (vec-absd
     (vec-add
      (vec-add
       (vec-shl
        (uint16x128
         t380)
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t228.s))
      (uint16x128
       t231.s))
     (vec-add
      (vec-add
       (vec-shl
        (uint16x128
         (slice_vectors
          (concat_vectors
           t380
           (load bounded_input (ramp (+  (*   (+    (*     (quotient      (+       t268       255)      128)     4)    output.s0.x.x)   128)  128) 1 128) (aligned 128 0))) 2 1 128))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        (slice_vectors
         t229.s.s 2 1 128)))
      (uint16x128
       (slice_vectors
        t232.s.s 2 1 128)))))
   (x128 (uint16_t (bv 255 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_3.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)