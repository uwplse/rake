#lang rosette

(require rake/kriek/types)

(define (getDim tile)
  (cond
    [(Shape1D? (Tile-shape tile)) 1]
    [(Shape2D? (Tile-shape tile)) 2]
    [else (error "Cannot infer dimension of ~a" tile)]))

(provide (all-defined-out))