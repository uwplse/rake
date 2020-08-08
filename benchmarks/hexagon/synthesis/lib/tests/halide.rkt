#lang rosette

(require "util.rkt")
(require "cpp.rkt")
(require "hexagon.rkt")

(require rackunit)

;; Declare vars used in tests
(define-symbolic charbuf (~> integer? (bitvector 8)))
(define-symbolic ucharbuf (~> integer? (bitvector 8)))

(define-symbolic shortbuf (~> integer? (bitvector 16)))
(define-symbolic ushortbuf (~> integer? (bitvector 16)))

(define-symbolic intbuf (~> integer? (bitvector 32)))
(define-symbolic uintbuf (~> integer? (bitvector 32)))

(init-var-types
 (make-hash
  (list
   (cons charbuf 'int8)
   (cons ucharbuf 'uint8)
   (cons shortbuf 'int16)
   (cons ushortbuf 'uint16)
   (cons intbuf 'int32)
   (cons uintbuf 'uint32))))

(define-symbolic i integer?)
(define-symbolic j integer?)
(define-symbolic k integer?)

(test-case
  "Test: vread"

  (define p (interpret-hvx (vread charbuf i)))

  (check-equal? (p 0) (int8_t (charbuf i)))
  (check-equal? (p 3) (int8_t (charbuf (+ i 3))))
  (check-equal? (p j) (int8_t (charbuf (+ i j))))

  (printf "Test Passed: vread\n"))

(test-case
  "Test: vadd"

  (define p0 (interpret-hvx (vadd (vread charbuf i) (vread charbuf j) #f)))
  (check-equal? (p0 k) (int8_t (bvadd (charbuf (+ i k)) (charbuf (+ j k)))))
  (printf "Test Passed: vadd int8_t no saturation\n")

  (define p1 (interpret-hvx (vadd (vread charbuf i) (vread charbuf j) #t)))
  (check-equal? (p1 k) (int8_t (sat8 (bvadd (sign-extend (charbuf (+ i k)) (bitvector 16)) (sign-extend (charbuf (+ j k)) (bitvector 16))))))
  (printf "Test Passed: vadd int8_t with saturation\n")

  (define p2 (interpret-hvx (vadd (vread shortbuf i) (vread shortbuf j) #f)))
  (check-equal? (p2 k) (int16_t (bvadd (shortbuf (+ i k)) (shortbuf (+ j k)))))
  (printf "Test Passed: vadd int16_t no saturation\n")

  (define p3 (interpret-hvx (vadd (vread shortbuf i) (vread shortbuf j) #t)))
  (check-equal? (p3 k) (int16_t (sat16 (bvadd (sign-extend (shortbuf (+ i k)) (bitvector 32)) (sign-extend (shortbuf (+ j k)) (bitvector 32))))))
  (printf "Test Passed: vadd int16_t with saturation\n")
  
  (define p4 (interpret-hvx (vadd (vread intbuf i) (vread intbuf j) #f)))
  (check-equal? (p4 k) (int32_t (bvadd (intbuf (+ i k)) (intbuf (+ j k)))))
  (printf "Test Passed: vadd int32_t no saturation\n")

  (define p5 (interpret-hvx (vadd (vread intbuf i) (vread intbuf j) #t)))
  (check-equal? (p5 k) (int32_t (sat32 (bvadd (sign-extend (intbuf (+ i k)) (bitvector 64)) (sign-extend (intbuf (+ j k)) (bitvector 64))))))
  (printf "Test Passed: vadd int32_t with saturation\n")

  (define p6 (interpret-hvx (vadd (vread ucharbuf i) (vread charbuf j) #f)))
  (check-equal? (p3 k) (int32_t (bvadd (intbuf (+ i k)) (intbuf (+ j k))))))