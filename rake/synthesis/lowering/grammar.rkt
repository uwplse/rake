#lang rosette

(require
  (only-in rosette/base/core/term @app)
  rosette/lib/destruct
  rosette/lib/synthax
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/hvx/ir/instructions
  rake/hvx/ir/interpreter
  rake/hvx/ast/types
  rake/hvx/ast/visitor
  rake/hvx/cost-model
  rake/hvx/interpreter)

(provide get-hvx-grammar)

(define grammar-lib (make-hash))

(define (get-hvx-grammar halide-expr ir-expr hvx-sub-exprs cost-ub)
  (cond
    [(and (hash-has-key? grammar-lib (cons (ir-node-id ir-expr) hvx-sub-exprs)) (not (load-data? ir-expr)))
      (let ([candidates (hash-ref grammar-lib (cons (ir-node-id ir-expr) hvx-sub-exprs))])
        (filter (lambda (c) (<= (cdr c) cost-ub)) candidates))]
    [else
      (define candidates (get-hvx-grammar-gen halide-expr ir-expr hvx-sub-exprs))
      (hash-set! grammar-lib (cons (ir-node-id ir-expr) hvx-sub-exprs) candidates)
      candidates]))

(define (get-hvx-grammar-gen halide-expr ir-expr hvx-sub-exprs)
  (set! enumeration-database (make-hash))
  (destruct ir-expr
            
    ;; Data loading/shuffling
    [(load-data live-data gather-tbl)
     (define buffers (set->list (halide:extract-live-buffers halide-expr)))
     (define candidates (for/list ([buffer buffers]) (cons (??abstr-load 0 live-data buffer) 1)))
     (append
      (list
       (cons (??shuffle 0 (map (lambda (b) (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256))) (??load 1 live-data b tbl #f)) buffers) #t) 2)
       (cons (??shuffle 0 (map (lambda (b) (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256))) (??load 1 live-data b tbl #f)) buffers) #f) 2)))]

    ;; Data broadcasting
    [(combine ir-expr-0 ir-expr-1 gather-tbl)
     (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
     (define live-data
       (let* ([v0 (hvx:interpret (first hvx-sub-exprs))] [v1 (hvx:interpret (second hvx-sub-exprs))])
         (for/list ([i (hvx:num-elems v0)])
           (list
            (if (hvx:vec-pair? v0) (if (< i (quotient (hvx:num-elems v0) 2)) (hvx:v0-elem v0 i) (hvx:v1-elem v0 i)) (hvx:elem v0 i))
            (if (hvx:vec-pair? v1) (if (< i (quotient (hvx:num-elems v1) 2)) (hvx:v0-elem v1 i) (hvx:v1-elem v1 i)) (hvx:elem v1 i))))))
     
     (list (cons (??swizzle 0 live-data hvx-sub-exprs tbl #f) 1))]
    
    ;; Data broadcasting
    [(broadcast scalar-expr)
     (list (cons (vsplat scalar-expr) 1))]

    ;; Data broadcasting
    [(build-vec base stride len)
     (cond
       [(eq? len 128)
        (define exprs
          (list
           (ramp base stride 32)
           (ramp (sca-add base (int32_t (bv 32 32))) stride 32)
           (ramp (sca-add base (int32_t (bv 64 32))) stride 32)
           (ramp (sca-add base (int32_t (bv 96 32))) stride 32)))
        (define ihal (halide:interpret halide-expr))
        (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
        (list (cons (??swizzle 0 (for/list ([i (range 32)]) (list (ihal i))) exprs tbl #f) 1))]
       [else
        (error "NYI")])]

    ;; Boolean ops
    [(less-than ir-sub-expr0 ir-sub-expr1)
     (define outT (halide:elem-type halide-expr))
     (define grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))

     (define isa (list vcmp.lt))

     ;; Desired output type
     (define desired-expr-types (enum-types outT))
     (define candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 1 2))
     
     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))
     
     ;; Fill in param grammars
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (car candidate)) (cdr candidate)))]

    ;; Conditional
    [(select ir-cond ir-cons ir-altr)
     (define outT (halide:elem-type halide-expr))
     (define grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))

     (define isa (list vmux))
     
     ;; Desired output type
     (define desired-expr-types (enum-types outT))
     (define candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 1 2))
     
     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))
     
     ;; Fill in param grammars
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (car candidate)) (cdr candidate)))]
    
    ;; Casting
    [(cast ir-sub-expr output-type)
     (define input-type (hvx-ir:elem-type ir-sub-expr))
     (define narrowing? (< (cpp:type-bw output-type) (cpp:type-bw input-type)))
     (define widening (> (cpp:type-bw output-type) (cpp:type-bw input-type)))

     (define isa
       (cond
         [narrowing? (list vpacke-n )] ;vshuffe-n
         [widening (list ??lo/hi vunpack vzxt vsxt)]
         [else (list reinterpret)]))

     (define grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))

     (pretty-print grouped-sub-exprs)
     
     ;; Desired output type
     (define desired-expr-types (enum-types output-type))
     (define candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 3 10))
     
     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))
     
     ;; Fill in param grammars
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (car candidate)) (cdr candidate)))]

    ;; Absolute difference
    [(abs-diff ir-sub-expr0 ir-sub-expr1)
     (define outT (halide:elem-type halide-expr))
     (define isa (list vabsdiff))

     (define grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))
     
     ;; Desired output type
     (define desired-expr-types (enum-types outT))
     (define candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 1 2))

     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))
     
     ;; Fill in param grammars
     (define (bool-const) (define-symbolic* b boolean?) b)
     (define (fill-arg-grammars node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool (bool-const)]
         [_ node]))
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (hvx:visit (car candidate) fill-arg-grammars)) (cdr candidate)))]

    ;; Average
    [(average ir-sub-expr0 round? outT)
     (define isa (list vavg))

     (define grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))
     
     ;; Desired output type
     (define desired-expr-types (enum-types outT))
     (define candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 1 2))

     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))
     
     ;; Fill in param grammars
     (define (bool-const) (define-symbolic* b boolean?) b)
     (define (fill-arg-grammars node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool round?]
         [_ node]))
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (hvx:visit (car candidate) fill-arg-grammars)) (cdr candidate)))]
    
    ;; Min Max
    [(maximum ir-sub-expr0 ir-sub-expr1)
     (define outT (halide:elem-type halide-expr))
     (define isa (list vmax))

     (define grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))
     
     ;; Desired output type
     (define desired-expr-types (enum-types outT))
     (define candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 1 5))

     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))
     
     ;; Fill in param grammars
     (define (bool-const) (define-symbolic* b boolean?) b)
     (define (fill-arg-grammars node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool (bool-const)]
         [_ node]))
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (hvx:visit (car candidate) fill-arg-grammars)) (cdr candidate)))]
    
    [(minimum ir-sub-expr0 ir-sub-expr1)
     (define outT (halide:elem-type halide-expr))
     (define isa (list vmin))

     (define grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))
     
     ;; Desired output type
     (define desired-expr-types (enum-types outT))
     (define candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 1 2))

     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))

     ;; Fill in param grammars
     (define (bool-const) (define-symbolic* b boolean?) b)
     (define (fill-arg-grammars node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool (bool-const)]
         [_ node]))
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (hvx:visit (car candidate) fill-arg-grammars)) (cdr candidate)))]

    [(add-const sub-expr const-val output-type saturate?)
     (define outT output-type)
     (define isa (list vsplat vadd vadd-w))

     (define grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))
     
     ;; Desired output type
     (define desired-expr-types (enum-types outT))
     (define candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 2 4))

     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))

     ;; Fill in param grammars
     (define int-consts (list const-val))
     (define (bool-const) (define-symbolic* b boolean?) b)
     (define (int8-const) (cpp:cast  (apply choose* int-consts) 'int8))
     (define (uint8-const) (cpp:cast  (apply choose* int-consts) 'uint8))
     (define (int16-const) (cpp:cast  (apply choose* int-consts) 'int16))
     (define (uint16-const) (cpp:cast  (apply choose* int-consts) 'uint16))
     (define (int32-const) (cpp:cast  (apply choose* int-consts) 'int32))
     (define (uint32-const) (cpp:cast  (apply choose* int-consts) 'uint32))
     (define (fill-arg-grammars node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool (bool-const)]
         ['int8 (int8-const)]
         ['uint8 (uint8-const)]
         ['int16 (int16-const)]
         ['uint16 (uint16-const)]
         ['int32 (int32-const)]
         ['uint32 (int32-const)]
         [_ node]))
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (hvx:visit (car candidate) fill-arg-grammars)) (cdr candidate)))]

    [(divide-by-const ir-sub-expr const-val)
     (define outT (hvx-ir:elem-type ir-expr))
     (define isa (list vmpy vasr vlsr vshuffo-n vasr-n lo hi))

     (define grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))

     ;; Desired output type
     (define desired-expr-types (enum-types outT))
     (define candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 4 10))

     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))

     ;; Filter them
     (define (instr-repeat? candidate)
       (define instrs (mutable-set))
       (define keep? #t)
       (define (check-instr node [pos -1])
         (cond
           [(lo? node) (when (set-member? instrs 'lo) (set! keep? #f)) (set-add! instrs 'lo)]
           [(hi? node) (when (set-member? instrs 'hi) (set! keep? #f)) (set-add! instrs 'hi)]
           ;[(vmpy? node) (when (set-member? instrs 'vmpy) (set! keep? #f)) (set-add! instrs 'vmpy)]
           [(vasr? node) (when (set-member? instrs 'vasr) (set! keep? #f)) (set-add! instrs 'vasr)]
           [(vlsr? node) (when (set-member? instrs 'vlsr) (set! keep? #f)) (set-add! instrs 'vlsr)]
           [(vasr-n? node) (when (set-member? instrs 'vasr-n) (set! keep? #f)) (set-add! instrs 'vasr-n)]
           [(vshuffo-n? node) (when (set-member? instrs 'vshuffo-n) (set! keep? #f)) (set-add! instrs 'vshuffo-n)])
         node)
       (hvx:visit-shallow candidate check-instr)
       keep?)
     (set! candidates (filter (lambda (c) (instr-repeat? (car c))) candidates))

     ;; Fill in param grammars
     (define-symbolic bvc8 (bitvector 8))
     (define-symbolic bvc16 (bitvector 16))
     (define int-consts (list (int8_t bvc8) (int16_t bvc16) (uint8_t bvc8) (uint16_t bvc16)))
     (define (bool-const) (define-symbolic* b boolean?) b)
     (define (int8-const) (cpp:cast  (apply choose* int-consts) 'int8))
     (define (uint8-const) (cpp:cast  (apply choose* int-consts) 'uint8))
     (define (int16-const) (cpp:cast  (apply choose* int-consts) 'int16))
     (define (uint16-const) (cpp:cast  (apply choose* int-consts) 'uint16))
     (define (fill-arg-grammars node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool (bool-const)]
         ['int8 (int8-const)]
         ['uint8 (uint8-const)]
         ['int16 (int16-const)]
         ['uint16 (uint16-const)]
         [_ node]))
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (hvx:visit (car candidate) fill-arg-grammars)) (cdr candidate)))]

;    (define (get-hvx-div-isa den)
;  (define (??hvx-div-instr registers)
;    (define t0 (apply choose* registers))
;    (define shift (int8_t (zero-extend (?? (bitvector 4)) (bitvector 8))))
;    (define-symbolic bvc8 (bitvector 8))
;    (define-symbolic bvc16 (bitvector 16))
;    (define multiplier (choose (int8_t bvc8) (int16_t bvc16) (uint8_t bvc8) (uint16_t bvc16)))
;    (choose*
;     (vmpy t0 multiplier)
;     (vasr t0 shift)
;     (vlsr t0 shift)
;     (let-expr 'x0 t0 (vshuffo-n (hi 'x0) (lo 'x0) (bool-const)))
;     (let-expr 'x0 t0 (vasr-n (hi 'x0) (lo 'x0) shift (bool-const) (bool-const) (bool-const)))
;     ))
;  ??hvx-div-instr)
    
    ;; Shift right
    [(vs-shift-right ir-sub-expr shift round? saturate? arithmetic? output-type)
     (define input-type (hvx-ir:elem-type ir-sub-expr))
     (define narrowing? (< (cpp:type-bw output-type) (cpp:type-bw input-type)))

     ;; Desired output type
     (define desired-expr-types (enum-types output-type))

     (define isa (list vrsr vpack)) ; vpacko-n vround vasr vlsr vsat
     (define grouped-sub-exprs (prepare-sub-exprs (append (list (vsplat shift)) hvx-sub-exprs)))
     (define candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 2 10))

     (set! isa (list vasr-n vround vasr vpacko-n)) ; vlsr
     (set! grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))
     
     (set! candidates (append candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 1 2)))

     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))

     ;(pretty-print candidates)
     ;(exit)
     
     ;; Fill in param grammars
     (define int-consts (list shift))
     (define (bool-const) (define-symbolic* b boolean?) b)
     (define (int8-const) (int8x1  (apply choose* int-consts)))
     (define (fill-arg-grammars node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool (bool-const)]
         ['int8 (int8-const)]
         [_ node]))
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (hvx:visit (car candidate) fill-arg-grammars)) (cdr candidate)))]
    
    ;; Saturation
    [(saturate ir-sub-expr round? output-type)
     (define input-type (hvx-ir:elem-type ir-sub-expr))
     ;; Todo: we can optimize by specializing grammar based on flags
     (define isa (list vmin vsplat vpacke-n vpack)) ;vmin vmax vsat vshuffe-n 

     ;; Sub-expr types
     (define consts
       (cond
         [(eq? output-type 'uint8) (list (vsplat (cpp:cast  (uint8_t (bv 0 8)) input-type)) (vsplat (cpp:cast  (uint8_t (bv 255 8)) input-type)))]
         [(eq? output-type 'int8) (list (vsplat (cpp:cast  (uint8_t (bv -128 8)) input-type)) (vsplat (cpp:cast  (uint8_t (bv 127 8)) input-type)))]
         [(eq? output-type 'uint16) (list (vsplat (cpp:cast  (uint16_t (bv 0 16)) input-type)) (vsplat (cpp:cast  (uint16_t (bv 65535 16)) input-type)))]
         [(eq? output-type 'uint8) (list (vsplat (cpp:cast  (int16_t (bv -32768 32)) input-type)) (vsplat (cpp:cast  (int16_t (bv 32767 32)) input-type)))]))

     (define grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))
     
     ;; Desired output type
     (define desired-expr-types (enum-types output-type))
     (define candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 3 10))

     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))
     
     ;; Fill in param grammars
     (define int-consts (list (uint8_t (bv 0 8)) (uint8_t (bv 255 8)) (uint16_t (bv 0 16)) (uint16_t (bv 65535 16))))
     (define (int8-const) (int8x1 (apply choose* int-consts)))
     (define (int16-const) (int16x1 (apply choose* int-consts)))
     (define (int32-const) (int32x1 (apply choose* int-consts)))
     (define (uint8-const) (uint8x1 (apply choose* int-consts)))
     (define (uint16-const) (uint16x1 (apply choose* int-consts)))
     (define (uint32-const) (uint32x1 (apply choose* int-consts)))
     (define (bool-const) (define-symbolic* b boolean?) b)
     (define (fill-arg-grammars node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool (bool-const)]
         ['int8 (int8-const)]
         ['int16 (int16-const)]
         ['int32 (int32-const)]
         ['uint8 (uint8-const)]
         ['uint16 (uint16-const)]
         ['uint32 (uint32-const)]
         [_ node]))
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (hvx:visit (car candidate) fill-arg-grammars)) (cdr candidate)))]

    ;; Vector-scalar fractional multiply
    [(vs-frac-mpy sub-expr sca round?)
     (define isa (list vsplat vmpy-frac))
     (define grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))
     (define desired-expr-types (set 'i32x32))
     
     (define candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 2 4))

     ;(println (length candidates))

     ;; Filter out templates that read too much or too little data
     (set! candidates (filter (lambda (c) (eq? (max-unique-inputs (car c)) 2)) candidates))

     ;(println (length candidates))
     ;(pretty-print candidates)

     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (< (cdr v1) (cdr v2)))))
     
     ;; Fill in param grammars
     (define int-consts (list sca))
     (define (bool-const) (define-symbolic* b boolean?) b)
     (define (int32-const) (cpp:cast (apply choose* int-consts) 'int32))
     (define (fill-arg-grammars node [pos -1])
       (match node
         ['bool (bool-const)]
         ['int32 (int32-const)]
         [_ node]))
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (hvx:visit (car candidate) fill-arg-grammars)) (cdr candidate)))]
    
    ;; Vector-scalar multiply adds
    [(vs-mpy-add ir-sub-expr weights output-type saturate?)
     (define input-type
       (cond
         [(combine? ir-sub-expr)
          (define t0 (hvx-ir:elem-type (combine-sub-expr0 ir-sub-expr)))
          (define t1 (hvx-ir:elem-type (combine-sub-expr1 ir-sub-expr)))
          (if (< (cpp:type-bw t0) (cpp:type-bw t1)) t0 t1)]
         [else (hvx-ir:elem-type ir-sub-expr)]))
     
     ;; We consider different instructions depending on whether the multiply-add is widening or not
     (define isa
       (cond
         ;; When its a widening fused multiply add
         [(eq? (cpp:type-bw output-type) (* 2 (cpp:type-bw input-type)))
          ;; Instructions intentionally ignored: other vmpy variants, vadd and vsub vunpack
          ;; vdmpy-sw vdmpy-sw-acc (I dont see the advantage of ever using these over vmpas)
          (list
           reinterpret                                                 ;; Allow reinterpretation
           vsplat2                                                     ;; Allow broadcasting
           ??lo/hi                                                     ;; Allow the insertion of (restricted) swizzle nodes
           vzxt vsxt                                                   ;; Basic sign and zero-extension instructions
           vadd-w vadd-w-acc vsub-w                                    ;; Addition and subtraction
           vmpy vmpy-acc vmpyie/o                                      ;; Multiplication
           vmpa vmpa-acc vdmpy vdmpy-acc                               ;; 2 fused multiply-add
           vtmpy vtmpy-acc                                             ;; 3 fused multiply-add
           vrmpy vrmpy-acc vrmpy-sw vrmpy-sw-acc)]                     ;; 4 fused multiply-add
         ;; When its a twice widening fused multiply add
         [(eq? (cpp:type-bw output-type) (* 4 (cpp:type-bw input-type)))
          (list
           reinterpret                                                 ;; Allow reinterpretation
           vsplat                                                      ;; Allow broadcasting
           ??lo/hi                                                     ;; Allow the insertion of (restricted) swizzle nodes
           ??upcastx2 vunpack                                          ;; Basic sign and zero-extension instructions
           vadd vmpy vmpy-acc                                          ;; Multiplication
           vmpa vmpa-acc vdmpy vdmpy-acc                               ;; 2 fused multiply-add
           vtmpy vtmpy-acc                                             ;; 3 fused multiply-add
           vrmpy vrmpy-acc vrmpy-sw vrmpy-sw-acc)]                     ;; 4 fused multiply-add
         [(or (< (length weights) 3) saturate?)
          ;; Non-widening add and multiply instructions with saturation -- I don't believe there are any
          ;; fused instructions that do not produce a wider output.
          (list vsplat reinterpret vadd vsub vmpyi vmpyi-acc)]
         [else
          ;; Non-widening add and multiply instructions -- I don't believe there are any
          ;; fused instructions that do not produce a wider output.
          ;; Assumption: Using a widening fused instruction followed by a narrowing instruction
          ;; will always be less efficient
          (list vsplat reinterpret vmpyi vmpyi-acc)]))

     (define grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))

     ;(pretty-print hvx-sub-exprs)
     ;(pretty-print (set->list (list->set hvx-sub-exprs)))
     
     ;; Desired output type
     (define spec-rad (length weights))
     (define desired-expr-types (enum-types output-type))
     (define candidates (time (enumerate-hvx isa desired-expr-types grouped-sub-exprs 5 7 fma-keep? spec-rad)))
     
     ;(println isa)
     ;(println desired-expr-types)
     ;(pretty-print grouped-sub-exprs)
     
     (define lbs (halide:extract-live-buffers halide-expr))
     (define (live-buffers expr)
       ;(println expr)
       (define live-bufs (mutable-set))
       (define (extract-buffer node [pos -1])
         (destruct node
           [(buffer data elemT) (set-add! live-bufs node) node]
           [_ node]))
       (hvx:visit expr extract-buffer)
       ;(println live-bufs)
       live-bufs)

     ;(println lbs)
     ;(pretty-print candidates)
     ;(println spec-rad)
     
     ;; Filter out templates that read too much or too little data
     (set! candidates (time (filter (lambda (c) (eq? (max-unique-inputs (car c)) spec-rad)) candidates)))
     (set! candidates (time (filter (lambda (c) (equal? (live-buffers (car c)) lbs)) candidates)))
     
     ;; Compute read counts
     (set! candidates (time (map (lambda (c) (cons (car c) (cons (cdr c) (count-reads (car c))))) candidates)))
     
     ;; Sort them (I am ashamed of this line below)
     (set! candidates (time (sort candidates (lambda (v1 v2) (if (eq? (car (cdr v1)) (car (cdr v2))) (< (cdr (cdr v1)) (cdr (cdr v2))) (< (car (cdr v1)) (car (cdr v2))))))))
     
     ;(for ([c (take candidates (min 15 (length candidates)))])
      ; (println (count-reads (car c)))
       ;(pretty-print (car c)))
     ;(pretty-print (take candidates (min 30 (length candidates))))
     ;(exit)

     (define add-scalars (halide:extract-add-scalars halide-expr))
     
     ;; Fill in param grammars
     (define int-consts (set->list (list->set (append weights add-scalars))))
     (define (bool-const) (define-symbolic* b boolean?) b)
     (define (int8-const) (int8x1 (apply choose* int-consts)))
     (define (uint8-const) (uint8x1 (apply choose* int-consts)))
     (define (int16-const) (int16x1 (apply choose* int-consts)))
     (define (uint16-const) (uint16x1 (apply choose* int-consts)))
     (define (int32-const) (int32x1 (apply choose* int-consts)))
     (define (uint32-const) (uint32x1 (apply choose* int-consts)))
     (define (fill-arg-grammars node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool (bool-const)]
         ['int8 (int8-const)]
         ['uint8 (uint8-const)]
         ['int16 (int16-const)]
         ['uint16 (uint16-const)]
         ['int32 (int32-const)]
         ['uint32 (uint32-const)]
         ['int8x2 (Rt2.b (int8-const) (int8-const))]
         ['uint8x2 (Rt2.ub (uint8-const) (uint8-const))]
         ['int16x2 (Rt2.h (int16-const) (int16-const))]
         ['uint16x2 (Rt2.uh (uint16-const) (uint16-const))]
         ['int8x4 (Rt4.b (int8-const) (int8-const) (int8-const) (int8-const))]
         ['uint8x4 (Rt4.ub (uint8-const) (uint8-const) (uint8-const) (uint8-const))]
         [_ node]))
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (hvx:visit (car candidate) fill-arg-grammars)) (car (cdr candidate))))]

    ;; Vector-scalar multiply adds
    [(vv-mpy-add ir-sub-expr width output-type saturate?)
     (define input-type
       (cond
         [(combine? ir-sub-expr)
          (define t0 (hvx-ir:elem-type (combine-sub-expr0 ir-sub-expr)))
          (define t1 (hvx-ir:elem-type (combine-sub-expr1 ir-sub-expr)))
          (if (< (cpp:type-bw t0) (cpp:type-bw t1)) t0 t1)]
         [else (hvx-ir:elem-type ir-sub-expr)]))

     ;; We consider different instructions depending on whether the multiply-add is widening or not
     (define isa
       (cond
         ;; When its a widening fused multiply add
         [(> (cpp:type-bw output-type) (cpp:type-bw input-type))
          (list
           vadd
           reinterpret ;; Allow reinterpretation
           vzxt vsxt vunpack ;; Basic sign and zero-extension instructions
           vmpy-2 ;; Basic multiply and accumulate instructions
           vrmpy-2 ;; Fused multiply-adds vrmpy-acc-2
           )]
         [else
          ;; Non-widening add and multiply instructions -- I don't believe there are any
          ;; fused instructions that do not produce a wider output.
          ;; Assumption: Using a widening fused instruction followed by a narrowing instruction
          ;; will always be less efficient
          ;vmpyi vmpyi-acc
          (list )]))
     
     ;; Sub-expr types
     (define grouped-sub-exprs (prepare-sub-exprs hvx-sub-exprs))

     ;(pretty-print grouped-sub-exprs)
     
     ;; Desired output type
     (define desired-expr-types (enum-types output-type))
     (define candidates (enumerate-hvx isa desired-expr-types grouped-sub-exprs 4 8))

     ;(pretty-print candidates)
     
     ;; Filter out templates that read too much or too little data
     (define spec-rad (- (* width 2) (if (eq? width 5) 1 0)))
     (set! candidates (filter (lambda (c) (eq? (max-unique-inputs (car c)) spec-rad)) candidates))

     ;(println desired-expr-types)
     ;(pretty-print grouped-sub-exprs)
     ;(pretty-print candidates)
     
     ;; Sort them
     (set! candidates (sort candidates (lambda (v1 v2) (<= (cdr v1) (cdr v2)))))
     
     ;; Fill in param grammars
     (define (bool-const) (define-symbolic* b boolean?) b)
     (define (fill-arg-grammars node [pos -1])
       (match node
         [#t #t]
         [#f #f]
         ['bool (bool-const)]
         [_ node]))
     (for/list ([candidate candidates]) (cons (uniquify-swizzles (hvx:visit (car candidate) fill-arg-grammars)) (cdr candidate)))]

    ;; Throw error
    [_ (error "NYI: Please define a grammar for lowering the following ir-expression to HVX ISA:" ir-expr)]))

(define (uniquify-swizzles hvx-template)
  (define swizzle-node-id -1)
  (define (get-sw-node-id) (set! swizzle-node-id (add1 swizzle-node-id)) swizzle-node-id)
  (define (clone-swizzle-node node [pos -1])
    (destruct node
      [(??swizzle id live-data expr gather-tbl pair?)
       (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
       (??swizzle (get-sw-node-id) live-data expr tbl pair?)]
      [(??load id live-data buffer tbl pair?)
       (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
       (??load (get-sw-node-id) live-data buffer tbl pair?)]
      [(??abstr-load id live-data buffer)
       (??abstr-load (get-sw-node-id) live-data buffer)]
      [(??shuffle id lds pair?)
       (??shuffle
        (get-sw-node-id)
        (map
         (lambda (ld)
           (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
           (??load (get-sw-node-id) (??load-live-data ld) (??load-buffer ld) tbl #f)) lds)
        pair?)]
      [_ node]))
  (hvx:visit hvx-template clone-swizzle-node))

(define (is-vsplat? expr)
  (or
   (vsplat? expr)
   (and (vcombine? expr) (vsplat? (vcombine-Vu expr)) (vsplat? (vcombine-Vv expr)))))

(define (is-load? expr)
  (or
   (??load? expr)
   (??shuffle? expr)))

;; Lowering Grammars
(define-grammar (??load-shuffle-expr live-data bfr tbl)
  [expr
   (choose
    (??abstr-load live-data (buffer))
    (??shuffle (expr) (expr) (gather-tbl)))]
  [buffer bfr]
  [gather-tbl tbl])

;; Enuemration fns (move these elsewhere)

(define (enum-types type)
  (cond
    [(eq? type 'uint1) (set 'Qt8 'Qt16 'Qt32)]
    [(eq? type 'int8) (set 'i8x128 'i8x128x2)]
    [(eq? type 'int16) (set 'i16x64 'i16x64x2)]
    [(eq? type 'int32) (set 'i32x32 'i32x32x2)]
    [(eq? type 'uint8) (set 'u8x128 'u8x128x2)]
    [(eq? type 'uint16) (set 'u16x64 'u16x64x2)]
    [(eq? type 'uint32) (set 'u32x32 'u32x32x2)]))

(define (prepare-sub-exprs hvx-sub-exprs)
  ;(pretty-print hvx-sub-exprs)
  (define grouped-sub-exprs (make-hash))
  (define swizzle-node-id -1)
  (define hvx-sub-exprs-untiled (flatten (map (lambda (expr) (if (concat-tiles? expr) (concat-tiles-vecs expr) expr)) (set->list (list->set hvx-sub-exprs)))))
  (for ([hvx-sub-expr hvx-sub-exprs-untiled])
    (cond
      [(??abstr-load? hvx-sub-expr)
       (define elemT (hvx:elem-type (hvx:interpret hvx-sub-expr)))
       (for ([out-type (enum-types elemT)])
         (set! swizzle-node-id (add1 swizzle-node-id))
         (define live-data (??abstr-load-live-data hvx-sub-expr))
         (define buffer (??abstr-load-buffer hvx-sub-expr))
         (define tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 256)))
         (define base-load-expr (if (hvx:vec-pair? out-type) (??load swizzle-node-id live-data buffer tbl #t) (??load swizzle-node-id live-data buffer tbl #f)))
         (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
         (hash-set! grouped-sub-exprs out-type (set-add exprs base-load-expr)))]
      [(??shuffle? hvx-sub-expr)
       (define elemT (hvx:elem-type (hvx:interpret hvx-sub-expr)))
       (for ([out-type (enum-types elemT)])
         (set! swizzle-node-id (add1 swizzle-node-id))
         (define base-load-expr (if (hvx:vec-pair? out-type) (??shuffle swizzle-node-id (??shuffle-lds hvx-sub-expr) #t) (??shuffle swizzle-node-id (??shuffle-lds hvx-sub-expr) #f)))
         (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
         (hash-set! grouped-sub-exprs out-type (set-add exprs base-load-expr)))]
      [(vsplat? hvx-sub-expr)
       (define elemT (hvx:elem-type (hvx:interpret hvx-sub-expr)))
       (for ([out-type (enum-types elemT)])
         (define exprs (hash-ref! grouped-sub-exprs out-type (set)))
         (hash-set! grouped-sub-exprs out-type (set-add exprs (if (hvx:vec-pair? out-type) (vcombine hvx-sub-expr hvx-sub-expr) hvx-sub-expr))))]
      [else
       (define sub-expr-type (hvx:type (hvx:interpret hvx-sub-expr)))
       (when (hvx:vec-pair? sub-expr-type)
         (define sub-expr-type-2 (hvx:type (hvx:interpret (lo hvx-sub-expr))))
         (define exprs (hash-ref! grouped-sub-exprs sub-expr-type-2 (set)))
         (hash-set! grouped-sub-exprs sub-expr-type-2 (set-add exprs hvx-sub-expr)))
       (define exprs (hash-ref! grouped-sub-exprs sub-expr-type (set)))
       (hash-set! grouped-sub-exprs sub-expr-type (set-add exprs hvx-sub-expr))]))

  ;; Merge base-expr choices
  (define grouped-merged-sub-exprs (make-hash))
  (for ([(output-type candidates) grouped-sub-exprs])
    (define candidates-l (set->list candidates))
    (set! swizzle-node-id (add1 swizzle-node-id))
    (define merged-candidates
      (append
       (map (curryr cons 0) (filter is-load? candidates-l))
       (map (curryr cons 0) (filter is-vsplat? candidates-l))
       (let ([c (filter (lambda (c) (not (or (is-vsplat? c) (is-load? c)))) candidates-l)])
         (cond
           [(empty? c) '()]
           [else
            (list (cons (??swizzle swizzle-node-id '() c (void) (hvx:vec-pair? output-type)) 0))]))))
    (hash-set! grouped-merged-sub-exprs output-type merged-candidates))
  
  grouped-merged-sub-exprs)

(define (max-unique-inputs expr)
  (destruct expr
    [(let-expr var val body) 1]

    [(lo Vuu) (max-unique-inputs Vuu)]
    [(hi Vuu) (max-unique-inputs Vuu)]
    [(??lo/hi Vuu interleave?) (max-unique-inputs Vuu)]
    [(reinterpret Vu) (max-unique-inputs Vu)]
    [(vcombine Vu Vv) (max-unique-inputs Vu)]
    
    [(vzxt Vu) (max-unique-inputs Vu)]
    [(vsxt Vu) (max-unique-inputs Vu)]
    [(??upcast Vu) (max-unique-inputs Vu)]
    [(??upcastx2 Vu) (max-unique-inputs Vu)]
    [(vunpack Vu) (max-unique-inputs Vu)]
    
    [(vadd Vu Vv sat?) (+ (max-unique-inputs Vu) (max-unique-inputs Vv))]
    [(vadd-w Vu Vv) (+ (max-unique-inputs Vu) (max-unique-inputs Vv))]
    [(vsub Vu Vv sat?) (+ (max-unique-inputs Vu) (max-unique-inputs Vv))]
    [(vsub-w Vu Vv) (+ (max-unique-inputs Vu) (max-unique-inputs Vv))]
    [(vadd-w-acc Vdd Vu Vv) (+ (max-unique-inputs Vdd) (max-unique-inputs Vu) (max-unique-inputs Vv))]
    [(vmpy Vu Rt) (max-unique-inputs Vu)]
    [(vmpy-2 Vu Vv) (+ (max-unique-inputs Vu) (max-unique-inputs Vv))]
    [(vmpyi Vu Rt) (max-unique-inputs Vu)]
    [(vmpyie/o Vu Rt) (max-unique-inputs Vu)]
    [(vmpye Vu Rt) (max-unique-inputs Vu)]
    [(vmpy-acc Vdd Vu Rt) (+ (max-unique-inputs Vdd) (max-unique-inputs Vu))]
    [(vmpyi-acc Vd Vu Rt) (+ (max-unique-inputs Vd) (max-unique-inputs Vu))]
    [(vmpye-acc Vd Vu Rt) (+ (max-unique-inputs Vd) (max-unique-inputs Vu))]
    [(vmpy-frac Vd Vu rnd?) (+ (max-unique-inputs Vd) (max-unique-inputs Vu))]
    [(vmpa Vuu Rt) (* 2 (max-unique-inputs Vuu))]
    [(vmpa-acc Vdd Vuu Rt) (+ (max-unique-inputs Vdd) (* 2 (max-unique-inputs Vuu)))]
    [(vdmpy Vu Rt) (* 2 (max-unique-inputs Vu))]
    [(vdmpy-sw Vuu Rt) (* 2 (max-unique-inputs Vuu))]
    [(vdmpy-acc Vd Vu Rt) (+ (max-unique-inputs Vd) (* 2 (max-unique-inputs Vu)))]
    [(vdmpy-sw-acc Vdd Vuu Rt) (+ (max-unique-inputs Vdd) (* 2 (max-unique-inputs Vuu)))]
    [(vtmpy Vuu Rt) (* 3 (max-unique-inputs Vuu))]
    [(vtmpy-acc Vdd Vuu Rt) (+ (max-unique-inputs Vdd) (* 3 (max-unique-inputs Vuu)))]
    [(vrmpy Vu Rt) (* 4 (max-unique-inputs Vu))]
    [(vrmpy-acc Vd Vu Rt) (+ (max-unique-inputs Vd) (* 4 (max-unique-inputs Vu)))]
    [(vrmpy-2 Vu Vv) (+ (* 4 (max-unique-inputs Vu)) (* 4 (max-unique-inputs Vv)))]
    [(vrmpy-acc-2 Vd Vu Vv) (+ (max-unique-inputs Vd) (* 4 (max-unique-inputs Vu)) (* 4 (max-unique-inputs Vv)))]
    [(vrmpy-sw Vuu Rt u1) (* 4 (max-unique-inputs Vuu))]
    [(vrmpy-sw-acc Vdd Vuu Rt u1) (+ (max-unique-inputs Vdd) (* 4 (max-unique-inputs Vuu)))]

    [(vsplat _) 1]
    [(vsplat2 _) 1]
    [(??load _ _ _ _ _) 1]
    [(??shuffle _ _ _) 1]
    [(??swizzle _ _ _ _ _) 1]

    [_ (error (format "NYI lowering grammar max-unique-inputs ~a" expr))]))

(define (count-reads expr)
  (define cnt 0)
  (define (incr-read-cntr node [pos -1])
    (destruct node
      [(??load id live-data buffer gather-tbl pair?) (set! cnt (+ cnt (if pair? 2 1))) node]
      [(??shuffle id lds pair?) (set! cnt (+ cnt (if pair? 2 1))) node]
      [else node]))
  (hvx:visit expr incr-read-cntr)
  cnt)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;; New enumerator

(define enumeration-database (make-hash))

(define (enumerate-hvx instr-set output-types base-exprs depth max-cost [keep? reg-keep?] [spec-rad -1] [parent-instr (void)] [arg-pos -1])
  (define query (list instr-set output-types base-exprs depth max-cost keep? spec-rad parent-instr arg-pos))
  (cond
    ;; Have we enumerated this tree before?
    [(hash-has-key? enumeration-database query) (hash-ref enumeration-database query)]

    ;; Recursive base case
    [(<= depth 0)
     (if (eq? parent-instr ??lo/hi)
         '()
         (apply append (for/list ([output-type output-types]) (hash-ref! base-exprs output-type (list)))))]

    ;; Enumerate recursively
    [else
     (define candidates
       (let ([sub-cands (enumerate-hvx instr-set output-types base-exprs (sub1 depth) max-cost keep? spec-rad parent-instr arg-pos)])
         (let ([c-build-instr-exprs (curryr build-instr-exprs instr-set output-types base-exprs depth max-cost keep? spec-rad)])
           (foldr append sub-cands (map c-build-instr-exprs (filter (curry keep? parent-instr arg-pos) instr-set))))))

     (let ([f1 (filter (lambda (e) (<= (cdr e) max-cost)) candidates)])
       (let ([f2 (if (eq? spec-rad -1) f1 (filter (lambda (e) (<= (max-unique-inputs (car e)) spec-rad)) f1))])
         (let ([fs (set->list (list->set f2))])
           (hash-set! enumeration-database query fs)
           fs)))]))

(define (build-instr-exprs instr instr-set output-types base-exprs depth max-cost keep? spec-rad)
  ;(display (format "INSTR: ~a\n" instr))
  (let ([c-build-sig-exprs (curryr build-sig-exprs instr-set base-exprs depth max-cost keep? spec-rad instr)])
    (foldr append '() (map c-build-sig-exprs (filter (curry out-member? output-types) (hvx:instr-forms instr))))))

(define (build-sig-exprs sig instr-set base-exprs depth max-cost keep? spec-rad instr)
  ;(display (format "SIG: ~a\n" sig))
  (let ([sig-exprs
    (let ([arg-opts (get-arg-opts (instr-sig-args sig) 0 instr-set base-exprs depth max-cost keep? spec-rad instr)])
      (apply cartesian-product arg-opts))])
    (map (curry build-ast instr sig) sig-exprs)))

(define (get-arg-opts args arg-pos instr-set base-exprs depth max-cost keep? spec-rad instr)
  (cond
    [(empty? args) '()]
    [else
     (let ([arg (first args)])
       ;(display (format "arg: ~a\n" arg))
       (let ([opts (match arg
                     [#t (list (cons #t 0))]
                     [#f (list (cons #f 0))]
                     ['bool (list (cons 'bool 0))]
                     ['int8 (list (cons 'int8 0))]
                     ['uint8 (list (cons 'uint8 0))]
                     ['int16 (list (cons 'int16 0))]
                     ['uint16 (list (cons 'uint16 0))]
                     ['int32 (list (cons 'int32 0))]
                     ['uint32 (list (cons 'uint32 0))]
                     ['int8x2 (list (cons 'int8x2 0))]
                     ['uint8x2 (list (cons 'uint8x2 0))]
                     ['int16x2 (list (cons 'int16x2 0))]
                     ['uint16x2 (list (cons 'uint16x2 0))]
                     ['int8x4 (list (cons 'int8x4 0))]
                     ['uint8x4 (list (cons 'uint8x4 0))]
                     [_ (enumerate-hvx instr-set (set arg) base-exprs (sub1 depth) max-cost keep? spec-rad instr arg-pos)])])
         ;(display (format "opts ~a\n" opts))
         (append (list opts) (get-arg-opts (rest args) (add1 arg-pos) instr-set base-exprs depth max-cost keep? spec-rad instr))))]))

(define (build-ast instr sig sig-expr)
  (define cost (foldr + (instr-cost instr sig) (map cdr sig-expr)))
  (define expr (apply instr (map car sig-expr)))
  (cons expr cost))

(define (instr-rank instr)
  (cond
    [(eq? instr vadd-w-acc)  1]
    [(eq? instr vmpy-acc) 2]
    [(eq? instr vmpa-acc) 3]
    [(eq? instr vdmpy-acc) 4]
    [(eq? instr vdmpy-sw-acc) 5]
    [(eq? instr vtmpy-acc) 6]
    [(eq? instr vrmpy-acc) 7]
    [(eq? instr vrmpy-sw-acc) 8]
    ;[(eq? instr vunpack) 9]

    [(eq? instr vmpyi-acc) 1]
    [else 0]))

(define (reg-keep? parent-instr arg-pos child-instr)
  (not
   (or
    (and (eq? parent-instr reinterpret) (eq? child-instr reinterpret)))))

(define (fma-keep? parent-instr arg-pos child-instr)
  (not
   (or
    (and (eq? parent-instr reinterpret) (eq? child-instr reinterpret))
    (and (eq? parent-instr reinterpret) (eq? child-instr vunpack))
    (and (not (eq? parent-instr vunpack)) (eq? child-instr ??lo/hi))
    (and (> arg-pos 0) (not (eq? child-instr reinterpret)))
    (and
     (not (eq? parent-instr reinterpret))
     (not (eq? child-instr reinterpret))
     (not (eq? parent-instr ??lo/hi))
     (not (eq? parent-instr (void)))
     (> (instr-rank child-instr) (instr-rank parent-instr))))))

(define (instr-cost instr sig)
  (cond
    [(eq? instr reinterpret) 0.04]
    [(eq? instr ??lo/hi) 0.05]
    [(eq? instr vmpyie/o) 2]
    [(eq? instr vzxt) 0.95]
    [(eq? instr vsxt) 0.95]
    [(eq? instr vunpack) 0.95]
    [(eq? instr vmpyi) 1]
    [(eq? instr vmpyi-acc) 1]
    [(eq? instr vrmpy) 1]
    [(eq? instr vrmpy-acc) 1]
    [else
     (if (hvx:vec-pair? (instr-sig-ret-val sig)) 1 2)]))

(define (out-member? output-types sig)
  (set-member? output-types (instr-sig-ret-val sig)))

;;;;;;;;;;;;;;;;;; Legacy enumerator

;(define enumeration-database (make-hash))
;
;(define (enumerate-hvx instr-set output-types hvx-sub-exprs depth)
;  (define query (list instr-set output-types hvx-sub-exprs depth))
;  (cond
;    ;; Have we enumerated this tree before?
;    [(hash-has-key? enumeration-database query) (hash-ref enumeration-database query)]
;
;    ;; Recursive base case
;    [(<= depth 0)
;     (list->set (flatten (for/list ([output-type output-types]) (hash-ref! hvx-sub-exprs output-type (list)))))]
;
;    ;; Enumerate recursively
;    [else
;      (define candidates (enumerate-hvx instr-set output-types hvx-sub-exprs (sub1 depth)))
;      (for ([instr instr-set])
;        (for ([sig (hvx:instr-forms instr)])
;          (when (set-member? output-types (instr-sig-ret-val sig))
;            (define arg-opts (list))
;            (for ([arg (instr-sig-args sig)])
;              (define opts (match arg
;                             [#t (list #t)]
;                             [#f (list #f)]
;                             ['bool (list 'bool)]
;                             ['int8 (list 'int8)]
;                             ['uint8 (list 'uint8)]
;                             ['int16 (list 'int16)]
;                             ['uint16 (list 'uint16)]
;                             ['int32 (list 'int32)]
;                             ['uint32 (list 'uint32)]
;                             ['int8x2 (list 'int8x2)]
;                             ['uint8x2 (list 'uint8x2)]
;                             ['int16x2 (list 'int16x2)]
;                             ['uint16x2 (list 'uint16x2)]
;                             ['int8x4 (list 'int8x4)]
;                             ['uint8x4 (list 'uint8x4)]
;                             [_ (set->list (enumerate-hvx instr-set (set arg) hvx-sub-exprs (sub1 depth)))]))
;              (set! arg-opts (append arg-opts (list opts))))
;            (define sig-exprs
;              (list->set
;               (match (length arg-opts)
;                 [1 (cartesian-product (list instr) (first arg-opts))]
;                 [2 (cartesian-product (list instr) (first arg-opts) (second arg-opts))]
;                 [3 (cartesian-product (list instr) (first arg-opts) (second arg-opts) (third arg-opts))]
;                 [4 (cartesian-product (list instr) (first arg-opts) (second arg-opts) (third arg-opts) (fourth arg-opts))]
;                 [5 (cartesian-product (list instr) (first arg-opts) (second arg-opts) (third arg-opts) (fourth arg-opts) (fifth arg-opts))]
;                 [6 (cartesian-product (list instr) (first arg-opts) (second arg-opts) (third arg-opts) (fourth arg-opts) (fifth arg-opts) (sixth arg-opts))]
;                 [_ (error "NYI: enumeration instrs with the following number of args:" (length arg-opts))])))
;            (set! sig-exprs (for/set ([sig-expr sig-exprs]) (match (length sig-expr)
;                                                              [2 ((list-ref sig-expr 0) (list-ref sig-expr 1))]
;                                                              [3 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2))]
;                                                              [4 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2) (list-ref sig-expr 3))]
;                                                              [5 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2) (list-ref sig-expr 3) (list-ref sig-expr 4))]
;                                                              [6 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2) (list-ref sig-expr 3) (list-ref sig-expr 4) (list-ref sig-expr 5))]
;                                                              [7 ((list-ref sig-expr 0) (list-ref sig-expr 1) (list-ref sig-expr 2) (list-ref sig-expr 3) (list-ref sig-expr 4) (list-ref sig-expr 5) (list-ref sig-expr 6))]
;                                                              [_ (error "NYI. Sig-expr of size" (length sig-expr))])))
;            (set! candidates (set-union candidates sig-exprs)))))
;
;        (hash-set! enumeration-database query candidates)
;        candidates]))