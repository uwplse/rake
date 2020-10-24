#lang rosette

(require rake)
(require rake/halide)
(require rake/swizzleflow/interpreter)
(require rake/hvx/ast/types)

(error-print-width 100000)
(debug-on)

;; Hash-tables
(define tbl0
  (make-hash
   (list
    (cons 0 (uint8_t 'input_100))
    (cons 1 (uint8_t 'input_101))
    (cons 2 (uint8_t 'input_2))
    (cons 3 (uint8_t 'input_3)))))

(define tbl1
  (make-hash
   (list
    (cons 0 (uint8_t 'input_0))
    (cons 1 (uint8_t 'input_1))
    (cons 2 (uint8_t 'input_102))
    (cons 3 (uint8_t 'input_103)))))

(define tbl2
  (make-hash
   (list
    (cons 0 (uint8_t 'input_0))
    (cons 1 (uint8_t 'input_1))
    (cons 2 (uint8_t 'input_2))
    (cons 3 (uint8_t 'input_3)))))

(define tbl3
  (make-hash
   (list
    (cons 0 (uint8_t 'input_100))
    (cons 1 (uint8_t 'input_101))
    (cons 2 (uint8_t 'input_102))
    (cons 3 (uint8_t 'input_103)))))

(define spec (vtmpy-acc
              (vdmpy-sw
               (serve-vec-pair tbl0 tbl1 u8x128x2)
               (cons
                (int8_t (bv #x01 8))
                (int8_t (bv #x04 8))))
              (serve-vec-pair tbl0 tbl1 u8x128x2)
              (cons
               (int8_t (bv #x04 8))
               (int8_t (bv #x06 8)))))

(v0-elem-hvx (si-interpret-hvx spec) 0)

(define sketch (vadd
                (serve-vec tbl2 u8x128)
                (serve-vec tbl3 u8x128)
                #t))

(define (bounded-eq? spec syn lanes)
  (for ([lane lanes])
    (assert (si-eq-expr? (elem-hvx spec lane) (elem-hvx syn lane)))))

(elem-hvx (si-interpret-hvx spec) 0)
(elem-hvx (si-interpret-hvx sketch) 0)
(si-eq-expr? (elem-hvx (si-interpret-hvx spec) 0) (elem-hvx (si-interpret-hvx sketch) 0))
;(exit)

(clear-asserts!)
(define st (current-seconds))
(define sol (solve (bounded-eq? (si-interpret-hvx spec) (si-interpret-hvx sketch) 1)))
(define runtime (- (current-seconds) st))
sol
(display (format "Ran synthesizer for ~a seconds.\n" runtime))