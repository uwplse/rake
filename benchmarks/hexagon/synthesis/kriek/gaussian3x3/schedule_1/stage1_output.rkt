#lang rosette

(require rake)
(require rake/kriek)

(error-print-width 100000)
(debug-on)

;; OLD SPEC

;;; Define the steps in the algorithm (2 stencil functions and 2 point-wise functions)
;(define (up val) (kr_cast val 'int16_t))
;(define (rowsF m p) (kr_+ (get m (point- p (Point2D 0 1))) (kr_* 2 (get m p)) (get m (point+ p (Point2D 0 1)))))
;(define (colsF m p) (kr_+ (get m (point- p (Point2D 1 0))) (kr_* 2 (get m p)) (get m (point+ p (Point2D 1 0)))))
;(define (down val) (kr_cast (+ val 8) 'int8_t))
;
;;; Create convolutions using the stencil functions
;(define rows (Convolve rowsF (Shape2D 3 1)))
;(define cols (Convolve colsF (Shape2D 1 3)))
;
;;; Define functional spec
;(define fnSpec (Compose (list up rows cols down)))
;
;;; Define the input tile (read from memory)
;(define input (Reference (Location 'input)))
;(define inTile (Tile 'uint8 (Shape2D 3 130) (list input) (lambda (p) p)))
;
;;; Define the output tile (a single vector of the output)
;(define R0 (Register 'R0))
;(define outTile (Tile 'uint8 (Shape1D 128) (list R0) (lambda (p) p)))
;
;;; Define the full program (functional spec + tiles over which it needs to be executed)
;(define p (Program inTile fnSpec outTile))
;
;(interpret-kriek p)

;; NEW SPEC 1 (Reading from memory)

(define-symbolic input (~> integer? (bitvector 8)))
(init-var-types (make-hash (list (cons input 'uint8))))

;; Define input tile `a`
(define-symbolic i integer?)
(define tile-offset (Var i))

(define (tile-a x y)
  (get input (+ tile-offset (+ (* y 130) x))))

;; Define output tile `b`
(define tile-b
  (Matrix
   1   ; rows
   128 ; cols
   'uint16_t
   (lambda (x y)
     (bvadd
      (tile-a (- x 1) y)
      (bvmul
       (tile-a x y)
       (int8_t (bv 2 8)))
      (tile-a (+ x 1) y)))))

(define-symbolic j integer?)
(define-symbolic k integer?)
(define x (Var j))
(define y (Var k))
(define tile-b 

;; NEW SPEC 1.1

(define-symbolic input (~> integer? (bitvector 8)))
(init-var-types (make-hash (list (cons input 'uint8))))

;; Define input tile `a`
(define-symbolic tile-offset integer?)
(define (tile-a x y)
  (get input (+ tile-offset (+ (* y 130) x))))

;; Define output tile `b`
(define (tile-b x y)
  (bvadd
   (tile-a (- x 1) y)
   (bvmul
    (tile-a x y)
    (int8_t (bv 2 8)))
   (tile-a (+ x 1) y)))

;; Define the input buffer
;(define-symbolic input-buffer (~> integer? (bitvector 8)))
;(init-var-types (make-hash (list (cons input 'uint8))))
;
;;; Define input tile `a`
;(define-symbolic tx integer?)
;(define-symbolic tx integer?)
;
;(define (a-data x y)
;  (get input-buffer 
;(define a (Matrix
;           3                ; rows
;           130              ; cols
;           input-buffer     ; memory buffer to read from (parent?)
;           data)            ; a mapping from logical co-ordinates (x,y) in `a` to addresses in `input-buffer`
;
;;; b is the output tile we want to compute
;(define b (Matrix

;; Model buffers as uninterpreted functions
;(define-symbolic input (~> integer? (bitvector 8)))
;
;(init-var-types (make-hash (list (cons input 'uint8))))
;
;;; Model indexing variables as integers
;(define-symbolic t40 integer?)
;(define-symbolic input.stride.1 integer?)
;;(define input.stride.1 20)
;
;;; Define original expression in Halide IR
;(define halide-expr
;  (uint8x128
;   (vec-div
;    (vec-add
;     (vec-add
;      (vec-add
;       (vec-add
;        (vec-mul
;         (int16x128 (ramp input (+ t40 1) 1 128))
;         (x128 (int16_t (bv 2 16))))
;        (vec-add
;         (vec-add
;          (vec-mul
;           (vec-add
;            (vec-add
;             (vec-add
;              (vec-mul
;               (int16x128 (ramp input t40 1 128))
;               (x128 (int16_t (bv 2 16))))
;              (int16x128 (ramp input (- t40 input.stride.1) 1 128)))
;             (int16x128 (ramp input (+ t40 input.stride.1) 1 128)))
;            (int16x128 (ramp input (- t40 1) 1 128)))
;           (x128 (int16_t (bv 2 16))))
;          (int16x128 (ramp input (- (- t40 input.stride.1) 1) 1 128)))
;         (int16x128 (ramp input (- (+ t40 input.stride.1) 1) 1 128))))
;       (int16x128 (ramp input (+ (- t40 input.stride.1) 1) 1 128)))
;      (int16x128 (ramp input (+ (+ t40 input.stride.1) 1) 1 128)))
;     (x128 (int16_t (bv 8 16))))
;    (x128 (int16_t (bv 16 16))))))
;
;;(println ((interpret-halide halide-expr) 0))
;
;;; Define the specification for the synthesizer
;(define spec (synthesis-spec halide-expr (list input input.stride.1) (list)))
;
;;(define hvx-expr (synthesize-hvx spec))
;
;;(basic-expr-cost hvx-expr)

;(println hvx-expr)