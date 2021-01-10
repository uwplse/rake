#lang rosette

(require rosette/lib/match)
(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require rake/hvx/ast/types)

(require rake/synthesis/ir)

(define align-cnt 0)
(define ror-cnt 0)

(define (vecp? expr)
  (cond
    [(vreadp? expr) #t]
    [(vcombine? expr) #t]
    [(vshuffoe? expr) #t]
    [(vread? expr) #f]
    [(lo expr) #f]
    [(hi? expr) #f]
    [(vshuffe? expr) #f]
    [(vshuffo? expr) #f]
    [(valign expr) #f]
    [(vlalign expr) #f]
    [(vror expr) #f]
    [(vdeal expr) #f]
    [(vdeale expr) #f]
    [(vshuff expr) #f]))

(define (vec? expr)
  (not (vecp? expr)))

(define (??hvx-swizzle-instr registers mem-read)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))

  (define instrs (list))

  (set! instrs (cons mem-read instrs))
  
  (when (vec? t0)
    (when (< ror-cnt 2)
      (set! instrs (cons (vror t0 (??)) instrs)))
    (set! instrs (cons (vdeal t0) instrs))
    (set! instrs (cons (vshuff t0) instrs)))

  (when (vecp? t0)
    (set! instrs (cons (lo t0) instrs))
    (set! instrs (cons (hi t0) instrs)))

  (when (and (vec? t0) (vec? t1))
    (set! instrs (cons (vshuffe t0 t1) instrs))
    (set! instrs (cons (vshuffo t0 t1) instrs))
    (set! instrs (cons (vcombine t0 t1) instrs))
    (set! instrs (cons (vshuffoe t0 t1) instrs))
    (when (< align-cnt 2)
      (set! instrs (cons (valign t0 t1 (??)) instrs)))
    (set! instrs (cons (vdeale t0 t1) instrs)))
  
  (define out (apply choose* instrs))

  (when (vror? out)
    (set! ror-cnt (add1 ror-cnt)))
  (when (or (valign? out) (vlalign? out))
    (set! align-cnt (add1 align-cnt)))

  out)

;  (set! instrs (cons mem-read instrs))
;  (set! instrs (cons (lo t0) instrs))
;  (set! instrs (cons (hi t0) instrs))
;
;  ;; ALU Single
;  (set! instrs (cons (vshuffe t0 t1) instrs))
;  (set! instrs (cons (vshuffo t0 t1) instrs))
;
;  ;; ALU Double
;  (set! instrs (cons (vcombine t0 t1) instrs))
;  (set! instrs (cons (vshuffoe t0 t1) instrs))
;
;  ;; Permute
;  (when (< align-cnt 2)
;    (set! instrs (cons (valign t0 t1 (??)) instrs)))
;  (when (< align-cnt 2)
;    (set! instrs (cons (vlalign t0 t1 (??)) instrs)))
;  (when (< ror-cnt 2)
;    (set! instrs (cons (vror t0 (??)) instrs)))
;  (set! instrs (cons (vdeal t0) instrs))
;  (set! instrs (cons (vdeale t0 t1) instrs))
;  (set! instrs (cons (vshuff t0) instrs))

;  (when (not (vcombine? t0))
;    (begin
;      (set! instrs (cons (hi t0) instrs))
;      (set! instrs (cons (lo t0) instrs))))
  
;  (choose*
;   mem-read
;   (lo t0)
;   (hi t0)
;   
;   ;; ALU Single
;   (vshuffe t0 t1)
;   (vshuffo t0 t1)
;
;   ;; ALU Double
;   (vcombine t0 t1)
;   (vshuffoe t0 t1)
;
;   ;; Permute
;   ;(valign t0 t1 (??))
;  ; (vlalign t0 t1 (??))
;   (vror t0 (??))
;   (vdeal t0)
;   (vdeale t0 t1)
;   (vshuff t0)
;   
;   ;; Permute-shift
;   ;(vdeal t0 t1 c0)
;   ;(vshuff t0 t1 c0)
;   )

(define curr-instr-bnd 0)
(define max-instr-bnd 5)

(define (instr-bnd-exceeded?) (> curr-instr-bnd max-instr-bnd))
(define (get-instr-bnd) curr-instr-bnd)
(define (reset-instr-bnd) (set! curr-instr-bnd 1))
(define (incr-instr-bnd) (set! curr-instr-bnd (add1 curr-instr-bnd)))

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

  (set! align-cnt 0)
  (set! ror-cnt 0)
  
  (define r0 (??vec-load load-idxs))
  (define r1 (??hvx-swizzle-instr (list r0) (??vec-load load-idxs)))
  (define r2 (??hvx-swizzle-instr (list r0 r1) (??vec-load load-idxs)))
  (define r3 (??hvx-swizzle-instr (list r0 r1 r2) (??vec-load load-idxs)))
  (define r4 (??hvx-swizzle-instr (list r0 r1 r2 r3) (??vec-load load-idxs)))
  (cond
    [(eq? curr-instr-bnd 1) r0]
    [(eq? curr-instr-bnd 2) r1]
    [(eq? curr-instr-bnd 3) r2]
    [(eq? curr-instr-bnd 4) r3]
    [else r4]))

(provide
 ??hvx-swizzle-expr
 (rename-out
  [reset-instr-bnd reset-swizzle-instr-bnd]
  [incr-instr-bnd incr-swizzle-instr-bnd]
  [get-instr-bnd get-swizzle-instr-bnd]
  [instr-bnd-exceeded? swizzle-instr-bnd-exceeded?]))