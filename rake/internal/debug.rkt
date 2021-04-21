#lang rosette/safe

(require
  (only-in racket/base getenv putenv error-print-width string->number exit)
  (only-in racket/format ~v)
  (for-syntax syntax/parse))

(provide debug-print)

(error-print-width 100000)

(define-for-syntax debug-level (string->number (if (getenv "RAKE_DEBUG_CODEGEN") (getenv "RAKE_DEBUG_CODEGEN") "0")))

(define-syntax (debug-print stx)
  (syntax-parse stx
    [(_ e:expr)
     (match debug-level
       [1 #'(pretty-display e)]
       [_ #'(void)])]))