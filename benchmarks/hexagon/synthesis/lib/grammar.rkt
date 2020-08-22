#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require "analysis.rkt")
(require "cpp.rkt")
(require "hexagon.rkt")
(require "ir.rkt")
(require "util.rkt")

(define (bool-const)
  (define-symbolic* b boolean?)
  b)

(define (int-const)
  (choose*
   (int8_t (bv 0 8))
   (int8_t (bv 1 8))
   (int8_t (bv 2 8))))

(define (int-const-s)
  (choose*
   (int16_t (bv 4 16))
   (int32_t (bv 4 32))))

(define (int-const-d)
  (choose*
   (int8_t (bv 8 8))
   (int16_t (bv 8 16))
   (int32_t (bv 8 32))))

;; Simplified Grammar
(define (??hvx-instr-smpl1 t0)
  (define convOutT (choose 'int16 'int32))
  (define convSatF (if (eq? convOutT 'int16) (choose nop sat8 satu8) (choose nop sat16 satu16)))
  
  (choose
   ;; Convolve data
   (convolve
    t0
    (list (int-const) (int-const) (int-const) (int-const) (bool-const))
    nop;convSatF
    convOutT)

   ;; Division
   (const-divide t0 (int-const-d))

   ;; Shift right
   (arith-shift-right t0 (int-const-s) (bool-const) (choose 'int16 'int8 'intu8))
   (logic-shift-right t0 (int-const-s))

   ;; Saturation with optional rounding
   (saturate t0 #t (bool-const))
   ))

(define (??hvx-instr-smpl2 t0)
  (choose
   ;; Convolve data
   (convolve
    t0
    (list (int-const) (int-const) (int-const) (int-const) (bool-const))
    nop;(choose nop sat8 satu8 sat16 satu16)
    (choose 'int16 'int32))

   ;; Division
   (const-divide t0 (int-const-d))

   ;; Shift right
   (arith-shift-right t0 (int-const-s) (bool-const) (choose 'int32 'int16 'uint16 'int8 'uint8))
   (logic-shift-right t0 (int-const-s))

   ;; Saturation with optional rounding
   (saturate t0 #t (bool-const))
   ))

(define (??hvx-expr-smpl buffers)
  (define r0 (load-data buffers))
  (define r1 (??hvx-instr-smpl1 r0))
  ;(define r2 (swizzle-data r1 buffers))
  (define r3 (??hvx-instr-smpl2 r1))
  r3)

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
   )) ;; 42 seconds

(define (??hvx-expr buffers)
  (define r0 (gather buffers))
  (define r1 (??hvx-instr (list r0)))
  (define r2 (??hvx-instr (list r0 r1)))
  ;(define r3 (??hvx-instr (list r0 r1 r2)))
  ;(define r4 (??hvx-instr (list r0 r1 r2 r3)))
  ;(define r5 (??hvx-instr (list r0 r1 r2 r3 r4)))
  r2)

(provide (all-defined-out))