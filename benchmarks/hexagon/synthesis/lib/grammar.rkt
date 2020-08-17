#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require "analysis.rkt")
(require "cpp.rkt")
(require "hexagon.rkt")
(require "ir.rkt")

; Cast to uint8
; Signed div

(define (bool-const)
  (define-symbolic* b boolean?)
  b)

(define (int-const)
  (define-symbolic* c (bitvector 4))
  (choose*
   (int16_t (bv 2 16))
   (int8_t (sign-extend c (bitvector 8)))))

;; Simplified Grammar
(define (??hvx-instr-smpl1 r0)
  (define t0 (choose r0))

  (choose
   ;; Convolve data
   (convolve
    t0
    (list (int-const) (int-const) (int-const) (int-const) (bool-const))
    (choose sat8 sat16)
    (choose 'int16 'int32))))

(define (??hvx-instr-smpl2 r0 r1)
  (define t0 (choose r0 r1))

  (choose
   ;; Convolve data
   (convolve
    t0
    (list (int-const) (int-const) (int-const) (int-const) (bool-const))
    (choose sat8 sat16)
    (choose 'int16 'int32))))

(define (??hvx-expr-smpl buffers)
  (define r0 (load-data buffers))
  (define r1 (??hvx-instr-smpl1 r0))
  (define r2 (??hvx-instr-smpl2 r0 r1))
  r1)

;; Dynamic Grammars
(define (??hvx-instr registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (define t2 (apply choose* registers))
  (define c0 (int-const))
  (define c1 (int-const))
  (define Rt (cons c0 c1))
  (define Rt4 (list c0 c1 (int-const) (int-const)))
  (choose*
   ;; Swizzle
   ;(swizzle t0)

   ;; Broadcast
   ;(vsplat c0)

   ;; Addition
   (vadd t0 t1 (bool-const))
   (vadd-w t0 t1)
   (vadd-w-acc t0 t1 t2)

   ;; Vec-Sca multiplies
   (vmpy t0 c0)
   (vmpyi t0 c0)
   (vmpye t0 c0)

   (vmpy-acc t0 t1 c0)
   (vmpyi-acc t0 t1 c0)
   (vmpye-acc t0 t1 c0)

   (vmpa t1 Rt)
   (vmpa-acc t0 t1 Rt)

   (vdmpy t0 Rt)
   (vdmpy-sw t0 Rt)
   (vdmpy-acc t0 t1 Rt)
   (vdmpy-sw-acc t0 t1 Rt)

   (vtmpy t0 Rt)
   (vtmpy-acc t0 t1 Rt)

   (vrmpy t0 Rt4)
   (vrmpy-acc t0 t1 Rt4)

   (vrmpy-p t0 Rt4 (bool-const))
   (vrmpy-p-acc t0 t1 Rt4 (bool-const))

   ;; Division
   ;(vavg t0 t1 (bool-const))
   ;(vasr t0 t1)
   ;(vlsr t0 t1)
   ;(vround t0)
   )) ;; 42 seconds

   ;(vasr-rnd-sat t0 t1 (zero-extend (?? (bitvector 4)) (bitvector 16)))))

(define (??hvx-expr buffers)
  (define r0 (gather buffers))
  (define r1 (??hvx-instr (list r0)))
  (define r2 (??hvx-instr (list r0 r1)))
  (define r3 (??hvx-instr (list r0 r1 r2)))
  (define r4 (??hvx-instr (list r0 r1 r2 r3)))
  (define r5 (??hvx-instr (list r0 r1 r2 r3 r4)))
  r2)

(provide (all-defined-out))