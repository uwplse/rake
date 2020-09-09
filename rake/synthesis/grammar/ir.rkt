#lang rosette

(require rosette/lib/match)
(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require rake/util)
(require rake/spec)
(require rake/cpp/types)
(require rake/synthesis/ir)

;; Grammar features
(define max-instr-bnd 3)
(define curr-instr-bnd 1)
(define saturation-arith? #f)
(define specialized-op-set #t)

;; Utility functions
(define (ir-instr-limit-exceeded?) (> curr-instr-bnd max-instr-bnd))
(define (ir-instr-bnd) curr-instr-bnd)
(define (ir-sat-arith?) saturation-arith?)
(define (ir-specialized-ops?) specialized-op-set)

(define (increment-ir-instr-bnd) (set! curr-instr-bnd (add1 curr-instr-bnd)))
(define (reset-ir-instr-bnd) (set! curr-instr-bnd 1))

(define (init-ir-grammar-generator [max-i-bnd 3])
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

(define (infer-outT expr)
  (match expr
    [(load-data data) (apply choose* (map (lambda(v) (type v)) (list-ref data 0)))]
    [(convolve _ _ _ outT) outT]
    [(const-add _ _ _ outT) outT]
    [(const-divide t0 _ ) (infer-outT t0)]
    [(logic-shift-right t0 _) (infer-outT t0)]
    [(arith-shift-right _ _ _ outT) (choose* 'uint8 'uint16 outT)]))

(define (filter-conv-output-types t0)
  (match (infer-outT t0)
    ['int8 (choose* 'int8 'int16)]
    ['int16 (choose* 'int16 'int32)]
    ['int32 (choose* 'int32)]
    ['uint8 (choose* 'uint8 'uint16)]
    ['uint16 (choose* 'uint16 'uint32)]
    ['uint32 (choose* 'uint32)]))

(define (filter-asr-output-types t0)
  (match (infer-outT t0)
    ['int16 (choose* 'int16 'int8 'uint8)]
    ['int32 (choose* 'uint16 'int16 'int32)]
    [_ 'int8]))

(define (get-ir-ops t0 live-ops int-weights-gen int-divisor-gen int-shiftr-gen int-offsets-gen add-consts)
  (define operators (list))

  (when (for/or ([c add-consts]) (or (eq? (eval-to-int c) 128) (eq? (eval-to-int c) 32768)))
    (set! operators (cons (saturate t0 #t (bool-const)) operators)))
  
  (when (or (set-member? live-ops 'vec-sca-mul) (set-member?  live-ops 'add))
    (begin
      (define weights (list (int-weights-gen) (int-weights-gen) (int-weights-gen) (int-weights-gen) (bool-const)))
      (define saturation-func (if saturation-arith? nop nop))
      (define output-type (filter-conv-output-types t0))
      (define conv-op (convolve t0 weights saturation-func output-type))
      (set! operators (cons conv-op operators))
      (when (not (void? int-offsets-gen))
        (set! operators (cons (const-add t0 (int-offsets-gen) saturation-func output-type) operators)))))
  
  (when (set-member? live-ops 'vec-sca-div)
    (begin
      (when (not (void? int-divisor-gen)) (set! operators (cons (const-divide t0 (int-divisor-gen)) operators)))
      (when (not (void? int-shiftr-gen))
        (begin
          (set! operators (cons (logic-shift-right t0 (int-shiftr-gen)) operators))
          (set! operators (cons (arith-shift-right t0 (int-shiftr-gen) (bool-const) (filter-asr-output-types t0)) operators))))))
  
  operators)

(define (generate-ir-grammar spec)
  (define live-ops (ir-expr-spec-live-ops spec))
  (define buff-reads (ir-expr-spec-buff-reads spec))
  (define add-consts (ir-expr-spec-add-consts spec))
  (define sub-consts (ir-expr-spec-sub-consts spec))
  (define mul-consts (ir-expr-spec-mul-consts spec))
  (define div-consts (ir-expr-spec-div-consts spec))
  (define data buff-reads)
  (define int-offsets-gen (get-generator-func add-consts))
  (define int-weights-gen (get-generator-func (append (list (int8_t (bv 0 8)) (int8_t (bv 1 8))) mul-consts)))
  (define int-shiftr-gen (get-generator-func (map log2 (filter pow2? div-consts))))
  (define int-divisor-gen (get-generator-func (remove* (filter pow2? div-consts) div-consts)))
  (define (??ir-instr t0) (apply choose* (get-ir-ops t0 live-ops int-weights-gen int-divisor-gen int-shiftr-gen int-offsets-gen add-consts)))
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

(provide init-ir-grammar-generator generate-ir-grammar ir-instr-limit-exceeded? ir-instr-bnd ir-sat-arith? ir-specialized-ops? increment-ir-instr-bnd reset-ir-instr-bnd)