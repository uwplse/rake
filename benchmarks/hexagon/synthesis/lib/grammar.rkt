#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require "analysis.rkt")
(require "cpp.rkt")
(require "hexagon.rkt")
(require "ir.rkt")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; STAGE 1 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Simplest encoding (deprecated because to slow)
(define-synthax (hxv-expr-recursive depth)
  #:base (choose
          (gather rows))
  #:else (choose
          (gather rows)
          (vpacko
           (hxv-expr (- depth 1)))
          (vadd
           (hxv-expr (- depth 1))
           (hxv-expr (- depth 1)))
          (vmpyi-acc
           (hxv-expr (- depth 1))
           (hxv-expr (- depth 1))
           (bvadd (bv 2 8) (?? (bitvector 8))))))

;; Best encoding
(define (??hvx-instr registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose*
   t0
   (swizzle t0)
   (vpackhi t0)
   (vadd t0 t1)
   (vmpyi-acc t0 t1 (?? (bitvector 8)))
   (vasr-rnd-sat t0 t1 (bv 4 16))))

(define (??hxv-expr buffers)
  (define r0 (gather buffers))
  (define r1 (??hvx-instr (list r0)))
  (define r2 (??hvx-instr (list r0 r1)))
  (define r3 (??hvx-instr (list r0 r1 r2)))
  (define r4 (??hvx-instr (list r0 r1 r2 r3)))
  r4)

;; Best encoding (unrolled, useful for testing)
(define (??hvx-instr1 registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose
   t0
   (swizzle t0)
   (vpacko t0)
   (vadd t0 t1)
   (vmpyi-acc t0 t1 (?? (bitvector 8)))))

(define (??hvx-instr2 registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose
   t0
   (swizzle t0)
   (vpacko t0)
   (vadd t0 t1)
   (vmpyi-acc t0 t1 (?? (bitvector 8)))))

(define (??hvx-instr3 registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose
   t0
   (swizzle t0)
   (vpacko t0)
   (vadd t0 t1)
   (vmpyi-acc t0 t1 (?? (bitvector 8)))))

(define (??hvx-instr4 registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose
   t0
   (swizzle t0)
   (vpacko t0)
   (vadd t0 t1)
   (vmpyi-acc t0 t1 (?? (bitvector 8)))))

(define (??hvx-instr5 buffers registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose
   t0
   (swizzle t0)
   (vpacko t0)
   (vadd t0 t1)
   (vmpyi-acc t0 t1 (?? (bitvector 8)))))

(define (??hxv-expr-linear-static buffers)
  (define r0 (gather buffers))
  (define r1 (??hvx-instr1 (list r0)))
  (define r2 (??hvx-instr2 (list r0 r1)))
  (define r3 (??hvx-instr3 (list r0 r1 r2)))
  (define r4 (??hvx-instr4 (list r0 r1 r2 r3)))
  r4)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; STAGE 2 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (??hvx-swizzle-instr vreads registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose*
   t0
   (vcombine t0 t1)
   (valign t0 t1 (??))))

(define (??hvx-swizzle vreads)
  (define r0 (apply choose* vreads))
  ;(define r1 (??hvx-swizzle-instr vreads (list r0)))
  ;(define r2 (??hvx-swizzle-instr vreads (list r0 r1)))
  r0)

(define (plug-swizzle-grammar expr vreads)
  (match expr
    [(gather opts) (??hvx-swizzle vreads)]
    [(swizzle vec) (??hvx-swizzle vreads)]
    [(vadd a b) (vadd (plug-swizzle-grammar a vreads) (plug-swizzle-grammar b vreads))]
    [(vmpyi-acc acc v s) (vmpyi-acc (plug-swizzle-grammar acc vreads) (plug-swizzle-grammar v vreads) s)]
    [_ expr]))

(define (gen-final-sketch expr vreads)
  (plug-swizzle-grammar expr vreads))

(provide (all-defined-out))