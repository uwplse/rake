#lang rosette/safe

(require rake)

(define-symbolic-buffer input1 uint8_t)
(define-symbolic-buffer input2 uint8_t)
(define-symbolic-var output_zero uint8_t)
(define-symbolic-var input2_shift uint32_t)
(define-symbolic-var input2_multiplier int32_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var output_shift uint32_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic output.s0.c.c integer?)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var left_shift uint32_t)
(define-symbolic-var input2_zero uint8_t)
(define-symbolic-var input1_zero uint8_t)
(define-symbolic-var input1_multiplier int32_t)
(define-symbolic-var input1_shift uint32_t)
(define-symbolic t295 integer?)
(define-symbolic t296 integer?)
(define-symbolic t249 integer?)
(define-symbolic t287 integer?)
(define-symbolic t290 integer?)
(define-symbolic t265 integer?)
(define-symbolic t257 integer?)
(define-symbolic t285 integer?)
(define-symbolic t294 integer?)
(define-symbolic t286 integer?)
(define-symbolic t289 integer?)
(define-symbolic t282 integer?)
(define-symbolic t284 integer?)
(define-symbolic t283 integer?)
(define-symbolic t293 integer?)

(define axioms 
  (list ))

(define input1.min.0 t249)
(define input2.min.0 t257)
(define output.min.0 t265)
(define t206.s (-  (-  (-  output.min.0  t284)  t283)  t282))
(define t205.s (-  (-  (-  output.min.0  t287)  t286)  t285))
(define t211 (+  t289  (-  t206.s  input2.min.0)))
(define t210 (+  t290  (-  t205.s  input1.min.0)))
(define t245 (+  t294  (+  t293  t211)))
(define t244 (+  t296  (+  t295  t210)))

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
                     (vec-add
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
                                   (load input1 (ramp (+ (* output.s0.c.c 128) t244) 1 128) (aligned 1 0)))
                                  (x128 (int16x1 input1_zero))))
                                (x128 left_shift)))
                              (int64x128
                               (x128 input1_multiplier)))
                             (x128 (int64_t (bv 1073741824 64))))
                            (x128 (uint64_t (bv 31 64))))
                           (x128 (int64_t (bv 2147483647 64))))
                          (x128 (int64_t (bv -2147483648 64)))))
                        (x128 (sca-shl (int32_t (bv 1 32)) (sca-sub input1_shift (uint32_t (bv 1 32))))))
                       (x128 input1_shift))
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
                                   (load input2 (ramp (+ (* output.s0.c.c 128) t245) 1 128) (aligned 1 0)))
                                  (x128 (int16x1 input2_zero))))
                                (x128 left_shift)))
                              (int64x128
                               (x128 input2_multiplier)))
                             (x128 (int64_t (bv 1073741824 64))))
                            (x128 (uint64_t (bv 31 64))))
                           (x128 (int64_t (bv 2147483647 64))))
                          (x128 (int64_t (bv -2147483648 64)))))
                        (x128 (sca-shl (int32_t (bv 1 32)) (sca-sub input2_shift (uint32_t (bv 1 32))))))
                       (x128 input2_shift))))
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

;(define out (open-output-file "sexp_0.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)