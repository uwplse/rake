#lang rosette/safe

(require rake)

(define-symbolic-buffer bounded_input uint8_t)
(define-symbolic-buffer c4 uint8_t)
(define-symbolic-buffer c5 uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t400 integer?)
(define-symbolic t401 integer?)

(define axioms 
  (list 
   (values-range-from bounded_input (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t268 (max   (*    t401    128)   (+    (*     t400     128)    2)))
(define t214.s (load bounded_input (ramp (*  (+   (quotient    (+     t268     255)    128)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t215.s.s (load bounded_input (ramp (*  (+   (quotient    (+     t268     255)    128)   output.s0.x.x)  128) 1 256) (aligned 128 0)))
(define t217.s (load bounded_input (ramp (*  (+   (*    (quotient     (+      t268      255)     128)    3)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t218.s.s (load bounded_input (ramp (*  (+   (*    (quotient     (+      t268      255)     128)    3)   output.s0.x.x)  128) 1 256) (aligned 128 0)))
(define t378 (load bounded_input (ramp (*  (+   (*    (quotient     (+      t268      255)     128)    2)   output.s0.x.x)  128) 1 128) (aligned 128 0)))

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
          (load c4 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t214.s))
      (uint16x128
       (slice_vectors
        t215.s.s 2 1 128)))
     (vec-add
      (vec-add
       (vec-shl
        (uint16x128
         (slice_vectors
          (load c5 (ramp 0 1 256) (aligned 0 0)) 1 1 128))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t217.s))
      (uint16x128
       (slice_vectors
        t218.s.s 2 1 128))))
    (vec-absd
     (vec-add
      (vec-add
       (vec-shl
        (uint16x128
         t378)
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t214.s))
      (uint16x128
       t217.s))
     (vec-add
      (vec-add
       (vec-shl
        (uint16x128
         (slice_vectors
          (concat_vectors
           t378
           (load bounded_input (ramp (+  (*   (+    (*     (quotient      (+       t268       255)      128)     2)    output.s0.x.x)   128)  128) 1 128) (aligned 128 0))) 2 1 128))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        (slice_vectors
         t215.s.s 2 1 128)))
      (uint16x128
       (slice_vectors
        t218.s.s 2 1 128)))))
   (x128 (uint16_t (bv 255 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_1.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)