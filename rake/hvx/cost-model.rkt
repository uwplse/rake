#lang rosette

(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)

(require rosette/lib/match)

(struct hvx-resource-usage (load shift permute mpy1 mpy2) #:transparent)

;; Computes a crude estimate of the cost by summing the cost of each individual
;; instruction in the expression. The cost of each instruction is specified using
;; a weight function. By default, all instructions have an equal cost.
(define (basic-expr-cost p [weightf const-weight])
  (define cost 0)
  (define (update-cost instr [arg-pos -1]) (set! cost (+ cost (weightf instr))))
  (visit-hvx p update-cost)
  cost)

;; Constant weight function. Implements the crudest base-line cost model.
(define (const-weight p)
  (match p
    ;; HVX instructions for vector creation
    [(vread buf loc align) 1]
    [(vreadp buf loc align) 1]
    [(vsplat Rt) 1]

    ;; HVX instructions for data swizzling
    [(lo Vuu) 0.1]
    [(hi Vuu) 0.1]
    [(vcombine Vu Vv) 1]
    [(vshuffe Vu Vv) 1]
    [(vshuffo Vu Vv) 1]
    [(vshuffo-n Vu Vv signed?) 1]
    [(vshuffoe Vu Vv) 1]
    [(vswap Qt Vu Vv) 1]
    [(vmux Qt Vu Vv) 1]
    [(vsat Vu Vv) 1]
    [(valign Vu Vv Rt) 1]
    [(vlalign Vu Vv Rt) 1]
    [(vror Vu Rt) 1]
    [(vrotr Vu Vv) 1]
    [(vdeal Vu) 1]
    [(vdeale Vu Vv) 1]
    [(vshuff Vu) 1]
    [(vtranspose Vu Vv Rt) 1]
    [(vinterleave Vuu) 1]
    [(vpack Vu Vv signed?) 1]
    [(vpacke Vu Vv) 1]
    [(vpacko Vu Vv) 1]
    [(vpacke-n Vu Vv signed?) 1]
    [(vpacko-n Vu Vv signed?) 1]
    [(vunpack Vu) 1]
    [(vunpacko Vu) 1]
    [(vlut Vu Vv) 1]
    [(vgather Rt Mu Vv) 1]

    ;; HVX instructions for type-casting
    [(vzxt Vu signed?) 1]
    [(vsxt Vu signed?) 1]
    [(reinterpret Vu) 0]

    ;; HVX instructions for data processing
    [(vadd Vu Vv sat?) 1]
    [(vadd-w Vu Vv) 1]
    [(vadd-w-acc Vdd Vu Vv) 1]
    [(vmpy Vu Rt) 1]
    [(vmpyi Vu Rt) 1]
    [(vmpye Vu Rt) 1]
    [(vmpy-acc Vdd Vu Rt) 1]
    [(vmpyi-acc Vd Vu Rt) 1]
    [(vmpye-acc Vd Vu Rt) 1]
    [(vmpa Vuu Rt signed?) 1]
    [(vmpa-acc Vdd Vuu Rt signed?) 1]
    [(vdmpy Vu Rt) 1]
    [(vdmpy-sw Vuu Rt) 1]
    [(vdmpy-acc Vd Vu Rt) 1]
    [(vdmpy-sw-acc Vdd Vuu Rt) 1]
    [(vtmpy Vuu Rt signed?) 1]
    [(vtmpy-acc Vdd Vuu Rt signed?) 1]
    [(vrmpy Vu Rt) 1]
    [(vrmpy-acc Vd Vu Rt) 1]
    [(vrmpy-p Vuu Rt u1) 1]
    [(vrmpy-p-acc Vdd Vuu Rt u1) 1]
    [(vavg Vu Vv rnd?) 1]
    [(vnavg Vu Vv) 1]
    [(vasl Vu Rt) 1]
    [(vlsr Vu Rt) 1]
    [(vasr Vu Rt) 1]
    [(vasr-acc Vd Vu Rt) 1]
    [(vasr-n Vu Vv Rt round? sat? unsigned?) 1]
    [(vround Vu Vv signed?) 1]

    [(vmax Vu Vv) 1]
    [(vmin Vu Vv) 1]

    ;; New instructions types we introduce to abstract away data-movement.
    ;; These instr types should never exist in output code.
    [(gather* buff-reads) 1]
    [(gather-vec buff-reads) 1]
    [(gather-vecp buff-reads) 1]
    [(swizzle* vec) 1]
    [(swizzle vec) 1]
    [(??vread buf-opts idxs) 1]
    [(??vreadp buf-opts idxs) 1]

    [(abstr-sub-expr _ _) 1]
    
    [_ 0]))

(define (2pmy-instr? p)
  (match p
    [(vadd-w Vu Vv) 1]
    [(vadd-w-acc Vdd Vu Vv) 1]
    [(vmpy Vu Rt) 1]
    [(vmpy-acc Vdd Vu Rt) 1]
    [(vmpa Vuu Rt signed?) 1]
    [(vmpa-acc Vdd Vuu Rt signed?) 1]
    [(vdmpy Vu Rt) 1]
    [(vdmpy-sw Vuu Rt) 1]
    [(vdmpy-acc Vd Vu Rt) 1]
    [(vdmpy-sw-acc Vdd Vuu Rt) 1]
    [(vtmpy Vuu Rt signed?) 1]
    [(vtmpy-acc Vdd Vuu Rt signed?) 1]
    [(vrmpy Vu Rt) 1]
    [(vrmpy-acc Vd Vu Rt) 1]
    [(vrmpy-p Vuu Rt u1) 1]
    [(vrmpy-p-acc Vdd Vuu Rt u1) 1]
    [_ 0]))

(define (vecR-instr? p)
  (match p
    [(vdmpy Vu Rt) 1]
    [(vdmpy-sw Vuu Rt) 1]
    [(vdmpy-acc Vd Vu Rt) 1]
    [(vdmpy-sw-acc Vdd Vuu Rt) 1]
    [(vtmpy Vuu Rt signed?) 1]
    [(vtmpy-acc Vdd Vuu Rt signed?) 1]
    [(vrmpy Vu Rt) 1]
    [(vrmpy-acc Vd Vu Rt) 1]
    [(vrmpy-p Vuu Rt u1) 1]
    [(vrmpy-p-acc Vdd Vuu Rt u1) 1]
    [_ 0]))

(define (count-vecR-instrs p)
  (basic-expr-cost p vecR-instr?))

(define (count-2mpy-instrs p)
  (basic-expr-cost p 2pmy-instr?))
   
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
     
(provide basic-expr-cost count-vecR-instrs count-2mpy-instrs)