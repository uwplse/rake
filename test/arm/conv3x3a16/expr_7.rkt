#lang rosette/safe

(require rake)
(init-logging "expr_7.runtimes")

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
(define t124 (var-lookup 't124 (sca-mul  t127  40)))
(define t122 (var-lookup 't122 (sca-mul  t127  32)))
(define t120 (var-lookup 't120 (sca-mul  t127  24)))
(define t116 (var-lookup 't116 (sca-sub  (sca-sub  2  t93)  mask.min.0)))
(define t118 (var-lookup 't118 (sca-sub  (sca-sub  1  t93)  mask.min.0)))
(define t117 (var-lookup 't117 (sca-sub  (sca-sub  0  t93)  mask.min.0)))
(define t53 (var-lookup 't53 (sca-add  output.s0.x.x  t124)))
(define t57 (var-lookup 't57 (sca-add  output.s0.x.x  t120)))
(define t84 (var-lookup 't84 (sca-add  output.s0.x.x  t122)))

(define halide-expr
 (uint8x16
  (vec-max
   (vec-min
    (vec-shr
     (vec-add
      (vec-mul
       (int16x16
        (uint16x16
         (load input_bounded (ramp (sca-add (sca-mul t57 16) 1) 1 16) (aligned 16 1))))
       (int16x16
        (x16 (load-sca mask t118))))
      (vec-add
       (vec-mul
        (int16x16
         (uint16x16
          (load input_bounded (ramp (sca-mul t57 16) 1 16) (aligned 16 0))))
        (int16x16
         (x16 (load-sca mask t117))))
       (vec-add
        (vec-mul
         (int16x16
          (uint16x16
           (load input_bounded (ramp (sca-add (sca-mul t57 16) 2) 1 16) (aligned 16 2))))
         (int16x16
          (x16 (load-sca mask t116))))
        (vec-add
         (vec-mul
          (int16x16
           (uint16x16
            (load input_bounded (ramp (sca-mul t84 16) 1 16) (aligned 16 0))))
          (int16x16
           (x16 (load-sca mask t91))))
         (vec-add
          (vec-mul
           (int16x16
            (uint16x16
             (load input_bounded (ramp (sca-add (sca-mul t84 16) 1) 1 16) (aligned 16 1))))
           (int16x16
            (x16 (load-sca mask (sca-add t91 1)))))
          (vec-add
           (vec-mul
            (int16x16
             (uint16x16
              (load input_bounded (ramp (sca-add (sca-mul t84 16) 2) 1 16) (aligned 16 2))))
            (int16x16
             (x16 (load-sca mask (sca-add t91 2)))))
           (vec-add
            (vec-mul
             (int16x16
              (uint16x16
               (load input_bounded (ramp (sca-mul t53 16) 1 16) (aligned 16 0))))
             (int16x16
              (x16 (load-sca mask t92))))
            (vec-add
             (vec-mul
              (int16x16
               (uint16x16
                (load input_bounded (ramp (sca-add (sca-mul t53 16) 2) 1 16) (aligned 16 2))))
              (int16x16
               (x16 (load-sca mask (sca-add t92 2)))))
             (vec-mul
              (int16x16
               (uint16x16
                (load input_bounded (ramp (sca-add (sca-mul t53 16) 1) 1 16) (aligned 16 1))))
              (int16x16
               (x16 (load-sca mask (sca-add t92 1)))))))))))))
     (x16 (uint16_t (bv 4 16))))
    (x16 (int16_t (bv 255 16))))
   (x16 (int16_t (bv 0 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define arm-expr (synthesize-arm spec 'greedy 'enumerative 'enumerative))

(llvm-codegen arm-expr "sexp_7.out")