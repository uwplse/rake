#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require rake/util)
(require rake/cpp/types)
(require rake/cpp/cast)
(require rake/hvx/ast/types)
(require rake/synthesis/ir)

(define curr-instr-bnd 1)

(define (bool-const) (define-symbolic* b boolean?)  b)

(define (generate-hvx-grammar ir-expr sub-expr add-consts)
  (define ??hvx-instr (match ir-expr
                        [(convolve data weights saturateFunc outputType) (get-hvx-conv-isa weights add-consts)]
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
(define (get-hvx-conv-isa weights add-consts)
  (define (int-const) (cpp_cast (apply choose* (set->list (list->set (take weights 4)))) (choose* 'int8 'uint8)))
  (define (add-const) (apply choose* add-consts))
  (define (??hvx-conv-instr registers)
    (define t0 (apply choose* registers))
    (define t1 (apply choose* registers))
    (define t2 (apply choose* registers))
    (define c0 (int-const))
    (define c1 (int-const))
    (define Rt (cons c0 c1))
    (define Rt4 (list c0 c1 (int-const) (int-const)))
    (choose*
     ;; Broadcast
     (vsplat (add-const))

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

(provide (all-defined-out))