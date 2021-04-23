#lang racket

;; Debugging
(define debug-flag-set? #f)

(define (debug?) debug-flag-set?)

(define (debug-on)
  (error-print-width 100000)
  (set! debug-flag-set? #t))

(define (debug-off)
  (set! debug-flag-set? #f))

(define (debug expr)
  (when debug-flag-set? (pretty-display expr)))