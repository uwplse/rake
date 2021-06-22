#lang racket

(provide (all-defined-out))

;; Variables
(define logging-flag-set? #f)
(define log-file (void))

;; Functions
(define (init-logging fp)
  (set! logging-flag-set? #t)
  (set! log-file (open-output-file fp #:exists 'replace)))

(define (log str)
  (when logging-flag-set?
    (display str log-file)))

(define (close-log-file)
  (close-output-port log-file))