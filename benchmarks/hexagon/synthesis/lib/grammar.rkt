#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require "analysis.rkt")
(require "cpp.rkt")
(require "hexagon.rkt")
(require "ir.rkt")
(require "util.rkt")

;; Grammar features
(define max-instr-bnd 3)
(define curr-instr-bnd 1)
(define saturation-arith? #f)
(define specialized-op-set #t)

;; Utility functions
(define (instr-limit-exceeded?) (> curr-instr-bnd max-instr-bnd))
(define (instr-bnd) curr-instr-bnd)
(define (sat-arith?) saturation-arith?)
(define (specialized-ops?) specialized-op-set)

(define (increment-instr-bnd) (set! curr-instr-bnd (add1 curr-instr-bnd)))

(define (init-grammar-generator [max-i-bnd 3])
  (set! max-instr-bnd max-i-bnd)
  (set! specialized-op-set #t)
  (set! saturation-arith? #f)
  (set! curr-instr-bnd 1))

;; Dynamic Gramamr generation
(define (pow2? val) (integer? (log (eval-to-int val) 2)))
(define (bool-const) (define-symbolic* b boolean?)  b)
(define (get-generator-func opts) (when (not (empty? opts)) (lambda() (apply choose* opts))))

(define (filter-conv-output-types t0)
  (cond
    [(int8_t? ((interpret-ir t0) 0)) (choose* 'int8 'int16)]
    [(int16_t? ((interpret-ir t0) 0)) (choose* 'int16 'int32)]
    [(int32_t? ((interpret-ir t0) 0)) (choose* 'int32)]
    [(uint8_t? ((interpret-ir t0) 0)) (choose* 'uint8 'uint16)]
    [(uint16_t? ((interpret-ir t0) 0)) (choose* 'uint16 'uint32)]
    [(uint32_t? ((interpret-ir t0) 0)) (choose* 'uint32)]
    [else (choose* 'int8 'int16 'int32 'uint8 'uint16 'uint32)]))

(define (filter-asr-output-types t0)
  (cond
    [(int16_t? ((interpret-ir t0) 0)) (choose* 'int16 'int8 'uint8)]
    [(int32_t? ((interpret-ir t0) 0)) (choose* 'uint16 'int16 'int32)]
    [else 'int8]))

(define (get-ir-ops t0 live-ops int-weights-gen int-divisor-gen int-shiftr-gen)
  (define operators (list))

  (when (or (set-member? live-ops 'vec-sca-mul) (set-member?  live-ops 'add))
    (begin
      (define weights (list (int-weights-gen) (int-weights-gen) (int-weights-gen) (int-weights-gen) (bool-const)))
      (define saturation-func (if saturation-arith? nop nop))
      (define output-type (filter-conv-output-types t0))
      (define conv-op (convolve t0 weights saturation-func output-type))
      (set! operators (cons conv-op operators))))
  
  (when (set-member? live-ops 'vec-sca-div)
    (begin
      (when (not (void? int-divisor-gen)) (set! operators (cons (const-divide t0 (int-divisor-gen)) operators)))
      (when (not (void? int-shiftr-gen))
        (begin
          (set! operators (cons (logic-shift-right t0 (int-shiftr-gen)) operators))
          (set! operators (cons (arith-shift-right t0 (int-shiftr-gen) (bool-const) (filter-asr-output-types t0)) operators))))))

  operators)

(define (generate-ir-grammar live-ops buff-reads add-consts sub-consts mul-consts div-consts)
  (define data (for/list [(l buff-reads)] (append add-consts l)))
  (define int-weights-gen (get-generator-func (append (list (int8_t (bv 0 8)) (int8_t (bv 1 8))) mul-consts)))
  (define int-shiftr-gen (get-generator-func (list (int16_t (bv 4 16)))))
  (define int-divisor-gen (get-generator-func (remove* (filter pow2? div-consts) div-consts)))
  (define (??ir-instr t0) (apply choose* (get-ir-ops t0 live-ops int-weights-gen int-divisor-gen int-shiftr-gen)))
  (define (??ir-expr)
    (define r0 (load-data data))
    (define r1 (??ir-instr r0))
    (define r2 (??ir-instr r1))
    (define r3 (??ir-instr r2))
    (cond
      [(eq? curr-instr-bnd 1) r1]
      [(eq? curr-instr-bnd 2) r2]
      [else r3]))
  ??ir-expr)

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
   (int8_t (bv 16 8))
   (int16_t (bv 16 16))
   (int32_t (bv 16 32))))

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
   (arith-shift-right t0 (int-const-s) (bool-const) (choose 'int16 'int8 'uint8))
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