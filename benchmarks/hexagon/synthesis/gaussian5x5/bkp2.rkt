;; Utility definitions
(define even-vec car)
(define odd-vec cdr)

;; Swizzling / casting instructions
(define (vcombine v1 v2)
  (cons v2 v1))

(define (vpacko v)
  (cond
    [((bitvector 16) (v 0)) (lambda (i) (extract 15 8 (v i)))]))

(define (vshuffo o e)
  (lambda (i)
    (if
     (even? i)
     (e (+ 1 i))
     (o i))))

(define (vshuffe o e)
  (lambda (i)
    (if
     (even? i)
     (e i)
     (o (- i 1)))))

(define (vshuffoe o e)
  (cons
   (lambda (i)
    (if
     (even? i)
     (e i)
     (o (- i 1))))
   (lambda (i)
    (if
     (even? i)
     (e (+ i 1))
     (o i)))))

(define (vshuff vdd)
  (cons
   (lambda (i)
    (if
     (even? i)
     ((even-vec vdd) (quotient i 2))
     ((odd-vec vdd) (quotient i 2))))
   (lambda (i)
    (if
     (even? i)
     ((even-vec vdd) (quotient (+ i 64) 2))
     ((odd-vec vdd) (quotient (+ i 64) 2))))))

(define (vzxt v)
  (cond
    [((bitvector 8) (v 0))
     (cons
      (lambda (i) (zero-extend (v (* i 2)) (bitvector 16)))
      (lambda (i) (zero-extend (v (+ (* i 2) 1)) (bitvector 16))))]
    [((bitvector 16) (v 0))
     (cons
      (lambda (i) (zero-extend (v (* i 2)) (bitvector 32)))
      (lambda (i) (zero-extend (v (+ (* i 2) 1)) (bitvector 32))))]))

;; Processing instructions
(define (vadd v1 v2)
  (lambda (i)
    (bvadd
     (cast (v1 i) 'uint8 'int16)
     (cast (v2 i) 'uint8 'int16))))

(define (vadd_w v1 v2)
  (cons 
   (lambda (i)
     (bvadd
      (cast (v1 (* i 2)) 'uint8 'int16)
      (cast (v2 (* i 2)) 'uint8 'int16)))
   (lambda (i)
     (bvadd
      (cast (v1 (+ (* i 2) 1)) 'uint8 'int16)
      (cast (v2 (+ (* i 2) 1)) 'uint8 'int16)))))

(define (vmpyi_acc acc v s)
  (lambda (i)
    (bvadd
     (acc i)
     (bvmul
      (v i)
      (cast s 'int8 'int16)))))

(define (vmpy_acc acc v s)
  (cons 
   (lambda (i)
     (bvadd
      ((car acc) i)
      (bvmul
       (cast (v (* i 2)) 'uint8 'int16)
       (cast s 'int8 'int16))))
   (lambda (i)
     (bvadd
      ((cdr acc) i)
      (bvmul
       (cast (v (+ (* i 2) 1)) 'uint8 'int16)
       (cast s 'int8 'int16))))))

(define (vmpa_acc acc v1 v2 s1 s2)
  (cons 
   (lambda (i)
     (bvadd
      ((car acc) i)
      (bvmul
       (cast (v1 (* i 2)) 'uint8 'int16)
       (cast s1 'int8 'int16))
      (bvmul
       (cast (v2 (* i 2)) 'uint8 'int16)
       (cast s2 'int8 'int16))))
   (lambda (i)
     (bvadd
      ((cdr acc) i)
      (bvmul
       (cast (v1 (+ (* i 2) 1)) 'uint8 'int16)
       (cast s1 'int8 'int16))
      (bvmul
       (cast (v2 (+ (* i 2) 1)) 'uint8 'int16)
       (cast s2 'int8 'int16))))))

(define (vmpa_acc_2 acc vdd s1 s2)
  (cons 
   (lambda (i)
     (bvadd
      ((car acc) i)
      (bvmul
       (cast ((car vdd) (* i 2)) 'uint8 'int16)
       (cast s1 'int8 'int16))
      (bvmul
       (cast ((cdr vdd) (* i 2)) 'uint8 'int16)
       (cast s2 'int8 'int16))))
   (lambda (i)
     (bvadd
      ((cdr acc) i)
      (bvmul
       (cast ((car vdd) (+ (* i 2) 1)) 'uint8 'int16)
       (cast s1 'int8 'int16))
      (bvmul
       (cast ((cdr vdd) (+ (* i 2) 1)) 'uint8 'int16)
       (cast s2 'int8 'int16))))))