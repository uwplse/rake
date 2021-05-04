#lang rosette/safe

(require rake)

(define-symbolic-buffer input1 uint8_t)
(define-symbolic-var output_zero uint8_t)
(define-symbolic output.s0.c.c integer?)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var output_shift uint32_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var left_shift uint32_t)
(define-symbolic-var input1_zero uint8_t)
(define-symbolic-var input1_multiplier int32_t)
(define-symbolic-var input1_shift uint32_t)
(define-symbolic t249 integer?)
(define-symbolic t305 integer?)
(define-symbolic t306 integer?)
(define-symbolic t265 integer?)
(define-symbolic t304 integer?)
(define-symbolic t308 integer?)
(define-symbolic t311 integer?)
(define-symbolic t312 integer?)

(define axioms 
  (list ))

(define input1.min.0 t249)
(define output.min.0 t265)
(define t228.s (-  (-  (-  output.min.0  t306)  t305)  t304))
(define t232 (+  t308  (-  t228.s  input1.min.0)))
(define t247 (+  t312  (+  t311  t232)))

(define halide-expr
 (vec-max
  (vec-min
   (uint8x128
    (vec-max
     (vec-min
      (vec-add
       (vec-max
        (vec-min
         (int16x128
          (vec-max
           (vec-min
            (vec-shr
             (vec-add
              (int32x128
               (vec-max
                (vec-min
                 (vec-shr
                  (vec-add
                   (vec-mul
                    (int64x128
                     (vec-shr
                      (vec-add
                       (int32x128
                        (vec-max
                         (vec-min
                          (vec-shr
                           (vec-add
                            (vec-mul
                             (int64x128
                              (vec-shl
                               (int32x128
                                (vec-sub
                                 (int16x128
                                  (load input1 (ramp (+ (* output.s0.c.c 128) t247) 1 128) (aligned 1 0)))
                                 (x128 (int16x1 input1_zero))))
                               (x128 left_shift)))
                             (int64x128
                              (x128 input1_multiplier)))
                            (x128 (int64_t (bv 1073741824 64))))
                           (x128 (uint64_t (bv 31 64))))
                          (x128 (int64_t (bv 2147483647 64))))
                         (x128 (int64_t (bv -2147483648 64)))))
                       (x128 (sca-shl (int32_t (bv 1 32)) (sca-sub input1_shift (uint32_t (bv 1 32))))))
                      (x128 input1_shift)))
                    (int64x128
                     (x128 output_multiplier)))
                   (x128 (int64_t (bv 1073741824 64))))
                  (x128 (uint64_t (bv 31 64))))
                 (x128 (int64_t (bv 2147483647 64))))
                (x128 (int64_t (bv -2147483648 64)))))
              (x128 (sca-shl (int32_t (bv 1 32)) (sca-sub output_shift (uint32_t (bv 1 32))))))
             (x128 output_shift))
            (x128 (int32_t (bv 32767 32))))
           (x128 (int32_t (bv -32768 32)))))
         (x128 (sca-sub (int16_t (bv 32767 16)) (sca-max (int16x1 output_zero) (int16_t (bv 0 16))))))
        (x128 (sca-sub (int16_t (bv -32768 16)) (sca-min (int16x1 output_zero) (int16_t (bv 0 16))))))
       (x128 (int16x1 output_zero)))
      (x128 (int16_t (bv 255 16))))
     (x128 (int16_t (bv 0 16)))))
   (x128 output_max))
  (x128 output_min)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_1.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)