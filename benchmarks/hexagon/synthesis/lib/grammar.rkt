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
(define (reset-instr-bnd) (set! curr-instr-bnd 1))

(define (init-grammar-generator [max-i-bnd 3])
  (set! max-instr-bnd max-i-bnd)
  (set! specialized-op-set #t)
  (set! saturation-arith? #f)
  (set! curr-instr-bnd 1))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; IR GRAMMAR ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Dynamic IR Gramamr Generation
(define (pow2? val) (integer? (log (eval-to-int val) 2)))
(define (log2 val) (mk-typed-expr (bv (exact-round (log (eval-to-int val) 2)) (bw val)) (type val)))
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
  (define int-shiftr-gen (get-generator-func (map log2 (filter pow2? div-consts))))
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; HVX GRAMMAR ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (generate-hvx-grammar ir-expr sub-expr)
  (define ??hvx-instr (match ir-expr
                        [(convolve sub-expr weights saturateFunc outputType) (get-hvx-conv-isa weights)]
                        [_ (begin (println "gand marao bc") (exit))]))
  (define (??ir-expr)
    (define r0 sub-expr)
    (define r1 (??hvx-instr (list r0)))
    (define r2 (??hvx-instr (list r0 r1)))
    (define r3 (??hvx-instr (list r0 r1 r2)))
    (cond
      [(eq? curr-instr-bnd 1) r1]
      [(eq? curr-instr-bnd 2) r2]
      [else r3]))
  ??ir-expr)

;; HVX instructions for synthesizing convolutions
(define (get-hvx-conv-isa weights)
  (define (int-const) (cpp_cast (apply choose* (set->list (list->set (take weights 4)))) (choose* 'int8 'uint8)))
  (define (??hvx-conv-instr registers)
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
     (vrmpy-p-acc t0 t1 Rt4 (bool-const))))
  ??hvx-conv-instr)

(provide (all-defined-out))