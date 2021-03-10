#lang rosette

(require rake/hvx/ast/types)

(define (equal-expr? expr1 expr2)
  ;(display (format "Comparing ~a with ~a\n\n" expr1 expr2))
  
  (cond
    [(and (let-expr? expr1) (let-expr? expr2))
     (and
      (equal-expr? (let-expr-var expr1) (let-expr-var expr2))
      (equal-expr? (let-expr-val expr1) (let-expr-val expr2))
      (equal-expr? (let-expr-body expr1) (let-expr-body expr2)))]
    
    [(and (vzxt? expr1) (vzxt? expr2))
     (and (equal-expr? (vzxt-Vu expr1) (vzxt-Vu expr2)) (equal-expr? (vzxt-signed? expr1) (vzxt-signed? expr2)))]
    [(and (vsxt? expr1) (vsxt? expr2))
     (and (equal-expr? (vsxt-Vu expr1) (vsxt-Vu expr2)) (equal-expr? (vsxt-signed? expr1) (vsxt-signed? expr2)))]

    [(and (vadd-w? expr1) (vadd-w? expr2))
     (and (equal-expr? (vadd-w-Vu expr1) (vadd-w-Vu expr2)) (equal-expr? (vadd-w-Vv expr1) (vadd-w-Vv expr2)))]
    [(and (vadd-w-acc? expr1) (vadd-w-acc? expr2))
     (and
      (equal-expr? (vadd-w-acc-Vdd expr1) (vadd-w-acc-Vdd expr2))
      (equal-expr? (vadd-w-acc-Vu expr1) (vadd-w-acc-Vu expr2))
      (equal-expr? (vadd-w-acc-Vv expr1) (vadd-w-acc-Vv expr2)))]

    [(and (vmpy? expr1) (vmpy? expr2))
     (and (equal-expr? (vmpy-Vu expr1) (vmpy-Vu expr2)) (equal-expr? (vmpy-Rt expr1) (vmpy-Rt expr2)))]
    [(and (vmpy-acc? expr1) (vmpy-acc? expr2))
     (and
      (equal-expr? (vmpy-acc-Vdd expr1) (vmpy-acc-Vdd expr2))
      (equal-expr? (vmpy-acc-Vu expr1) (vmpy-acc-Vu expr2))
      (equal-expr? (vmpy-acc-Rt expr1) (vmpy-acc-Rt expr2)))]

    [(and (vmpa? expr1) (vmpa? expr2))
     (and
      (equal-expr? (vmpa-Vuu expr1) (vmpa-Vuu expr2))
      (equal-expr? (vmpa-Rt expr1) (vmpa-Rt expr2)))]
    [(and (vmpa-acc? expr1) (vmpa-acc? expr2))
     (and
      (equal-expr? (vmpa-acc-Vdd expr1) (vmpa-acc-Vdd expr2))
      (equal-expr? (vmpa-acc-Vuu expr1) (vmpa-acc-Vuu expr2))
      (equal-expr? (vmpa-acc-Rt expr1) (vmpa-acc-Rt expr2)))]

    [(and (vdmpy? expr1) (vdmpy? expr2))
     (and
      (equal-expr? (vdmpy-Vu expr1) (vdmpy-Vu expr2))
      (equal-expr? (vdmpy-Rt expr1) (vdmpy-Rt expr2)))]
    [(and (vdmpy-sw? expr1) (vdmpy-sw? expr2))
     (and
      (equal-expr? (vdmpy-sw-Vuu expr1) (vdmpy-sw-Vuu expr2))
      (equal-expr? (vdmpy-sw-Rt expr1) (vdmpy-sw-Rt expr2)))]
    [(and (vdmpy-acc? expr1) (vdmpy-acc? expr2))
     (and
      (equal-expr? (vdmpy-acc-Vd expr1) (vdmpy-acc-Vd expr2))
      (equal-expr? (vdmpy-acc-Vu expr1) (vdmpy-acc-Vu expr2))
      (equal-expr? (vdmpy-acc-Rt expr1) (vdmpy-acc-Rt expr2)))]
    [(and (vdmpy-sw-acc? expr1) (vdmpy-sw-acc? expr2))
     (and
      (equal-expr? (vdmpy-sw-acc-Vdd expr1) (vdmpy-sw-acc-Vdd expr2))
      (equal-expr? (vdmpy-sw-acc-Vuu expr1) (vdmpy-sw-acc-Vuu expr2))
      (equal-expr? (vdmpy-sw-acc-Rt expr1) (vdmpy-sw-acc-Rt expr2)))]

    [(and (vtmpy? expr1) (vtmpy? expr2))
     (and
      (equal-expr? (vtmpy-Vuu expr1) (vtmpy-Vuu expr2))
      (equal-expr? (vtmpy-Rt expr1) (vtmpy-Rt expr2)))]
    [(and (vtmpy-acc? expr1) (vtmpy-acc? expr2))
     (and
      (equal-expr? (vtmpy-acc-Vdd expr1) (vtmpy-acc-Vdd expr2))
      (equal-expr? (vtmpy-acc-Vuu expr1) (vtmpy-acc-Vuu expr2))
      (equal-expr? (vtmpy-acc-Rt expr1) (vtmpy-acc-Rt expr2)))]

    [(and (vrmpy? expr1) (vrmpy? expr2))
     (and
      (equal-expr? (vrmpy-Vu expr1) (vrmpy-Vu expr2))
      (equal-expr? (vrmpy-Rt expr1) (vrmpy-Rt expr2)))]
    [(and (vrmpy-acc? expr1) (vrmpy-acc? expr2))
     (and
      (equal-expr? (vrmpy-acc-Vd expr1) (vrmpy-acc-Vd expr2))
      (equal-expr? (vrmpy-acc-Vu expr1) (vrmpy-acc-Vu expr2))
      (equal-expr? (vrmpy-acc-Rt expr1) (vrmpy-acc-Rt expr2)))]

    [(and (vrmpy-p? expr1) (vrmpy-p? expr2))
     (and
      (equal-expr? (vrmpy-p-Vuu expr1) (vrmpy-p-Vuu expr2))
      (equal-expr? (vrmpy-p-u1 expr1) (vrmpy-p-u1 expr2))
      (equal-expr? (vrmpy-p-Rt expr1) (vrmpy-p-Rt expr2)))]
    [(and (vrmpy-p-acc? expr1) (vrmpy-p-acc? expr2))
     (and
      (equal-expr? (vrmpy-p-acc-Vdd expr1) (vrmpy-p-acc-Vdd expr2))
      (equal-expr? (vrmpy-p-acc-Vuu expr1) (vrmpy-p-acc-Vuu expr2))
      (equal-expr? (vrmpy-p-acc-u1 expr1) (vrmpy-p-acc-u1 expr2))
      (equal-expr? (vrmpy-p-acc-Rt expr1) (vrmpy-p-acc-Rt expr2)))]

    [(and (vadd? expr1) (vadd? expr2))
     (and
      (equal-expr? (vadd-Vu expr1) (vadd-Vu expr2))
      (equal-expr? (vadd-Vv expr1) (vadd-Vv expr2))
      (equal-expr? (vadd-sat? expr1) (vadd-sat? expr2)))]

    [(and (vmpyi? expr1) (vmpyi? expr2))
     (and
      (equal-expr? (vmpyi-Vu expr1) (vmpyi-Vu expr2))
      (equal-expr? (vmpyi-Rt expr1) (vmpyi-Rt expr2)))]

    [(and (vmpyi-acc? expr1) (vmpyi-acc? expr2))
     (and
      (equal-expr? (vmpyi-acc-Vd expr1) (vmpyi-acc-Vd expr2))
      (equal-expr? (vmpyi-acc-Vu expr1) (vmpyi-acc-Vu expr2))
      (equal-expr? (vmpyi-acc-Rt expr1) (vmpyi-acc-Rt expr2)))]

    [(and (vmpye? expr1) (vmpye? expr2))
     (and
      (equal-expr? (vmpye-Vu expr1) (vmpye-Vu expr2))
      (equal-expr? (vmpye-Rt expr1) (vmpye-Rt expr2)))]

    [(and (vmpye-acc? expr1) (vmpye-acc? expr2))
     (and
      (equal-expr? (vmpye-acc-Vd expr1) (vmpye-acc-Vd expr2))
      (equal-expr? (vmpye-acc-Vu expr1) (vmpye-acc-Vu expr2))
      (equal-expr? (vmpye-acc-Rt expr1) (vmpye-acc-Rt expr2)))]
    
    [(and (vasl? expr1) (vasl? expr2))
     (and
      (equal-expr? (vasl-Vu expr1) (vasl-Vu expr2))
      (equal-expr? (vasl-Rt expr1) (vasl-Rt expr2)))]

    [(and (vpacko-n? expr1) (vpacko-n? expr2))
     (and
      (equal-expr? (vpacko-n-Vu expr1) (vpacko-n-Vu expr2))
      (equal-expr? (vpacko-n-Vv expr1) (vpacko-n-Vv expr2))
      (equal-expr? (vpacko-n-signed? expr1) (vpacko-n-signed? expr2)))]

    [(and (vshuffo-n? expr1) (vshuffo-n? expr2))
     (and
      (equal-expr? (vpacko-n-Vu expr1) (vpacko-n-Vu expr2))
      (equal-expr? (vpacko-n-Vv expr1) (vpacko-n-Vv expr2))
      (equal-expr? (vpacko-n-signed? expr1) (vpacko-n-signed? expr2)))]

    [(and (vasr-n? expr1) (vasr-n? expr2))
     (and
      (equal-expr? (vasr-n-Vu expr1) (vasr-n-Vu expr2))
      (equal-expr? (vasr-n-Vv expr1) (vasr-n-Vv expr2))
      (equal-expr? (vasr-n-Rt expr1) (vasr-n-Rt expr2))
      (equal-expr? (vasr-n-sat? expr1) (vasr-n-sat? expr2))
      (equal-expr? (vasr-n-unsigned? expr1) (vasr-n-unsigned? expr2)))]
    
    ;; Compare Swizzles
    [(and (lo? expr1) (lo? expr2)) (equal-expr? (lo-Vuu expr1) (lo-Vuu expr2))]
    [(and (hi? expr1) (hi? expr2)) (equal-expr? (hi-Vuu expr1) (hi-Vuu expr2))]

    [(and (vcombine? expr1) (vcombine? expr2))
     (and
      (equal-expr? (vcombine-Vu expr1) (vcombine-Vu expr2))
      (equal-expr? (vcombine-Vv expr1) (vcombine-Vv expr2)))]
    [(and (vshuff? expr1) (vshuff? expr2))
     (equal-expr? (vshuff-Vu expr1) (vshuff-Vu expr2))]
    
    [(and (swizzle? expr1) (swizzle? expr2)) (equal-expr? (swizzle-vec expr1)  (swizzle-vec expr2))]
    [(and (gather*? expr1) (gather*? expr1)) #t]
    [(and (gather-vec? expr1) (gather-vec? expr1)) #t]
    [(and (gather-vecp? expr1) (gather-vecp? expr1)) #t]
    
    [else (equal? expr1 expr2)]))

(provide (rename-out [equal-expr? equal-expr-hvx?]))