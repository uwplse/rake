#lang rosette/safe

(require rake)

(define-symbolic-buffer input_bounded uint8_t)
(define-symbolic-buffer mask int8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t259 integer?)
(define-symbolic t258 integer?)

(define axioms 
  (list 
   (values-range-from input_bounded (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t142 (max   (*    t259    128)   (+    (*     t258     128)    2)))
(define t214 (load input_bounded (ramp (*  output.s0.x.x  128) 1 128) (aligned 128 0)))
(define t215.s (load input_bounded (ramp (+  (*   output.s0.x.x   128)  128) 1 128) (aligned 128 0)))
(define t216 (load input_bounded (ramp (*  (+   (quotient    (+     t142     255)    128)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t217.s (load input_bounded (ramp (+  (*   (+    (quotient     (+      t142      255)     128)    output.s0.x.x)   128)  128) 1 128) (aligned 128 0)))
(define t218 (load input_bounded (ramp (*  (+   (*    (quotient     (+      t142      255)     128)    2)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t219.s (load input_bounded (ramp (+  (*   (+    (*     (quotient      (+       t142       255)      128)     2)    output.s0.x.x)   128)  128) 1 128) (aligned 128 0)))

(define halide-expr
 (uint8x128
  (vec-max
   (vec-min
    (vec-div
     (vec-add
      (vec-mul
       (int16x128
        (uint16x128
         (slice_vectors
          (concat_vectors
           t214
           t215.s) 1 1 128)))
       (int16x128
        (x128 (halide-buffer-ref mask 1))))
      (vec-add
       (vec-mul
        (int16x128
         (uint16x128
          t214))
        (int16x128
         (x128 (halide-buffer-ref mask 0))))
       (vec-add
        (vec-mul
         (int16x128
          (uint16x128
           (slice_vectors
            (concat_vectors
             t214
             t215.s) 2 1 128)))
         (int16x128
          (x128 (halide-buffer-ref mask 2))))
        (vec-add
         (vec-mul
          (int16x128
           (uint16x128
            t216))
          (int16x128
           (x128 (halide-buffer-ref mask 3))))
         (vec-add
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              (concat_vectors
               t216
               t217.s) 1 1 128)))
           (int16x128
            (x128 (halide-buffer-ref mask 4))))
          (vec-add
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               (concat_vectors
                t216
                t217.s) 2 1 128)))
            (int16x128
             (x128 (halide-buffer-ref mask 5))))
           (vec-add
            (vec-mul
             (int16x128
              (uint16x128
               t218))
             (int16x128
              (x128 (halide-buffer-ref mask 6))))
            (vec-add
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 (concat_vectors
                  t218
                  t219.s) 2 1 128)))
              (int16x128
               (x128 (halide-buffer-ref mask 8))))
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 (concat_vectors
                  t218
                  t219.s) 1 1 128)))
              (int16x128
               (x128 (halide-buffer-ref mask 7))))))))))))
     (x128 (int16_t (bv 16 16))))
    (x128 (int16_t (bv 255 16))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_0.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)