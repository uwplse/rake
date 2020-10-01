#lang rosette

;; Define a Kriek program
(struct Program (inTile spec outTile) #:transparent)

;; Define tiles
(struct Tile (elemT shape loc mu) #:transparent)

;; Define locations (need something when writing to arrays)
(struct Register (rid) #:transparent)
(struct Location (vid) #:transparent)
(struct Reference (loc) #:transparent)

;; Define Points
(struct Point1D (x) #:transparent)
(struct Point2D (x y) #:transparent)
(struct point+ (p1 p2) #:transparent)
(struct point- (p1 p2) #:transparent)
;(define (point- p1 p2) (Point (- (Point-x p1) (Point-x p2)) (- (Point-y p1) (Point-y p2))))
;(define (point+ p1 p2) (Point (+ (Point-x p1) (Point-x p2)) (+ (Point-y p1) (Point-y p2))))

;; Define Matrices and Vectors -- 1D and 2D data structure.
(struct Vector (elemT data) #:transparent)
(struct Matrix (elemT data) #:transparent)
(struct get (matrix loc) #:transparent)
;(define (get matrix loc) 1) ;; TODO

;; Define Shapes
(struct Shape1D (cols) #:transparent)
(struct Shape2D (rows cols) #:transparent)

;; Define IR constructs
(struct Compose (fns) #:transparent)
(struct Convolve (fn shape) #:transparent)

;; Define basic scalar ops (incomplete list, we can add as needed)
(struct kr_cast (val type) #:transparent)
(struct kr_+ (lhs rhs) #:transparent)
(struct kr_- (lhs rhs) #:transparent)
(struct kr_* (lhs rhs) #:transparent)
(struct kr_/ (lhs rhs) #:transparent)
(struct kr_>> (lhs rhs) #:transparent)

(provide (all-defined-out))