#lang rosette/safe

(require rake)
(init-logging "expr_4.runtimes")

(define-symbolic-buffer input_bounded uint8_t)
(define-symbolic-buffer mask int8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t161 integer?)
(define-symbolic t162 integer?)
(define-symbolic t163 integer?)
(define-symbolic t136 integer?)
(define-symbolic t173 integer?)

(define axioms 
  (list ))

(define mask.min.0 (var-lookup 'mask.min.0 t136))
(define t93 (var-lookup 't93 t161))
(define t92 (var-lookup 't92 (sca-sub  t162  mask.min.0)))
(define t91 (var-lookup 't91 (sca-sub  t163  mask.min.0)))
(define t127 (var-lookup 't127 t173))
(define t113 (var-lookup 't113 (sca-mul  t127  16)))
(define t115 (var-lookup 't115 (sca-mul  t127  8)))
(define t116 (var-lookup 't116 (sca-sub  (sca-sub  2  t93)  mask.min.0)))
(define t118 (var-lookup 't118 (sca-sub  (sca-sub  1  t93)  mask.min.0)))
(define t117 (var-lookup 't117 (sca-sub  (sca-sub  0  t93)  mask.min.0)))
(define t35 (var-lookup 't35 (sca-add  output.s0.x.x  t113)))
(define t39 (var-lookup 't39 output.s0.x.x))
(define t75 (var-lookup 't75 (sca-add  output.s0.x.x  t115)))

(define halide-expr
 (uint8x16
  (vec-max
   (vec-min
    (vec-shr
     (vec-add
      (vec-mul
       (int16x16
        (uint16x16
         (load input_bounded (ramp (sca-add (sca-mul t39 16) 1) 1 16) (aligned 16 1))))
       (int16x16
        (x16 (load-sca mask t118))))
      (vec-add
       (vec-mul
        (int16x16
         (uint16x16
          (load input_bounded (ramp (sca-mul t39 16) 1 16) (aligned 16 0))))
        (int16x16
         (x16 (load-sca mask t117))))
       (vec-add
        (vec-mul
         (int16x16
          (uint16x16
           (load input_bounded (ramp (sca-add (sca-mul t39 16) 2) 1 16) (aligned 16 2))))
         (int16x16
          (x16 (load-sca mask t116))))
        (vec-add
         (vec-mul
          (int16x16
           (uint16x16
            (load input_bounded (ramp (sca-mul t75 16) 1 16) (aligned 16 0))))
          (int16x16
           (x16 (load-sca mask t91))))
         (vec-add
          (vec-mul
           (int16x16
            (uint16x16
             (load input_bounded (ramp (sca-add (sca-mul t75 16) 1) 1 16) (aligned 16 1))))
           (int16x16
            (x16 (load-sca mask (sca-add t91 1)))))
          (vec-add
           (vec-mul
            (int16x16
             (uint16x16
              (load input_bounded (ramp (sca-add (sca-mul t75 16) 2) 1 16) (aligned 16 2))))
            (int16x16
             (x16 (load-sca mask (sca-add t91 2)))))
           (vec-add
            (vec-mul
             (int16x16
              (uint16x16
               (load input_bounded (ramp (sca-mul t35 16) 1 16) (aligned 16 0))))
             (int16x16
              (x16 (load-sca mask t92))))
            (vec-add
             (vec-mul
              (int16x16
               (uint16x16
                (load input_bounded (ramp (sca-add (sca-mul t35 16) 2) 1 16) (aligned 16 2))))
              (int16x16
               (x16 (load-sca mask (sca-add t92 2)))))
             (vec-mul
              (int16x16
               (uint16x16
                (load input_bounded (ramp (sca-add (sca-mul t35 16) 1) 1 16) (aligned 16 1))))
              (int16x16
               (x16 (load-sca mask (sca-add t92 1)))))))))))))
     (x16 (uint16_t (bv 4 16))))
    (x16 (int16_t (bv 255 16))))
   (x16 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_4.out")