#lang rosette

(require rosette/lib/match)
(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require rake/hvx/ast/types)

(require rake/synthesis/ir)

(define (??hvx-swizzle-instr registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose*
   (last registers)
   (hi t0)
   (lo t0)
   
   ;; ALU Single
   ;(vshuffe t0 t1)
   ;(vshuffo t0 t1)

   ;; ALU Double
   (vcombine t0 t1)
   ;(vshuffoe t0 t1)

   ;; Permute
   ;(valign t0 t1 (apply choose* (range 4)))
   ;(vlalign t0 t1 (apply choose* (range 4)))
   ;(vror t0 (??))
   ;(vdeal t0)
   ;(vdeale t0 t1)
   (vshuff t0)
   
   ;; Permute-shift
   ;(vdeal t0 t1 c0)
   ;(vshuff t0 t1 c0)
   ))

(define curr-instr-bnd 0)

(define (??vec-load load-idxs)
  (define buf (apply choose* (hash-keys load-idxs)))
  (define idx (apply choose* (hash-ref load-idxs buf)))
  (choose*
   (vread buf idx)
   (vreadp buf idx)
   ))

;; Swizzle expression in HVX ISA
(define (??hvx-swizzle-expr vec-loads)
  (define load-idxs (make-hash))
  (for ([vec-load vec-loads])
    (define key (car vec-load))
    (define val (cdr vec-load))
    (if
     (hash-has-key? load-idxs key)
     (hash-set! load-idxs key (append (hash-ref load-idxs key) (list val)))
     (hash-set! load-idxs key (list val))))
  
  (define r0 (??hvx-swizzle-instr (list (??vec-load load-idxs))))
  (define r1 (??hvx-swizzle-instr (list r0 (??vec-load load-idxs))))
  (define r2 (??hvx-swizzle-instr (list r0 r1)))
  r2)
  ;(cond
   ; [(eq? curr-instr-bnd 1) r1]
    ;[else r2]))

(provide ??hvx-swizzle-expr)