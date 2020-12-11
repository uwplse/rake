#lang rosette

(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)

(require rosette/lib/match)

(struct hvx-resources (load store mpy1 mpy2 shift xlane) #:transparent)
;(struct core-slot-usage (load store mpy mpy shift xlane) #:transparent)

;; Computes a crude estimate of the cost by summing the cost of each individual
;; instruction in the expression. The cost of each instruction is specified using
;; a weight function. By default, all instructions have an equal cost.
(define (basic-expr-cost p [weightf const-weight])
  (define cost 0)
  (define (update-cost instr) (set! cost (+ cost (weightf instr))))
  (visit-hvx p update-cost)
  cost)

;; Constant weight function. Implements the crudest base-line cost model.
(define (const-weight p)
  (match p
    [(vread buf loc) 1]
    [(vsplat Rt) 1]
    [(gather* buff-reads) 1]
    [(gather buff-reads gid) 1]
    [(swizzle vec) 1]
    [(vadd Vu Vv sat?) 1]
    [(vadd-w Vu Vv) 1]
    [(vadd-w-acc Vdd Vu Vv) 1]
    [(vmpy Vu Rt) 1]
    [(vmpyi Vu Rt) 1]
    [(vmpye Vu Rt) 1]
    [(vmpy-acc Vdd Vu Rt) 1]
    [(vmpyi-acc Vd Vu Rt) 1]
    [(vmpye-acc Vd Vu Rt) 1]
    [(vmpa Vuu Rt) 1]
    [(vmpa-acc Vdd Vuu Rt) 1]
    [(vdmpy Vu Rt) 1]
    [(vdmpy-sw Vuu Rt) 1]
    [(vdmpy-acc Vd Vu Rt) 1]
    [(vdmpy-sw-acc Vdd Vuu Rt) 1]
    [(vtmpy Vuu Rt) 1]
    [(vtmpy-acc Vdd Vuu Rt) 1]
    [(vrmpy Vu Rt) 1]
    [(vrmpy-acc Vd Vu Rt) 1]
    [(vrmpy-p Vuu Rt u1) 1]
    [(vrmpy-p-acc Vdd Vuu Rt u1) 1]
    [(vasr Vu Rt) 1]
    [(vasr-acc Vd Vu Rt) 1]
    [(vasr-n Vu Vv Rt round? sat? unsigned?) 1]
    [(vshuffo Vd Vu) 1]
    [(vpacko Vd Vu) 1]
    [(vshuffo_2 Vd Vu signed?) 1]
    [(vpacko_2 Vd Vu signed?) 1]
    [_ 0]))
   
;;; This is the most crude cost-model.
;(define (num-instrs-lb p)
;  (match p
;    [(vread buf loc) 1]
;    [(vsplat Rt) 1]
;    [(gather* buff-reads) 1]
;    [(swizzle vec) (+ 1 (num-instrs-lb vec))]
;    [(vadd Vu Vv sat?) (+ 1 (num-instrs-lb Vu) (num-instrs-lb Vv))]
;    [(vadd-w Vu Vv) (+ 1 (num-instrs-lb Vu) (num-instrs-lb Vv))]
;    [(vadd-w-acc Vdd Vu Vv) (+ 1 (num-instrs-lb Vdd) (num-instrs-lb Vu) (num-instrs-lb Vv))]
;    [(vmpy Vu Rt) (+ 1 (num-instrs-lb Vu))]
;    [(vmpyi Vu Rt)  (+ 1 (num-instrs-lb Vu))]
;    [(vmpye Vu Rt)  (+ 1 (num-instrs-lb Vu))]
;    [(vmpy-acc Vdd Vu Rt) (+ 1 (num-instrs-lb Vdd) (num-instrs-lb Vu))]
;    [(vmpyi-acc Vd Vu Rt) (+ 1 (num-instrs-lb Vd) (num-instrs-lb Vu))]
;    [(vmpye-acc Vd Vu Rt) (+ 1 (num-instrs-lb Vd) (num-instrs-lb Vu))]
;    [(vmpa Vuu Rt) (+ 1 (num-instrs-lb Vuu))]
;    [(vmpa-acc Vdd Vuu Rt) (+ 1 (num-instrs-lb Vdd) (num-instrs-lb Vuu))]
;    [(vdmpy Vu Rt) 
     
(provide basic-expr-cost)