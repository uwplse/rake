#lang rosette/safe

(require rake)

(define-symbolic-buffer input_bounded uint8_t)
(define-symbolic-buffer mask int8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t252 integer?)
(define-symbolic t251 integer?)

(define axioms 
  (list 
   (values-range-from input_bounded (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t135 (max   (*    t252    128)   (+    (*     t251     128)    2)))
(define t219 (load input_bounded (ramp (*  (+   (*    (quotient     (+      t135      255)     128)    2)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t220.s (load input_bounded (ramp (+  (*   (+    (*     (quotient      (+       t135       255)      128)     2)    output.s0.x.x)   128)  128) 1 128) (aligned 128 0)))
(define t221 (load input_bounded (ramp (*  (+   (*    (quotient     (+      t135      255)     128)    3)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t222.s (load input_bounded (ramp (+  (*   (+    (*     (quotient      (+       t135       255)      128)     3)    output.s0.x.x)   128)  128) 1 128) (aligned 128 0)))
(define t223 (load input_bounded (ramp (*  (+   (*    (quotient     (+      t135      255)     128)    4)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t224.s (load input_bounded (ramp (+  (*   (+    (*     (quotient      (+       t135       255)      128)     4)    output.s0.x.x)   128)  128) 1 128) (aligned 128 0)))

(define halide-expr
 (uint8x128
  (vec-max
   (vec-min
    (vec-div
     (vec-add
      (vec-add
       (vec-add
        (vec-add
         (vec-add
          (vec-add
           (vec-add
            (vec-add
             (int32x128
              (vec-mul
               (int16x128
                (uint16x128
                 t219))
               (int16x128
                (x128 (load-sca mask 0)))))
             (int32x128
              (vec-mul
               (int16x128
                (uint16x128
                 (slice_vectors
                  (concat_vectors
                   t219
                   t220.s) 1 1 128)))
               (int16x128
                (x128 (load-sca mask 1))))))
            (int32x128
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 (concat_vectors
                  t219
                  t220.s) 2 1 128)))
              (int16x128
               (x128 (load-sca mask 2))))))
           (int32x128
            (vec-mul
             (int16x128
              (uint16x128
               t221))
             (int16x128
              (x128 (load-sca mask 3))))))
          (int32x128
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               (concat_vectors
                t221
                t222.s) 1 1 128)))
            (int16x128
             (x128 (load-sca mask 4))))))
         (int32x128
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              (concat_vectors
               t221
               t222.s) 2 1 128)))
           (int16x128
            (x128 (load-sca mask 5))))))
        (int32x128
         (vec-mul
          (int16x128
           (uint16x128
            t223))
          (int16x128
           (x128 (load-sca mask 6))))))
       (int32x128
        (vec-mul
         (int16x128
          (uint16x128
           (slice_vectors
            (concat_vectors
             t223
             t224.s) 1 1 128)))
         (int16x128
          (x128 (load-sca mask 7))))))
      (int32x128
       (vec-mul
        (int16x128
         (uint16x128
          (slice_vectors
           (concat_vectors
            t223
            t224.s) 2 1 128)))
        (int16x128
         (x128 (load-sca mask 8))))))
     (x128 (int32_t (bv 16 32))))
    (x128 (int32_t (bv 255 32))))
   (x128 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_2.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)