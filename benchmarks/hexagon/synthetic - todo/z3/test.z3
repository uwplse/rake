;; Define a vector
(declare-datatypes (elemT) ((Vector 
	(mk-vector 
		(e0 elemT) (e1 elemT) (e2 elemT) (e3 elemT); (e4 elemT) 
		;(e5 elemT) (e6 elemT) (e7 elemT) (e8 elemT) (e9 elemT) 
		;(e10 elemT) (e11 elemT) (e12 elemT) (e13 elemT) (e14 elemT) 
		;(e15 elemT) (e16 elemT) (e17 elemT) (e13 elemT) (e14 elemT) 
	))))

;; Model C++ integer casting

(concat ((_ extract n-1 k+1) x) y ((_ extract k-1 0) x))


(define-fun cast_int32_to_int16 ((val (_ BitVec 32))) (_ BitVec 16)
	(ite 
		(and
			(bvslt val (_ bv32768 32))
			(bvsge val (bvneg (_ bv32768 32)))
		)
		(concat ((_ extract 31 31) val) ((_ extract 14 0) val))
		((_ extract 15 0) val)
	)
)

;; Model Halide IR
(define-fun broadcast ((val (_ BitVec 16))) (Vector (_ BitVec 16))
	(mk-vector val val val val)
)

(declare-fun ramp ((Array Int (_ BitVec 8)) Int Int Int) (Vector (_ BitVec 8)))

(declare-fun int16x128 ((Vector (_ BitVec 8))) (Vector (_ BitVec 16)))

(declare-fun vec_mul ((Vector (_ BitVec 16)) (Vector (_ BitVec 16))) (Vector (_ BitVec 16)))

;; Declare buffers
(declare-const input (Array Int (_ BitVec 8)))

;; Declare scope vars
(declare-const t53 Int)

(declare-const original-expr (Vector (_ BitVec 16)))
(declare-const synthesized-expr (Vector (_ BitVec 16)))

(assert 
	(= 
		original-expr 
		(vec_mul
			(int16x128 (ramp input t53 1 128))
			(broadcast (cast_int32_to_int16 (_ bv2 32)))
		)
	)
)

(assert 
	(= 
		synthesized-expr
		(ramp input t53 1 128)
	)
)

(assert (not (= original-expr synthesized-expr)))

(check-sat)