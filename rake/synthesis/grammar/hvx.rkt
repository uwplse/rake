#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require rake/util)
(require rake/cpp/types)
(require rake/cpp/cast)
(require rake/hvx/ast/types)
(require rake/synthesis/ir)

;; Grammar features
(define max-instr-bnd 4)
(define curr-instr-bnd 1)
(define saturation-arith? #f)
(define specialized-op-set #t)

;; Utility functions
(define (pow2? val) (if (<= (eval-to-int val) 0) #f (integer? (log (eval-to-int val) 2))))
(define (log2 val) (mk-typed-expr (bv (exact-round (log (eval-to-int val) 2)) (bw val)) (type val)))
(define (hvx-instr-limit-exceeded?) (> curr-instr-bnd max-instr-bnd))
(define (hvx-instr-bnd) curr-instr-bnd)
;(define (ir-sat-arith?) saturation-arith?)
;(define (ir-specialized-ops?) specialized-op-set)

(define (increment-hvx-instr-bnd) (set! curr-instr-bnd (add1 curr-instr-bnd)))
(define (reset-hvx-instr-bnd) (set! curr-instr-bnd 1))

(define (init-hvx-grammar-generator [max-i-bnd 3])
  (set! max-instr-bnd max-i-bnd)
  (set! specialized-op-set #t)
  (set! saturation-arith? #f)
  (set! curr-instr-bnd 1))

(define (bool-const) (define-symbolic* b boolean?)  b)

(define (generate-hvx-grammar ir-expr sub-expr)
  (define ??hvx-instr (match ir-expr
                        [(convolve data width weights saturateFunc outputType) (get-hvx-conv-isa weights)]
                        [(arith-shift-right data n round? outputType) (get-hvx-asr-isa n round? outputType)]
                        [_ (begin (println "NYI") (exit))]))
  (define (??ir-expr)
    (define r0 sub-expr)
    (define r1 (??hvx-instr (list r0)))
    (define r2 (??hvx-instr (list r0 r1)))
    (define r3 (??hvx-instr (list r0 r1 r2)))
    (cond
      [(eq? curr-instr-bnd 1) r1]
      [(eq? curr-instr-bnd 2) r2]
      [(eq? curr-instr-bnd 3) r3]
      [else r3]))
  ??ir-expr)

;; HVX instructions for synthesizing convolutions
(define (get-hvx-conv-isa weights)
  (define (int-const) (cpp_cast (apply choose* (set->list (list->set (take weights 4)))) (choose* 'int8 'uint8)))
  (define (shl-const) (cpp_cast (apply choose* (set->list (list->set (map log2 (filter pow2? (take weights 4)))))) 'int8))
  (define (??hvx-conv-instr registers)
    (define t0 (apply choose* registers))
    (define t1 (apply choose* registers))
    (define t2 (apply choose* registers))
    (define c0 (int-const))
    (define c1 (int-const))
    (define Rt (cons c0 c1))
    (define Rt4 (list c0 c1 (int-const) (int-const)))
    (choose*
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

     ;; Shift-left
     (vasl t0 (shl-const))))
  ??hvx-conv-instr)

;; HVX instructions for arithmetic shift right
(define (get-hvx-asr-isa n round? outputType)
  (define signed? (unsignedT? outputType))
  (define i8_n (cpp_cast n 'int8))
  (define (??hvx-asr-instr registers)
    (define t0 (apply choose* registers))
    (define t1 (apply choose* registers))
    (choose*
     (vasr-n t0 t1 i8_n round? (bool-const) signed?)
     ))
  ??hvx-asr-instr)

(provide hvx-instr-limit-exceeded? hvx-instr-bnd generate-hvx-grammar increment-hvx-instr-bnd reset-hvx-instr-bnd)