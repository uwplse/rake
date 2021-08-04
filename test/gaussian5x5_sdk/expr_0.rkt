#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer c2 uint8_t)

(define axioms 
  (list ))


(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-mul
     (int16x128
      (load c2 (ramp 128 1 128) (aligned 0 128)))
     (x128 (int16_t (bv 4 16))))
    (vec-add
     (vec-mul
      (int16x128
       (uint16x128
        (load c2 (ramp 256 1 128) (aligned 0 256))))
      (int16x128
       (x128 (int8_t (bv 6 8)))))
     (vec-mul
      (int16x128
       (load c2 (ramp 384 1 128) (aligned 0 384)))
      (x128 (int16_t (bv 4 16))))))
   (int16x128
    (load c2 (ramp 0 1 128) (aligned 0 0))))
  (int16x128
   (load c2 (ramp 512 1 128) (aligned 0 512)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")