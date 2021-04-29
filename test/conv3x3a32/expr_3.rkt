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
(define t225 (load input_bounded (ramp (*  (+   (*    (quotient     (+      t135      255)     128)    3)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t226.s (load input_bounded (ramp (+  (*   (+    (*     (quotient      (+       t135       255)      128)     3)    output.s0.x.x)   128)  128) 1 128) (aligned 128 0)))
(define t227 (load input_bounded (ramp (*  (+   (*    (quotient     (+      t135      255)     128)    4)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t228.s (load input_bounded (ramp (+  (*   (+    (*     (quotient      (+       t135       255)      128)     4)    output.s0.x.x)   128)  128) 1 128) (aligned 128 0)))
(define t229 (load input_bounded (ramp (*  (+   (*    (quotient     (+      t135      255)     128)    5)   output.s0.x.x)  128) 1 128) (aligned 128 0)))
(define t230.s (load input_bounded (ramp (+  (*   (+    (*     (quotient      (+       t135       255)      128)     5)    output.s0.x.x)   128)  128) 1 128) (aligned 128 0)))

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
                 t225))
               (int16x128
                (x128 (load-sca mask 0)))))
             (int32x128
              (vec-mul
               (int16x128
                (uint16x128
                 (slice_vectors
                  (concat_vectors
                   t225
                   t226.s) 1 1 128)))
               (int16x128
                (x128 (load-sca mask 1))))))
            (int32x128
             (vec-mul
              (int16x128
               (uint16x128
                (slice_vectors
                 (concat_vectors
                  t225
                  t226.s) 2 1 128)))
              (int16x128
               (x128 (load-sca mask 2))))))
           (int32x128
            (vec-mul
             (int16x128
              (uint16x128
               t227))
             (int16x128
              (x128 (load-sca mask 3))))))
          (int32x128
           (vec-mul
            (int16x128
             (uint16x128
              (slice_vectors
               (concat_vectors
                t227
                t228.s) 1 1 128)))
            (int16x128
             (x128 (load-sca mask 4))))))
         (int32x128
          (vec-mul
           (int16x128
            (uint16x128
             (slice_vectors
              (concat_vectors
               t227
               t228.s) 2 1 128)))
           (int16x128
            (x128 (load-sca mask 5))))))
        (int32x128
         (vec-mul
          (int16x128
           (uint16x128
            t229))
          (int16x128
           (x128 (load-sca mask 6))))))
       (int32x128
        (vec-mul
         (int16x128
          (uint16x128
           (slice_vectors
            (concat_vectors
             t229
             t230.s) 1 1 128)))
         (int16x128
          (x128 (load-sca mask 7))))))
      (int32x128
       (vec-mul
        (int16x128
         (uint16x128
          (slice_vectors
           (concat_vectors
            t229
            t230.s) 2 1 128)))
        (int16x128
         (x128 (load-sca mask 8))))))
     (x128 (int32_t (bv 16 32))))
    (x128 (int32_t (bv 255 32))))
   (x128 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_3.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)