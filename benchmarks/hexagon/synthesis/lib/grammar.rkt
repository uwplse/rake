#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require "analysis.rkt")
(require "cpp.rkt")
(require "hexagon.rkt")
(require "ir.rkt")

; Cast to uint8
; Signed div
; Vec-Sca multiply

; Add

(define (bool-const)
  (define-symbolic b boolean?)
  b)

(define (int-const)
  (define-symbolic* c (bitvector 4))
  (choose*
   (int8_t (sign-extend  c (bitvector 8)))
   (int16_t (sign-extend  c (bitvector 16)))
   (uint8_t (sign-extend  c (bitvector 8)))
   (uint16_t (sign-extend  c (bitvector 16)))))

;; Dynamic Grammars
(define (??hvx-instr registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (define t2 (apply choose* registers))
  (define c (int-const))
  (choose*
   ;; Swizzle
   ;(swizzle t0)

   ;; Addition
   (vadd t0 t1 (bool-const))
   (vadd-w t0 t1)
   (vadd-w-acc t0 t1 t2)

   ;; Vec-Sca multiplies
   (vmpy t0 c)
   (vmpyi t0 c)
   (vmpye t0 c)

   (vmpy-acc t0 t1 c)
   (vmpyi-acc t0 t1 c)
   (vmpye-acc t0 t1 c)))

   ;(vmpyi-acc t0 t1 (sign-extend  (?? (bitvector 4)) (bitvector 8)))
   ;(vdmpy-acc t0 t1 (sign-extend  (?? (bitvector 4)) (bitvector 8)) (sign-extend  (?? (bitvector 4)) (bitvector 8)))
   ;(vtmpy (vpair t0 t1) (sign-extend  (?? (bitvector 4)) (bitvector 8)) (sign-extend  (?? (bitvector 4)) (bitvector 8)))
   ;(vasr-rnd-sat t0 t1 (zero-extend (?? (bitvector 4)) (bitvector 16)))))

(define (??hxv-expr buffers)
  (define r0 (gather buffers))
  (define r1 (??hvx-instr (list r0)))
  (define r2 (??hvx-instr (list r0 r1)))
  (define r3 (??hvx-instr (list r0 r1 r2)))
  (define r4 (??hvx-instr (list r0 r1 r2 r3)))
  (define r5 (??hvx-instr (list r0 r1 r2 r3 r4)))
  r2)

(provide (all-defined-out))