#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer mask_0 uint8_t)
(define-symbolic-var t4292 uint8_t)
(define-symbolic t4539 integer?)
(define-symbolic t4535 integer?)
(define-symbolic t4504 integer?)
(define-symbolic t4512 integer?)
(define-symbolic-var has_mask_buffer uint1_t)
(define-symbolic output.s0.x.x integer?)

(define axioms
  (list ))

(define dst_color_0.min.0 (var-lookup 'dst_color_0.min.0 t4504))
(define mask_0.min.0 (var-lookup 'mask_0.min.0 t4512))
(define t4291.s (var-lookup 't4291.s (sca-sub  dst_color_0.min.0  t4535)))
(define t4489 (var-lookup 't4489 (sca-add  t4539  (sca-sub  t4291.s  mask_0.min.0))))

(define halide-expr
 (vec-mul
  (uint16x128
   (vec-if
    (x128 has_mask_buffer)
    (load mask_0 (ramp (sca-add (sca-mul output.s0.x.x 128) t4489) 1 128) (aligned 1 0))
    (x128 (uint8_t (bv 255 8)))))
  (uint16x128
   (x128 t4292))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")