#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require "cpp.rkt")
(require "hexagon.rkt")
(require "ir.rkt")

(define-synthax (hxv-expr-recursive depth)
  #:base (choose
          (gather rows))
  #:else (choose
          ;(gather rows)
          (vpacko
           (hxv-expr (- depth 1)))
          (vadd
           (hxv-expr (- depth 1))
           (hxv-expr (- depth 1)))
          (vmpyi-acc
           (hxv-expr (- depth 1))
           (hxv-expr (- depth 1))
           (?? (bitvector 8)))))

(define (??hvx-instr buffers registers)
  (define-symbolic* r0_idx integer?)
  (define-symbolic* r1_idx integer?)
  (choose*
   (gather (apply choose* buffers))
   (list-ref registers r0_idx)
   (vpacko (list-ref registers r0_idx))
   (vadd (list-ref registers r0_idx) (list-ref registers r1_idx))
   (vmpyi-acc (list-ref registers r0_idx) (list-ref registers r1_idx) (?? (bitvector 8)))))

(define (hxv-expr-linear-dynamic buffers)
  (define r0 (gather (apply choose* buffers)))
  (define r1 (??hvx-instr buffers (list r0)))
  (define r2 (??hvx-instr buffers (list r0 r1)))
  (define r3 (??hvx-instr buffers (list r0 r1 r2)))
  (define r4 (??hvx-instr buffers (list r0 r1 r2 r3)))
  r4)

;(define (gen-idx-map) (define-symbolic* idxm (~> integer? integer?)) idxm)

(define (??hvx-instr1 buffers registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose
   (broadcast (?? (bitvector 16)))
   (gather (apply choose* buffers))
   t0
   (swizzle t0)
   (vpacko t0)
   (vadd t0 t1)
   (vmpyi-acc t0 t1 (?? (bitvector 8)))))

(define (??hvx-instr2 buffers registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose
   (broadcast (?? (bitvector 16)))
   (gather (apply choose* buffers))
   t0
   (swizzle t0)
   (vpacko t0)
   (vadd t0 t1)
   (vmpyi-acc t0 t1 (?? (bitvector 8)))))

(define (??hvx-instr3 buffers registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose
   (broadcast (?? (bitvector 16)))
   (gather (apply choose* buffers))
   t0
   (swizzle t0)
   (vpacko t0)
   (vadd t0 t1)
   (vmpyi-acc t0 t1 (?? (bitvector 8)))))

(define (??hvx-instr4 buffers registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose
   (broadcast (?? (bitvector 16)))
   (gather (apply choose* buffers))
   t0
   (swizzle t0)
   (vpacko t0)
   (vadd t0 t1)
   (vmpyi-acc t0 t1 (?? (bitvector 8)))))

(define (??hvx-instr5 buffers registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose
   (broadcast (?? (bitvector 16)))
   (gather (apply choose* buffers))
   t0
   (swizzle t0)
   (vpacko t0)
   (vadd t0 t1)
   (vmpyi-acc t0 t1 (?? (bitvector 8)))))

(define (??hxv-expr-linear-static buffers)
  (define r0 (gather buffers))
  (define r1 (??hvx-instr1 buffers (list r0)))
  (define r2 (??hvx-instr2 buffers (list r0 r1)))
  (define r3 (??hvx-instr3 buffers (list r0 r1 r2)))
  (define r4 (??hvx-instr4 buffers (list r0 r1 r2 r3)))
  r3)

(provide (all-defined-out))