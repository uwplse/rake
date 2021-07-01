#lang rosette/safe

(require
  (only-in rosette/base/core/term @app)
  (only-in racket/base exit)
  (only-in racket/match ==)
  (rename-in rosette/lib/match (match rs-match))
  rosette/lib/destruct
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/hvx/ast/types)

(provide
 (rename-out
  [interpret hvx:interpret]
  [set-curr-cn hvx:set-curr-cn]))

(define (interpret p)
  (destruct p

    ;;;;;;;;;;;;;;;;;;;; Scalar Halide Expressions ;;;;;;;;;;;;;;;;;;;;;

    [(uint8x1 sca) (cpp:cast (interpret sca) 'uint8)]
    [(uint16x1 sca) (cpp:cast (interpret sca) 'uint16)]    
    [(uint32x1 sca) (cpp:cast (interpret sca) 'uint32)]
    [(uint64x1 sca) (cpp:cast (interpret sca) 'uint64)]

    [(int8x1 sca) (cpp:cast (interpret sca) 'int8)]
    [(int16x1 sca) (cpp:cast (interpret sca) 'int16)]
    [(int32x1 sca) (cpp:cast (interpret sca) 'int32)]
    [(int64x1 sca) (cpp:cast (interpret sca) 'int64)]
            
    [(sca-add v1 v2) (halide:do-add (interpret v1) (interpret v2))]
    [(sca-sub v1 v2) (halide:do-sub (interpret v1) (interpret v2))]
    [(sca-mul v1 v2) (halide:do-mul (interpret v1) (interpret v2))]
    [(sca-div v1 v2) (halide:do-div (interpret v1) (interpret v2))]
    [(sca-mod v1 v2) (halide:do-mod (interpret v1) (interpret v2))]
    [(sca-min v1 v2) (halide:do-min (interpret v1) (interpret v2))]
    [(sca-max v1 v2) (halide:do-max (interpret v1) (interpret v2))]

    [(sca-if v1 v2 v3) (halide:do-if (interpret v1) (interpret v2) (interpret v3))]
    [(sca-eq v1 v2) (halide:do-eq (interpret v1) (interpret v2))]
    [(sca-lt v1 v2) (halide:do-lt (interpret v1) (interpret v2))]
    [(sca-le v1 v2) (halide:do-le (interpret v1) (interpret v2))]

    [(sca-abs v1) (halide:do-abs (interpret v1))]
    [(sca-absd v1 v2) (halide:do-absd (interpret v1) (interpret v2))]
    [(sca-shl v1 v2) (halide:do-shl (interpret v1) (interpret v2))]
    [(sca-shr v1 v2) (halide:do-shr (interpret v1) (interpret v2))]
    [(sca-clz v1) (halide:do-clz (interpret v1))]

    [(sca-bwand v1 v2) (halide:do-bwand (interpret v1) (interpret v2))]

    [(load-sca buf idx) (halide:buffer-ref (interpret buf) (interpret idx))]
            
    ;;;;;;;;;;;;;;;;;;;;;;;; Abstract Expressions ;;;;;;;;;;;;;;;;;;;;;;

    [(abstr-hvx-expr orig-expr abstr-vals offset)
     (define vec-type (hvx:type (interpret orig-expr)))
     (cond
       [(eq? 'i8x128 vec-type) (i8x128 (lambda (i) (halide:buffer-ref abstr-vals (+ i offset))))]
       [(eq? 'u8x128 vec-type) (u8x128 (lambda (i) (halide:buffer-ref abstr-vals (+ i offset))))]
       [(eq? 'i16x64 vec-type) (i16x64 (lambda (i) (halide:buffer-ref abstr-vals (+ i offset))))]
       [(eq? 'u16x64 vec-type) (u16x64 (lambda (i) (halide:buffer-ref abstr-vals (+ i offset))))]
       [(eq? 'i32x32 vec-type) (i32x32 (lambda (i) (halide:buffer-ref abstr-vals (+ i offset))))]
       [(eq? 'u32x32 vec-type) (u32x32 (lambda (i) (halide:buffer-ref abstr-vals (+ i offset))))]
       [(eq? 'i8x128x2 vec-type) (i8x128x2 (lambda (i) (halide:buffer-ref abstr-vals (+ i offset))) (lambda (i) (halide:buffer-ref abstr-vals (+ i offset 128))))]
       [(eq? 'u8x128x2 vec-type) (u8x128x2 (lambda (i) (halide:buffer-ref abstr-vals (+ i offset))) (lambda (i) (halide:buffer-ref abstr-vals (+ i offset 128))))]
       [(eq? 'i16x64x2 vec-type) (i16x64x2 (lambda (i) (halide:buffer-ref abstr-vals (+ i offset))) (lambda (i) (halide:buffer-ref abstr-vals (+ i offset 64))))]
       [(eq? 'u16x64x2 vec-type) (u16x64x2 (lambda (i) (halide:buffer-ref abstr-vals (+ i offset))) (lambda (i) (halide:buffer-ref abstr-vals (+ i offset 64))))]
       [(eq? 'i32x32x2 vec-type) (i32x32x2 (lambda (i) (halide:buffer-ref abstr-vals (+ i offset))) (lambda (i) (halide:buffer-ref abstr-vals (+ i offset 32))))]
       [(eq? 'u32x32x2 vec-type) (u32x32x2 (lambda (i) (halide:buffer-ref abstr-vals (+ i offset))) (lambda (i) (halide:buffer-ref abstr-vals (+ i offset 32))))])]
            
    ;;;;;;;;;;;;;;;;; Instructions to represent swizzles ;;;;;;;;;;;;;;;
            
    [(??abstr-load live-data buffer)
      (define-symbolic* idx-tbl (~> integer? integer?))
      
      (define data (buffer-data buffer))
      (define elemT (buffer-elemT buffer))

      (define vecType (cond
                        [(eq? elemT 'int8) i8x128]
                        [(eq? elemT 'int16) i16x64]
                        [(eq? elemT 'int32) i32x32]
                        [(eq? elemT 'uint8) u8x128]
                        [(eq? elemT 'uint16) u16x64]
                        [(eq? elemT 'uint32) u32x32]))

      (define (is-of-buffer? read)
        (rs-match (cpp:eval read)
          [(expression (== @app) xs ...) (equal? (list-ref xs 0) data)]
          [_ #f]))
      
      (define (filter-reads reads)
        (filter is-of-buffer? reads))
      
      (define filtered-reads (map filter-reads live-data))
      
      (vecType (lambda (i) (list-ref (list-ref filtered-reads curr-cn) (idx-tbl i))))]

    [(??load id live-data buffer idx-tbl pair?)
      (define data (buffer-data buffer))
      (define elemT (buffer-elemT buffer))

      (define vecType (cond
                        [(eq? elemT 'int8) i8x128]
                        [(eq? elemT 'int16) i16x64]
                        [(eq? elemT 'int32) i32x32]
                        [(eq? elemT 'uint8) u8x128]
                        [(eq? elemT 'uint16) u16x64]
                        [(eq? elemT 'uint32) u32x32]))
      (define vecpType (cond
                         [(eq? elemT 'int8) i8x128x2]
                         [(eq? elemT 'int16) i16x64x2]
                         [(eq? elemT 'int32) i32x32x2]
                         [(eq? elemT 'uint8) u8x128x2]
                         [(eq? elemT 'uint16) u16x64x2]
                         [(eq? elemT 'uint32) u32x32x2]))
      
      (define (is-of-buffer? read)
        (rs-match (cpp:eval read)
          [(expression (== @app) xs ...) (equal? (list-ref xs 0) data)]
          [_ #f]))
      
      (define (filter-reads reads)
        (filter is-of-buffer? reads))
      
      (define filtered-reads (map filter-reads live-data))
      
      (if pair?
       (vecpType
        (lambda (i) (list-ref (list-ref filtered-reads curr-cn) (list-ref idx-tbl i)))
        (lambda (i) (list-ref (list-ref filtered-reads curr-cn) (list-ref idx-tbl (+ i 128)))))
       (vecType
        (lambda (i) (list-ref (list-ref filtered-reads curr-cn) (list-ref idx-tbl i)))))]

    [(??swizzle id live-data exprs idx-tbl pair?)
      (cond
        [(abstr-hvx-expr? (list-ref exprs 0))
         (define elemT (buffer-elemT (abstr-hvx-expr-abstr-vals (list-ref exprs 0))))

         (define vecType (cond
                           [(eq? elemT 'int8) i8x128]
                           [(eq? elemT 'int16) i16x64]
                           [(eq? elemT 'int32) i32x32]
                           [(eq? elemT 'uint8) u8x128]
                           [(eq? elemT 'uint16) u16x64]
                           [(eq? elemT 'uint32) u32x32]))
         (define vecpType (cond
                            [(eq? elemT 'int8) i8x128x2]
                            [(eq? elemT 'int16) i16x64x2]
                            [(eq? elemT 'int32) i32x32x2]
                            [(eq? elemT 'uint8) u8x128x2]
                            [(eq? elemT 'uint16) u16x64x2]
                            [(eq? elemT 'uint32) u32x32x2]))

         (define (is-of-buffer? read)
           (rs-match (cpp:eval read)
                     [(expression (== @app) xs ...) (ormap (lambda (e) (equal? (buffer-data (abstr-hvx-expr-abstr-vals e)) (list-ref xs 0))) exprs)]
                     [_ #f]))
      
         (define (filter-reads reads)
           (filter is-of-buffer? reads))
      
         (define filtered-reads (map filter-reads live-data))
         
         (if pair?
             (vecpType
              (lambda (i) (list-ref (list-ref filtered-reads curr-cn) (list-ref idx-tbl i)))
              (lambda (i) (list-ref (list-ref filtered-reads curr-cn) (list-ref idx-tbl (+ i 128)))))
             (vecType
              (lambda (i) (list-ref (list-ref filtered-reads curr-cn) (list-ref idx-tbl i)))))]
        [else
         (define elemT (hvx:elem-type (interpret (list-ref exprs 0))))

         (define vecType (cond
                           [(eq? elemT 'int8) i8x128]
                           [(eq? elemT 'int16) i16x64]
                           [(eq? elemT 'int32) i32x32]
                           [(eq? elemT 'uint8) u8x128]
                           [(eq? elemT 'uint16) u16x64]
                           [(eq? elemT 'uint32) u32x32]))

         (define vecpType (cond
                            [(eq? elemT 'int8) i8x128x2]
                            [(eq? elemT 'int16) i16x64x2]
                            [(eq? elemT 'int32) i32x32x2]
                            [(eq? elemT 'uint8) u8x128x2]
                            [(eq? elemT 'uint16) u16x64x2]
                            [(eq? elemT 'uint32) u32x32x2]))

         (if pair?
             (vecpType
              (lambda (i) (list-ref (list-ref live-data curr-cn) (list-ref idx-tbl i)))
              (lambda (i) (list-ref (list-ref live-data curr-cn) (list-ref idx-tbl (+ i 128)))))
             (vecType
              (lambda (i) (list-ref (list-ref live-data curr-cn) (list-ref idx-tbl i)))))])]

    ;[(??lo/hi expr)
      ;(choose* (interpret (lo expr)) (interpret (hi expr)))]

    ;;;;;;;;;;;;;;;;; Instructions for vector creation ;;;;;;;;;;;;;;;
    
    [(vread buf loc align) ((get-vec-type buf) (lambda (i) (halide:buffer-ref buf (+ loc i))))]
    [(vreadp buf loc align) ((get-vecp-type buf) (lambda (i) (halide:buffer-ref buf (+ loc i))) (lambda (i) (halide:buffer-ref buf (+ loc i (get-offset buf)))))]

    [(vsplat Rt)
     (define iRt (interpret Rt))
     (cond
       [(int8_t? iRt)   (i8x128 (lambda (i) iRt))]
       [(int16_t? iRt)  (i16x64 (lambda (i) iRt))]
       [(int32_t? iRt)  (i32x32 (lambda (i) iRt))]
       [(uint8_t? iRt)  (u8x128 (lambda (i) iRt))]
       [(uint16_t? iRt) (u16x64 (lambda (i) iRt))]
       [(uint32_t? iRt) (u32x32 (lambda (i) iRt))])]

    ;;;;;;;;;;;;;;;; Instructions for data movement ;;;;;;;;;;;;;;;;
    
    [(lo Vuu) (hvx:v0 (interpret Vuu))]
    [(hi Vuu) (hvx:v1 (interpret Vuu))]

    [(vcombine Vu Vv)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (i8x128x2 (lambda (i) (v1 i)) (lambda (i) (v0 i)))]
       [((u8x128 v0) (u8x128 v1)) (u8x128x2 (lambda (i) (v1 i)) (lambda (i) (v0 i)))]
       [((i16x64 v0) (i16x64 v1)) (i16x64x2 (lambda (i) (v1 i)) (lambda (i) (v0 i)))]
       [((u16x64 v0) (u16x64 v1)) (u16x64x2 (lambda (i) (v1 i)) (lambda (i) (v0 i)))]
       [((i32x32 v0) (i32x32 v1)) (i32x32x2 (lambda (i) (v1 i)) (lambda (i) (v0 i)))]
       [((u32x32 v0) (u32x32 v1)) (u32x32x2 (lambda (i) (v1 i)) (lambda (i) (v0 i)))])]

    [(vshuff Vu)
     (destruct (interpret Vu)
       [(u8x128 v0) (u8x128 (lambda (i) (if (even? i) (v0 (quotient i 2)) (v0 (+ (quotient i 2) 64)))))]
       [(i8x128 v0) (i8x128 (lambda (i) (if (even? i) (v0 (quotient i 2)) (v0 (+ (quotient i 2) 64)))))]
       [(u16x64 v0) (u16x64 (lambda (i) (if (even? i) (v0 (quotient i 2)) (v0 (+ (quotient i 2) 32)))))]
       [(i16x64 v0) (i16x64 (lambda (i) (if (even? i) (v0 (quotient i 2)) (v0 (+ (quotient i 2) 32)))))])]
    
    [(vshuffe Vu Vv)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))))]
       [((u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))))]
       [((i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))))]
       [((u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))))])]

    [(vshuffo Vu Vv)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))))]
       [((u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))))]
       [((i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))))]
       [((u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))))])]
    
    [(vinterleave Vuu)
     (destruct (interpret Vuu)
       [(i8x128x2 v1 v0)
        (i8x128x2
         (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
         (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 64)) (v0 (+ (quotient i 2) 64)))))]
       [(u8x128x2 v1 v0)
        (u8x128x2
         (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
         (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 64)) (v0 (+ (quotient i 2) 64)))))]
       [(i16x64x2 v1 v0)
        (i16x64x2
         (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
         (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 32)) (v0 (+ (quotient i 2) 32)))))]
       [(u16x64x2 v1 v0)
        (u16x64x2
         (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
         (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 32)) (v0 (+ (quotient i 2) 32)))))]
       [(i32x32x2 v1 v0)
        (i32x32x2
         (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
         (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 16)) (v0 (+ (quotient i 2) 16)))))]
       [(u32x32x2 v1 v0)
        (u32x32x2
         (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
         (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 16)) (v0 (+ (quotient i 2) 16)))))])]

    [(vinterleave4 Vuu Vvv Rt)
     (destruct* ((interpret Vuu) (interpret Vvv))
       [((i8x128x2 v0 v2) (i8x128x2 v1 v3))
        (i8x128
         (lambda (i)
           (define idx (cond [(eq? Rt 0) i] [(eq? Rt 1) (+ i 128)] [(eq? Rt 2) (+ i 256)] [(eq? Rt 3) (+ i 384)]))
           (define quo (quotient idx 4))
           (define rem (modulo idx 4))
           (cond
             [(eq? 0 rem) (v0 quo)]
             [(eq? 1 rem) (v1 quo)]
             [(eq? 2 rem) (v2 quo)]
             [(eq? 3 rem) (v3 quo)])))]
       [((u8x128x2 v0 v2) (u8x128x2 v1 v3))
        (u8x128
         (lambda (i)
           (define idx (cond [(eq? Rt 0) i] [(eq? Rt 1) (+ i 128)] [(eq? Rt 2) (+ i 256)] [(eq? Rt 3) (+ i 384)]))
           (define quo (quotient idx 4))
           (define rem (modulo idx 4))
           (cond
             [(eq? 0 rem) (v0 quo)]
             [(eq? 1 rem) (v1 quo)]
             [(eq? 2 rem) (v2 quo)]
             [(eq? 3 rem) (v3 quo)])))]
       [((i16x64x2 v0 v2) (i16x64x2 v1 v3))
        (i16x64
         (lambda (i)
           (define idx (cond [(eq? Rt 0) i] [(eq? Rt 1) (+ i 64)] [(eq? Rt 2) (+ i 128)] [(eq? Rt 3) (+ i 192)]))
           (define quo (quotient idx 4))
           (define rem (modulo idx 4))
           (cond
             [(eq? 0 rem) (v0 quo)]
             [(eq? 1 rem) (v1 quo)]
             [(eq? 2 rem) (v2 quo)]
             [(eq? 3 rem) (v3 quo)])))]
       [((u16x64x2 v0 v2) (u16x64x2 v1 v3))
        (u16x64
         (lambda (i)
           (define idx (cond [(eq? Rt 0) i] [(eq? Rt 1) (+ i 64)] [(eq? Rt 2) (+ i 128)] [(eq? Rt 3) (+ i 192)]))
           (define quo (quotient idx 4))
           (define rem (modulo idx 4))
           (cond
             [(eq? 0 rem) (v0 quo)]
             [(eq? 1 rem) (v1 quo)]
             [(eq? 2 rem) (v2 quo)]
             [(eq? 3 rem) (v3 quo)])))]
       [((i32x32x2 v0 v2) (i32x32x2 v1 v3))
        (i32x32
         (lambda (i)
           (define idx (cond [(eq? Rt 0) i] [(eq? Rt 1) (+ i 32)] [(eq? Rt 2) (+ i 64)] [(eq? Rt 3) (+ i 96)]))
           (define quo (quotient idx 4))
           (define rem (modulo idx 4))
           (cond
             [(eq? 0 rem) (v0 quo)]
             [(eq? 1 rem) (v1 quo)]
             [(eq? 2 rem) (v2 quo)]
             [(eq? 3 rem) (v3 quo)])))]
       [((u32x32x2 v0 v2) (u32x32x2 v1 v3))
        (u32x32
         (lambda (i)
           (define idx (cond [(eq? Rt 0) i] [(eq? Rt 1) (+ i 32)] [(eq? Rt 2) (+ i 64)] [(eq? Rt 3) (+ i 96)]))
           (define quo (quotient idx 4))
           (define rem (modulo idx 4))
           (cond
             [(eq? 0 rem) (v0 quo)]
             [(eq? 1 rem) (v1 quo)]
             [(eq? 2 rem) (v2 quo)]
             [(eq? 3 rem) (v3 quo)])))])]

    [(vpacke Vu Vv)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (if (< i 64) (v1 (* i 2)) (v0 (* 2 (- i 64))))))]
       [((u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (if (< i 64) (v1 (* i 2)) (v0 (* 2 (- i 64))))))]
       [((i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (if (< i 32) (v1 (* i 2)) (v0 (* 2 (- i 32))))))]
       [((u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (if (< i 32) (v1 (* i 2)) (v0 (* 2 (- i 32))))))])]

    [(vdeal Vu)
     (destruct (interpret Vu)
       [(u8x128 v0) (u8x128 (lambda (i) (if (< i 64) (v0 (* i 2)) (v0 (+ (* (- i 64) 2) 1)))))]
       [(i8x128 v0) (i8x128 (lambda (i) (if (< i 64) (v0 (* i 2)) (v0 (+ (* (- i 64) 2) 1)))))]
       [(u16x64 v0) (u16x64 (lambda (i) (if (< i 32) (v0 (* i 2)) (v0 (+ (* (- i 32) 2) 1)))))]
       [(i16x64 v0) (i16x64 (lambda (i) (if (< i 32) (v0 (* i 2)) (v0 (+ (* (- i 32) 2) 1)))))])]
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;; Type Casting ;;;;;;;;;;;;;;;;;;;;;;;;;

    ;; Truncating narrow
    [(vpacke-n Vu Vv signed?)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i16x64 v0) (i16x64 v1))
        (if signed?
            (i8x128 (lambda (i) (if (< i 64) (lo-i8 (v1 i)) (lo-i8 (v0 (- i 64))))))
            (u8x128 (lambda (i) (if (< i 64) (lo-u8 (v1 i)) (lo-u8 (v0 (- i 64)))))))]
       [((u16x64 v0) (u16x64 v1))
        (if signed?
            (i8x128 (lambda (i) (if (< i 64) (lo-i8 (v1 i)) (lo-i8 (v0 (- i 64))))))
            (u8x128 (lambda (i) (if (< i 64) (lo-u8 (v1 i)) (lo-u8 (v0 (- i 64)))))))]
       [((i32x32 v0) (i32x32 v1))
        (if signed?
            (i16x64 (lambda (i) (if (< i 32) (lo-i16 (v1 i)) (lo-i16 (v0 (- i 32))))))
            (u16x64 (lambda (i) (if (< i 32) (lo-u16 (v1 i)) (lo-u16 (v0 (- i 32)))))))]
       [((u32x32 v0) (u32x32 v1))
        (if signed?
            (i16x64 (lambda (i) (if (< i 32) (lo-i16 (v1 i)) (lo-i16 (v0 (- i 32))))))
            (u16x64 (lambda (i) (if (< i 32) (lo-u16 (v1 i)) (lo-u16 (v0 (- i 32)))))))])]

    ;; Truncating narrow (interleaved output)
    [(vshuffe-n Vu Vv signed?)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i16x64 v0) (i16x64 v1))
        (if signed?
            (i8x128 (lambda (i) (if (even? i) (lo-i8 (v1 (quotient i 2))) (lo-i8 (v0 (quotient i 2))))))
            (u8x128 (lambda (i) (if (even? i) (lo-u8 (v1 (quotient i 2))) (lo-u8 (v0 (quotient i 2)))))))]
       [((u16x64 v0) (u16x64 v1))
        (if signed?
            (i8x128 (lambda (i) (if (even? i) (lo-i8 (v1 (quotient i 2))) (lo-i8 (v0 (quotient i 2))))))
            (u8x128 (lambda (i) (if (even? i) (lo-u8 (v1 (quotient i 2))) (lo-u8 (v0 (quotient i 2)))))))]
       [((i32x32 v0) (i32x32 v1))
        (if signed?
            (i16x64 (lambda (i) (if (even? i) (lo-i16 (v1 (quotient i 2))) (lo-i16 (v0 (quotient i 2))))))
            (u16x64 (lambda (i) (if (even? i) (lo-u16 (v1 (quotient i 2))) (lo-u16 (v0 (quotient i 2)))))))]
       [((u32x32 v0) (u32x32 v1))
        (if signed?
            (i16x64 (lambda (i) (if (even? i) (lo-i16 (v1 (quotient i 2))) (lo-i16 (v0 (quotient i 2))))))
            (u16x64 (lambda (i) (if (even? i) (lo-u16 (v1 (quotient i 2))) (lo-u16 (v0 (quotient i 2)))))))])]
    
    [(vsxt Vu)
     (let ([sxt16 (lambda (val) (sign-extend (cpp:eval val) (bitvector 16)))] [sxt32 (lambda (val) (zero-extend (cpp:eval val) (bitvector 32)))])
       (destruct (interpret Vu)
         [(i8x128 v0) (i16x64x2 (lambda (i) (int16_t (sxt16 (v0 (* i 2))))) (lambda (i) (int16_t (sxt16 (v0 (+ (* i 2) 1))))))]
         [(i16x64 v0) (i32x32x2 (lambda (i) (int32_t (sxt32 (v0 (* i 2))))) (lambda (i) (int32_t (sxt32 (v0 (+ (* i 2) 1))))))]))]

    [(vzxt Vu)
     (let ([zxt16 (lambda (val) (zero-extend (cpp:eval val) (bitvector 16)))] [zxt32 (lambda (val) (sign-extend (cpp:eval val) (bitvector 32)))])
       (destruct (interpret Vu)
         [(u8x128 v0) (u16x64x2 (lambda (i) (uint16_t (zxt16 (v0 (* i 2))))) (lambda (i) (uint16_t (zxt16 (v0 (+ (* i 2) 1))))))]
         [(u16x64 v0) (u32x32x2 (lambda (i) (uint32_t (zxt32 (v0 (* i 2))))) (lambda (i) (uint32_t (zxt32 (v0 (+ (* i 2) 1))))))]))]

    [(vunpack Vu)
     (let ([sxt16 (lambda (val) (sign-extend (cpp:eval val) (bitvector 16)))]
           [sxt32 (lambda (val) (sign-extend (cpp:eval val) (bitvector 32)))]
           [zxt16 (lambda (val) (zero-extend (cpp:eval val) (bitvector 16)))]
           [zxt32 (lambda (val) (zero-extend (cpp:eval val) (bitvector 32)))])
       (destruct (interpret Vu)
         [(i8x128 v0) (i16x64x2 (lambda (i) (int16_t (sxt16 (v0 i)))) (lambda (i) (int16_t (sxt16 (v0 (+ i 64))))))]
         [(u8x128 v0) (u16x64x2 (lambda (i) (uint16_t (zxt16 (v0 i)))) (lambda (i) (uint16_t (zxt16 (v0 (+ i 64))))))]
         [(i16x64 v0) (i32x32x2 (lambda (i) (int32_t (sxt32 (v0 i)))) (lambda (i) (int32_t (sxt32 (v0 (+ i 32))))))]
         [(u16x64 v0) (u32x32x2 (lambda (i) (uint32_t (zxt32 (v0 i)))) (lambda (i) (uint32_t (zxt32 (v0 (+ i 32))))))]))]
    
    [(reinterpret Vu)
     (destruct (interpret Vu)
       [(i8x128 v0) (u8x128 (lambda (i) (uint8_t (cpp:eval (v0 i)))))]
       [(i16x64 v0) (u16x64 (lambda (i) (uint16_t (cpp:eval (v0 i)))))]
       [(i32x32 v0) (u32x32 (lambda (i) (uint32_t (cpp:eval (v0 i)))))]
       [(u8x128 v0) (i8x128 (lambda (i) (int8_t (cpp:eval (v0 i)))))]
       [(u16x64 v0) (i16x64 (lambda (i) (int16_t (cpp:eval (v0 i)))))]
       [(u32x32 v0) (i32x32 (lambda (i) (int32_t (cpp:eval (v0 i)))))])]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Addition ;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    ;; Non-widening
    [(vadd Vu Vv sat?)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i8x128 lhs) (i8x128 rhs)) (i8x128 (lambda (i) (if sat? (add-sat (lhs i) (rhs i) 'int8) (add (lhs i) (rhs i) 'int8))))]
       [((i16x64 lhs) (i16x64 rhs)) (i16x64 (lambda (i) (if sat? (add-sat (lhs i) (rhs i) 'int16) (add (lhs i) (rhs i) 'int16))))]
       [((i32x32 lhs) (i32x32 rhs)) (i32x32 (lambda (i) (if sat? (add-sat (lhs i) (rhs i) 'int32) (add (lhs i) (rhs i) 'int32))))]

       [((u8x128 lhs) (i8x128 rhs)) (u8x128 (lambda (i) (if sat? (add-sat (lhs i) (rhs i) 'uint8) (add (lhs i) (rhs i) 'uint8))))]
       [((u8x128 lhs) (u8x128 rhs)) (u8x128 (lambda (i) (if sat? (add-sat (lhs i) (rhs i) 'uint8) (add (lhs i) (rhs i) 'uint8))))]
       [((u16x64 lhs) (u16x64 rhs)) (u16x64 (lambda (i) (if sat? (add-sat (lhs i) (rhs i) 'uint16) (add (lhs i) (rhs i) 'uint16))))]
       [((u32x32 lhs) (u32x32 rhs)) (u32x32 (lambda (i) (if sat? (add-sat (lhs i) (rhs i) 'uint32) (add (lhs i) (rhs i) 'uint32))))]
       
       ;; Saturating for signed types is optional
       [((i8x128x2 lhs-v0 lhs-v1) (i8x128x2 rhs-v0 rhs-v1))
        (i8x128x2
         (lambda (i) (if sat? (add-sat (lhs-v0 i) (rhs-v0 i) 'int8) (add (lhs-v0 i) (rhs-v0 i) 'int8)))
         (lambda (i) (if sat? (add-sat (lhs-v1 i) (rhs-v1 i) 'int8) (add (lhs-v1 i) (rhs-v1 i) 'int8))))]
       [((i16x64x2 lhs-v0 lhs-v1) (i16x64x2 rhs-v0 rhs-v1))
        (i16x64x2
         (lambda (i) (if sat? (add-sat (lhs-v0 i) (rhs-v0 i) 'int16) (add (lhs-v0 i) (rhs-v0 i) 'int16)))
         (lambda (i) (if sat? (add-sat (lhs-v1 i) (rhs-v1 i) 'int16) (add (lhs-v1 i) (rhs-v1 i) 'int16))))]
       [((i32x32x2 lhs-v0 lhs-v1) (i32x32x2 rhs-v0 rhs-v1))
        (i32x32x2
         (lambda (i) (if sat? (add-sat (lhs-v0 i) (rhs-v0 i) 'int32) (add (lhs-v0 i) (rhs-v0 i) 'int32)))
         (lambda (i) (if sat? (add-sat (lhs-v1 i) (rhs-v1 i) 'int32) (add (lhs-v1 i) (rhs-v1 i) 'int32))))]

       ;; Always saturate for unsigned types
       [((u8x128x2 lhs-v0 lhs-v1) (u8x128x2 rhs-v0 rhs-v1))
        (u8x128x2
         (lambda (i) (if sat? (add-sat (lhs-v0 i) (rhs-v0 i) 'uint8) (add (lhs-v0 i) (rhs-v0 i) 'uint8)))
         (lambda (i) (if sat? (add-sat (lhs-v1 i) (rhs-v1 i) 'uint8) (add (lhs-v1 i) (rhs-v1 i) 'uint8))))]
       [((u16x64x2 lhs-v0 lhs-v1) (u16x64x2 rhs-v0 rhs-v1))
        (u16x64x2
         (lambda (i) (if sat? (add-sat (lhs-v0 i) (rhs-v0 i) 'uint16) (add (lhs-v0 i) (rhs-v0 i) 'uint16)))
         (lambda (i) (if sat? (add-sat (lhs-v1 i) (rhs-v1 i) 'uint16) (add (lhs-v1 i) (rhs-v1 i) 'uint16))))]
       [((u32x32x2 lhs-v0 lhs-v1) (u32x32x2 rhs-v0 rhs-v1))
        (u32x32x2
         (lambda (i) (if sat? (add-sat (lhs-v0 i) (rhs-v0 i) 'uint32) (add (lhs-v0 i) (rhs-v0 i) 'uint32)))
         (lambda (i) (if sat? (add-sat (lhs-v1 i) (rhs-v1 i) 'uint32) (add (lhs-v1 i) (rhs-v1 i) 'uint32))))])]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Subtraction ;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;; Widening
    [(vsub-w Vu Vv)
     (destruct* ((interpret Vu) (interpret Vv))
       [((u8x128 lhs) (u8x128 rhs))
        (i16x64x2
         (lambda (i) (sub (lhs (* i 2)) (rhs (* i 2)) 'int16))
         (lambda (i) (sub (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int16)))]
       [((u16x64 lhs) (u16x64 rhs))
        (i32x32x2
         (lambda (i) (sub (lhs (* i 2)) (rhs (* i 2)) 'int32))
         (lambda (i) (sub (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int32)))]
       [((i16x64 lhs) (i16x64 rhs))
        (i32x32x2
         (lambda (i) (sub (lhs (* i 2)) (rhs (* i 2)) 'int32))
         (lambda (i) (sub (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int32)))])]

    ;; Non-widening
    [(vsub Vu Vv sat?)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i8x128 lhs) (i8x128 rhs)) (i8x128 (lambda (i) (if sat? (sub-sat (lhs i) (rhs i) 'int8) (sub (lhs i) (rhs i) 'int8))))]
       [((i16x64 lhs) (i16x64 rhs)) (i16x64 (lambda (i) (if sat? (sub-sat (lhs i) (rhs i) 'int16) (sub (lhs i) (rhs i) 'int16))))]
       [((i32x32 lhs) (i32x32 rhs)) (i32x32 (lambda (i) (if sat? (sub-sat (lhs i) (rhs i) 'int32) (sub (lhs i) (rhs i) 'int32))))]

       [((u8x128 lhs) (i8x128 rhs)) (u8x128 (lambda (i) (if sat? (sub-sat (lhs i) (rhs i) 'uint8) (sub (lhs i) (rhs i) 'uint8))))]
       [((u8x128 lhs) (u8x128 rhs)) (u8x128 (lambda (i) (if sat? (sub-sat (lhs i) (rhs i) 'uint8) (sub (lhs i) (rhs i) 'uint8))))]
       [((u16x64 lhs) (u16x64 rhs)) (u16x64 (lambda (i) (if sat? (sub-sat (lhs i) (rhs i) 'uint16) (sub (lhs i) (rhs i) 'uint16))))]
       [((u32x32 lhs) (u32x32 rhs)) (u32x32 (lambda (i) (if sat? (sub-sat (lhs i) (rhs i) 'uint32) (sub (lhs i) (rhs i) 'uint32))))]
       
       ;; Saturating for signed types is optional
       [((i8x128x2 lhs-v0 lhs-v1) (i8x128x2 rhs-v0 rhs-v1))
        (i8x128x2
         (lambda (i) (if sat? (sub-sat (lhs-v0 i) (rhs-v0 i) 'int8) (sub (lhs-v0 i) (rhs-v0 i) 'int8)))
         (lambda (i) (if sat? (sub-sat (lhs-v1 i) (rhs-v1 i) 'int8) (sub (lhs-v1 i) (rhs-v1 i) 'int8))))]
       [((i16x64x2 lhs-v0 lhs-v1) (i16x64x2 rhs-v0 rhs-v1))
        (i16x64x2
         (lambda (i) (if sat? (sub-sat (lhs-v0 i) (rhs-v0 i) 'int16) (sub (lhs-v0 i) (rhs-v0 i) 'int16)))
         (lambda (i) (if sat? (sub-sat (lhs-v1 i) (rhs-v1 i) 'int16) (sub (lhs-v1 i) (rhs-v1 i) 'int16))))]
       [((i32x32x2 lhs-v0 lhs-v1) (i32x32x2 rhs-v0 rhs-v1))
        (i32x32x2
         (lambda (i) (if sat? (sub-sat (lhs-v0 i) (rhs-v0 i) 'int32) (sub (lhs-v0 i) (rhs-v0 i) 'int32)))
         (lambda (i) (if sat? (sub-sat (lhs-v1 i) (rhs-v1 i) 'int32) (sub (lhs-v1 i) (rhs-v1 i) 'int32))))]

       ;; Always saturate for unsigned types
       [((u8x128x2 lhs-v0 lhs-v1) (u8x128x2 rhs-v0 rhs-v1))
        (u8x128x2
         (lambda (i) (if sat? (sub-sat (lhs-v0 i) (rhs-v0 i) 'uint8) (sub (lhs-v0 i) (rhs-v0 i) 'uint8)))
         (lambda (i) (if sat? (sub-sat (lhs-v1 i) (rhs-v1 i) 'uint8) (sub (lhs-v1 i) (rhs-v1 i) 'uint8))))]
       [((u16x64x2 lhs-v0 lhs-v1) (u16x64x2 rhs-v0 rhs-v1))
        (u16x64x2
         (lambda (i) (if sat? (sub-sat (lhs-v0 i) (rhs-v0 i) 'uint16) (sub (lhs-v0 i) (rhs-v0 i) 'uint16)))
         (lambda (i) (if sat? (sub-sat (lhs-v1 i) (rhs-v1 i) 'uint16) (sub (lhs-v1 i) (rhs-v1 i) 'uint16))))]
       [((u32x32x2 lhs-v0 lhs-v1) (u32x32x2 rhs-v0 rhs-v1))
        (u32x32x2
         (lambda (i) (if sat? (sub-sat (lhs-v0 i) (rhs-v0 i) 'uint32) (sub (lhs-v0 i) (rhs-v0 i) 'uint32)))
         (lambda (i) (if sat? (sub-sat (lhs-v1 i) (rhs-v1 i) 'uint32) (sub (lhs-v1 i) (rhs-v1 i) 'uint32))))])]
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;; Multiplication ;;;;;;;;;;;;;;;;;;;;;;;;

    ;; Vector-scalar multiplication (widening)
    [(vmpy Vu Rt)
     (define rhs (interpret Rt))
     (destruct* ((interpret Vu) rhs)
       [((u8x128 lhs) (int8_t v))
        (i16x64x2
         (lambda (i) (multiply (lhs (* i 2)) rhs 'int16))
         (lambda (i) (multiply (lhs (+ (* i 2) 1)) rhs 'int16)))]
       [((u8x128 lhs) (uint8_t v))
        (u16x64x2
         (lambda (i) (multiply (lhs (* i 2)) rhs 'uint16))
         (lambda (i) (multiply (lhs (+ (* i 2) 1)) rhs 'uint16)))]
       [((u16x64 lhs) (uint16_t v))
        (u32x32x2
         (lambda (i) (multiply (lhs (* i 2)) rhs 'uint32))
         (lambda (i) (multiply (lhs (+ (* i 2) 1)) rhs 'uint32)))]
       [((i16x64 lhs) (int16_t v))
        (i32x32x2
         (lambda (i) (multiply (lhs (* i 2)) rhs 'int32))
         (lambda (i) (multiply (lhs (+ (* i 2) 1)) rhs 'int32)))])]
    
    [(vmpy-2 Vu Vv)
     (destruct* ((interpret Vu) (interpret Vu))
       [((i8x128 v0) (i8x128 v1))
        (i16x64x2
         (lambda (i) (multiply (v0 (* i 2)) (v1 (* i 2)) 'int16))
         (lambda (i) (multiply (v0 (+ (* i 2) 1)) (v1 (+ (* i 2) 1)) 'int16)))]
       [((u8x128 v0) (i8x128 v1))
        (i16x64x2
         (lambda (i) (multiply (v0 (* i 2)) (v1 (* i 2)) 'int16))
         (lambda (i) (multiply (v0 (+ (* i 2) 1)) (v1 (+ (* i 2) 1)) 'int16)))]
       [((u8x128 v0) (u8x128 v1))
        (u16x64x2
         (lambda (i) (multiply (v0 (* i 2)) (v1 (* i 2)) 'uint16))
         (lambda (i) (multiply (v0 (+ (* i 2) 1)) (v1 (+ (* i 2) 1)) 'uint16)))]
       [((u16x64 v0) (u16x64 v1))
        (u32x32x2
         (lambda (i) (multiply (v0 (* i 2)) (v1 (* i 2)) 'uint32))
         (lambda (i) (multiply (v0 (+ (* i 2) 1)) (v1 (+ (* i 2) 1)) 'uint32)))]
       [((i16x64 v0) (i16x64 v1))
        (i32x32x2
         (lambda (i) (multiply (v0 (* i 2)) (v1 (* i 2)) 'int32))
         (lambda (i) (multiply (v0 (+ (* i 2) 1)) (v1 (+ (* i 2) 1)) 'int32)))]
       [((i16x64 v0) (u16x64 v1))
        (i32x32x2
         (lambda (i) (multiply (v0 (* i 2)) (v1 (* i 2)) 'int32))
         (lambda (i) (multiply (v0 (+ (* i 2) 1)) (v1 (+ (* i 2) 1)) 'int32)))])]

    ;; Multiply scalar words with even half-words
    [(vmpyie Vu Rt)
     (define w (interpret Rt))
     (destruct (interpret Vu)
      [(i16x64 v0) (i32x32x2 (lambda (i) (multiply w (v0 (* i 2)) 'int32)) (lambda (i) (multiply w (v0 (+ (* i 2) 1)) 'int32)))]
      [(u16x64 v0) (i32x32x2 (lambda (i) (multiply w (v0 (* i 2)) 'int32)) (lambda (i) (multiply w (v0 (+ (* i 2) 1)) 'int32)))])]

    ;; 32x32 Fractional Multiply
    [(vmpy-frac Vu Vv rnd?)
     (destruct* ((interpret Vu) (interpret Vv))
      [((i32x32 v0) (i32x32 v1))
       (i32x32
        (lambda (i)
          (define mpy (multiply (v0 i) (v1 i) 'int64))
          (define rnd (if rnd? (add (int64_t (bv #x40000000 64)) mpy 'int64) mpy))
          (define shift (int64_t (bvashr (cpp:eval rnd) (bv 31 64))))
          (cpp:sat32 shift)))])]
    
    ;; Vector-scalar multiplication (widening) with accumulation
    [(vmpy-acc Vdd Vu Rt)
     (define rhs (interpret Rt))
     (destruct* ((interpret Vdd) (interpret Vu) rhs)
       [((i16x64x2 acc-v0 acc-v1) (u8x128 lhs) (int8_t v))
        (i16x64x2
         (lambda (i) (add (acc-v0 i) (multiply (lhs (* i 2)) rhs 'int16) 'int16))
         (lambda (i) (add (acc-v1 i) (multiply (lhs (+ (* i 2) 1)) rhs 'int16) 'int16)))]
       [((u16x64x2 acc-v0 acc-v1) (u8x128 lhs) (uint8_t v))
        (u16x64x2
         (lambda (i) (add (acc-v0 i) (multiply (lhs (* i 2)) rhs 'int16) 'uint16))
         (lambda (i) (add (acc-v1 i) (multiply (lhs (+ (* i 2) 1)) rhs 'int16) 'uint16)))]
       [((u32x32x2 acc-v0 acc-v1) (u16x64 lhs) (uint16_t v))
        (u32x32x2
         (lambda (i) (add (acc-v0 i) (multiply (lhs (* i 2)) rhs 'int16) 'uint32))
         (lambda (i) (add (acc-v1 i) (multiply (lhs (+ (* i 2) 1)) rhs 'int16) 'uint32)))]
       [((i32x32x2 acc-v0 acc-v1) (i16x64 lhs) (int16_t v))
        (i32x32x2
         (lambda (i) (add-sat (acc-v0 i) (multiply (lhs (* i 2)) rhs 'int32) 'int32))
         (lambda (i) (add-sat (acc-v1 i) (multiply (lhs (+ (* i 2) 1)) rhs 'int32) 'int32)))])]
    
    ;;;;;;;;;;;;;;;;;;;;;;; Fused Multiply Adds ;;;;;;;;;;;;;;;;;;;;;;

    ;; Sum to vector-scalar multiplies
    [(vmpa Vuu Rt)
     (destruct* ((interpret Vuu) (interpret Rt))
       [((u8x128x2 data-v1 data-v0) (Rt2.b w1 w2))
        (i16x64x2
         (lambda (i) (multiply-add (data-v0 (* i 2)) w1 (data-v1 (* i 2)) w2 'int16))
         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) w1 (data-v1 (+ (* i 2) 1)) w2 'int16)))]
       [((u8x128x2 data-v1 data-v0) (Rt2.ub w1 w2))
        (i16x64x2
         (lambda (i) (multiply-add (data-v0 (* i 2)) w1 (data-v1 (* i 2)) w2 'int16))
         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) w1 (data-v1 (+ (* i 2) 1)) w2 'int16)))]
       [((u16x64x2 data-v1 data-v0) (Rt2.b w1 w2))
        (i32x32x2
         (lambda (i) (multiply-add (data-v0 (* i 2)) w1 (data-v1 (* i 2)) w2 'int32))
         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) w1 (data-v1 (+ (* i 2) 1)) w2 'int32)))]
       [((i16x64x2 data-v1 data-v0) (Rt2.b w1 w2))
        (i32x32x2
         (lambda (i) (multiply-add (data-v0 (* i 2)) w1 (data-v1 (* i 2)) w2 'int32))
         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) w1 (data-v1 (+ (* i 2) 1)) w2 'int32)))])]

    ;; Sum two vector-scalar multiplies, accumulate into output register
    [(vmpa-acc Vdd Vuu Rt)
     (destruct* ((interpret Vdd) (interpret Vuu) (interpret Rt))
       [((i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v1 data-v0) (Rt2.b w1 w2))
        (i16x64x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) w1 (data-v1 (* i 2)) w2 (acc-v0 i) 'int16))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) w1 (data-v1 (+ (* i 2) 1)) w2 (acc-v1 i) 'int16)))]
       [((i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v1 data-v0) (Rt2.ub w1 w2))
        (i16x64x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) w1 (data-v1 (* i 2)) w2 (acc-v0 i) 'int16))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) w1 (data-v1 (+ (* i 2) 1)) w2 (acc-v1 i) 'int16)))]
       [((i32x32x2 acc-v0 acc-v1) (u16x64x2 data-v1 data-v0) (Rt2.b w1 w2))
        (i32x32x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) w1 (data-v1 (* i 2)) w2 (acc-v0 i) 'int32))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) w1 (data-v1 (+ (* i 2) 1)) w2 (acc-v1 i) 'int32)))]
       [((i32x32x2 acc-v0 acc-v1) (i16x64x2 data-v1 data-v0) (Rt2.b w1 w2))
        (i32x32x2
         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) w1 (data-v1 (* i 2)) w2 (acc-v0 i) 'int32))
         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) w1 (data-v1 (+ (* i 2) 1)) w2 (acc-v1 i) 'int32)))])]

    ;; Reduce (via sum) two vector-scalar multiplies. Unlike vmpa, this is reduction within the vector.
    ;; Saturates output for some input types
    [(vdmpy Vu Rt)
     (destruct* ((interpret Vu) (interpret Rt))
       [((u8x128 data) (Rt2.b w1 w2)) (i16x64 (lambda (i) (multiply-add (data (* i 2)) w1 (data (+ (* i 2) 1)) w2 'int16)))]
       [((i16x64 data) (Rt2.b w1 w2)) (i32x32 (lambda (i) (multiply-add (data (* i 2)) w1 (data (+ (* i 2) 1)) w2 'int32)))]
       [((i16x64 data) (Rt2.h w1 w2)) (i32x32 (lambda (i) (cpp:sat32 (multiply-add (data (* i 2)) w1 (data (+ (* i 2) 1)) w2 'int64))))]
       [((i16x64 data) (Rt2.uh w1 w2)) (i32x32 (lambda (i) (cpp:sat32 (multiply-add (data (* i 2)) w1 (data (+ (* i 2) 1)) w2 'int64))))])]
    
    ;; Reduce (via sum) two vector-scalar multiplies with accumulation.
    [(vdmpy-acc Vd Vu Rt)
     (destruct* ((interpret Vd) (interpret Vu) (interpret Rt))
       [((i16x64 acc) (u8x128 data) (Rt2.b w1 w2)) (i16x64 (lambda (i) (multiply-add-acc (data (* i 2)) w1 (data (+ (* i 2) 1)) w2 (acc i) 'int16)))]
       [((i32x32 acc) (i16x64 data) (Rt2.b w1 w2)) (i32x32 (lambda (i) (multiply-add-acc (data (* i 2)) w1 (data (+ (* i 2) 1)) w2 (acc i) 'int32)))]
       [((i32x32 acc) (i16x64 data) (Rt2.h w1 w2)) (i32x32 (lambda (i) (cpp:sat32 (multiply-add-acc (data (* i 2)) w1 (data (+ (* i 2) 1)) w2 (acc i) 'int64))))]
       [((i32x32 acc) (i16x64 data) (Rt2.uh w1 w2)) (i32x32 (lambda (i) (cpp:sat32 (multiply-add-acc (data (* i 2)) w1 (data (+ (* i 2) 1)) w2 (acc i) 'int64))))])]

    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window with an additional accumulate
    [(vtmpy Vuu Rt)
     (destruct* ((interpret Vuu) (interpret Rt))
       [((i8x128x2 data-v0 data-v1) (Rt2.b w1 w2))
        (i16x64x2
         (lambda (i)
           (assert (eq? (data-v0 (+ (* i 2) 2)) (data-v1 (* i 2))))
           (multiply-add-acc (data-v0 (* i 2)) w2 (data-v0 (+ (* i 2) 1)) w1 (data-v1 (* i 2)) 'int16))
         (lambda (i)
           (assert (eq? (data-v0 (+ (* i 2) 2)) (data-v1 (* i 2))))
           (multiply-add-acc (data-v0 (+ (* i 2) 1)) w2 (data-v1 (* i 2)) w1 (data-v1 (+ (* i 2) 1)) 'int16)))]
       [((u8x128x2 data-v0 data-v1) (Rt2.b w1 w2))
        (i16x64x2
         (lambda (i)
           (assert (eq? (data-v0 (+ (* i 2) 2)) (data-v1 (* i 2))))
           (multiply-add-acc (data-v0 (* i 2)) w2 (data-v0 (+ (* i 2) 1)) w1 (data-v1 (* i 2)) 'int16))
         (lambda (i)
           (assert (eq? (data-v0 (+ (* i 2) 2)) (data-v1 (* i 2))))
           (multiply-add-acc (data-v0 (+ (* i 2) 1)) w2 (data-v1 (* i 2)) w1 (data-v1 (+ (* i 2) 1)) 'int16)))]
       [((i16x64x2 data-v0 data-v1) (Rt2.b w1 w2))
        (i32x32x2
         (lambda (i)
           (assert (eq? (data-v0 (+ (* i 2) 2)) (data-v1 (* i 2))))
           (multiply-add-acc (data-v0 (* i 2)) w2 (data-v0 (+ (* i 2) 1)) w1 (data-v1 (* i 2)) 'int32))
         (lambda (i)
           (assert (eq? (data-v0 (+ (* i 2) 2)) (data-v1 (* i 2))))
           (multiply-add-acc (data-v0 (+ (* i 2) 1)) w2 (data-v1 (* i 2)) w1 (data-v1 (+ (* i 2) 1)) 'int32)))])]

    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window with an additional accumulate.
    ;; Also accumulate the output into the target register
    [(vtmpy-acc Vdd Vuu Rt)
     (destruct* (list (interpret Vdd) (interpret Vuu) (interpret Rt))
       [(list (i16x64x2 acc-v0 acc-v1) (i8x128x2 data-v0 data-v1) (Rt2.b w1 w2))
        (i16x64x2
         (lambda (i)
           (assert (eq? (data-v0 (+ (* i 2) 2)) (data-v1 (* i 2))))
           (int16_t (bvadd (cpp:eval (acc-v0 i)) (cpp:eval (multiply-add-acc (data-v0 (* i 2)) w2 (data-v0 (+ (* i 2) 1)) w1 (data-v1 (* i 2)) 'int16)))))
         (lambda (i)
           (assert (eq? (data-v0 (+ (* i 2) 2)) (data-v1 (* i 2))))
           (int16_t (bvadd (cpp:eval (acc-v1 i)) (cpp:eval (multiply-add-acc (data-v0 (+ (* i 2) 1)) w2 (data-v1 (* i 2)) w1 (data-v1 (+ (* i 2) 1)) 'int16))))))]
       [(list (i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (Rt2.b w1 w2))
        (i16x64x2
         (lambda (i)
           (assert (eq? (data-v0 (+ (* i 2) 2)) (data-v1 (* i 2))))
           (int16_t (bvadd (cpp:eval (acc-v0 i)) (cpp:eval (multiply-add-acc (data-v0 (* i 2)) w2 (data-v0 (+ (* i 2) 1)) w1 (data-v1 (* i 2)) 'int16)))))
         (lambda (i)
           (assert (eq? (data-v0 (+ (* i 2) 2)) (data-v1 (* i 2))))
           (int16_t (bvadd (cpp:eval (acc-v1 i)) (cpp:eval (multiply-add-acc (data-v0 (+ (* i 2) 1)) w2 (data-v1 (* i 2)) w1 (data-v1 (+ (* i 2) 1)) 'int16))))))]
       [(list (i32x32x2 acc-v0 acc-v1) (i16x64x2 data-v0 data-v1) (Rt2.b w1 w2))
        (i32x32x2
         (lambda (i)
           (assert (eq? (data-v0 (+ (* i 2) 2)) (data-v1 (* i 2))))
           (int32_t (bvadd (cpp:eval (acc-v0 i)) (cpp:eval (multiply-add-acc (data-v0 (* i 2)) w2 (data-v0 (+ (* i 2) 1)) w1 (data-v1 (* i 2)) 'int32)))))
         (lambda (i)
           (assert (eq? (data-v0 (+ (* i 2) 2)) (data-v1 (* i 2))))
           (int32_t (bvadd (cpp:eval (acc-v1 i)) (cpp:eval (multiply-add-acc (data-v0 (+ (* i 2) 1)) w2 (data-v1 (* i 2)) w1 (data-v1 (+ (* i 2) 1)) 'int32))))))])]

    ;; Vector-scalar multiply with 4-wide within-vector reduction
    [(vrmpy Vu Rt)
     (destruct* ((interpret Vu) (interpret Rt))
       [((u8x128 data) (Rt4.ub w1 w2 w3 w4))
        (u32x32
         (lambda (i) (dot-prod4 (data (* i 4)) (data (+ (* i 4) 1)) (data (+ (* i 4) 2)) (data (+ (* i 4) 3)) w1 w2 w3 w4 'uint32)))]
       [((u8x128 data) (Rt4.b w1 w2 w3 w4))
        (i32x32
         (lambda (i) (dot-prod4 (data (* i 4)) (data (+ (* i 4) 1)) (data (+ (* i 4) 2)) (data (+ (* i 4) 3)) w1 w2 w3 w4 'int32)))])]

    ;; Vector-vector multiply with 4-wide within-vector reduction
    [(vrmpy-2 Vu Vv)
     (destruct* ((interpret Vu) (interpret Vv))
       [((u8x128 v0) (u8x128 v1))
        (u32x32
         (lambda (i) (dot-prod4 (v0 (* i 4)) (v0 (+ (* i 4) 1)) (v0 (+ (* i 4) 2)) (v0 (+ (* i 4) 3)) (v1 (* i 4)) (v1 (+ (* i 4) 1)) (v1 (+ (* i 4) 2)) (v1 (+ (* i 4) 3)) 'uint32)))]
       [((i8x128 v0) (i8x128 v1))
        (i32x32
         (lambda (i) (dot-prod4 (v0 (* i 4)) (v0 (+ (* i 4) 1)) (v0 (+ (* i 4) 2)) (v0 (+ (* i 4) 3)) (v1 (* i 4)) (v1 (+ (* i 4) 1)) (v1 (+ (* i 4) 2)) (v1 (+ (* i 4) 3)) 'int32)))]
       [((u8x128 v0) (i8x128 v1))
        (i32x32
         (lambda (i) (dot-prod4 (v0 (* i 4)) (v0 (+ (* i 4) 1)) (v0 (+ (* i 4) 2)) (v0 (+ (* i 4) 3)) (v1 (* i 4)) (v1 (+ (* i 4) 1)) (v1 (+ (* i 4) 2)) (v1 (+ (* i 4) 3)) 'int32)))])]
    
    ;; Vector-scalar multiply with 4-wide within-vector reduction with accumulation
    [(vrmpy-acc Vd Vu Rt)
     (destruct* ((interpret Vd) (interpret Vu) (interpret Rt))
       [((u32x32 acc) (u8x128 data) (Rt4.ub w1 w2 w3 w4))
        (u32x32
         (lambda (i) (uint32_t (bvadd (cpp:eval (acc i)) (cpp:eval (dot-prod4 (data (* i 4)) (data (+ (* i 4) 1)) (data (+ (* i 4) 2)) (data (+ (* i 4) 3)) w1 w2 w3 w4 'uint32))))))]
       [((i32x32 acc) (u8x128 data) (Rt4.b w1 w2 w3 w4))
        (i32x32
         (lambda (i) (uint32_t (bvadd (cpp:eval (acc i)) (cpp:eval (dot-prod4 (data (* i 4)) (data (+ (* i 4) 1)) (data (+ (* i 4) 2)) (data (+ (* i 4) 3)) w1 w2 w3 w4 'int32))))))])]

    ;; Vector-vector multiply with 4-wide within-vector reduction with accumulation
    [(vrmpy-acc-2 Vd Vu Vv)
     (destruct* ((interpret Vd) (interpret Vu) (interpret Vv))
       [((u32x32 acc) (u8x128 v0) (u8x128 v1))
        (u32x32
         (lambda (i) (uint32_t (bvadd (cpp:eval (acc i)) (cpp:eval (dot-prod4 (v0 (* i 4)) (v0 (+ (* i 4) 1)) (v0 (+ (* i 4) 2)) (v0 (+ (* i 4) 3)) (v1 (* i 4)) (v1 (+ (* i 4) 1)) (v1 (+ (* i 4) 2)) (v1 (+ (* i 4) 3)) 'uint32))))))]
       [((i32x32 acc) (i8x128 v0) (i8x128 v1))
        (i32x32
         (lambda (i) (int32_t (bvadd (cpp:eval (acc i)) (cpp:eval (dot-prod4 (v0 (* i 4)) (v0 (+ (* i 4) 1)) (v0 (+ (* i 4) 2)) (v0 (+ (* i 4) 3)) (v1 (* i 4)) (v1 (+ (* i 4) 1)) (v1 (+ (* i 4) 2)) (v1 (+ (* i 4) 3)) 'int32))))))]
       [((i32x32 acc) (u8x128 v0) (i8x128 v1))
        (i32x32
         (lambda (i) (int32_t (bvadd (cpp:eval (acc i)) (cpp:eval (dot-prod4 (v0 (* i 4)) (v0 (+ (* i 4) 1)) (v0 (+ (* i 4) 2)) (v0 (+ (* i 4) 3)) (v1 (* i 4)) (v1 (+ (* i 4) 1)) (v1 (+ (* i 4) 2)) (v1 (+ (* i 4) 3)) 'int32))))))])]

    ;;;;;;;;;;;;;;;;;;;;;;;; Shifts & Rounding ;;;;;;;;;;;;;;;;;;;;;;;
    
    ;; Logical shift right
    [(vlsr Vu Rt)
     (destruct* ((interpret Vu) (interpret Rt))
       [((u8x128 v0) (int8_t n)) (u8x128 (lambda (i) (uint8_t (bvlshr (cpp:eval (v0 i)) (cpp:eval (cpp:cast Rt 'uint8))))))]
       [((u16x64 v0) (int8_t n)) (u16x64 (lambda (i) (uint16_t (bvlshr (cpp:eval (v0 i)) (cpp:eval (cpp:cast Rt 'uint16))))))]
       [((u32x32 v0) (int8_t n)) (u32x32 (lambda (i) (uint16_t (bvlshr (cpp:eval (v0 i)) (cpp:eval (cpp:cast Rt 'uint32))))))])]

    ;; Rounding shift right
    [(vrsr Vu Vv)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (rounding-shift-right (v0 i) (v1 i))))]
       [((i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (rounding-shift-right (v0 i) (v1 i))))]
       [((i32x32 v0) (i32x32 v1)) (i32x32 (lambda (i) (rounding-shift-right (v0 i) (v1 i))))]
       [((u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (rounding-shift-right (v0 i) (v1 i))))]
       [((u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (rounding-shift-right (v0 i) (v1 i))))]
       [((u32x32 v0) (u32x32 v1)) (u32x32 (lambda (i) (rounding-shift-right (v0 i) (v1 i))))])]
    
    ;; Narrowing arithmetic shift-right with (all elems right-shifted by the same value)
    [(vasr-n Vu Vv Rt round? sat? unsigned?)
     (destruct* ((interpret Vu) (interpret Vv) (interpret Rt)) ;(interpret round?) (interpret sat?) (interpret unsigned?)
       [((i16x64 v0) (i16x64 v1) (int8_t n))
        (cond
          [round? (u8x128 (lambda (i) (cpp:satu8 (round-asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
          [else (u8x128 (lambda (i) (cpp:satu8 (asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))])]
       [((u16x64 v0) (u16x64 v1) (int8_t n))
        (cond
          [round? (u8x128 (lambda (i) (cpp:satu8 (round-asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
          [else (u8x128 (lambda (i) (cpp:satu8 (asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))])]
       [((i32x32 v0) (i32x32 v1) (int8_t n))
        (cond
          [(and (not round?) unsigned?) (u16x64 (lambda (i) (cpp:satu16 (asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
          [(and round? unsigned?) (u16x64 (lambda (i) (cpp:satu16 (round-asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
          [(and (not round?) sat? (not unsigned?)) (i16x64 (lambda (i) (cpp:sat16 (asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
          [(and round? (not sat?) (not unsigned?)) (i16x64 (lambda (i) (cpp:cast (round-asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)) 'int16)))]
          [(and round? (not unsigned?)) (i16x64 (lambda (i) (cpp:sat16 (round-asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))])]
       [((u32x32 v0) (u32x32 v1) (int8_t n))
        (cond
          [(not round?) (u16x64 (lambda (i) (cpp:satu16 (asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))]
          [round? (u16x64 (lambda (i) (cpp:satu16 (round-asr (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))) (int8_t n)))))])])]

    [(vshuffo-n Vd Vu signed?)
     (destruct* ((interpret Vd) (interpret Vu))
       [((i16x64 v0) (i16x64 v1))
        (if signed?
            (i8x128 (lambda (i) (if (even? i) (hi-i8 (v1 (quotient i 2))) (hi-i8 (v0 (quotient i 2))))))
            (u8x128 (lambda (i) (if (even? i) (hi-u8 (v1 (quotient i 2))) (hi-u8 (v0 (quotient i 2)))))))]
       [((u16x64 v0) (u16x64 v1))
        (if signed?
            (i8x128 (lambda (i) (if (even? i) (hi-i8 (v1 (quotient i 2))) (hi-i8 (v0 (quotient i 2))))))
            (u8x128 (lambda (i) (if (even? i) (hi-u8 (v1 (quotient i 2))) (hi-u8 (v0 (quotient i 2)))))))]
       [((i32x32 v0) (i32x32 v1))
        (if signed?
            (i16x64 (lambda (i) (if (even? i) (hi-i16 (v1 (quotient i 2))) (hi-i16 (v0 (quotient i 2))))))
            (u16x64 (lambda (i) (if (even? i) (hi-u16 (v1 (quotient i 2))) (hi-u16 (v0 (quotient i 2)))))))]
       [((u32x32 v0) (u32x32 v1))
        (if signed?
            (i16x64 (lambda (i) (if (even? i) (hi-i16 (v1 (quotient i 2))) (hi-i16 (v0 (quotient i 2))))))
            (u16x64 (lambda (i) (if (even? i) (hi-u16 (v1 (quotient i 2))) (hi-u16 (v0 (quotient i 2)))))))])]
    
    ;; Arithmetic shift-right (all elems right-shifted by the same value)
    [(vasr Vu Rt)
     (destruct* ((interpret Vu) (interpret Rt))
       [((i16x64 data) (int8_t n)) (i16x64 (lambda (i) (int16_t (bvashr (cpp:eval (data i)) (cpp:eval (cpp:cast Rt 'int16))))))]
       [((u16x64 data) (int8_t n)) (u16x64 (lambda (i) (int16_t (bvashr (cpp:eval (data i)) (cpp:eval (cpp:cast Rt 'int16))))))]
       [((i32x32 data) (int8_t n)) (i32x32 (lambda (i) (int32_t (bvashr (cpp:eval (data i)) (cpp:eval (cpp:cast Rt 'int32))))))]
       [((u32x32 data) (int8_t n)) (u32x32 (lambda (i) (int32_t (bvashr (cpp:eval (data i)) (cpp:eval (cpp:cast Rt 'int32))))))])]
    
    ;; Rounding
    [(vround Vu Vv signed?)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i16x64 v0) (i16x64 v1))
        (cond
          [signed? (i8x128 (lambda (i) (cpp:sat8 (if (even? i) (round (v1 (quotient i 2))) (round (v0 (quotient i 2)))))))]
          [else (u8x128 (lambda (i) (cpp:satu8 (if (even? i) (round (v1 (quotient i 2))) (round (v0 (quotient i 2)))))))])]
       [((u16x64 v0) (u16x64 v1))
        (u8x128 (lambda (i) (cpp:satu8 (if (even? i) (round (v1 (quotient i 2))) (round (v0 (quotient i 2)))))))]
       [((i32x32 v0) (i32x32 v1))
        (cond
          [signed? (i16x64 (lambda (i) (cpp:sat16 (if (even? i) (round (v1 (quotient i 2))) (round (v0 (quotient i 2)))))))]
          [else (u16x64 (lambda (i) (cpp:satu16 (if (even? i) (round (v1 (quotient i 2))) (round (v0 (quotient i 2)))))))])]
       [((u32x32 v0) (u32x32 v1))
        (u16x64 (lambda (i) (cpp:satu16 (if (even? i) (round (v1 (quotient i 2))) (round (v0 (quotient i 2)))))))])]

    [(vsat Vu Vv)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i16x64 v0) (i16x64 v1)) (u8x128 (lambda (i) (if (even? i) (cpp:satu8 (v1 (quotient i 2))) (cpp:satu8 (v0 (quotient i 2))))))]
       [((u16x64 v0) (u16x64 v1)) (u8x128 (lambda (i) (if (even? i) (cpp:satu8 (v1 (quotient i 2))) (cpp:satu8 (v0 (quotient i 2))))))]
       [((i32x32 v0) (i32x32 v1)) (i16x64 (lambda (i) (if (even? i) (cpp:sat16 (v1 (quotient i 2))) (cpp:sat16 (v0 (quotient i 2))))))]
       [((u32x32 v0) (u32x32 v1)) (u16x64 (lambda (i) (if (even? i) (cpp:satu16 (v1 (quotient i 2))) (cpp:satu16 (v0 (quotient i 2))))))])]
    
    [(vpack Vu Vv signed?)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i16x64 v0) (i16x64 v1))
        (if signed?
            (i8x128 (lambda (i) (if (< i 64) (cpp:sat8 (v1 i)) (cpp:sat8 (v0 (- i 64))))))
            (u8x128 (lambda (i) (if (< i 64) (cpp:satu8 (v1 i)) (cpp:satu8 (v0 (- i 64)))))))]
       [((u16x64 v0) (u16x64 v1))
        (if signed?
            (i8x128 (lambda (i) (if (< i 64) (cpp:sat8 (v1 i)) (cpp:sat8 (v0 (- i 64))))))
            (u8x128 (lambda (i) (if (< i 64) (cpp:satu8 (v1 i)) (cpp:satu8 (v0 (- i 64)))))))]
       [((i32x32 v0) (i32x32 v1))
        (if signed?
            (i16x64 (lambda (i) (if (< i 32) (cpp:sat16 (v1 i)) (cpp:sat16 (v0 (- i 32))))))
            (u16x64 (lambda (i) (if (< i 32) (cpp:satu16 (v1 i)) (cpp:satu16 (v0 (- i 32)))))))]
       [((u32x32 v0) (u32x32 v1))
        (if signed?
            (i16x64 (lambda (i) (if (< i 32) (cpp:sat16 (v1 i)) (cpp:sat16 (v0 (- i 32))))))
            (u16x64 (lambda (i) (if (< i 32) (cpp:satu16 (v1 i)) (cpp:satu16 (v0 (- i 32)))))))])]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;; Min / Max ;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    [(vmax Vu Vv)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (cpp:max8 (v0 i) (v1 i))))]
       [((u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (cpp:maxu8 (v0 i) (v1 i))))]
       [((i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (cpp:max16 (v0 i) (v1 i))))]
       [((u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (cpp:maxu16 (v0 i) (v1 i))))]
       [((i32x32 v0) (i32x32 v1)) (i32x32 (lambda (i) (cpp:max32 (v0 i) (v1 i))))])]

    [(vmin Vu Vv)
     (destruct* ((interpret Vu) (interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (cpp:min8 (v0 i) (v1 i))))]
       [((u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (cpp:minu8 (v0 i) (v1 i))))]
       [((i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (cpp:min16 (v0 i) (v1 i))))]
       [((u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (cpp:minu16 (v0 i) (v1 i))))]
       [((i32x32 v0) (i32x32 v1)) (i32x32 (lambda (i) (cpp:min32 (v0 i) (v1 i))))])]
    
;    ;[(sca-max v1 v2) (max (interpret v1) (interpret v2))]
;
;    [(abstr-sub-expr id vec) (interpret vec)]

;    [(vtranspose Vu Vv Rt)
;     (destruct* ((interpret Vu) (interpret Vv))
;       [((i8x128 v1) (i8x128 v0))
;        (i8x128x2
;         (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
;         (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 64)) (v0 (+ (quotient i 2) 64)))))]
;       [((u8x128 v1) (u8x128 v0))
;        (u8x128x2
;         (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
;         (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 64)) (v0 (+ (quotient i 2) 64)))))]
;       [((i16x64 v1) (i16x64 v0))
;        (i16x64x2
;         (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
;         (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 32)) (v0 (+ (quotient i 2) 32)))))]
;       [((u16x64 v1) (u16x64 v0))
;        (u16x64x2
;         (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
;         (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 32)) (v0 (+ (quotient i 2) 32)))))]
;       [((i32x32 v1) (i32x32 v0))
;        (cond
;          [(eq? Rt 1)
;           (i32x32x2
;            (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
;            (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 16)) (v0 (+ (quotient i 2) 16)))))]
;          [(eq? Rt 2)
;           (i32x32x2
;            (lambda (i) (define q (quotient i 2)) (define m (modulo i 2)) (if (even? q) (v1 (+ q m)) (v0 (+ q m -1))))
;            (lambda (i) (define q (quotient i 2)) (define m (modulo i 2)) (if (even? q) (v1 (+ q m 16)) (v0 (+ q m 16)))))])]
;       [((u32x32 v1) (u32x32 v0))
;        (u32x32x2
;         (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
;         (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 16)) (v0 (+ (quotient i 2) 16)))))])]
;    
;    ;;;;;;;;;;;;;;;;;;;;;;;;; Let Expressions ;;;;;;;;;;;;;;;;;;;;;;;;
;
;    [(let-expr var val body)
;     (define interpreted-val (interpret val))
;     (define (repl-var node)
;       (cond
;         [(eq? node var) interpreted-val]
;         [else node]))
;     (interpret (visit-hvx body repl-var))]
;    
    ;;;;;;;;;;;;;;;; Instructions for data movement ;;;;;;;;;;;;;;;;
;
;    ;; Extract n/2 bits
;    [(vshuffo-n Vd Vu signed?)
;     (match (list (interpret Vd) (interpret Vu))
;       [(list (i16x64 v0) (i16x64 v1))
;        (if signed?
;            (i8x128 (lambda (i) (if (even? i) (i8hi (v1 (quotient i 2))) (i8hi (v0 (quotient i 2))))))
;            (u8x128 (lambda (i) (if (even? i) (u8hi (v1 (quotient i 2))) (u8hi (v0 (quotient i 2)))))))]
;       [(list (u16x64 v0) (u16x64 v1))
;        (if signed?
;            (i8x128 (lambda (i) (if (even? i) (i8hi (v1 (quotient i 2))) (i8hi (v0 (quotient i 2))))))
;            (u8x128 (lambda (i) (if (even? i) (u8hi (v1 (quotient i 2))) (u8hi (v0 (quotient i 2)))))))]
;       [(list (i32x32 v0) (i32x32 v1))
;        (if signed?
;            (i16x64 (lambda (i) (if (even? i) (i16hi (v1 (quotient i 2))) (i16hi (v0 (quotient i 2))))))
;            (u16x64 (lambda (i) (if (even? i) (u16hi (v1 (quotient i 2))) (u16hi (v0 (quotient i 2)))))))]
;       [(list (u32x32 v0) (u32x32 v1))
;        (if signed?
;            (i16x64 (lambda (i) (if (even? i) (i16hi (v1 (quotient i 2))) (i16hi (v0 (quotient i 2))))))
;            (u16x64 (lambda (i) (if (even? i) (u16hi (v1 (quotient i 2))) (u16hi (v0 (quotient i 2)))))))])]
;
;    [(vshuffoe Vu Vv)
;     (match (list (interpret Vu) (interpret Vv))
;       [(list (i8x128 v0) (i8x128 v1)) (i8x128x2 (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))) (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))))]
;       [(list (u8x128 v0) (u8x128 v1)) (u8x128x2 (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))) (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))))]
;       [(list (i16x64 v0) (i16x64 v1)) (i16x64x2 (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))) (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))))]
;       [(list (u16x64 v0) (u16x64 v1)) (u16x64x2 (lambda (i) (if (even? i) (v1 (+ i 1)) (v0 i))) (lambda (i) (if (even? i) (v1 i) (v0 (- i 1)))))])]
;    
;    [(vdeale Vu Vv)
;     (match (list (interpret Vu) (interpret Vv))
;       [(list (u8x128 v0) (u8x128 v1))
;        (u8x128
;         (lambda (i)
;           (cond
;             [(< i 32) (v1 (* i 4))]
;             [(< i 64) (v1 (+ (* (- i 32) 4) 2))]
;             [(< i 96) (v0 (* (- i 64) 4))]
;             [else     (v0 (+ (* (- i 64) 4) 2))])))]
;       [(list (i8x128 v0) (i8x128 v1))
;        (i8x128
;         (lambda (i)
;           (cond
;             [(< i 32) (v1 (* i 4))]
;             [(< i 64) (v1 (+ (* (- i 32) 4) 2))]
;             [(< i 96) (v0 (* (- i 64) 4))]
;             [else     (v0 (+ (* (- i 64) 4) 2))])))])]
;
;    [(vror Vu Rt)
;     (match (interpret Vu)
;       [(i8x128 v0) (i8x128 (lambda (i) (assert (<= 1 Rt 126)) (v0 (let ([idx (+ i Rt)]) (if (< idx 128) idx (- idx 127))))))]
;       [(u8x128 v0) (u8x128 (lambda (i) (assert (<= 1 Rt 126)) (v0 (let ([idx (+ i Rt)]) (if (< idx 128) idx (- idx 127))))))]
;       [(i16x64 v0) (i16x64 (lambda (i) (assert (<= 1 Rt 62)) (v0 (let ([idx (+ i Rt)]) (if (< idx 64) idx (- idx 63))))))]
;       [(u16x64 v0) (u16x64 (lambda (i) (assert (<= 1 Rt 62)) (v0 (let ([idx (+ i Rt)]) (if (< idx 64) idx (- idx 63))))))]
;       [(i32x32 v0) (i32x32 (lambda (i) (assert (<= 1 Rt 30)) (v0 (let ([idx (+ i Rt)]) (if (< idx 32) idx (- idx 31))))))]
;       [(u32x32 v0) (u32x32 (lambda (i) (assert (<= 1 Rt 30)) (v0 (let ([idx (+ i Rt)]) (if (< idx 32) idx (- idx 31))))))])]
;
;    [(valign Vu Vv Rt)
;     (match (list (interpret Vu) (interpret Vv))
;       [(list (i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (assert (not (equal-expr-hvx? Vu Vv))) (assert (<= 1 Rt 127)) (if (< i (- 128 Rt)) (v1 (+ i Rt)) (v0 (modulo (+ i Rt) 128)))))]
;       [(list (u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (assert (not (equal-expr-hvx? Vu Vv))) (assert (<= 1 Rt 127)) (if (< i (- 128 Rt)) (v1 (+ i Rt)) (v0 (modulo (+ i Rt) 128)))))]
;       [(list (i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (assert (not (equal-expr-hvx? Vu Vv))) (assert (<= 1 Rt 63)) (if (< i (- 64 Rt)) (v1 (+ i Rt)) (v0 (modulo (+ i Rt) 64)))))]
;       [(list (u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (assert (not (equal-expr-hvx? Vu Vv))) (assert (<= 1 Rt 63)) (if (< i (- 64 Rt)) (v1 (+ i Rt)) (v0 (modulo (+ i Rt) 64)))))]
;       [(list (i32x32 v0) (i32x32 v1)) (i32x32 (lambda (i) (assert (not (equal-expr-hvx? Vu Vv))) (assert (<= 1 Rt 31)) (if (< i (- 32 Rt)) (v1 (+ i Rt)) (v0 (modulo (+ i Rt) 32)))))]
;       [(list (u32x32 v0) (u32x32 v1)) (u32x32 (lambda (i) (assert (not (equal-expr-hvx? Vu Vv))) (assert (<= 1 Rt 31)) (if (< i (- 32 Rt)) (v1 (+ i Rt)) (v0 (modulo (+ i Rt) 32)))))])]
;    
;    [(vlalign Vu Vv Rt)
;     (match (list (interpret Vu) (interpret Vv))
;       [(list (i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (assert (<= 1 Rt 127)) (if (< i Rt) (v1 (+ (- 128 Rt) i)) (v0 (- i Rt)))))]
;       [(list (u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (assert (<= 1 Rt 127)) (if (< i Rt) (v1 (+ (- 128 Rt) i)) (v0 (- i Rt)))))]
;       [(list (i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (assert (<= 1 Rt 63)) (if (< i Rt) (v1 (+ (- 64 Rt) i)) (v0 (- i Rt)))))]
;       [(list (u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (assert (<= 1 Rt 63)) (if (< i Rt) (v1 (+ (- 64 Rt) i)) (v0 (- i Rt)))))]
;       [(list (i32x32 v0) (i32x32 v1)) (i32x32 (lambda (i) (assert (<= 1 Rt 31)) (if (< i Rt) (v1 (+ (- 32 Rt) i)) (v0 (- i Rt)))))]
;       [(list (u32x32 v0) (u32x32 v1)) (u32x32 (lambda (i) (assert (<= 1 Rt 31)) (if (< i Rt) (v1 (+ (- 32 Rt) i)) (v0 (- i Rt)))))])]
;
;    [(vtranspose Vu Vv Rt)
;     (match (list (interpret Vu) (interpret Vv))
;       ;[(list (i8x128 v0) (i8x128 v1))
;        ;(i8x128x2 (lambda (i) (assert (<= 0 Rt 127)) (if (< i Rt) (v1 (+ (- 128 Rt) i)) (v0 (- i Rt)))))]
;       ;[(list (u8x128 v0) (u8x128 v1))
;        ;(u8x128 (lambda (i) (assert (<= 0 Rt 127)) (if (< i Rt) (v1 (+ (- 128 Rt) i)) (v0 (- i Rt)))))]
;       [(list (i16x64 v0) (i16x64 v1))
;        (cond
;          [(eq? Rt 1)
;           (i16x64x2
;            (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
;            (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 32)) (v0 (+ (quotient i 2) 32)))))]
;          [(eq? Rt 2)
;           (i16x64x2
;            (lambda (i) (if (even? (quotient i 2)) (v1 (+ (quotient i 2) (remainder i 2))) (v0 (+ (quotient i 2) (remainder i 2)))))
;            (lambda (i) (if (even? (quotient i 2)) (v1 (+ (quotient i 2) (remainder i 2) 32)) (v0 (+ (quotient i 2) (remainder i 2) 32)))))])]
;       [(list (u16x64 v0) (u16x64 v1))
;        (cond
;          [(eq? Rt 1)
;           (u16x64x2
;            (lambda (i) (if (even? i) (v1 (quotient i 2)) (v0 (quotient i 2))))
;            (lambda (i) (if (even? i) (v1 (+ (quotient i 2) 32)) (v0 (+ (quotient i 2) 32)))))]
;          [(eq? Rt 2)
;           (u16x64x2
;            (lambda (i) (if (even? (quotient i 2)) (v1 (+ (quotient i 2) (remainder i 2))) (v0 (+ (quotient i 2) (remainder i 2)))))
;            (lambda (i) (if (even? (quotient i 2)) (v1 (+ (quotient i 2) (remainder i 2) 32)) (v0 (+ (quotient i 2) (remainder i 2) 32)))))])]
;       ;[(list (u16x64 v0) (u16x64 v1))
;        ;(u16x64 (lambda (i) (assert (<= 0 Rt 63)) (if (< i Rt) (v1 (+ (- 64 Rt) i)) (v0 (- i Rt)))))]
;       [(list (i32x32 v0) (i32x32 v1))
;        (i32x32 (lambda (i) (assert (<= 0 Rt 31)) (if (< i Rt) (v1 (+ (- 32 Rt) i)) (v0 (- i Rt)))))]
;       ;[(list (u32x32 v0) (u32x32 v1))
;        ;(u32x32 (lambda (i) (assert (<= 0 Rt 31)) (if (< i Rt) (v1 (+ (- 32 Rt) i)) (v0 (- i Rt)))))]
;       )]
;    
;    ;(struct vswap (Qt Vu Vv) #:transparent)
;    ;(struct vmux (Qt Vu Vv) #:transparent)
;    
;    ;(struct vlut (Vu Vv) #:transparent)
;    ;(struct vgather (Rt Mu Vv) #:transparent)
;    
;    ;;;;;;;;; New constructs to abstract away data movement;;;;;;;;;
;
;    ;[(swizzle* vec) (get-from-vec* buff-reads)]
;    [(swizzle vec) (get-from-vec (interpret vec) (hvx-ast-node-id p))]
;    
;    [(gather* buff-reads) (get-from-buf* buff-reads)]
;    [(gather-vec buff-reads) (get-vec-from-buf buff-reads (hvx-ast-node-id p))]
;    [(gather-vecp buff-reads) (get-vecp-from-buf buff-reads (hvx-ast-node-id p))]
;
;    [(serve-vec vec otype opts sols)
;     (otype
;      (lambda (i)
;        (list-ref
;         (filter (lambda(v) (eq? (type v) (elem-type otype))) (list-ref opts curr-cn))
;         ((evaluate vec (list-ref sols curr-cn)) i))))]
;    
;    [(serve-vec-pair v0 v1 otype opts sols)
;     (otype
;      (lambda (i)
;        (list-ref
;         (filter (lambda(v) (eq? (type v) (elem-type otype))) (list-ref opts curr-cn))
;         ((evaluate v0 (list-ref sols curr-cn)) i)))
;      (lambda (i)
;        (list-ref
;         (filter (lambda(v) (eq? (type v) (elem-type otype))) (list-ref opts curr-cn))
;         ((evaluate v1 (list-ref sols curr-cn)) i))))]
;
;    [(??vread buf-opts load-idxs)
;     (define-symbolic i integer?)
;     (define buf (list-ref buf-opts i))
;     (define-symbolic b integer?)
;     (define idx (list-ref (hash-ref load-idxs buf) b))
;     (interpret (vread buf (car idx) (cdr idx)))]
;;     (match elem-type
;;       ['uint8  (u8x128 (lambda (i) ))]
;;       ['uint16 (u16x64 (lambda (i) ))]
;;       ['uint32 (u32x32 (lambda (i) ))]
;;       ['int8   (i8x128 (lambda (i) ))]
;;       ['int16  (i16x64 (lambda (i) ))]
;;       ['int32  (i32x32 (lambda (i) ))])]
;
;    [(??vreadp buf-opts load-idxs)
;     (define-symbolic i integer?)
;     (define buf (list-ref buf-opts i))
;     (define-symbolic b integer?)
;     (define idx (list-ref (hash-ref load-idxs buf) b))
;     (interpret (vreadp buf (car idx) (cdr idx)))]
;    
;    ;;;;;;;;;;;;;;;; Instructions for data processing ;;;;;;;;;;;;;;;;

;    ;; Addition (widening)
;    [(vadd-w Vu Vv)
;     (match (list (interpret Vu) (interpret Vv))
;       [(list (u8x128 lhs) (u8x128 rhs))
;        (i16x64x2
;         (lambda (i) (add (lhs (* i 2)) (rhs (* i 2)) 'int16))
;         (lambda (i) (add (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int16)))]
;       [(list (u16x64 lhs) (u16x64 rhs))
;        (i32x32x2
;         (lambda (i) (add (lhs (* i 2)) (rhs (* i 2)) 'int32))
;         (lambda (i) (add (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int32)))]
;       [(list (i16x64 lhs) (i16x64 rhs))
;        (i32x32x2
;         (lambda (i) (add (lhs (* i 2)) (rhs (* i 2)) 'int32))
;         (lambda (i) (add (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int32)))])]
;       
;    ;; Addition (widening) with accumulation
;    [(vadd-w-acc Vdd Vu Vv)
;     (match (list (interpret Vdd) (interpret Vu) (interpret Vv))
;       [(list (i16x64x2 acc-v0 acc-v1) (u8x128 lhs) (u8x128 rhs))
;        (i16x64x2
;         (lambda (i) (add-acc (acc-v0 i) (lhs (* i 2)) (rhs (* i 2)) 'int16))
;         (lambda (i) (add-acc (acc-v1 i) (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int16)))]
;       [(list (i32x32x2 acc-v0 acc-v1) (u16x64 lhs) (u16x64 rhs))
;        (i32x32x2
;         (lambda (i) (add-acc (acc-v0 i) (lhs (* i 2)) (rhs (* i 2)) 'int32))
;         (lambda (i) (add-acc (acc-v1 i) (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int32)))]
;       [(list (i32x32x2 acc-v0 acc-v1) (i16x64 lhs) (i16x64 rhs))
;        (i32x32x2
;         (lambda (i) (add-acc (acc-v0 i) (lhs (* i 2)) (rhs (* i 2)) 'int32))
;         (lambda (i) (add-acc (acc-v1 i) (lhs (+ (* i 2) 1)) (rhs (+ (* i 2) 1)) 'int32)))])]
;
;    ;; Vector-scalar multiplication (non-widening)
;    [(vmpyi Vu Rt)
;     (define rhs (interpret Rt))
;     (match (list (interpret Vu) rhs)
;       [(list (i16x64 lhs) (int8_t v)) (i16x64 (lambda (i) (multiply (lhs i) rhs 'int16)))]
;       [(list (i32x32 lhs) (int8_t v)) (i32x32 (lambda (i) (multiply (lhs i) rhs 'int32)))]
;       [(list (i32x32 lhs) (uint8_t v)) (i32x32 (lambda (i) (multiply (lhs i) rhs 'int32)))]
;       [(list (i32x32 lhs) (int16_t v)) (i32x32 (lambda (i) (multiply (lhs i) rhs 'int32)))])]
;
;    ;; Vector-scalar multiplication (non-widening) -- ignores upper16 bits
;    [(vmpye Vu Rt)
;     (define rhs (interpret Rt))
;     (match (list (interpret Vu) rhs)
;       [(list (i32x32 lhs) (uint16_t v)) (u32x32 (lambda (i) (uint32_t (bvmul (lsb16 (lhs i)) (cpp:eval (cpp:cast rhs 'uint32))))))]
;       [(list (u32x32 lhs) (uint16_t v)) (u32x32 (lambda (i) (uint32_t (bvmul (lsb16 (lhs i)) (cpp:eval (cpp:cast rhs 'uint32))))))])]
;
;
;    ;; Vector-scalar multiplication (non-widening) with accumulation
;    [(vmpyi-acc Vd Vu Rt)
;     (define rhs (interpret Rt))
;     (match (list (interpret Vd) (interpret Vu) rhs)
;       [(list (i16x64 acc) (i16x64 lhs) (int8_t v)) (i16x64 (lambda (i) (int16_t (bvadd (cpp:eval (acc i)) (cpp:eval (multiply (lhs i) rhs 'int16))))))]
;       [(list (i32x32 acc) (i32x32 lhs) (int8_t v)) (i32x32 (lambda (i) (int32_t (bvadd (cpp:eval (acc i)) (cpp:eval (multiply (lhs i) rhs 'int32))))))]
;       [(list (i32x32 acc) (i32x32 lhs) (uint8_t v)) (i32x32 (lambda (i) (int32_t (bvadd (cpp:eval (acc i)) (cpp:eval (multiply (lhs i) rhs 'int32))))))]
;       [(list (i32x32 acc) (i32x32 lhs) (int16_t v)) (i32x32 (lambda (i) (int32_t (bvadd (cpp:eval (acc i)) (cpp:eval (multiply (lhs i) rhs 'int32))))))])]
;
;    ;; Vector-scalar multiplication (non-widening) with accumulation -- ignores upper16 bits
;    [(vmpye-acc Vd Vu Rt)
;     (define rhs (interpret Rt))
;     (match (list (interpret Vd) (interpret Vu) rhs)
;       [(list (u32x32 acc) (i32x32 lhs) (uint16_t v)) (u32x32 (lambda (i) (uint32_t (bvadd (cpp:eval (acc i)) (bvmul (lsb16 (lhs i)) (cpp:eval (cpp:cast rhs 'uint32)))))))]
;       [(list (u32x32 acc) (u32x32 lhs) (uint16_t v)) (u32x32 (lambda (i) (uint32_t (bvadd (cpp:eval (acc i)) (bvmul (lsb16 (lhs i)) (cpp:eval (cpp:cast rhs 'uint32)))))))])]
;    
;    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window
;    [(vdmpy-sw Vuu Rt)
;     (match (list (interpret Vuu) (interpret Rt))
;       [(list (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i16x64x2
;         (lambda (i) (multiply-add (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) 'int16))
;         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) 'int16)))]
;       [(list (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i32x32x2
;         (lambda (i) (multiply-add (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) 'int32))
;         (lambda (i) (multiply-add (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) 'int32)))])]
;
;    ;; Reduce (via sum) two vector-scalar multiplies in a sliding window with accumulate
;    [(vdmpy-sw-acc Vdd Vuu Rt)
;     (match (list (interpret Vdd) (interpret Vuu) (interpret Rt))
;       [(list (i16x64x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i16x64x2
;         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (acc-v0 i) 'int16))
;         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v1 i) 'int16)))]
;       [(list (i32x32x2 acc-v0 acc-v1) (i16x64x2 data-v0 data-v1) (cons (int8_t w1) (int8_t w2)))
;        (i32x32x2
;         (lambda (i) (multiply-add-acc (data-v0 (* i 2)) (int8_t w1) (data-v0 (+ (* i 2) 1)) (int8_t w2) (acc-v0 i) 'int32))
;         (lambda (i) (multiply-add-acc (data-v0 (+ (* i 2) 1)) (int8_t w1) (data-v1 (* i 2)) (int8_t w2) (acc-v1 i) 'int32)))])]
;    
;    ;; Vector-scalar multiply with 4-wide within-vector reduction (partial sliding window)
;    [(vrmpy-p Vuu Rt ub)
;     (match (list (interpret Vuu) (interpret Rt) (interpret ub))
;       [(list (u8x128x2 data-v0 data-v1) (list (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4)) #t)
;        (u32x32x2
;         (lambda (i) (dot-prod4 (data-v0 (* i 4)) (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32))
;         (lambda (i) (dot-prod4 (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32)))]
;       [(list (u8x128x2 data-v0 data-v1) (list (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4)) #t)
;        (i32x32x2
;         (lambda (i) (dot-prod4 (data-v0 (* i 4)) (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32))
;         (lambda (i) (dot-prod4 (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32)))]
;       [(list (u8x128x2 data-v0 data-v1) (list (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4)) #f)
;        (u32x32x2
;         (lambda (i) (dot-prod4 (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32))
;         (lambda (i) (dot-prod4 (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (data-v1 (+ (* i 4) 2)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32)))]
;       [(list (u8x128x2 data-v0 data-v1) (list (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4)) #f)
;        (i32x32x2
;         (lambda (i) (dot-prod4 (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32))
;         (lambda (i) (dot-prod4 (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (data-v1 (+ (* i 4) 2)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32)))])]
;
;    ;; Vector-scalar multiply with 4-wide within-vector reduction (partial sliding window)
;    [(vrmpy-p-acc Vdd Vuu Rt ub)
;     (match (list (interpret Vdd) (interpret Vuu) (interpret Rt) (interpret ub))
;       [(list (u32x32x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (list (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4)) #t)
;        (u32x32x2
;         (lambda (i) (add (acc-v0 i) (dot-prod4 (data-v0 (* i 4)) (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32) 'uint32))
;         (lambda (i) (add (acc-v1 i) (dot-prod4 (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32) 'uint32)))]
;       [(list (i32x32x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (list (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4)) #t)
;        (i32x32x2
;         (lambda (i) (add (acc-v0 i) (dot-prod4 (data-v0 (* i 4)) (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32) 'int32))
;         (lambda (i) (add (acc-v1 i) (dot-prod4 (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32) 'int32)))]
;       [(list (u32x32x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (list (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4)) #f)
;        (u32x32x2
;         (lambda (i) (add (acc-v0 i) (dot-prod4 (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32) 'uint32))
;         (lambda (i) (add (acc-v1 i) (dot-prod4 (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (data-v1 (+ (* i 4) 2)) (uint8_t w1) (uint8_t w2) (uint8_t w3) (uint8_t w4) 'uint32) 'uint32)))]
;       [(list (i32x32x2 acc-v0 acc-v1) (u8x128x2 data-v0 data-v1) (list (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4)) #f)
;        (i32x32x2
;         (lambda (i) (add (acc-v0 i) (dot-prod4 (data-v0 (+ (* i 4) 1)) (data-v0 (+ (* i 4) 2)) (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32) 'int32))
;         (lambda (i) (add (acc-v1 i) (dot-prod4 (data-v0 (+ (* i 4) 3)) (data-v1 (* i 4)) (data-v1 (+ (* i 4) 1)) (data-v1 (+ (* i 4) 2)) (int8_t w1) (int8_t w2) (int8_t w3) (int8_t w4) 'int32) 'int32)))])]
;
;    ;; Shift-left (all elems left-shifted by the same value)
;    [(vasl Vu Rt)
;     (match (list (interpret Vu) (interpret Rt))
;       [(list (i16x64 data) (int8_t n)) (i16x64 (lambda (i) (int16_t (bvshl (cpp:eval (data i)) n))))]
;       [(list (i32x32 data) (int8_t n)) (i32x32 (lambda (i) (int32_t (bvshl (cpp:eval (data i)) n))))])]
;    
;    ;; Arithmetic shift-right (all elems right-shifted by the same value)
;    [(vasr Vu Rt)
;     (match (list (interpret Vu) (interpret Rt))
;       [(list (i16x64 data) (int8_t n)) (i16x64 (lambda (i) (int16_t (bvashr (cpp:eval (data i)) n))))]
;       [(list (i32x32 data) (int8_t n)) (i32x32 (lambda (i) (int32_t (bvashr (cpp:eval (data i)) n))))])]
;
;    ;; Arithmetic shift-right with (all elems right-shifted by the same value) with accumulation
;    [(vasr-acc Vd Vu Rt)
;     (match (list (interpret Vd) (interpret Vu) (interpret Rt))
;       [(list (i16x64 acc) (i16x64 data) (int8_t n)) (i16x64 (lambda (i) (int16_t (bvadd (cpp:eval (acc i)) (bvashr (cpp:eval (data i)) n)))))]
;       [(list (i32x32 acc) (i32x32 data) (int8_t n)) (i32x32 (lambda (i) (int32_t (bvadd (cpp:eval (acc i)) (bvashr (cpp:eval (data i)) n)))))])]
;
;    [(vpacke Vu Vv)
;     (match (list (interpret Vu) (interpret Vv))
;       [(list (i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (if (< i 64) (v1 (* i 2)) (v0 (* 2 (- i 64))))))]
;       [(list (u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (if (< i 64) (v1 (* i 2)) (v0 (* 2 (- i 64))))))]
;       [(list (i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (if (< i 32) (v1 (* i 2)) (v0 (* 2 (- i 32))))))]
;       [(list (u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (if (< i 32) (v1 (* i 2)) (v0 (* 2 (- i 32))))))])]
;
;    [(vpacko Vu Vv)
;     (match (list (interpret Vu) (interpret Vv))
;       [(list (i8x128 v0) (i8x128 v1)) (i8x128 (lambda (i) (if (< i 64) (v1 (+ (* i 2) 1)) (v0 (+ (* 2 (- i 64)) 1)))))]
;       [(list (u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (if (< i 64) (v1 (+ (* i 2) 1)) (v0 (+ (* 2 (- i 64)) 1)))))]
;       [(list (i16x64 v0) (i16x64 v1)) (i16x64 (lambda (i) (if (< i 32) (v1 (+ (* i 2) 1)) (v0 (+ (* 2 (- i 32)) 1)))))]
;       [(list (u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (if (< i 32) (v1 (+ (* i 2) 1)) (v0 (+ (* 2 (- i 32)) 1)))))])]
;    
;    [(vpacko-n Vu Vv signed?)
;     (match (list (interpret Vu) (interpret Vv) (interpret signed?))
;       [(list (i16x64 v0) (i16x64 v1) #t) (i8x128 (lambda (i) (if (< i 64) (i8hi (v1 i)) (i8hi (v0 (- i 64))))))]
;       [(list (i16x64 v0) (i16x64 v1) #f) (u8x128 (lambda (i) (if (< i 64) (u8hi (v1 i)) (u8hi (v0 (- i 64))))))]
;       [(list (u16x64 v0) (u16x64 v1) #t) (i8x128 (lambda (i) (if (< i 64) (i8hi (v1 i)) (i8hi (v0 (- i 64))))))]
;       [(list (u16x64 v0) (u16x64 v1) #f) (u8x128 (lambda (i) (if (< i 64) (u8hi (v1 i)) (u8hi (v0 (- i 64))))))]
;       [(list (i32x32 v0) (i32x32 v1) #t) (i16x64 (lambda (i) (if (< i 32) (i16hi (v1 i)) (i16hi (v0 (- i 32))))))]
;       [(list (i32x32 v0) (i32x32 v1) #f) (u16x64 (lambda (i) (if (< i 32) (u16hi (v1 i)) (u16hi (v0 (- i 32))))))]
;       [(list (u32x32 v0) (u32x32 v1) #t) (i16x64 (lambda (i) (if (< i 32) (i16hi (v1 i)) (i16hi (v0 (- i 32))))))]
;       [(list (u32x32 v0) (u32x32 v1) #f) (u16x64 (lambda (i) (if (< i 32) (u16hi (v1 i)) (u16hi (v0 (- i 32))))))])]
;    
;    ;; ---- Everything below this line in the interpreter is tentative ----
;    
;    ;; Element-wise average of two vectors (optional +1 rounding)
;    [(vavg Vu Vv rnd?)
;     (lambda (i)
;       (define lhs ((interpret Vu) i))
;       (define rhs ((interpret Vv) i))
;       (cond
;         [(and (int8_t? lhs) (int8_t? rhs)) (if rnd? (average-round lhs rhs 'int8) (average lhs rhs 'int8))]
;         [(and (int16_t? lhs) (int16_t? rhs)) (if rnd? (average-round lhs rhs 'int16) (average lhs rhs 'int16))]
;         [(and (int32_t? lhs) (int32_t? rhs)) (if rnd? (average-round lhs rhs 'int32) (average lhs rhs 'int32))]
;         [(and (uint8_t? lhs) (uint8_t? rhs)) (if rnd? (average-round lhs rhs 'uint8) (average lhs rhs 'uint8))]
;         [(and (uint16_t? lhs) (uint16_t? rhs)) (if rnd? (average-round lhs rhs 'uint16) (average lhs rhs 'uint16))]
;         [(and (uint32_t? lhs) (uint32_t? rhs)) (if rnd? (average-round lhs rhs 'uint32) (average lhs rhs 'uint32))]))]
;
;    ;; Subtract and divide by 2
;    [(vnavg Vu Vv)
;     (lambda (i)
;       (define lhs ((interpret Vu) i))
;       (define rhs ((interpret Vv) i))
;       (cond
;         [(and (uint8_t? lhs) (uint8_t? rhs)) (naverage lhs rhs 'int8)]
;         [(and (int8_t? lhs) (int8_t? rhs)) (naverage lhs rhs 'int8)]
;         [(and (int16_t? lhs) (int16_t? rhs)) (naverage lhs rhs 'int16)]
;         [(and (int32_t? lhs) (int32_t? rhs)) (naverage lhs rhs 'int32)]))]
;
;    [(vabs Vu sat?)
;     (match (interpret Vu)
;       [(i8x128 v0) (i8x128 (lambda (i) (absolute (v0 i) sat?)))]
;       [(i16x64 v0) (i16x64 (lambda (i) (absolute (v0 i) sat?)))]
;       [(i32x32 v0) (i32x32 (lambda (i) (absolute (v0 i) sat?)))])]
;
;    [(vabsdiff Vu Vv)
;     (match (list (interpret Vu) (interpret Vv))
;       [(list (u8x128 v0) (u8x128 v1)) (u8x128 (lambda (i) (absolute-diff (v0 i) (v1 i))))]
;       [(list (i16x64 v0) (i16x64 v1)) (u16x64 (lambda (i) (absolute-diff (v0 i) (v1 i))))]
;       [(list (u16x64 v0) (u16x64 v1)) (u16x64 (lambda (i) (absolute-diff (v0 i) (v1 i))))]
;       [(list (i32x32 v0) (i32x32 v1)) (u32x32 (lambda (i) (absolute-diff (v0 i) (v1 i))))])]
    
    [_ p]))

;; Define commonly occuring scalar-computation patterns as funcs for re-usability and
;; easier maintainability
(define (lo-i8 val) (int8_t (extract 7 0 (cpp:eval val))))
(define (lo-u8 val) (uint8_t (extract 7 0 (cpp:eval val))))
(define (lo-i16 val) (int16_t (extract 15 0 (cpp:eval val))))
(define (lo-u16 val) (uint16_t (extract 15 0 (cpp:eval val))))

(define (hi-i8 val) (int8_t (extract 15 8 (cpp:eval val))))
(define (hi-u8 val) (uint8_t (extract 15 8 (cpp:eval val))))
(define (hi-i16 val) (int16_t (extract 31 16 (cpp:eval val))))
(define (hi-u16 val) (uint16_t (extract 31 16 (cpp:eval val))))

(define (add lhs rhs outT)
  (mk-cpp-expr (bvadd (cpp:eval (cpp:cast lhs outT)) (cpp:eval (cpp:cast rhs outT))) outT))

;(define (add-acc acc lhs rhs outT)
;  (mk-cpp-expr (bvadd (cpp:eval acc) (cpp:eval (cpp:cast lhs outT)) (cpp:eval (cpp:cast rhs outT))) outT))

(define (add-sat lhs rhs outT)
  (cond
    [(eq? outT 'int8) (cpp:sat8 (add lhs rhs 'int16))]
    [(eq? outT 'int16) (cpp:sat16 (add lhs rhs 'int32))]
    [(eq? outT 'int32) (cpp:sat32 (add lhs rhs 'int64))]
    [(eq? outT 'uint8) (cpp:satu8 (add lhs rhs 'int16))]
    [(eq? outT 'uint16) (cpp:satu16 (add lhs rhs 'int32))]
    [(eq? outT 'uint32) (cpp:satu32 (add lhs rhs 'int64))]))

(define (sub lhs rhs outT)
  (mk-cpp-expr (bvsub (cpp:eval (cpp:cast lhs outT)) (cpp:eval (cpp:cast rhs outT))) outT))

(define (sub-sat lhs rhs outT)
  (cond
    [(eq? outT 'int8) (cpp:sat8 (sub lhs rhs 'int16))]
    [(eq? outT 'int16) (cpp:sat16 (sub lhs rhs 'int32))]
    [(eq? outT 'int32) (cpp:sat32 (sub lhs rhs 'int64))]
    [(eq? outT 'uint8) (cpp:satu8 (sub lhs rhs 'int16))]
    [(eq? outT 'uint16) (cpp:satu16 (sub lhs rhs 'int32))]
    [(eq? outT 'uint32) (cpp:satu32 (sub lhs rhs 'int64))]))

(define (multiply lhs rhs outT)
  (mk-cpp-expr (bvmul (cpp:eval (cpp:cast lhs outT)) (cpp:eval (cpp:cast rhs outT))) outT))
  
(define (multiply-add lhs w1 rhs w2 outT)
  (mk-cpp-expr
   (bvadd
    (bvmul (cpp:eval (cpp:cast lhs outT)) (cpp:eval (cpp:cast w1 outT)))
    (bvmul (cpp:eval (cpp:cast rhs outT)) (cpp:eval (cpp:cast w2 outT))))
   outT))

(define (multiply-add-acc lhs w1 rhs w2 acc outT)
  (mk-cpp-expr
   (bvadd
    (cpp:eval (cpp:cast acc outT))
    (bvmul (cpp:eval (cpp:cast lhs outT)) (cpp:eval (cpp:cast w1 outT)))
    (bvmul (cpp:eval (cpp:cast rhs outT)) (cpp:eval (cpp:cast w2 outT))))
   outT))

(define (dot-prod4 x1 x2 x3 x4 w1 w2 w3 w4 outT)
  (mk-cpp-expr
   (bvadd
    (bvmul (cpp:eval (cpp:cast x1 outT)) (cpp:eval (cpp:cast w1 outT)))
    (bvmul (cpp:eval (cpp:cast x2 outT)) (cpp:eval (cpp:cast w2 outT)))
    (bvmul (cpp:eval (cpp:cast x3 outT)) (cpp:eval (cpp:cast w3 outT)))
    (bvmul (cpp:eval (cpp:cast x4 outT)) (cpp:eval (cpp:cast w4 outT))))
   outT))

;(define (average lhs rhs outT)
;  (cond
;    [(eq? outT 'int8) (mk-typed-expr (bvashr (bvadd (cpp:eval lhs) (cpp:eval rhs)) (bv 1 8)) outT)]
;    [(eq? outT 'int16) (mk-typed-expr (bvashr (bvadd (cpp:eval lhs) (cpp:eval rhs)) (bv 1 16)) outT)]
;    [(eq? outT 'int32) (mk-typed-expr (bvashr (bvadd (cpp:eval lhs) (cpp:eval rhs)) (bv 1 32)) outT)]
;    [(eq? outT 'uint8) (mk-typed-expr (bvlshr (bvadd (cpp:eval lhs) (cpp:eval rhs)) (bv 1 8)) outT)]
;    [(eq? outT 'uint16) (mk-typed-expr (bvlshr (bvadd (cpp:eval lhs) (cpp:eval rhs)) (bv 1 16)) outT)]
;    [(eq? outT 'uint32) (mk-typed-expr (bvlshr (bvadd (cpp:eval lhs) (cpp:eval rhs)) (bv 1 32)) outT)]))
;
;(define (average-round lhs rhs outT)
;  (cond
;    [(eq? outT 'int8) (mk-typed-expr (bvashr (bvadd (cpp:eval lhs) (cpp:eval rhs) (bv 1 8)) (bv 1 8)) outT)]
;    [(eq? outT 'int16) (mk-typed-expr (bvashr (bvadd (cpp:eval lhs) (cpp:eval rhs) (bv 1 16)) (bv 1 16)) outT)]
;    [(eq? outT 'int32) (mk-typed-expr (bvashr (bvadd (cpp:eval lhs) (cpp:eval rhs) (bv 1 32)) (bv 1 32)) outT)]
;    [(eq? outT 'uint8) (mk-typed-expr (bvlshr (bvadd (cpp:eval lhs) (cpp:eval rhs) (bv 1 8)) (bv 1 8)) outT)]
;    [(eq? outT 'uint16) (mk-typed-expr (bvlshr (bvadd (cpp:eval lhs) (cpp:eval rhs) (bv 1 16)) (bv 1 16)) outT)]
;    [(eq? outT 'uint32) (mk-typed-expr (bvlshr (bvadd (cpp:eval lhs) (cpp:eval rhs) (bv 1 32)) (bv 1 32)) outT)]))
;
;(define (naverage lhs rhs outT)
;  (cond
;    [(eq? outT 'uint8) (mk-typed-expr (bvashr (bvsub (cpp:eval lhs) (cpp:eval rhs)) (bv 1 8)) outT)]
;    [(eq? outT 'int8) (mk-typed-expr (bvashr (bvsub (cpp:eval lhs) (cpp:eval rhs)) (bv 1 8)) outT)]
;    [(eq? outT 'int16) (mk-typed-expr (bvashr (bvsub (cpp:eval lhs) (cpp:eval rhs)) (bv 1 16)) outT)]
;    [(eq? outT 'int32) (mk-typed-expr (bvashr (bvsub (cpp:eval lhs) (cpp:eval rhs)) (bv 1 32)) outT)]))
;
(define (round v)
  (destruct v
    [(int16_t val) (int32_t (bvashr (bvadd (cpp:eval (cpp:cast v 'int32)) (bv #x80 32)) (bv 8 32)))]
    [(uint16_t val) (uint32_t (bvlshr (bvadd (cpp:eval (cpp:cast v 'uint32)) (bv #x80 32)) (bv 8 32)))]
    [(int32_t val) (int64_t (bvashr (bvadd (cpp:eval (cpp:cast v 'int64)) (bv #x8000 64)) (bv 16 64)))]
    [(uint32_t val) (uint64_t (bvlshr (bvadd (cpp:eval (cpp:cast v 'uint64)) (bv #x8000 64)) (bv 16 64)))]))

(define (asr val n)
  (destruct val
    [(int16_t v) (int16_t (bvashr v (cpp:eval (cpp:cast n 'int16))))]
    [(int32_t v) (int32_t (bvashr v (cpp:eval (cpp:cast n 'int32))))]
    [(int64_t v) (int64_t (bvashr v (cpp:eval (cpp:cast n 'int64))))]
    [(uint16_t v) (uint16_t (bvashr v (cpp:eval (cpp:cast n 'int16))))]
    [(uint32_t v) (uint32_t (bvashr v (cpp:eval (cpp:cast n 'int32))))]))

(define (lsr val n)
  (destruct val
    [(uint8_t v) (uint8_t (bvlshr v (cpp:eval (cpp:cast n 'uint8))))]
    [(uint16_t v) (uint16_t (bvlshr v (cpp:eval (cpp:cast n 'uint16))))]
    [(uint32_t v) (uint32_t (bvlshr v (cpp:eval (cpp:cast n 'uint32))))]
    [(uint64_t v) (uint64_t (bvlshr v (cpp:eval (cpp:cast n 'uint64))))]))

(define (round-asr val n)
  (destruct val
    [(int16_t v)
     (define r (cpp:eval (cpp:cast n 'int16)))
     (cpp:cast (asr (add val (int16_t (bvshl (bv 1 16) (bvsub r (bv 1 16)))) 'int32) n) 'int16)]
    [(int32_t v)
     (define r (cpp:eval (cpp:cast n 'int32)))
     (cpp:cast (asr (add val (int32_t (bvshl (bv 1 32) (bvsub r (bv 1 32)))) 'int64) n) 'int32)]
    [(uint16_t v)
     (define r (cpp:eval (cpp:cast n 'int16)))
     (cpp:cast (asr (add val (int16_t (bvshl (bv 1 16) (bvsub r (bv 1 16)))) 'uint32) n) 'uint16)]
    [(uint32_t v)
     (define r (cpp:eval (cpp:cast n 'int32)))
     (cpp:cast (asr (add val (int32_t (bvshl (bv 1 32) (bvsub r (bv 1 32)))) 'uint64) n) 'uint32)]))

(define (rounding-shift-right val n)
  (define shift (cpp:eval n))
  (destruct val
    [(int8_t v)
     (cpp:cast (asr (add val (int8_t (bvshl (bv 1 8) (bvsub (cpp:eval n) (bv 1 8)))) 'int16) n) 'int8)]
    [(int16_t v)
     (cpp:cast (asr (add val (int16_t (bvshl (bv 1 16) (bvsub (cpp:eval n) (bv 1 16)))) 'int32) n) 'int16)]
    [(int32_t v)
     (define shr_1 (bvashr v shift))
     (define shr_2 (bvashr v (bvsub shift (bv 1 32))))
     (define rnd (bvand shr_2 (if (bvslt (bv 0 32) shift) (bv 1 32) (bv 0 32))))
     (int32_t (bvadd shr_1 rnd))
     ;(cpp:cast (asr (add val (int32_t (bvshl (bv 1 32) (bvsub (cpp:eval n) (bv 1 32)))) 'int64) n) 'int32)
     ]
    [(uint8_t v)
     (cpp:cast (lsr (add val (uint8_t (bvshl (bv 1 8) (bvsub (cpp:eval n) (bv 1 8)))) 'uint16) n) 'uint8)]
    [(uint16_t v)
     (cpp:cast (lsr (add val (uint16_t (bvshl (bv 1 16) (bvsub (cpp:eval n) (bv 1 16)))) 'uint32) n) 'uint16)]
    [(uint32_t v)
     (cpp:cast (lsr (add val (uint32_t (bvshl (bv 1 32) (bvsub (cpp:eval n) (bv 1 32)))) 'uint64) n) 'uint32)]))

;(define (absolute val sat?)
;  (match val
;    [(int8_t v) (mk-typed-expr (if (bvsge v (bv 0 8)) v (if (and sat? (eq? v (bv -128 8))) (bv 127 8) (bvmul v (bv -1 8)))) 'int8)]
;    [(int16_t v) (mk-typed-expr (if (bvsge v (bv 0 16)) v (if (and sat? (eq? v (bv -32768 16))) (bv 32767 16) (bvmul v (bv -1 16)))) 'int16)]
;    [(int32_t v) (mk-typed-expr (if (bvsge v (bv 0 32)) v (if (and sat? (eq? v (bv -2147483648 32))) (bv 2147483647 8) (bvmul v (bv -1 32)))) 'int32)]))
;
;(define (absolute-diff val1 val2)
;  (match (list val1 val2)
;    [(list (uint8_t v1) (uint8_t v2)) (mk-typed-expr (abs8 (bvsub v1 v2)) 'uint8)]
;    [(list (int16_t v1) (int16_t v2)) (mk-typed-expr (abs16 (bvsub v1 v2)) 'uint16)]
;    [(list (uint16_t v1) (uint16_t v2)) (mk-typed-expr (abs16 (bvsub v1 v2)) 'uint16)]
;    [(list (int32_t v1) (int32_t v2)) (mk-typed-expr (abs32 (bvsub v1 v2)) 'uint32)]))
;
;;;;;;;;;;;;;;;;; Util Fns ;;;;;;;;;;;;;;;;;;;

(define (get-vec-type buf)
  (define elemT (buffer-elemT buf))
  (cond 
    [(eq? elemT 'int8) i8x128]
    [(eq? elemT 'int16) i16x64]
    [(eq? elemT 'int32) i32x32]
    [(eq? elemT 'uint8) u8x128]
    [(eq? elemT 'uint16) u16x64]
    [(eq? elemT 'uint32) u32x32]))

(define (get-vecp-type buf)
  (define elemT (buffer-elemT buf))
  (cond 
    [(eq? elemT 'int8) i8x128x2]
    [(eq? elemT 'int16) i16x64x2]
    [(eq? elemT 'int32) i32x32x2]
    [(eq? elemT 'uint8) u8x128x2]
    [(eq? elemT 'uint16) u16x64x2]
    [(eq? elemT 'uint32) u32x32x2]))

(define (get-offset buf)
  (define elemT (buffer-elemT buf))
  (cond 
    [(eq? elemT 'int8) 128]
    [(eq? elemT 'int16) 64]
    [(eq? elemT 'int32) 32]
    [(eq? elemT 'uint8) 128]
    [(eq? elemT 'uint16) 64]
    [(eq? elemT 'uint32) 32]))

;(define (get-from-vec vec gid)
;  (define-values (p? outType Vu Vv) (cond
;                                   [(i8x128? vec) (values #f i8x128 (i8x128-Vu vec) (void))]
;                                   [(u8x128? vec) (values #f u8x128 (u8x128-Vu vec) (void))]
;                                   [(i16x64? vec) (values #f i16x64 (i16x64-Vu vec) (void))]
;                                   [(u16x64? vec) (values #f u16x64 (u16x64-Vu vec) (void))]
;                                   [(i32x32? vec) (values #f i32x32 (i32x32-Vu vec) (void))]
;                                   [(u32x32? vec) (values #f u32x32 (u32x32-Vu vec) (void))]
;                                   [(i8x128x2? vec) (values #t i8x128x2 (i8x128x2-Vu vec) (i8x128x2-Vv vec))]
;                                   [(u8x128x2? vec) (values #t u8x128x2 (u8x128x2-Vu vec) (u8x128x2-Vv vec))]
;                                   [(i16x64x2? vec) (values #t i16x64x2 (i16x64x2-Vu vec) (i16x64x2-Vv vec))]
;                                   [(u16x64x2? vec) (values #t u16x64x2 (u16x64x2-Vu vec) (u16x64x2-Vv vec))]
;                                   [(i32x32x2? vec) (values #t i32x32x2 (i32x32x2-Vu vec) (i32x32x2-Vv vec))]
;                                   [(u32x32x2? vec) (values #t u32x32x2 (u32x32x2-Vu vec) (u32x32x2-Vv vec))]))
;
;  (define-symbolic idx-tbl1 (~> integer? integer?))
;  (define-symbolic idx-tbl2 (~> integer? integer?))
;  
;  (define-symbolic idx integer?)
;  (assert
;   (cond
;     [(eq? outType i8x128) (forall (list idx) (<= 0 (idx-tbl1 idx) 127))]
;     [(eq? outType u8x128) (forall (list idx) (<= 0 (idx-tbl1 idx) 127))]
;     [(eq? outType i16x64) (forall (list idx) (<= 0 (idx-tbl1 idx) 63))]
;     [(eq? outType u16x64) (forall (list idx) (<= 0 (idx-tbl1 idx) 63))]
;     [(eq? outType i32x32) (forall (list idx) (<= 0 (idx-tbl1 idx) 31))]
;     [(eq? outType u32x32) (forall (list idx) (<= 0 (idx-tbl1 idx) 31))]
;     [(eq? outType i8x128x2) (forall (list idx) (and (<= 0 (idx-tbl1 idx) 127) (<= 0 (idx-tbl2 idx) 127)))]
;     [(eq? outType u8x128x2) (forall (list idx) (and (<= 0 (idx-tbl1 idx) 127) (<= 0 (idx-tbl2 idx) 127)))]
;     [(eq? outType i16x64x2) (forall (list idx) (and (<= 0 (idx-tbl1 idx) 63) (<= 0 (idx-tbl2 idx) 63)))]
;     [(eq? outType u16x64x2) (forall (list idx) (and (<= 0 (idx-tbl1 idx) 63) (<= 0 (idx-tbl2 idx) 63)))]
;     [(eq? outType i32x32x2) (forall (list idx) (and (<= 0 (idx-tbl1 idx) 31) (<= 0 (idx-tbl2 idx) 31)))]
;     [(eq? outType u32x32x2) (forall (list idx) (and (<= 0 (idx-tbl1 idx) 31) (<= 0 (idx-tbl2 idx) 31)))]))
;  
;  (if p?
;      (outType (lambda (i) ((choose* Vu Vv) (idx-tbl1 i))) (lambda (i) ((choose* Vu Vv) (idx-tbl2 i))))
;      (outType (lambda (i) (Vu (idx-tbl1 i))))))
;
;;; The curr-cn flag is used to restrict the set of values a gather returns when the expression is being evaluated for
;;; any particular channel
(define curr-cn 0)
(define (set-curr-cn v) (set! curr-cn v))
;
;;; Since gather and swizzle constructs abstract away data-movement, their implementation must be synthesized as a hash-table.
;;; Ideally this definition should be in the grammar file but that would cause a circular dependency, so here we are.
;(define (get-from-buf* buff-reads)
;  (define cn-reads (list-ref buff-reads 0))
;  (define elemType (apply choose* (map (lambda(v) (type v)) cn-reads)))
;  (define opts (filter (lambda(v) (eq? (type v) elemType)) cn-reads))
;  (define vecType (cond
;                    [(eq? elemType 'int8) i8x128]
;                    [(eq? elemType 'int16) i16x64]
;                    [(eq? elemType 'int32) i32x32]
;                    [(eq? elemType 'uint8) u8x128]
;                    [(eq? elemType 'uint16) u16x64]
;                    [(eq? elemType 'uint32) u32x32]))
;  (define vecpType (cond
;                    [(eq? elemType 'int8) i8x128x2]
;                    [(eq? elemType 'int16) i16x64x2]
;                    [(eq? elemType 'int32) i32x32x2]
;                    [(eq? elemType 'uint8) u8x128x2]
;                    [(eq? elemType 'uint16) u16x64x2]
;                    [(eq? elemType 'uint32) u32x32x2]))
;
;  (define-symbolic* idx-tbl1 (~> integer? integer?))
;  (define-symbolic* idx-tbl2 (~> integer? integer?))
;
;  (choose*
;   (vecType
;    (lambda (i) (list-ref (filter (lambda(v) (eq? (type v) elemType)) (list-ref buff-reads curr-cn)) (idx-tbl1 i))))
;   (vecpType
;    (lambda (i) (list-ref (filter (lambda(v) (eq? (type v) elemType)) (list-ref buff-reads curr-cn)) (idx-tbl1 i)))
;    (lambda (i) (list-ref (filter (lambda(v) (eq? (type v) elemType)) (list-ref buff-reads curr-cn)) (idx-tbl2 i))))))
;
;(define (get-vec-from-buf buff-reads gid)
;  (define cn-reads (list-ref buff-reads 0))
;  (define elemType (apply choose* (map (lambda(v) (type v)) cn-reads)))
;  (define opts (filter (lambda(v) (eq? (type v) elemType)) cn-reads))
;  (define vecType (cond
;                    [(eq? elemType 'int8) i8x128]
;                    [(eq? elemType 'int16) i16x64]
;                    [(eq? elemType 'int32) i32x32]
;                    [(eq? elemType 'uint8) u8x128]
;                    [(eq? elemType 'uint16) u16x64]
;                    [(eq? elemType 'uint32) u32x32]))
;
;  (define-symbolic* idx-tbl1 (~> integer? integer?))
;
;  (hash-set! gather-tables gid idx-tbl1)
;  (hash-set! gather-types gid vecType)
;
;  (define vals-tbl1 (make-hash))
;
;  (vecType (lambda (i) (hash-ref! vals-tbl1 i (list-ref (filter (lambda(v) (eq? (type v) elemType)) (list-ref buff-reads curr-cn)) (idx-tbl1 i))))))
;
;(define (get-vecp-from-buf buff-reads gid)
;  (define cn-reads (list-ref buff-reads 0))
;  (define elemType (apply choose* (map (lambda(v) (type v)) cn-reads)))
;  (define opts (filter (lambda(v) (eq? (type v) elemType)) cn-reads))
;  (define vecpType (cond
;                    [(eq? elemType 'int8) i8x128x2]
;                    [(eq? elemType 'int16) i16x64x2]
;                    [(eq? elemType 'int32) i32x32x2]
;                    [(eq? elemType 'uint8) u8x128x2]
;                    [(eq? elemType 'uint16) u16x64x2]
;                    [(eq? elemType 'uint32) u32x32x2]))
;
;  (define-symbolic* idx-tbl1 (~> integer? integer?))
;  (define-symbolic* idx-tbl2 (~> integer? integer?))
;
;  (hash-set! gather-tables gid (cons idx-tbl1 idx-tbl2))
;  (hash-set! gather-types gid vecpType)
;
;  (define vals-tbl1 (make-hash))
;  (define vals-tbl2 (make-hash))
;
;  ;(display (format "For gather id: ~a, v0, index: ~a, value exists: ~a\n" gid i (hash-has-key? vals-tbl1 i)))
;  ;(display (format "For gather id: ~a, v1, index: ~a, value exists: ~a\n" gid i (hash-has-key? vals-tbl2 i)))
;  
;  (vecpType
;   (lambda (i) (hash-ref! vals-tbl1 i (list-ref (filter (lambda(v) (eq? (type v) elemType)) (list-ref buff-reads curr-cn)) (idx-tbl1 i))))
;   (lambda (i) (hash-ref! vals-tbl2 i (list-ref (filter (lambda(v) (eq? (type v) elemType)) (list-ref buff-reads curr-cn)) (idx-tbl2 i))))))