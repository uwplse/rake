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
(define t226 (load input_bounded (ramp (*  (+   (*    (quotient     (+      t142      255)     128)    2)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t227.s (load input_bounded (ramp (+  (*   (+    (*     (quotient      (+       t142       255)      128)     2)    output.s0.x.x)   128)  128) 1 128) (aligned 128 0)))
(define t228 (load input_bounded (ramp (*  (+   (*    (quotient     (+      t142      255)     128)    3)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t229.s (load input_bounded (ramp (+  (*   (+    (*     (quotient      (+       t142       255)      128)     3)    output.s0.x.x)   128)  128) 1 128) (aligned 128 0)))
(define t230 (load input_bounded (ramp (*  (+   (*    (quotient     (+      t142      255)     128)    4)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t231.s (load input_bounded (ramp (+  (*   (+    (*     (quotient      (+       t142       255)      128)     4)    output.s0.x.x)   128)  128) 1 128) (aligned 128 0)))

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
           t226
           t227.s) 1 1 128)))
       (int16x128
        (x128 (load-sca mask 1))))
      (vec-add
       (vec-mul
        (int16x128
         (uint16x128
          t226))
        (int16x128
         (x128 (load-sca mask 0))))
       (vec-add
        (vec-mul
         (int16x128
          (uint16x128
           (slice_vectors
            (concat_vectors
             t226
             t227.s) 2 1 128)))
         (int16x128
          (x128 (load-sca mask 2))))
        (vec-add
         (vec-mul
          (int16x128
           (uint16x128
            t228))
          (int16x128
           (x128 (load-sca mask 3))))
         (vec-add
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              (concat_vectors
               t228
               t229.s) 1 1 128)))
           (int16x128
            (x128 (load-sca mask 4))))
          (vec-add
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               (concat_vectors
                t228
                t229.s) 2 1 128)))
            (int16x128
             (x128 (load-sca mask 5))))
           (vec-add
            (vec-mul
             (int16x128
              (uint16x128
               t230))
             (int16x128
              (x128 (load-sca mask 6))))
            (vec-add
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 (concat_vectors
                  t230
                  t231.s) 2 1 128)))
              (int16x128
               (x128 (load-sca mask 8))))
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 (concat_vectors
                  t230
                  t231.s) 1 1 128)))
              (int16x128
               (x128 (load-sca mask 7))))))))))))
     (x128 (int16_t (bv 16 16))))
    (x128 (int16_t (bv 255 16))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_2.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)